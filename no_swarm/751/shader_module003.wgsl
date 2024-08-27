struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(0u);
    let var_1 = Struct_1(~(firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 30676u)) << ((_wgslsmith_mult_u32(4294967295u, arg_0.a) ^ select(19931u, 0u, false)) % 32u)));
    var var_2 = Struct_1(~_wgslsmith_mod_u32(arg_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.a, 0u, u_input.b) << (vec4<u32>(17199u, arg_1.a, 4294967295u, 23428u) % vec4<u32>(32u)), ~vec4<u32>(var_1.a, 4294967295u, 1u, 4294967295u))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(807f, 1000f, -1531f, _wgslsmith_f_op_f32(f32(-1f) * -265f))));
    var var_4 = !(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)));
    return ~select(abs(~abs(vec2<u32>(8377u, 0u))), vec2<u32>(var_2.a, 15535u), select(var_4.yy, select(vec2<bool>(false, var_4.x), !var_4.yz, false), !(!vec2<bool>(var_4.x, true))));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = firstLeadingBit(~min(~vec2<u32>(arg_0.a, arg_0.a) >> (_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, 55796u), vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), abs(vec2<u32>(arg_0.a, 1u)) | _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a, 17361u), vec2<u32>(arg_0.a, 66631u))));
    let var_1 = true;
    var_0 = ~_wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(~vec2<u32>(14079u, u_input.b), ~vec2<u32>(var_0.x, u_input.a)), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(47755u, arg_0.a), vec2<u32>(var_0.x, 82348u))));
    var_0 = select(vec2<u32>(_wgslsmith_sub_u32(var_0.x, 0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(43973u, u_input.a), ~vec2<u32>(arg_0.a, u_input.b))) | func_3(Struct_1(_wgslsmith_add_u32(39674u, 21143u)), arg_0), vec2<u32>(~45743u, var_0.x), !vec2<bool>(any(vec4<bool>(var_1, var_1, true, var_1)), _wgslsmith_f_op_f32(floor(-1389f)) < _wgslsmith_f_op_f32(848f + 1088f)));
    var var_2 = abs(~vec4<i32>(-21614i, u_input.c, -(u_input.c ^ -20882i), u_input.d));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1759f + 123f), _wgslsmith_f_op_f32(floor(718f)), all(vec2<bool>(true, false)))), 242f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(184f - -1000f) * -195f)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.x))) - arg_1.x);
    let var_1 = arg_0.x;
    let var_2 = abs(vec2<i32>(2147483647i, 23412i));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(432f - arg_1.x) + 260f), arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.x)))))));
    let var_4 = Struct_1(1u);
    return abs(var_4.a);
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = ((u_input.c & ((i32(-1i) * -19147i) & u_input.d)) & -46676i) >= u_input.c;
    var var_1 = vec4<u32>(~(~1u), ~arg_0, u_input.a, ~min(func_4(select(vec2<bool>(false, true), vec2<bool>(false, false), true), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(4294967295u)))), 4294967295u));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(~countOneBits(~var_1.wzy), var_1.zww));
    var_0 = true;
    let var_3 = _wgslsmith_f_op_f32(566f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-961f + -1024f), _wgslsmith_f_op_f32(-128f - -894f), all(vec4<bool>(true, true, true, false))))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return !(!((func_4(vec2<bool>(false, var_3), vec2<f32>(407f, 809f)) << (0u % 32u)) <= arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = vec4<bool>(true, all(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, func_1(30023u))), any(vec4<bool>(true, true, true, true)), !(-u_input.c >= (_wgslsmith_dot_vec2_i32(vec2<i32>(16044i, var_0), vec2<i32>(-1i, var_0)) << (~50587u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-940f, -2886f, -1514f, 1903f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(156f, -520f, 940f, 2011f)))))), abs(_wgslsmith_div_vec2_i32(-vec2<i32>(var_0, 20281i), select(-vec2<i32>(5101i, 0i), abs(vec2<i32>(2147483647i, -46504i)), !vec2<bool>(false, var_1.x)))));
}

