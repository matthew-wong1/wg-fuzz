struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-358f, 1290f, 300f, 983f);

var<private> global1: vec4<i32> = vec4<i32>(1i, 1i, 2147483647i, -1i);

var<private> global2: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(max(global0.xy, _wgslsmith_f_op_vec2_f32(-global0.xw))));
    var_0 = Struct_3(vec2<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, var_0.a.x)) + -1002f)))));
    let var_1 = _wgslsmith_f_op_f32(floor(arg_1));
    var var_2 = Struct_2(vec2<i32>(~global1.x, (~(-32499i) & arg_3.a.x) & -2147483647i), arg_3.b, arg_3.c);
    let var_3 = var_2.b.a.xx;
    return ~(~arg_3.c.x);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> vec3<i32> {
    let var_0 = Struct_3(vec2<f32>(global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f)))));
    let var_1 = ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(63884u, u_input.c, 4294967295u, u_input.e), vec4<u32>(u_input.c, 5980u, u_input.e, u_input.c)), 0u, 1u) ^ countOneBits(vec3<u32>(~(~u_input.e), ~u_input.e, ~_wgslsmith_mod_u32(0u, u_input.c)));
    global1 = countOneBits(_wgslsmith_sub_vec4_i32(u_input.a, u_input.b) >> ((vec4<u32>(u_input.c, 1u, var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 0u, 0u), vec4<u32>(u_input.e, 1u, var_1.x, 17151u))) & ~(~vec4<u32>(u_input.c, var_1.x, var_1.x, 42043u))) % vec4<u32>(32u)));
    var var_2 = arg_1.yx;
    let var_3 = Struct_2(~(-(arg_1.yy ^ _wgslsmith_add_vec2_i32(global1.wy, vec2<i32>(-495i, -21104i)))), Struct_1(!(!(!vec3<bool>(arg_0, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.a.x, var_0.a.x, 730f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(294f, global0.x, -677f, -455f)), !vec4<bool>(arg_0, arg_0, true, true))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, 698f, var_0.a.x, -548f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(754f, -686f, 915f, var_0.a.x)))))), any(!select(vec2<bool>(arg_0, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(371f - global0.x))) * 1656f), false), ~(~vec4<u32>(4618u, 41481u, 43862u, u_input.c) | ~vec4<u32>(u_input.e, var_1.x, var_1.x, 77592u)));
    return _wgslsmith_mod_vec3_i32(u_input.b.wxy, u_input.b.ywz);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = func_3(u_input.c != ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 4294967295u), func_2(arg_0.c, global0.x, arg_0.e, Struct_2(vec2<i32>(1i, -8549i), Struct_1(arg_0.a, arg_0.b, true, arg_0.b.x, false), vec4<u32>(u_input.c, 15134u, u_input.c, 4294967295u)))), global1.xxx);
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(796f * _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(-arg_0.b.x), arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -168f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, arg_0.d)))));
    let var_2 = !(!vec2<bool>(!(true && arg_0.a.x), (u_input.e > u_input.e) & true));
    var_0 = u_input.a.xxy;
    let var_3 = global0.xy;
    return -1090f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.wy);
    global2 = !all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)));
    global0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * 1692f)), global0.x, -1435f)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1404f, _wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(true, true, false), vec4<f32>(global0.x, 444f, -855f, 1031f), false, -765f, false))), global0.x)))));
    var var_1 = 31726u;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2099f);
    let var_3 = all(select(vec4<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false)), true, 58120u > ~u_input.c, _wgslsmith_f_op_f32(select(935f, 746f, true)) <= -1108f), !vec4<bool>(true, any(vec2<bool>(false, true)), false, true), 4294967295u == ~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(global1.x, -2147483647i), u_input.d.x, i32(-1i) * -7608i) ^ max(vec3<i32>(-2147483647i, 1i, 0i), ~vec3<i32>(u_input.d.x, u_input.a.x, u_input.d.x))), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(353f)))))));
}

