struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: array<f32, 16>;

var<private> global3: array<f32, 14>;

var<private> global4: bool;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = -31687i;
    var var_1 = vec2<bool>(!(true && ((34473i & global0.e) > -u_input.a.x)), !global0.b.x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-527f, -521f))))))), _wgslsmith_f_op_f32(sign(arg_0)));
    let var_3 = vec3<i32>(0i, abs(-1i), var_0);
    let var_4 = _wgslsmith_mod_i32(var_3.x, _wgslsmith_mult_i32(2147483647i ^ _wgslsmith_add_i32(var_0, var_0), -_wgslsmith_sub_i32(0i, -1i)) << (_wgslsmith_div_u32((global0.c & 4294967295u) << (global0.c % 32u), 4294967295u) % 32u));
    return all(!select(select(!vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, true, var_1.x), vec3<bool>(global0.b.x, global0.b.x, false)), select(vec3<bool>(var_1.x, true, true), vec3<bool>(var_1.x, global0.b.x, true), var_1.x)), select(vec3<bool>(false, global0.b.x, global0.b.x), select(vec3<bool>(false, false, var_1.x), vec3<bool>(global0.b.x, false, false), vec3<bool>(global0.b.x, global0.b.x, true)), select(vec3<bool>(false, true, var_1.x), vec3<bool>(false, true, global0.b.x), vec3<bool>(true, var_1.x, global0.b.x))), !global0.b.x));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.c, 16u)]))), global0.d));
    let var_1 = vec3<bool>(all(vec3<bool>(global0.b.x, !func_3(777f), true)), global0.b.x, global0.b.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(451f * 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1264f, global3[_wgslsmith_index_u32(global0.c, 14u)]) - _wgslsmith_f_op_f32(f32(-1f) * -1598f)) + global3[_wgslsmith_index_u32(~firstTrailingBit(global0.c), 14u)])), vec2<bool>((firstTrailingBit(-35973i) ^ reverseBits(u_input.a.x)) > -2619i, false), 1u, global0.a, firstTrailingBit(global0.e));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-1213f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a, 3044f))))), vec2<bool>(global0.b.x, true), _wgslsmith_div_u32(global0.c, 12651u), var_2.d, 11423i);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1075f))) * 519f), !vec2<bool>(!all(vec2<bool>(true, false)), var_1.x), 1u, _wgslsmith_f_op_f32(f32(-1f) * -908f), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.e, _wgslsmith_mod_i32(var_3.e, global0.e)), firstLeadingBit(u_input.a.yz)));
    return -21512i;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(func_2(), arg_1.e, -arg_2.e, _wgslsmith_mult_i32(global0.e, 1i)), abs((max(vec4<i32>(u_input.a.x, arg_1.e, 19089i, 56168i), vec4<i32>(31339i, -2147483647i, arg_1.e, global0.e)) | vec4<i32>(-54721i, 2147483647i, global0.e, global0.e)) ^ _wgslsmith_div_vec4_i32(min(vec4<i32>(0i, -58756i, u_input.a.x, -1i), vec4<i32>(u_input.a.x, global0.e, global0.e, global0.e)), firstTrailingBit(vec4<i32>(22855i, arg_1.e, arg_2.e, u_input.a.x)))));
    var var_1 = arg_1;
    var var_2 = Struct_1(-291f, select(vec2<bool>(func_3(-1000f), select(11417u <= arg_1.c, true, any(vec4<bool>(var_1.b.x, false, var_1.b.x, var_1.b.x)))), arg_2.b, arg_2.b), countOneBits(global0.c), _wgslsmith_f_op_f32(step(-1306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(884f + -673f)))), ~(-(~(var_0.x & arg_1.e))));
    global1 = var_2.b.x;
    global3 = array<f32, 14>();
    return select(select(select(var_1.b, select(select(vec2<bool>(var_2.b.x, true), vec2<bool>(false, true), global0.b), vec2<bool>(true, arg_2.b.x), global0.b.x), any(vec4<bool>(true, arg_2.b.x, var_1.b.x, var_2.b.x))), select(vec2<bool>(global0.b.x, false), arg_2.b, !(global0.d <= global2[_wgslsmith_index_u32(0u, 16u)])), var_2.b.x), select(!(!(!arg_1.b)), arg_2.b, select(select(!arg_1.b, var_1.b, vec2<bool>(false, false)), select(vec2<bool>(true, true), global0.b, arg_2.b.x), var_2.b.x)), !(false == !(arg_1.b.x | arg_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true, true, all(select(vec2<bool>(false, false), !global0.b, func_1(vec3<f32>(-1360f, -708f, global3[_wgslsmith_index_u32(global0.c, 14u)]), Struct_1(-1601f, vec2<bool>(true, true), global0.c, -657f, global0.e), Struct_1(-501f, vec2<bool>(global0.b.x, false), 0u, global3[_wgslsmith_index_u32(global0.c, 14u)], u_input.a.x), global0.c))));
    var var_1 = u_input.a.x;
    let var_2 = select(-select(~u_input.a.xy, vec2<i32>(-9764i, global0.e) & vec2<i32>(66119i, 2147483647i), global0.b), vec2<i32>(global0.e, 1i << (global0.c % 32u)), var_0.xy) ^ vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(~u_input.a.zy, u_input.a.yz << (vec2<u32>(0u, global0.c) % vec2<u32>(32u))), u_input.a.x), -34049i);
    let var_3 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(1u, global0.c, min(_wgslsmith_sub_u32(1u | global0.c, global0.c | 0u), ~_wgslsmith_add_u32(31509u, 62428u)))), 14u)];
    let var_4 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-951f, _wgslsmith_div_f32(global0.d, 1011f)))), global2[_wgslsmith_index_u32(1u, 16u)])), select(select(func_1(vec3<f32>(global2[_wgslsmith_index_u32(71844u, 16u)], global3[_wgslsmith_index_u32(global0.c, 14u)], global0.d), Struct_1(-2217f, vec2<bool>(true, true), 1u, 925f, global0.e), Struct_1(-1060f, vec2<bool>(true, global0.b.x), global0.c, global3[_wgslsmith_index_u32(global0.c, 14u)], -35695i), 0u), vec2<bool>(true, any(var_0)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -649f, 887f)), Struct_1(812f, vec2<bool>(false, var_0.x), global0.c, global3[_wgslsmith_index_u32(global0.c, 14u)], -3548i), Struct_1(global3[_wgslsmith_index_u32(global0.c, 14u)], var_0.xz, 0u, 556f, 50126i), select(4294967295u, global0.c, true))), global0.b, !func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, global3[_wgslsmith_index_u32(1u, 14u)], 1489f) + vec3<f32>(552f, global3[_wgslsmith_index_u32(global0.c, 14u)], global2[_wgslsmith_index_u32(11883u, 16u)])), Struct_1(1396f, var_0.xz, 4294967295u, 1118f, 28913i), Struct_1(-113f, global0.b, 39662u, global3[_wgslsmith_index_u32(global0.c, 14u)], 0i), _wgslsmith_clamp_u32(global0.c, global0.c, global0.c))), ~max(_wgslsmith_clamp_u32(global0.c, global0.c, global0.c), 54530u) << (global0.c % 32u), global3[_wgslsmith_index_u32(~min(~4294967295u, global0.c), 14u)], var_2.x);
    var var_5 = vec3<u32>(reverseBits(firstLeadingBit(global0.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~42051u), min(global0.c, _wgslsmith_div_u32(4294967295u, var_4.c))), vec2<u32>(global0.c, var_4.c)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(37905u, 0u, 3855u), vec3<u32>(var_4.c, 19181u, global0.c)), 4294967295u), select(vec2<u32>(var_4.c, 0u), vec2<u32>(global0.c, 110487u), var_4.b) | ~vec2<u32>(global0.c, global0.c), !global0.b), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 4294967295u, var_4.c), _wgslsmith_dot_vec2_u32(vec2<u32>(var_4.c, global0.c), vec2<u32>(global0.c, 0u))), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(41589u, 34517u, global0.c)), vec3<u32>(14599u, global0.c, global0.c)))));
    var_1 = ~(-1i << ((abs(_wgslsmith_div_u32(var_5.x, 1u)) >> (var_4.c % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4307u, 32168u, 14987u, global0.c), vec4<u32>(var_4.c, var_5.x, global0.c, var_5.x), vec4<u32>(var_5.x, 83982u, global0.c, var_5.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(0u, 16u)], -2758f))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.d + global0.d) + -1746f)))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_5.x, 4294967295u, var_4.c, 0u) | min(vec4<u32>(global0.c, 7316u, 33120u, var_5.x), vec4<u32>(1u, 1u, var_4.c, var_4.c)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.c, 15957u, 4294967295u, 0u), vec4<u32>(global0.c, var_5.x, 4294967295u, var_4.c)), vec4<u32>(1u, global0.c, 1u, global0.c)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(var_4.c, 0u, 39438u, global0.c)), vec4<u32>(1u, var_4.c, 0u, var_4.c))), ~((vec4<u32>(518u, global0.c, global0.c, var_4.c) | vec4<u32>(global0.c, var_4.c, var_4.c, global0.c)) << (~vec4<u32>(4294967295u, global0.c, var_5.x, global0.c) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1332f, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_4.c, global0.c), 14u)]))))));
}

