struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_0.b), select(_wgslsmith_add_vec4_u32(vec4<u32>(72956u, u_input.c.x, 0u, 65308u) & vec4<u32>(43149u, 4294967295u, 38431u, 4294967295u), vec4<u32>(4294967295u, 0u, u_input.b.x, 23126u) | u_input.c), u_input.c, vec4<bool>(any(vec2<bool>(true, arg_0.a.x)) | !arg_0.a.x, true | !arg_0.a.x, all(vec2<bool>(arg_0.a.x, arg_0.a.x)), true)), !select(arg_0.a, arg_0.a, true), vec2<i32>(-12808i, i32(-1i) * -1i));
    var var_1 = vec4<bool>(var_0.c.x && !var_0.c.x, all(!select(arg_0.a.yz, !vec2<bool>(false, var_0.c.x), arg_0.a.x)), true, all(!(!select(var_0.c, arg_0.a, vec4<bool>(false, arg_0.a.x, var_0.c.x, var_0.c.x)))));
    var_1 = var_0.c;
    let var_2 = true;
    let var_3 = !arg_0.a;
    return _wgslsmith_f_op_f32(round(var_0.a.x));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_0, arg_1, arg_0) * vec4<f32>(1236f, arg_1, -175f, arg_0)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-147f, -236f, -544f, arg_0), vec4<f32>(-267f, arg_1, arg_0, 1560f), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 924f, arg_1))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), 1000f >= arg_1))))), u_input.c | vec4<u32>(_wgslsmith_mod_u32(arg_2, 1u), u_input.c.x, _wgslsmith_mod_u32(u_input.a, 69906u) ^ ~42318u, 1u), !select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(true, false)), true, any(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true)), u_input.d.xx);
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, 1000f)), _wgslsmith_f_op_f32(abs(1000f)))), 180f, -2242f), ~_wgslsmith_div_vec4_u32(~(vec4<u32>(var_0.b.x, u_input.a, 81663u, var_0.b.x) ^ vec4<u32>(var_0.b.x, var_0.b.x, var_0.b.x, 21584u)), ~u_input.c), var_0.c, u_input.d.zx);
    let var_1 = var_0.a.xxy;
    let var_2 = var_0.c.x;
    var_0 = Struct_1(var_0.a, var_0.b, var_0.c, -vec2<i32>(var_0.d.x | 2147483647i, firstLeadingBit(u_input.d.x)) & max(~abs(vec2<i32>(u_input.d.x, var_0.d.x)), vec2<i32>(max(u_input.d.x, u_input.e), 31165i << (1u % 32u))));
    return _wgslsmith_f_op_f32(select(var_0.a.x, arg_0, false));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<u32>) -> vec2<bool> {
    var var_0 = Struct_4(Struct_3(abs(4294967295u) & ~_wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.b.zy)), Struct_1(vec4<f32>(_wgslsmith_div_f32(arg_0, 1128f), -687f, _wgslsmith_f_op_f32(func_4(_wgslsmith_div_f32(-426f, arg_0), _wgslsmith_f_op_f32(func_3(Struct_5(vec4<bool>(false, true, false, false), vec4<f32>(1473f, arg_0, arg_0, -1148f), vec3<f32>(146f, arg_0, arg_0)))), arg_1)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(step(180f, 679f)))), vec4<u32>(_wgslsmith_mod_u32(arg_1, firstLeadingBit(30067u)), arg_1, 0u, _wgslsmith_mod_u32(arg_1, 56457u)), vec4<bool>(!any(vec2<bool>(true, false)), true && all(vec2<bool>(true, true)), !(u_input.b.x < 1u), all(vec3<bool>(false, false, true))), vec2<i32>(firstTrailingBit(-42830i), 1i)), Struct_3(arg_2.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1354f, var_0.b.a.x, arg_0, var_0.b.a.x) * _wgslsmith_div_vec4_f32(var_0.b.a, vec4<f32>(arg_0, -2123f, -560f, var_0.b.a.x)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0.b.a)))), vec4<u32>(~(_wgslsmith_clamp_u32(24139u, 4294967295u, 17523u) >> (arg_2.x % 32u)), 12626u, _wgslsmith_dot_vec4_u32(abs(abs(u_input.c)), var_0.b.b), var_0.c.a), vec4<bool>(false, !select(false, true, true), !(_wgslsmith_f_op_f32(max(arg_0, arg_0)) == _wgslsmith_f_op_f32(arg_0 + -616f)), true), vec2<i32>(-u_input.d.x, _wgslsmith_mult_i32(-31268i, u_input.d.x)));
    let var_2 = Struct_4(var_0.a, var_0.b, var_0.a);
    var_0 = var_2;
    var var_3 = Struct_5(vec4<bool>(!(var_0.b.c.x || (var_0.b.a.x >= -2064f)), var_0.b.c.x, any(var_2.b.c.wyx), true), _wgslsmith_f_op_vec4_f32(var_2.b.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(2028f, -967f, _wgslsmith_f_op_f32(var_2.b.a.x - 1904f), arg_0) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-300f, var_1.a.x, 1000f, arg_0))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.b.a.x), _wgslsmith_f_op_f32(-var_2.b.a.x))), _wgslsmith_f_op_f32(select(1278f, _wgslsmith_f_op_f32(exp2(arg_0)), true))))));
    return vec2<bool>(true, -2147483647i <= ~(var_1.d.x & var_0.b.d.x));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    let var_0 = Struct_3(u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(980f))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.x)), -380f))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -205f))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(347f))), var_1.x))));
    var var_3 = !vec2<bool>(any(!func_2(-117f, u_input.c.x, vec4<u32>(var_0.a, 1u, 16845u, var_0.a))), false);
    return StorageBuffer(17199u, 45770i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1232f)))), u_input.b.x, ~max(var_0.a >> ((0u ^ u_input.b.x) % 32u), _wgslsmith_mod_u32(select(30525u, 27767u, var_3.x), ~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, 466f, 910f)), vec3<f32>(-438f, 1000f, -361f), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-559f, -365f, -1720f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(595f, -702f, 660f), vec3<f32>(202f, -1210f, -682f))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1004f), 453f, -542f))));
    let var_1 = ~(~reverseBits(~(u_input.b & vec3<u32>(u_input.c.x, u_input.a, u_input.c.x))));
    let var_2 = true;
    let x = u_input.a;
    s_output = func_1(-387f);
}

