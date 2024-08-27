struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(4294967295u, 4294967295u, 1u, 4294967295u, 1u, 4294967295u, 52853u, 1u, 62956u, 4294967295u, 8535u, 62841u, 4294967295u, 85831u, 1u, 38237u, 36699u, 0u, 27556u);

var<private> global1: Struct_1 = Struct_1(621f, vec3<f32>(-1119f, 990f, 714f), vec2<bool>(false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_1.c.x;
    let var_1 = Struct_1(-461f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-109f + 559f), _wgslsmith_f_op_f32(global1.a * 926f), 1066f)))), arg_2.c);
    global0 = array<u32, 19>();
    global1 = arg_2;
    global1 = var_1;
    return ~vec3<i32>(1i, _wgslsmith_sub_i32(1i, u_input.d), i32(-1i) * -u_input.d);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    global1 = Struct_1(532f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1809f + arg_1.a)), -547f, -100f)), vec2<bool>(false, arg_0.c.x));
    global0 = array<u32, 19>();
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = global1.c;
    return select(-(~vec3<i32>(-1i, u_input.a.x, 1i) | ~vec3<i32>(u_input.a.x, -1i, u_input.a.x)) >> (~_wgslsmith_sub_vec3_u32(max(vec3<u32>(4294967295u, 1u, 4294967295u), u_input.c.yxx), ~vec3<u32>(63288u, global0[_wgslsmith_index_u32(u_input.b, 19u)], 1u)) % vec3<u32>(32u)), -(vec3<i32>(~u_input.d, u_input.d, -11355i) ^ ~vec3<i32>(u_input.d, u_input.d, -2147483647i)), !(!var_0.c.x));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: i32) -> Struct_1 {
    global0 = array<u32, 19>();
    let var_0 = max(_wgslsmith_mod_vec4_u32(u_input.c, vec4<u32>(global0[_wgslsmith_index_u32(79192u, 19u)], 106733u, u_input.b, 4294967295u)) | vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 19u)] << (global0[_wgslsmith_index_u32(8519u, 19u)] % 32u), _wgslsmith_div_u32(u_input.c.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], u_input.c.x, u_input.c.x), vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(u_input.c.x, 19u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], 19u)] & 1u), ~select(vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 19u)], 4294967295u, u_input.c.x, u_input.b), true) ^ vec4<u32>(33883u, 1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], 19u)], 0u)) << (~(~u_input.c >> (~_wgslsmith_mult_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = Struct_1(546f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-553f, -1794f, 622f)))))), vec2<bool>(any(vec4<bool>(true, true, true, !arg_2)), !(!global1.c.x)));
    var var_2 = vec3<bool>(!global1.c.x && arg_2, !global1.c.x, true);
    var var_3 = firstTrailingBit(28509u) << (((_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.c.x, global0[_wgslsmith_index_u32(u_input.b, 19u)], global0[_wgslsmith_index_u32(u_input.b, 19u)])), ~vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(0u, 19u)], 38573u, 4294967295u)) << (_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(60714u, 19u)], _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_0.x, 19u)], var_0.x)) % 32u)) ^ _wgslsmith_clamp_u32(max(u_input.c.x, var_0.x) | _wgslsmith_clamp_u32(1u, u_input.c.x, 0u), abs(~var_0.x), ~var_0.x >> (max(14699u, 1u) % 32u))) % 32u);
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -630f, _wgslsmith_div_f32(var_1.a, var_1.a))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -946f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.x, -1000f) - -692f), _wgslsmith_div_f32(-247f, _wgslsmith_f_op_f32(global1.a - -348f)))), !var_1.c);
}

fn func_1() -> Struct_1 {
    global1 = Struct_1(333f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b))), global1.c);
    let var_0 = func_4(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-971f, global1.a, global1.b.x, global1.b.x), vec4<f32>(global1.a, global1.a, global1.b.x, 469f), false)), Struct_1(1335f, vec3<f32>(global1.a, -1039f, global1.a), vec2<bool>(false, false)), Struct_1(326f, global1.b, vec2<bool>(true, true))), abs(func_3(Struct_1(global1.a, global1.b, global1.c), Struct_1(global1.b.x, global1.b, vec2<bool>(global1.c.x, false))))), vec3<i32>(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_div_i32(~u_input.d, _wgslsmith_div_i32(u_input.d, u_input.d)), ~0i)), -1i, all(select(vec4<bool>(false, global1.c.x | true, false, true), select(!vec4<bool>(global1.c.x, false, false, false), vec4<bool>(false, global1.c.x, false, false), !global1.c.x), select(!vec4<bool>(true, global1.c.x, false, true), select(vec4<bool>(false, global1.c.x, false, global1.c.x), vec4<bool>(global1.c.x, false, false, global1.c.x), global1.c.x), select(vec4<bool>(false, true, global1.c.x, global1.c.x), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), global1.c.x)))), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.d, u_input.a.x, -44598i) >> (max(u_input.c.ywz, u_input.c.zyz) % vec3<u32>(32u))), ~(~vec3<i32>(u_input.d, u_input.a.x, u_input.a.x))));
    let var_1 = func_4(vec3<i32>(-2147483647i, u_input.d, min(~1i, u_input.a.x) & -u_input.d), select(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(u_input.a.x, u_input.d) >> (vec2<u32>(14828u, 34304u) % vec2<u32>(32u))), (max(2147483647i, u_input.a.x) & -39192i) & (u_input.a.x | 1i), !(true & var_0.c.x)), select(all(select(!vec3<bool>(true, var_0.c.x, true), !vec3<bool>(var_0.c.x, var_0.c.x, false), vec3<bool>(var_0.c.x, var_0.c.x, true))), true, !var_0.c.x), ~(-_wgslsmith_mult_i32(u_input.a.x, -2147483647i) << (reverseBits(~u_input.b) % 32u))).c;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(-1257f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-434f, global1.b.x, 1309f))), _wgslsmith_f_op_vec3_f32(-global1.b))))), vec2<bool>(true, all(vec3<bool>(any(vec4<bool>(global1.c.x, var_0.c.x, false, global1.c.x)), var_1.x, true))));
    global0 = array<u32, 19>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b.x), global1.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-643f, global1.b.x, var_0.b.x)))), vec2<bool>(false, any(select(vec4<bool>(false, global1.c.x, false, var_2.c.x), !vec4<bool>(var_0.c.x, var_1.x, global1.c.x, false), select(vec4<bool>(var_0.c.x, true, var_1.x, false), vec4<bool>(var_0.c.x, global1.c.x, true, true), vec4<bool>(var_0.c.x, var_0.c.x, false, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    global0 = array<u32, 19>();
    let var_0 = u_input.d;
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    var var_1 = vec4<i32>(-2147483647i, ~(-func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 956f, global1.a, 3044f) + vec4<f32>(-507f, global1.a, global1.b.x, global1.a)), func_1(), Struct_1(383f, vec3<f32>(global1.a, 298f, -1530f), global1.c)).x), 55434i, ~(-5967i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(_wgslsmith_add_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 36125u), 0u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b ^ 33148u, 19u)], 19u)] ^ 0u), 242f, select(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xw, abs(vec2<u32>(34531u, global0[_wgslsmith_index_u32(68574u, 19u)]))), 19u)], select(~60711u, _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], 19u)]), false)), vec2<u32>(~6876u, u_input.c.x), true), global1.a, u_input.c.yz);
}

