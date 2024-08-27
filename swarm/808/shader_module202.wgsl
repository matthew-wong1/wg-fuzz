struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 1> = array<u32, 1>(4294967295u);

var<private> global3: vec3<u32>;

var<private> global4: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    global1 = Struct_1(min(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global1.a.x), global1.a.wz), countOneBits(1i), global1.a.x, _wgslsmith_clamp_i32(12642i, 57487i, global1.c)), firstLeadingBit(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-13979i, 0i, 2147483647i, -1i)), global1.a >> (vec4<u32>(global2[_wgslsmith_index_u32(global3.x, 1u)], 26112u, 0u, u_input.c) % vec4<u32>(32u))))), 1259f, 0i, !all(vec4<bool>(global1.d, true, global1.d, true)) || global1.d);
    global3 = ~(~(~vec3<u32>(24758u, 4294967295u, 24101u))) >> (~((vec3<u32>(1u, global3.x, 0u) | ~vec3<u32>(4294967295u, 4294967295u, u_input.b.x)) << (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_0 = Struct_1(~(~abs(global1.a | vec4<i32>(global1.a.x, global1.c, global1.c, -1i))), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(countOneBits(67827u), 13u)])), -abs(_wgslsmith_add_i32(~global1.a.x, i32(-1i) * -1i)), false);
    let var_1 = Struct_1(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -52569i, global1.c, global1.c), firstLeadingBit(var_0.a)), _wgslsmith_div_i32(var_0.a.x, var_0.c), _wgslsmith_mod_i32(~global1.c, i32(-1i) * -34275i), -global1.c), -685f, _wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c, 6748i, 1i, var_0.c), var_0.a, global1.a), _wgslsmith_add_vec4_i32(global1.a, var_0.a)), 15436i), global1.b != global0[_wgslsmith_index_u32(~4294967295u, 13u)]);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1082f - -982f), global1.b))), _wgslsmith_f_op_f32(min(-1705f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + 1379f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec3<f32>) -> Struct_1 {
    global4 = _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-587f + _wgslsmith_f_op_f32(-arg_2.x)) * arg_0)));
    var var_0 = Struct_1(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_1 << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3.x, 1u)], 1u)] % 32u), 66657i, ~global1.a.x), vec4<i32>(arg_1, -2147483647i, _wgslsmith_mod_i32(2147483647i, -2147483647i), ~arg_1), global1.a), _wgslsmith_f_op_f32(func_3()), ~_wgslsmith_clamp_i32(arg_1, -2147483647i, min(_wgslsmith_dot_vec3_i32(global1.a.yxy, global1.a.xxz), global1.c)), true);
    var var_1 = Struct_1(abs(((vec4<i32>(global1.a.x, -38187i, global1.a.x, global1.c) << (vec4<u32>(79000u, 5549u, 0u, 59835u) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(vec4<i32>(2095i, var_0.a.x, global1.a.x, 35826i), vec4<i32>(-1i, 0i, global1.c, global1.c))) & min(global1.a, vec4<i32>(12843i, 2147483647i, 2147483647i, arg_1))), 718f, -45547i, false);
    global1 = Struct_1(min(vec4<i32>(global1.a.x, var_0.c, _wgslsmith_sub_i32(_wgslsmith_sub_i32(2563i, global1.a.x), -2147483647i), -105540i), ~select(-vec4<i32>(-6928i, 29798i, -1i, -2147483647i), vec4<i32>(var_1.c, var_0.c, 0i, 1i) ^ vec4<i32>(0i, global1.c, 22743i, -8608i), global1.d)), var_1.b, _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(abs(1i), firstLeadingBit(~var_1.c))), select(var_1.d, any(select(select(vec4<bool>(true, global1.d, global1.d, var_1.d), vec4<bool>(var_1.d, false, false, var_1.d), vec4<bool>(false, var_0.d, false, var_1.d)), select(vec4<bool>(global1.d, true, false, false), vec4<bool>(var_0.d, true, global1.d, true), vec4<bool>(global1.d, var_0.d, true, var_1.d)), !vec4<bool>(global1.d, global1.d, var_0.d, true))), false));
    let var_2 = any(!(!vec3<bool>(var_1.d, var_1.d, true)));
    return Struct_1(_wgslsmith_mod_vec4_i32(var_1.a, ~var_0.a), _wgslsmith_f_op_f32(-global1.b), 78340i, !select(false, var_2, global1.d));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -arg_2.a.wz;
    let var_1 = ~(i32(-1i) * -4471i);
    let var_2 = arg_0;
    global3 = u_input.a;
    global0 = array<f32, 13>();
    return func_2(1f, global1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0 - var_2), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.b, 1993f, arg_2.b))), !vec3<bool>(arg_1, false, false))), _wgslsmith_f_op_vec3_f32(var_2 * arg_0)) + vec3<f32>(global0[_wgslsmith_index_u32(max(global3.x, global2[_wgslsmith_index_u32(u_input.b.x, 1u)]) ^ 0u, 13u)], global1.b, _wgslsmith_f_op_f32(-arg_2.b))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    global2 = array<u32, 1>();
    let var_0 = arg_1.zx;
    var var_1 = all(vec4<bool>(all(vec3<bool>(arg_0.d, false, true)), ~arg_0.c != (-arg_0.c & firstLeadingBit(global1.c)), !any(vec3<bool>(true, global1.d, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -1486f) * global0[_wgslsmith_index_u32(~15305u, 13u)]) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -967f)))));
    var_1 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b)) + _wgslsmith_div_f32(299f, -1047f)), _wgslsmith_f_op_f32(449f * _wgslsmith_f_op_f32(f32(-1f) * -318f)), _wgslsmith_f_op_f32(func_2(1655f, arg_0.a.x, vec3<f32>(arg_0.b, 2543f, -982f)).b * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 13u)] - 697f)))), !all(!vec4<bool>(global1.d, arg_0.d, true, true)), Struct_1(~_wgslsmith_mult_vec4_i32(arg_0.a, arg_0.a) & max(vec4<i32>(-2147483647i, arg_0.c, arg_0.a.x, global1.c), ~arg_0.a), 399f, 2147483647i, global1.d & (reverseBits(-1i) != (arg_0.c >> (u_input.c % 32u))))).d;
    global4 = global1.b;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_add_vec4_i32(global1.a ^ ((global1.a << (vec4<u32>(0u, u_input.c, 23456u, global3.x) % vec4<u32>(32u))) << (vec4<u32>(19736u, global3.x, 1u, global2[_wgslsmith_index_u32(4294967295u, 1u)]) % vec4<u32>(32u))), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(28434i, 1i, -13840i, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.c, 2147483647i, global1.a.x, 9832i), vec4<i32>(global1.c, -28534i, global1.c, global1.c))))), _wgslsmith_f_op_f32(-global1.b), 37830i, global1.d);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1053f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -447f))), global1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], 512f)), global1.d & true, Struct_1(vec4<i32>(global1.c, 0i, -2147483647i, global1.c), 1000f, global1.a.x, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1081f, global0[_wgslsmith_index_u32(31611u, 13u)], global0[_wgslsmith_index_u32(global3.x, 13u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)], 13u)]) - vec4<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37119u, 1u)], 13u)], global1.b, -1339f, 590f))))) * global1.b));
    var var_1 = vec4<bool>(true, true, true, true);
    let var_2 = Struct_1(vec4<i32>(global1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(global1.a.xw, global1.a.yy), _wgslsmith_dot_vec3_i32(global1.a.wxw, global1.a.ywy), _wgslsmith_mult_i32(global1.c, -1i), -global1.c), vec4<i32>(1i, global1.c, global1.a.x, global1.c)), max(-1i, -select(global1.c, 0i, true)), -(~(-global1.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + global0[_wgslsmith_index_u32(global3.x, 13u)]))), global0[_wgslsmith_index_u32(0u, 13u)])), -(global1.c >> ((_wgslsmith_mod_u32(global3.x, global3.x) & 4294967295u) % 32u)), global1.d);
    var var_3 = u_input.a;
    let var_4 = select(!select(!(!vec2<bool>(var_2.d, var_2.d)), !var_1.wx, select(select(vec2<bool>(var_1.x, false), vec2<bool>(global1.d, true), var_1.x), !var_1.xz, var_2.d)), vec2<bool>(global1.d != false, global1.d), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * var_0.x)), _wgslsmith_div_i32(firstLeadingBit(-var_2.c), -11828i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1(vec3<f32>(var_2.b, var_0.x, var_0.x), false, Struct_1(var_2.a, -1974f, global1.c, true)).b, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_div_f32(var_2.b, 582f)))).d);
    var var_5 = 0u;
    let var_6 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3166f * _wgslsmith_f_op_f32(min(272f, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(35957u, var_3.x, 37647u), 13u)]))) - _wgslsmith_f_op_f32(f32(-1f) * -333f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(111100u, 1u)], 13u)]), _wgslsmith_f_op_f32(global1.b + -379f))), var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -700f), -825f));
    let var_7 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(global2[_wgslsmith_index_u32(var_3.x, 1u)] << (1u % 32u)), vec4<i32>(1i, countOneBits(1i), var_2.a.x, var_2.a.x));
}

