struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 1>();
    var var_0 = true | !all(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1376f)), _wgslsmith_f_op_f32(step(869f, -823f))));
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.a)))));
    var var_3 = Struct_1(var_1.a);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_f_op_f32(582f * var_1.a.x), select(false, true, true))) - _wgslsmith_f_op_f32(f32(-1f) * -988f)))));
}

fn func_2(arg_0: u32) -> bool {
    global0 = array<Struct_1, 1>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-498f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f))));
    var var_1 = u_input.b;
    let var_2 = 47542i;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(-648f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(483f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(353f * 1298f), _wgslsmith_f_op_f32(step(932f, 1192f)))))));
    return var_1.x != (u_input.a.x & 9946i);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = any(arg_3.xyx) | true;
    var_0 = false;
    global0 = array<Struct_1, 1>();
    var var_1 = global0[_wgslsmith_index_u32(~(~5253u), 1u)];
    var var_2 = arg_3.wyx;
    return Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1154f)) - _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, 516f) - vec2<f32>(var_1.a.x, -1496f))))));
}

fn func_1() -> Struct_1 {
    var var_0 = -1178f;
    let var_1 = func_4(reverseBits(select(10097u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(31649u, 8255u, 71278u), vec3<u32>(3085u, 0u, 4294967295u)), func_2(1u))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), select(true, false, false)), vec3<bool>(true, true, true), all(vec3<bool>(true, false, true)) != true), vec2<u32>(1u, 1u), select(vec4<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, false, true)) | true, false, all(vec3<bool>(true, true, true))), select(vec4<bool>(true, false, true, false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), select(true, true, true)), !select(false, false, false)), (any(vec2<bool>(false, true)) & true) && any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))));
    var_0 = _wgslsmith_f_op_f32(min(386f, 542f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-109f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - -1000f) + var_1.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 1625f, var_1.a.x, 1363f)), vec4<f32>(var_1.a.x, -823f, 2490f, var_1.a.x), true)) * vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), 1527f, _wgslsmith_f_op_f32(abs(209f)), _wgslsmith_f_op_f32(-var_1.a.x)))));
    return Struct_1(var_2.wy);
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = select(select(vec2<bool>(func_2(~30741u), any(vec3<bool>(true, false, false))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), -2012f != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)))), select(select(vec2<bool>(true, true), vec2<bool>(true, select(false, false, false)), false), vec2<bool>(any(vec2<bool>(true, false)), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 99496u), vec3<u32>(4294967295u, 4294967295u, 0u)), firstTrailingBit(97881u)) > 1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-304f, -208f, arg_0.a.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)))), (i32(-1i) * -1i) >= u_input.b.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1020f, 409f, 434f) * vec3<f32>(arg_0.a.x, -204f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(1101f * arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x)))));
    global0 = array<Struct_1, 1>();
    let var_2 = select(vec3<bool>(!(!var_0.x) & !all(vec3<bool>(true, var_0.x, var_0.x)), false & !var_0.x, -(u_input.a.x >> (6007u % 32u)) == abs(i32(-1i) * -3548i)), vec3<bool>(var_0.x, var_0.x, !var_0.x), select(603f != func_4(firstLeadingBit(22880u), !vec3<bool>(var_0.x, var_0.x, var_0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u)), vec4<bool>(true, var_0.x, var_0.x, var_0.x)).a.x, true, var_0.x));
    let var_3 = ~countOneBits(vec3<i32>(-2147483647i, ~_wgslsmith_mod_i32(-54471i, u_input.a.x), 0i));
    return func_1().a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_5(func_1())), -584f));
    let x = u_input.a;
    s_output = StorageBuffer(select(~select(u_input.b, vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.b.x), vec4<bool>(true, true, true, true)), u_input.b, select(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))))), abs(select(~vec2<u32>(4776u, 1u), vec2<u32>(1u, 1u), true) ^ ~vec2<u32>(1u, 1u)));
}

