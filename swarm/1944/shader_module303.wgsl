struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, true, true, false, true, false, true, true, false, false, true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = vec3<u32>(firstTrailingBit(arg_0.b) ^ ~(~18103u), ~firstLeadingBit(_wgslsmith_mult_u32(18999u, 33080u)), ~38694u);
    var var_1 = global0[_wgslsmith_index_u32(5844u, 13u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-785f, 1599f))) + _wgslsmith_div_vec2_f32(vec2<f32>(1350f, arg_1), vec2<f32>(arg_1, -1212f)))))));
    var_0 = firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(var_0.x, var_0.x), u_input.a, 64296u) & ~(~(~vec3<u32>(123032u, 1u, u_input.a))));
    global0 = array<bool, 13>();
    return -503f;
}

fn func_2(arg_0: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f), _wgslsmith_f_op_f32(func_3(Struct_2(-16610i, 0u, Struct_1(false)), 112f, Struct_1(global0[_wgslsmith_index_u32(45604u, 13u)])))), -201f)) - -460f)));
    var var_1 = global0[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(76470u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 34700u, arg_0), vec3<u32>(max(16050u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 90924u, 1u), vec3<u32>(0u, 9839u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(14000u, 4294967295u, arg_0, u_input.a), vec4<u32>(480u, arg_0, arg_0, 0u)))), 4294967295u), arg_0), 13u)];
    let var_2 = Struct_1(true);
    let var_3 = var_2;
    let var_4 = var_2;
    return firstLeadingBit(select(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 34319u), ~35481u, ~75862u, ~u_input.a), vec4<u32>(arg_0, u_input.a, 7058u, u_input.a) >> (~vec4<u32>(arg_0, arg_0, 1u, u_input.a) % vec4<u32>(32u))), vec4<u32>(4294967295u, u_input.a, max(arg_0, arg_0), ~abs(u_input.a)), false));
}

fn func_1() -> u32 {
    let var_0 = all(vec2<bool>(global0[_wgslsmith_index_u32(~u_input.a, 13u)], false));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(671f, 877f, _wgslsmith_f_op_f32(1607f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1927f, 2027f))), -1739f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 635f, 1554f, 193f), vec4<f32>(109f, 246f, -478f, 1000f)))), vec4<f32>(889f, _wgslsmith_f_op_f32(1578f + 610f), -419f, _wgslsmith_f_op_f32(1597f * 111f))))));
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    return _wgslsmith_dot_vec4_u32(reverseBits(~(~func_2(u_input.a))), _wgslsmith_sub_vec4_u32(~(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) ^ abs(vec4<u32>(u_input.a, 29794u, u_input.a, 0u))), vec4<u32>(_wgslsmith_sub_u32(countOneBits(0u), ~u_input.a), 1u, _wgslsmith_clamp_u32(~u_input.a, abs(1u), 1916u), ~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 13>();
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(53307u, _wgslsmith_sub_u32(u_input.a, 54500u), ~u_input.a) ^ func_1(), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, 60589u) | vec2<u32>(u_input.a, u_input.a)), vec2<u32>(35539u, 0u))), 13u)]);
    global0 = array<bool, 13>();
    var_0 = Struct_1(false);
    var var_1 = Struct_1(any(vec2<bool>(var_0.a, var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-322f);
}

