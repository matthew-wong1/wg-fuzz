struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = firstTrailingBit(vec2<i32>(firstLeadingBit(4281i), -48527i));
    let var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.a, arg_3.a), _wgslsmith_f_op_f32(-1000f * arg_3.a), var_1.a, 2135f), vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1075f), arg_3.a, _wgslsmith_f_op_f32(select(-1143f, 159f, arg_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(381f, arg_1.a, -535f, 585f) * vec4<f32>(var_1.a, var_1.a, -237f, -2294f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(310f)), _wgslsmith_f_op_f32(-arg_1.a), 656f, arg_3.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1727f), _wgslsmith_div_f32(1951f, -363f), _wgslsmith_f_op_f32(-308f + var_1.a), _wgslsmith_f_op_f32(2457f + -707f)), select(select(vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(true, false, true, arg_2), vec4<bool>(false, true, arg_2, false)), select(vec4<bool>(true, arg_2, arg_2, false), vec4<bool>(arg_2, arg_2, arg_2, false), vec4<bool>(true, false, false, false)), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, -586f, -117f, -397f) - vec4<f32>(207f, arg_1.a, 896f, 691f)) + vec4<f32>(-358f, arg_1.a, arg_0.a, -115f)))));
    var var_3 = var_2.xy;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1718f, -436f)))) - arg_1.a), _wgslsmith_f_op_f32(step(1796f, _wgslsmith_f_op_f32(sign(var_2.x)))), _wgslsmith_f_op_f32(step(-628f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(step(955f, -410f))))));
    return min(min(~vec2<u32>(u_input.d, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 30592u), vec2<u32>(30299u, u_input.d), vec2<u32>(u_input.d, u_input.d)) & (vec2<u32>(4294967295u, u_input.d) << (vec2<u32>(9333u, u_input.d) % vec2<u32>(32u)))), vec2<u32>(18414u, u_input.d)) >> (vec2<u32>(13983u, u_input.d) % vec2<u32>(32u));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))) + _wgslsmith_f_op_f32(max(1112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-852f)) + 808f))));
    let var_1 = any(!(!vec4<bool>(true, all(vec4<bool>(true, true, true, false)), select(true, true, true), false)));
    global0 = array<vec3<u32>, 30>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(func_3(Struct_1(_wgslsmith_f_op_f32(-var_0)), Struct_1(-692f), var_1, Struct_1(_wgslsmith_f_op_f32(915f + -146f))), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(arg_0, 1u) & vec2<u32>(arg_0, 34503u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(arg_0, u_input.d), vec2<u32>(u_input.d, arg_0)) & max(vec2<u32>(10051u, arg_0), vec2<u32>(u_input.d, 1u)))), max(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 26582u), vec2<u32>(arg_0, 80500u)) ^ _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(33588u, 12341u), vec2<u32>(42888u, arg_0)), vec2<u32>(u_input.d, 1u)), ~countOneBits(~vec2<u32>(arg_0, arg_0)))), 30u)];
    let var_3 = global0[_wgslsmith_index_u32(1u, 30u)];
    return Struct_1(_wgslsmith_f_op_f32(var_0 + -112f));
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2(33879u, ~19115i);
    var_0 = Struct_1(var_0.a);
    var var_1 = false;
    let var_2 = all(vec2<bool>(false, false));
    var var_3 = _wgslsmith_add_u32(1u, min(~u_input.d, ~u_input.d));
    return StorageBuffer(vec4<f32>(1952f, _wgslsmith_f_op_f32(sign(529f)), _wgslsmith_div_f32(var_0.a, 1f), _wgslsmith_f_op_f32(1043f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a + -418f), -528f)))), 13857u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(966f * 1138f), _wgslsmith_f_op_f32(-var_0.a), !var_2)), -479f, var_0.a)), -33329i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 30>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -720f));
    let x = u_input.a;
    s_output = func_1();
}

