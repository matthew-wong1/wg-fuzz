struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(8184u, 1u, 53653u, 4294967295u), vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(99962u, 29460u, 102116u, 76820u), vec4<u32>(41552u, 4294967295u, 48174u, 8549u), vec4<u32>(81474u, 0u, 1u, 39598u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(30762u, 1u, 0u, 27493u), vec4<u32>(116852u, 0u, 24926u, 4294967295u), vec4<u32>(0u, 19169u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 44849u, 28985u), vec4<u32>(1u, 4294967295u, 10430u, 64417u), vec4<u32>(4294967295u, 22786u, 10134u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 10052u), vec4<u32>(0u, 42961u, 0u, 0u), vec4<u32>(1u, 5545u, 28976u, 1u), vec4<u32>(46566u, 4294967295u, 1u, 4294967295u), vec4<u32>(30646u, 4294967295u, 38562u, 4294967295u), vec4<u32>(0u, 83927u, 25135u, 49838u), vec4<u32>(1u, 34747u, 0u, 66375u), vec4<u32>(6512u, 1574u, 0u, 0u), vec4<u32>(4294967295u, 26192u, 6725u, 5339u), vec4<u32>(42276u, 4294967295u, 4207u, 12353u), vec4<u32>(4294967295u, 98145u, 0u, 39934u), vec4<u32>(51150u, 1u, 116559u, 10132u));

var<private> global1: array<i32, 20>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>) -> u32 {
    global1 = array<i32, 20>();
    var var_0 = !(!(!arg_0.a));
    var var_1 = firstLeadingBit(reverseBits(_wgslsmith_div_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b, u_input.b), global0[_wgslsmith_index_u32(1u, 24u)]), ~global0[_wgslsmith_index_u32(13348u, 24u)], select(vec4<bool>(arg_2.x, true, true, false), vec4<bool>(false, false, true, arg_0.a), arg_0.a)), select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 15427u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~global0[_wgslsmith_index_u32(75304u, 24u)], false))));
    global1 = array<i32, 20>();
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-global1[_wgslsmith_index_u32(~553u, 20u)], u_input.a | global1[_wgslsmith_index_u32(142414u, 20u)], -2147483647i) ^ vec3<i32>(firstLeadingBit(u_input.a), abs(-u_input.a), -2147483647i), vec3<i32>(abs(1i), (i32(-1i) * -25190i) ^ u_input.a, ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~40798u, u_input.b), 20u)]));
    return ~(~(~var_1.x));
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    global0 = array<vec4<u32>, 24>();
    var var_0 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)) == _wgslsmith_f_op_f32(round(1725f))));
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    let var_1 = vec2<u32>(firstTrailingBit(1u), func_3(Struct_1(false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, 449f, 1040f), vec4<f32>(arg_0, arg_0, arg_0, 704f))))), vec4<bool>(true, true, !arg_1 && (false != var_0.a), firstTrailingBit(u_input.b) != u_input.b)));
    return firstTrailingBit(4294967295u) << (_wgslsmith_clamp_u32(4294967295u, var_1.x, abs(u_input.b << (1u % 32u))) % 32u);
}

fn func_1() -> vec4<u32> {
    let var_0 = vec4<u32>(abs(u_input.b), 0u, u_input.b, func_2(266f, all(vec4<bool>(any(vec4<bool>(true, true, true, false)), all(vec2<bool>(false, false)), any(vec4<bool>(false, false, false, false)), true))));
    global1 = array<i32, 20>();
    let var_1 = all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec2<bool>(false, true))), true), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), true), true), vec2<bool>(true, false)));
    global1 = array<i32, 20>();
    let var_2 = _wgslsmith_f_op_f32(abs(1000f));
    return ~reverseBits(~vec4<u32>(0u, 1u, u_input.b, var_0.x << (u_input.b % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(func_1(), global0[_wgslsmith_index_u32(32515u, 24u)] | vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)), ~vec4<u32>(97508u >> (u_input.b % 32u), 0u, ~83830u, _wgslsmith_add_u32(3789u, 68327u))), abs(global0[_wgslsmith_index_u32(~u_input.b, 24u)]));
    global0 = array<vec4<u32>, 24>();
    global1 = array<i32, 20>();
    var var_1 = ~u_input.b ^ _wgslsmith_add_u32(var_0.x, 1u);
    var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_dot_vec4_u32(~global0[_wgslsmith_index_u32(0u, 24u)], _wgslsmith_sub_vec4_u32(var_0, var_0)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 4294967295u), var_0.yz), _wgslsmith_clamp_u32(~1816u, ~u_input.b, 1u)), _wgslsmith_f_op_f32(1187f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-217f))))))), ~_wgslsmith_clamp_u32(~u_input.b, ~var_0.x << (5914u % 32u), firstLeadingBit(_wgslsmith_add_u32(u_input.b, u_input.b))));
}

