struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec3<i32>(1i, 7740i, -31134i), 586f, -21641i), Struct_3(vec3<i32>(2147483647i, 0i, -46011i), 318f, i32(-2147483648)), Struct_3(vec3<i32>(2147483647i, -13111i, -9331i), 886f, 1694i), Struct_3(vec3<i32>(-6873i, 2147483647i, 1i), 540f, -32673i), Struct_3(vec3<i32>(45603i, 3547i, 4727i), 283f, 36033i), Struct_3(vec3<i32>(0i, 2147483647i, -17771i), 710f, -27568i), Struct_3(vec3<i32>(4112i, 0i, 2147483647i), -321f, 2147483647i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    global0 = array<Struct_3, 7>();
    let var_0 = _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    return _wgslsmith_mod_i32(-2147483647i, ~(~u_input.b & _wgslsmith_add_i32(i32(-1i) * -2147483647i, u_input.b & u_input.b)));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: u32) -> vec3<f32> {
    let var_0 = Struct_1(-1i, vec3<i32>(-(~u_input.b) | arg_0, 2222i, func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(218f, -1160f, 647f, 377f))) | func_3(vec4<f32>(-774f, 123f, 970f, -171f))));
    let var_1 = !arg_1;
    let var_2 = !(!select(select(!vec2<bool>(arg_1, false), vec2<bool>(arg_1, var_1), vec2<bool>(var_1, false)), vec2<bool>(true, true), all(!vec2<bool>(false, arg_1))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1222f, 1690f), _wgslsmith_f_op_f32(max(315f, -2735f)), _wgslsmith_f_op_f32(step(-1000f, 159f)), 1f) - vec4<f32>(_wgslsmith_f_op_f32(ceil(1010f)), _wgslsmith_f_op_f32(-2761f - 735f), _wgslsmith_f_op_f32(f32(-1f) * -977f), -620f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(443f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(296f - 543f)) + _wgslsmith_f_op_f32(floor(531f))), _wgslsmith_f_op_f32(f32(-1f) * -132f), -1583f));
    global0 = array<Struct_3, 7>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -593f, -1177f) - _wgslsmith_div_vec3_f32(var_3.xzx, var_3.yzz)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_3.yww * vec3<f32>(var_3.x, -682f, 876f)))))), vec3<bool>(var_2.x || arg_1, false, true))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), -169f)), var_3.x), vec3<f32>(_wgslsmith_f_op_f32(-468f + _wgslsmith_f_op_f32(ceil(-1883f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-495f, -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), var_3.x))))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> f32 {
    let var_0 = countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(1u, 43750u), firstTrailingBit(u_input.c), 43717u), abs(vec3<u32>(37012u, u_input.c, ~0u))));
    var var_1 = arg_2.c.b;
    let var_2 = -627f;
    var var_3 = _wgslsmith_f_op_vec3_f32(func_2(20205i, false, abs(51627u)));
    var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1121f, var_3.x, 1100f)))), _wgslsmith_f_op_vec3_f32(func_2(u_input.a, !arg_2.a, _wgslsmith_mod_u32(4294967295u >> (var_0.x % 32u), 4294967295u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_3.x + var_2), _wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(ceil(-1400f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(595f, var_3.x, -1000f), vec3<f32>(var_3.x, var_2, -246f), vec3<bool>(false, arg_0.a, false))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 410f, -751f))))))));
    return 252f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(1238f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1518f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(Struct_2(true, Struct_1(-2147483647i, vec3<i32>(u_input.a, -14679i, u_input.b)), Struct_1(u_input.b, vec3<i32>(-2176i, -31335i, -47030i))), u_input.a, Struct_2(false, Struct_1(u_input.b, vec3<i32>(8721i, 1i, 10097i)), Struct_1(u_input.a, vec3<i32>(0i, u_input.a, u_input.b))))))), -844f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_2(u_input.b, true, u_input.c)).x, -600f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(517f - 600f))) * _wgslsmith_f_op_f32(-1409f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-522f - -757f) * _wgslsmith_f_op_f32(-162f - 2627f)))));
    let var_1 = select(abs(~reverseBits(abs(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c)))), select(~abs(vec4<u32>(65457u, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(50584u, 33746u, u_input.c, u_input.c)), ~(~(vec4<u32>(u_input.c, 53638u, u_input.c, 51333u) << (vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u) % vec4<u32>(32u)))), true), !(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))));
    let var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(961f))) + var_0.x), _wgslsmith_f_op_f32(step(var_0.x, -568f)), -933f) - _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(9301i, ~(-2596i)), ~(var_2 ^ 1i), 5580i), any(vec4<bool>(true, true, true, true)), 0u)));
    global0 = array<Struct_3, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -(~(-vec3<i32>(var_2, var_2, u_input.b)) & vec3<i32>(2147483647i, reverseBits(-11498i), -2147483647i)), u_input.c, select(var_2, -1i | var_2, true));
}

