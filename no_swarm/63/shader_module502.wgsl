struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_1(!any(vec3<bool>(true, true, true)), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), min(~((vec4<u32>(u_input.d.x, 105458u, u_input.d.x, u_input.d.x) | vec4<u32>(24483u, 8269u, 86945u, 0u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 0u, 41924u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, 34207u, 0u))), _wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(1u, u_input.d.x, 1u, u_input.d.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 58298u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(51519u, 0u, 12066u, u_input.d.x), vec4<u32>(4294967295u, 1u, 22457u, 3600u))))));
    global0 = var_0.c.x;
    global0 = ~firstTrailingBit(99487u);
    global0 = var_0.c.x;
    global0 = 23970u;
    return _wgslsmith_div_i32(-43876i, 2147483647i);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<u32>) -> vec2<bool> {
    global0 = countOneBits(arg_2.x);
    let var_0 = ~(~vec2<u32>(min(_wgslsmith_div_u32(25562u, 4294967295u), max(arg_2.x, arg_2.x)), ~(~85620u)));
    let var_1 = -vec3<i32>(-_wgslsmith_dot_vec4_i32(u_input.e, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, u_input.b, u_input.b, 59747i), u_input.e)), -func_3(abs(u_input.a)), 1i);
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, _wgslsmith_sub_u32(4294967295u, ~var_0.x), var_0.x), vec3<u32>(0u & min(4294967295u, var_0.x), u_input.d.x, ~var_0.x));
    var var_2 = false & any(!vec3<bool>(true, all(vec3<bool>(false, true, false)), false));
    return !select(select(vec2<bool>(any(vec3<bool>(false, false, false)), true), vec2<bool>(true, false), false), vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, any(vec3<bool>(true, false, false))));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(35311i < _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(firstTrailingBit(u_input.c), firstTrailingBit(u_input.b))), !func_2(_wgslsmith_f_op_f32(-1405f - 1215f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-368f, -677f, 256f), vec3<f32>(-625f, -1000f, -1136f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(279f, 525f, 159f), vec3<f32>(-589f, 1000f, -1496f))))), u_input.d), min(abs(countOneBits(vec4<u32>(u_input.d.x, u_input.d.x, 9882u, u_input.d.x))), ~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(42508u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(0u, 1u, 87191u, u_input.d.x)))));
    let var_1 = reverseBits(1u ^ firstTrailingBit(_wgslsmith_add_u32(63222u, 0u)));
    var_0 = Struct_1(false, vec2<bool>(true, true), vec4<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, 19810u, 28410u), vec4<u32>(var_0.c.x, 0u, 1u, var_1))), 4294967295u, 101849u, var_0.c.x));
    var_0 = Struct_1(!all(vec4<bool>(var_0.a && var_0.a, any(vec2<bool>(true, true)), all(vec3<bool>(false, false, true)), var_0.b.x)), !(!(!var_0.b)), vec4<u32>(~(28961u >> (1u % 32u)), var_1, var_1, var_0.c.x));
    let var_2 = Struct_1(false, !select(var_0.b, select(select(vec2<bool>(var_0.b.x, var_0.a), vec2<bool>(var_0.b.x, false), vec2<bool>(false, false)), var_0.b, var_0.b), true), _wgslsmith_sub_vec4_u32(~(~abs(vec4<u32>(21964u, 0u, u_input.d.x, var_0.c.x))), vec4<u32>(min(var_0.c.x, 40223u), ~var_1, 1u, u_input.d.x ^ 1u) ^ min(~var_0.c, abs(var_0.c))));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d.x;
    global0 = u_input.d.x;
    let var_0 = !vec3<bool>(true, false, _wgslsmith_dot_vec3_i32(u_input.e.yyx, u_input.e.zxw) != -2147483647i);
    global0 = ~(~_wgslsmith_mult_u32(u_input.d.x, max(~u_input.d.x, ~u_input.d.x)));
    let var_1 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zz ^ u_input.d.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1107f, -1176f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-156f, -809f), vec2<f32>(1932f, -479f), var_0.x)))))), vec4<u32>(u_input.d.x, func_1() << (~u_input.d.x % 32u), _wgslsmith_sub_u32(_wgslsmith_div_u32(~4294967295u, u_input.d.x), u_input.d.x), _wgslsmith_div_u32(u_input.d.x << (u_input.d.x % 32u), _wgslsmith_mult_u32(40395u, u_input.d.x)) ^ _wgslsmith_mod_u32(u_input.d.x, ~u_input.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(336f, -197f, 276f, -1015f) * vec4<f32>(1218f, -259f, -1135f, -1000f)))))));
}

