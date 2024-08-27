struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = vec2<u32>(countOneBits(arg_1.c.x), _wgslsmith_mod_u32(arg_2.c.x, 8605u));
    let var_1 = arg_2;
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(214f, var_2.a.x, -304f, 150f), vec4<f32>(arg_2.a.x, var_1.a.x, -207f, -407f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(901f, arg_3.a.x, 425f, arg_2.a.x), vec4<f32>(var_2.a.x, -635f, arg_2.a.x, var_1.a.x), vec4<bool>(true, true, false, true))))))));
    var var_4 = arg_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.a.x)), _wgslsmith_f_op_f32(floor(-2230f)))))), _wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - -1745f), true)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec2<i32>) -> vec4<f32> {
    var var_0 = Struct_1(vec3<f32>(-991f, 2255f, _wgslsmith_f_op_f32(func_3(abs(1i), arg_0, Struct_1(vec3<f32>(arg_0.a.x, arg_0.a.x, -345f), arg_0.b, vec4<u32>(4294967295u, arg_2, arg_2, 89371u)), arg_0))), max(vec4<i32>(1i, ~_wgslsmith_dot_vec3_i32(arg_0.b.yzz, arg_0.b.wxy), -1i & ~arg_0.b.x, -2147483647i), firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.b, arg_0.b), firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, arg_3.x, -1i))))), u_input.a);
    var_0 = arg_0;
    var var_1 = ~u_input.c;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(524f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(213f - -1725f) - _wgslsmith_f_op_f32(select(405f, 416f, false))), arg_0.a.x) - vec3<f32>(arg_0.a.x, -312f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-arg_0.a.x)))), abs(~var_0.b), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(1u, u_input.c, var_0.c.x, u_input.a.x), reverseBits(var_0.c)), _wgslsmith_sub_vec4_u32(~var_0.c, u_input.a)), vec4<u32>(11881u, (arg_2 >> (arg_2 % 32u)) | ~57891u, ~select(24480u, var_0.c.x, arg_1), arg_0.c.x ^ arg_0.c.x), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 33967u, arg_0.c.x), u_input.a, vec4<u32>(arg_2, u_input.a.x, 42061u, u_input.c)) & arg_0.c)));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1745f - -192f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-923f + _wgslsmith_div_f32(-624f, -741f)))))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1356f, _wgslsmith_f_op_f32(129f + 140f), 1f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.x, 1376f, var_3.x, arg_0.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.a.x, -285f, -807f) + vec4<f32>(392f, -162f, -1162f, 1114f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2185f, 783f, var_0.a.x, arg_0.a.x) - vec4<f32>(var_2.a.x, var_0.a.x, 1972f, 1491f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(931f, -407f, -1531f, var_0.a.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, arg_0.a.x, var_2.a.x, var_3.x), vec4<f32>(var_0.a.x, 608f, -1611f, arg_0.a.x), arg_1)) * vec4<f32>(var_0.a.x, var_0.a.x, 268f, var_3.x)))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(857f + arg_0.a.x);
    let var_1 = 475u;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, 163f, -1102f, var_0))))) - vec4<f32>(_wgslsmith_f_op_f32(max(-909f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -2103f)))), _wgslsmith_f_op_f32(-112f - arg_0.a.x), _wgslsmith_f_op_f32(var_0 * arg_0.a.x), 1f));
    var var_3 = _wgslsmith_f_op_vec4_f32(func_2(arg_0, false, u_input.c, arg_0.b.yw));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(arg_0.a.x, var_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), var_0)), -1087f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_3(arg_0.b.x, Struct_1(vec3<f32>(var_2.x, -1601f, -407f), arg_0.b, vec4<u32>(0u, var_1, arg_0.c.x, 38930u)), Struct_1(arg_0.a, arg_0.b, vec4<u32>(arg_0.c.x, u_input.c, 4294967295u, 25408u)), arg_0)))))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~u_input.c, reverseBits(0u));
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_div_vec4_i32(~firstTrailingBit(vec4<i32>(u_input.d, u_input.b, u_input.d, u_input.b)), vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(9952i, 0i, 2147483647i), vec3<i32>(2147483647i, 1i, -2586i)), ~(-2147483647i), ~2147483647i)), u_input.a));
    let var_2 = all(vec4<bool>(any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), false || all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(false, false, false, true), false))));
    let var_3 = 81613u;
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1094f + var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)) - _wgslsmith_div_f32(544f, _wgslsmith_f_op_f32(-var_1.a.x)))), var_1.a.xx);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.xz, 1i, _wgslsmith_f_op_f32(f32(-1f) * -469f));
}

