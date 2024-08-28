struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
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

var<private> global0: array<f32, 7> = array<f32, 7>(-167f, -511f, -1131f, -150f, 714f, -493f, -1232f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(~arg_0.a.x, 17489u, ~2007u)), ~vec3<u32>(u_input.a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(41366u, u_input.a, 0u), countOneBits(u_input.a)), 4294967295u));
    let var_1 = vec2<bool>(false || select(true, true, false), all(!vec2<bool>(all(vec4<bool>(true, false, true, false)), all(vec4<bool>(false, true, false, true)))));
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b.x ^ ~(-37137i), ~(-9379i), 0i), firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_div_i32(-9967i, u_input.b.x), -84036i, 2147483647i) | reverseBits(vec4<i32>(51567i, 9540i, u_input.b.x, u_input.b.x))));
    let var_3 = ~1u;
    return var_1.x;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    let var_0 = Struct_2(true, arg_0, u_input.a, select(vec4<bool>(!func_3(arg_0), _wgslsmith_f_op_f32(-610f + global0[_wgslsmith_index_u32(arg_0.a.x, 7u)]) >= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a.x, 7u)]), firstLeadingBit(u_input.b.x) < 0i, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), true));
    let var_1 = Struct_1(var_0.b.a & vec3<u32>(arg_0.a.x, ~(var_0.c & var_0.b.a.x), arg_0.a.x));
    let var_2 = vec3<i32>(31410i, 1i, -_wgslsmith_add_i32(countOneBits(-1i), -9021i));
    return vec3<u32>(57961u & _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~var_1.a, var_1.a), _wgslsmith_mult_u32(~4294967295u, var_1.a.x)), 70056u, countOneBits(1u));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: u32) -> Struct_2 {
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    let var_0 = Struct_2(!((abs(arg_0) == 14039i) != all(vec4<bool>(true, true, true, true))), Struct_1(~(~func_2(Struct_1(vec3<u32>(1u, u_input.a, arg_2))))), 113252u, vec4<bool>(true, !(!all(vec4<bool>(false, false, false, false))), all(vec2<bool>(select(true, true, false), true)), true));
    let var_1 = false;
    let var_2 = ~abs(var_0.b.a);
    return Struct_2(func_3(var_0.b), var_0.b, 1u, !var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-819i, u_input.b, 80184u);
    let var_1 = ~select(1u, 13894u, countOneBits(0u) <= u_input.a);
    var var_2 = true;
    let var_3 = max(vec4<u32>(~((u_input.a << (42759u % 32u)) >> (6500u % 32u)), ~(~75197u), _wgslsmith_add_u32(27165u, var_1), var_0.c), firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(17861u, var_0.c, 4294967295u, 18053u), select(vec4<u32>(12384u, 0u, 1u, 62657u), vec4<u32>(var_0.c, 0u, var_0.b.a.x, 4294967295u), true))) | ~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1, var_0.b.a.x, 0u, 0u), vec4<u32>(u_input.a, 1u, 1u, 0u))));
    let var_4 = global0[_wgslsmith_index_u32(30791u, 7u)] <= 1f;
    let var_5 = Struct_1(_wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, 13111u), vec3<u32>(var_3.x, 32488u, 31332u)), vec3<u32>(var_3.x, var_3.x, 0u)), ~vec3<u32>(~24785u, 8976u, _wgslsmith_dot_vec3_u32(var_0.b.a, vec3<u32>(4294967295u, u_input.a, 76355u)))));
    global0 = array<f32, 7>();
    var var_6 = ~var_0.b.a;
    global0 = array<f32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -309f));
}

