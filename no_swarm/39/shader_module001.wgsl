struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(708f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(962f - arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -1729f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_div_f32(-632f, 487f))));
    var var_1 = vec3<u32>(select(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(arg_2.c.x, 1u, u_input.b)), vec3<u32>(_wgslsmith_add_u32(arg_2.c.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.c.x, 49496u, 40059u), vec3<u32>(30911u, arg_2.c.x, 39410u)), countOneBits(27021u))), min(_wgslsmith_mult_u32(arg_2.c.x, ~arg_2.c.x), _wgslsmith_clamp_u32(~u_input.b, 1u >> (0u % 32u), firstTrailingBit(14408u))), select(!arg_1, true, false)), 84742u, ~arg_2.c.x);
    var var_2 = arg_2.a.yx;
    let var_3 = arg_2;
    var var_4 = vec3<f32>(-1967f, -1625f, 1f);
    return arg_2.c.x;
}

fn func_2() -> f32 {
    var var_0 = vec2<u32>(736u ^ ~_wgslsmith_clamp_u32(25181u, u_input.b, abs(36213u)), 23434u);
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -849f), -1136f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-576f * 1619f))))), false, vec2<u32>(func_3(_wgslsmith_f_op_f32(max(566f, -693f)), all(vec4<bool>(true, true, false, false)), Struct_1(vec3<f32>(807f, 1161f, 1034f), true, vec2<u32>(u_input.b, u_input.b), true)), firstTrailingBit(~u_input.b)) & vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, var_0.x), var_0.x), u_input.b), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, false), true)) != any(vec3<bool>(true, true, u_input.b < 4294967295u)));
    var_0 = var_1.c >> (_wgslsmith_mult_vec2_u32(vec2<u32>(~(25085u ^ var_1.c.x), 170792u), vec2<u32>(_wgslsmith_add_u32(~var_1.c.x, 4294967295u), u_input.b | var_0.x)) % vec2<u32>(32u));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), any(select(!select(vec4<bool>(var_1.d, false, var_1.d, var_1.b), vec4<bool>(var_1.d, var_1.d, false, false), false), vec4<bool>(all(vec2<bool>(true, false)), var_1.d, true, all(vec4<bool>(var_1.d, true, var_1.b, var_1.d))), var_1.d)), var_1.c, any(!(!vec2<bool>(var_1.b, true))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(var_1.a)))))), true, _wgslsmith_add_vec2_u32(~min(var_1.c, ~vec2<u32>(58534u, 16524u)), ~var_1.c), var_1.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-265f)), _wgslsmith_f_op_f32(-1404f + 1203f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1836f - -599f)))), 152f), arg_1.x, vec2<u32>(1u, abs(arg_2)), arg_1.x);
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_2()), 1875f, var_0.a.x), ~var_0.c.x >= u_input.b, select(abs(~vec2<u32>(var_0.c.x, 51137u) >> (var_0.c % vec2<u32>(32u))), vec2<u32>(~u_input.b, var_0.c.x), arg_1.xz), arg_1.x);
    var_0 = Struct_1(var_0.a, true || (-561f >= _wgslsmith_f_op_f32(1701f * _wgslsmith_f_op_f32(floor(-103f)))), ~abs(_wgslsmith_clamp_vec2_u32(var_0.c, abs(var_0.c), var_0.c | vec2<u32>(21540u, u_input.b))), all(vec3<bool>(arg_1.x, arg_1.x, false)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.x, var_0.a.x, 1000f), vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))))))), any(!(!arg_1.xw)), abs(_wgslsmith_clamp_vec2_u32(firstTrailingBit(var_0.c), var_0.c, var_0.c | var_0.c) | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, var_0.c.x), vec2<u32>(99367u, 2870u))), any(arg_1.zz));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = any(vec2<bool>(all(select(vec4<bool>(arg_0.d, arg_0.d, true, false), vec4<bool>(true, false, false, arg_0.d), vec4<bool>(arg_0.b, true, arg_0.d, true))) & true, all(!(!vec2<bool>(arg_0.d, arg_0.b)))));
    var var_1 = arg_0;
    return func_1(-u_input.a, vec4<bool>(any(vec2<bool>(true, true)), true, true, true), arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(abs(u_input.b));
    let var_1 = func_4(func_1(1i << (u_input.b % 32u), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), ~var_0));
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(639f, var_1.a.x, -968f)))), !(!var_1.d), var_1.c, var_1.b));
    var var_3 = u_input.b;
    let var_4 = ~(var_1.c.x ^ 1u);
    var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_1.c.x, _wgslsmith_add_u32(1u, 0u), var_0, var_1.c.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.a.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a.yz) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-346f, var_2.a.x))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.zz) - func_4(Struct_1(var_1.a, true, vec2<u32>(10941u, var_4), var_1.d)).a.zy)))));
}

