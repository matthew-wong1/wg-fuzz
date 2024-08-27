struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(4294967295u, vec2<i32>(0i, i32(-2147483648))), Struct_1(0u, vec2<i32>(48885i, 0i)), Struct_1(20351u, vec2<i32>(-56625i, -1i)), Struct_1(86184u, vec2<i32>(-4479i, -24909i)), Struct_1(1u, vec2<i32>(-7749i, -1i)), Struct_1(23760u, vec2<i32>(-1i, 0i)), Struct_1(1u, vec2<i32>(0i, -1i)), Struct_1(90378u, vec2<i32>(-14904i, 1i)), Struct_1(7269u, vec2<i32>(i32(-2147483648), -61215i)), Struct_1(39563u, vec2<i32>(i32(-2147483648), 0i)));

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    global1 = array<Struct_1, 5>();
    let var_0 = Struct_1(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(406u, 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(36403u, 0u), vec2<u32>(28009u, 46686u))), min(14295u, 6392u)), u_input.a);
    let var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 44283u), vec2<u32>(var_0.a, var_0.a)), 1u, arg_0.x), var_0.a), _wgslsmith_div_vec3_u32(vec3<u32>(10331u, 0u, var_0.a), vec3<u32>(1u, 0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 6492u, 5953u), vec3<u32>(1u, 15670u, var_0.a)), reverseBits(var_0.a)))));
    global0 = array<Struct_1, 10>();
    global1 = array<Struct_1, 5>();
    return 1i;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 10>();
    let var_0 = min(min(func_3(select(arg_1, vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(false, true, arg_1.x)), arg_3.b.x >= 2350i), firstTrailingBit(0i)) | arg_3.b.x, _wgslsmith_clamp_i32(arg_3.b.x, u_input.a.x, 1907i));
    var var_1 = !select(vec2<bool>(true, true), select(arg_1.yz, !arg_1.xx, false), !(arg_3.b.x == abs(6210i)));
    global0 = array<Struct_1, 10>();
    var var_2 = Struct_1(~46436u, u_input.a);
    return 57261u;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 3314u), 34683u, ~firstLeadingBit(func_2(240f, vec3<bool>(true, false, false), -321f, Struct_1(0u, vec2<i32>(u_input.a.x, u_input.a.x))))), u_input.a);
    var var_1 = !vec2<bool>(any(vec3<bool>(true, true, true)), true);
    var var_2 = _wgslsmith_clamp_u32(firstLeadingBit(((var_0.a >> (var_0.a % 32u)) << (reverseBits(var_0.a) % 32u)) ^ 0u), _wgslsmith_clamp_u32(~(_wgslsmith_clamp_u32(4294967295u, var_0.a, 1u) | (0u >> (0u % 32u))), countOneBits(~var_0.a) & var_0.a, ~(var_0.a | 7823u)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(countOneBits(1u), firstLeadingBit(var_0.a)), select(vec2<u32>(61924u, var_0.a) ^ vec2<u32>(var_0.a, var_0.a), vec2<u32>(4294967295u, 31674u), 31146i < u_input.a.x), _wgslsmith_sub_vec2_u32(~vec2<u32>(66027u, var_0.a), ~vec2<u32>(4294967295u, var_0.a))), vec2<u32>(min(~1u, abs(var_0.a)), abs(59265u))));
    var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(28842u, var_0.a, 4294967295u, 4294967295u), vec4<u32>(var_0.a, 25032u, 4294967295u, 26904u)), vec4<u32>(firstLeadingBit(43964u), ~25687u, var_0.a, abs(var_0.a))), _wgslsmith_sub_vec2_i32(var_0.b, u_input.a));
    let var_3 = Struct_1(var_0.a, min(~vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, -29282i), u_input.a.x), firstTrailingBit(u_input.a)));
    return Struct_1(var_3.a, ~_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-8601i, 2147483647i), u_input.a) ^ ~vec2<i32>(var_0.b.x, u_input.a.x), -u_input.a >> (~vec2<u32>(var_3.a, 6429u) % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<Struct_1, 10>();
    global1 = array<Struct_1, 5>();
    let var_0 = global1[_wgslsmith_index_u32(arg_1, 5u)];
    let var_1 = _wgslsmith_add_vec4_u32(max(vec4<u32>(select(arg_1, var_0.a, true) & ~arg_1, ~(~0u), 4294967295u, arg_2.x), min(~abs(vec4<u32>(1u, arg_1, 1u, 80500u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(33867u, 4389u, arg_0.a, arg_0.a), vec4<u32>(0u, arg_0.a, arg_0.a, 54477u)))), _wgslsmith_mod_vec4_u32(abs(~(~vec4<u32>(4294967295u, arg_2.x, 37990u, arg_2.x))), ~vec4<u32>(arg_1 ^ 4294967295u, 30095u, arg_1, 24175u)));
    global0 = array<Struct_1, 10>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(782f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(434f * -673f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1317f, -1170f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -946f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2940f, -429f) * vec2<f32>(-184f, 1271f))))), 14380u, reverseBits(vec2<u32>(1u, 1u)));
    var var_1 = global1[_wgslsmith_index_u32(var_0.a, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-175f, 377f))))), 1000f);
}

