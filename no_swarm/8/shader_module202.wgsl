struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

var<private> global1: vec4<f32> = vec4<f32>(-178f, -113f, -521f, -1367f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    global0 = array<Struct_1, 16>();
    let var_0 = !select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true | (-1019f < global1.x), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec3<bool>(true, false, false))), vec3<bool>(true, true, true)));
    let var_1 = ~(~(~countOneBits(vec2<u32>(124369u, u_input.a)))) & ~vec2<u32>(4294967295u, abs(~58972u));
    global0 = array<Struct_1, 16>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_div_f32(2223f, arg_0.x)), 1566f, -1917f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(481f, arg_1.a, 812f, arg_1.a))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -259f, global1.x, 455f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, 1929f, arg_0.x, -1000f) - vec4<f32>(arg_0.x, arg_1.a, global1.x, arg_1.a))), !(!var_0.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(-478f, -1000f), _wgslsmith_f_op_f32(arg_1.a * -1906f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1408f)))))) * _wgslsmith_f_op_f32(-arg_1.a));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.wy, Struct_1(global1.x), vec4<i32>(u_input.b, u_input.c, u_input.b, u_input.d.x)))), -1256f) * -1000f));
    global1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1349f * global1.x) * global1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a * -1828f))), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(arg_0.a + 460f)) + -168f))));
    var_0 = arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1107f, 314f, -999f))))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(983f, var_0.a, var_0.a, -242f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-146f, var_0.a, arg_0.a, -624f))))))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, 983f, 530f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(108f * var_0.a), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(arg_0.a * 511f), -2070f)), vec4<bool>(true, true, false, true))));
    return (7942u >= ~_wgslsmith_clamp_u32(~0u, 1u >> (u_input.a % 32u), min(u_input.a, 26206u))) && true;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<u32> {
    var var_0 = select(func_2(arg_2), arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_2.a, -994f))))) == global1.x);
    var var_1 = u_input.a;
    let var_2 = arg_0;
    var var_3 = -1847f;
    var_0 = true;
    return firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(9893u, u_input.a, 119152u) << (vec3<u32>(4294967295u, 0u, u_input.a) % vec3<u32>(32u)))), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(22630u, u_input.a))), _wgslsmith_mult_vec2_u32(vec2<u32>(7743u, 26621u) & firstTrailingBit(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~u_input.a, 4294967295u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_mod_u32(37645u, max(~1u, ~(~u_input.a)));
    let var_1 = arg_1;
    let var_2 = vec4<i32>(firstTrailingBit(u_input.d.x), 12604i, min(~select(u_input.c, i32(-1i) * -41223i, true), -1i), 1i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(1472f, 1435f)));
    let var_4 = vec4<i32>(var_2.x, _wgslsmith_mod_i32(~1i, min(var_2.x, 1i << (~u_input.a % 32u))), var_2.x, -92022i);
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-arg_2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_add_vec2_u32((func_1(global0[_wgslsmith_index_u32(1u, 16u)], global1.x, global0[_wgslsmith_index_u32(0u, 16u)], vec4<bool>(true, true, false, true)) << (reverseBits(vec2<u32>(11278u, 4294967295u)) % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u))) % vec2<u32>(32u)), ~firstLeadingBit(vec2<u32>(83505u, u_input.a))), global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(firstLeadingBit(24130u), 16u)]);
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1509f, -903f)))) * global1.x));
    var var_1 = global1.wz;
    var var_2 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false)))), vec4<bool>(true, any(vec4<bool>(func_2(global0[_wgslsmith_index_u32(u_input.a, 16u)]), func_2(Struct_1(var_1.x)), true, true)), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), true)), true), select(vec4<bool>(true, func_2(Struct_1(689f)), true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, true, false), any(vec3<bool>(false, true, false)))), select(vec4<bool>(all(vec4<bool>(true, false, false, true)), true, select(false, false, false), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true))));
    var_2 = !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(true, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x), !vec4<bool>(true, false, var_2.x, false)), select(select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(false, var_2.x, false, var_2.x)), select(vec4<bool>(false, false, true, var_2.x), vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(true, true, var_2.x, var_2.x)), true), var_2.x), all(!vec4<bool>(var_2.x, var_2.x, true, var_2.x)) & true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(abs(~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(1u, 47032u, u_input.a, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(23766u, 4294967295u, u_input.a, 1u), vec4<u32>(firstTrailingBit(u_input.a), 59674u, 0u, 1u)), vec4<u32>(firstTrailingBit(u_input.a), u_input.a, max(42358u, u_input.a) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a)) % 32u), ~u_input.a)), ~vec3<u32>(4757u, func_1(Struct_1(var_1.x), _wgslsmith_f_op_f32(select(var_1.x, -864f, true)), global0[_wgslsmith_index_u32(~u_input.a, 16u)], vec4<bool>(var_2.x, false, true, true)).x, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-314f, var_1.x)) * _wgslsmith_f_op_f32(max(-277f, var_1.x))), -304f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -488f, 1000f, -456f) - vec4<f32>(1491f, -154f, var_1.x, global1.x))), vec4<f32>(-949f, _wgslsmith_f_op_f32(1137f + var_0.a), _wgslsmith_f_op_f32(206f * 1354f), _wgslsmith_f_op_f32(-var_0.a))))));
}

