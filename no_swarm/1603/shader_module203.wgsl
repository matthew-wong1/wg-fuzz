struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_2, 13>;

var<private> global2: vec2<u32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1650f + 105f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(742f)) * -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(370f * 703f), _wgslsmith_f_op_f32(219f + -953f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1209f, -1036f, true))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-668f, -749f, -205f, -613f) * vec4<f32>(-2197f, 438f, 195f, 407f))))))));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(~(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, global2.x, global2.x), vec3<u32>(global2.x, u_input.a, global2.x)) ^ ~vec3<u32>(10350u, 0u, 0u)), _wgslsmith_div_vec3_u32(~vec3<u32>(1u, u_input.a, 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(0u, global2.x)), ~arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, global2.x), vec3<u32>(global2.x, arg_0, arg_0))))), _wgslsmith_dot_vec4_i32(countOneBits(u_input.c), vec4<i32>(abs(u_input.c.x), _wgslsmith_div_i32(max(u_input.c.x, u_input.c.x), abs(u_input.c.x)), ~(i32(-1i) * -2147483647i), 41538i)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yx * vec2<f32>(-625f, var_1.x))), _wgslsmith_f_op_vec2_f32(sign(var_1.xy)))));
    let var_3 = _wgslsmith_mult_vec4_u32(min(vec4<u32>(~_wgslsmith_mod_u32(25239u, 21430u), _wgslsmith_sub_u32(~0u, var_2.a ^ arg_0), firstLeadingBit(4294967295u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 41910u), vec2<u32>(0u, global2.x)), 0u)), vec4<u32>(_wgslsmith_sub_u32(~131467u, global2.x), select(_wgslsmith_div_u32(4294967295u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, 3244u, 30632u, 35423u), vec4<u32>(23784u, 6159u, 33368u, arg_0)), all(vec4<bool>(false, false, false, true))), ~_wgslsmith_sub_u32(u_input.a, global2.x), 1u)), vec4<u32>(_wgslsmith_add_u32(var_2.a, 1u), ~(~global2.x), ~global2.x, ~u_input.a & (global2.x << ((u_input.a & 7268u) % 32u))));
    var var_4 = !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * var_2.c.x))) == var_1.x);
    return select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), all(vec3<bool>(false, false, true))), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), true), vec2<bool>(true, true), select(all(vec4<bool>(var_2.c.x < var_1.x, all(vec2<bool>(true, false)), true, true)), _wgslsmith_dot_vec4_u32(var_3, vec4<u32>(global2.x, arg_0, 4294967295u, 82577u)) <= _wgslsmith_sub_u32(var_2.a, 14000u), true));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global1 = array<Struct_2, 13>();
    var var_0 = Struct_1(reverseBits(~_wgslsmith_div_u32(_wgslsmith_sub_u32(30990u, 5397u), ~global2.x)), -(~48194i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1673f, 1703f)))), func_3(u_input.a))));
    var var_1 = u_input.c.xyy;
    let var_2 = func_3(_wgslsmith_sub_u32(global2.x, u_input.a));
    global2 = ~(~vec2<u32>(~firstLeadingBit(u_input.a), var_0.a));
    return firstTrailingBit(~(~reverseBits(reverseBits(vec3<u32>(0u, global2.x, 1u)))));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(-_wgslsmith_mod_vec3_i32(u_input.c.yxy | vec3<i32>(-71182i, u_input.b.x, u_input.c.x), vec3<i32>(~u_input.b.x, u_input.b.x, u_input.b.x & u_input.b.x)));
    let var_1 = -(~_wgslsmith_sub_vec2_i32(var_0.xz, ~u_input.b));
    var var_2 = select(vec3<i32>(-84604i, var_1.x, var_1.x) >> (~func_2(_wgslsmith_f_op_f32(163f - 384f)) % vec3<u32>(32u)), vec3<i32>(-1i) * -(~vec3<i32>(var_1.x, 1i, -34871i)), true);
    return Struct_1(_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(~u_input.a, global2.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.c.yww) ^ ~var_0, vec3<i32>(0i, u_input.b.x << (45428u % 32u), -u_input.c.x)), _wgslsmith_mod_vec3_i32(select(-vec3<i32>(var_0.x, u_input.b.x, var_2.x), u_input.c.wxy, vec3<bool>(false, true, false)), _wgslsmith_sub_vec3_i32(u_input.c.yxz, -vec3<i32>(var_1.x, var_2.x, u_input.b.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(105f - -1023f), _wgslsmith_f_op_f32(1311f + _wgslsmith_div_f32(-334f, 417f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(379f, 1150f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 13>();
    global0 = countOneBits(9013u);
    var var_0 = func_1();
    global1 = array<Struct_2, 13>();
    let var_1 = Struct_1(_wgslsmith_mod_u32(97426u, 4488u) ^ global2.x, var_0.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.c))));
    var var_2 = Struct_1(_wgslsmith_mult_u32(0u, abs(53079u)), _wgslsmith_dot_vec3_i32(vec3<i32>(select(var_1.b, ~(-44696i), any(vec2<bool>(true, false))), ~(-23914i) << (~var_1.a % 32u), var_0.b << (117120u % 32u)), ~vec3<i32>(2147483647i, -1905i, 1i)), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_2.b), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 40821u >> (var_0.a % 32u), ~u_input.a), ~vec4<u32>(0u, var_0.a, var_0.a, 4294967295u) | abs(vec4<u32>(var_0.a, 0u, 39538u, 0u)))), i32(-1i) * -9008i, max(vec4<u32>(26634u, func_1().a, ~_wgslsmith_add_u32(var_2.a, u_input.a), ~var_0.a), firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a, 1u, var_2.a, 118216u), vec4<u32>(global2.x, var_0.a, 34466u, 37545u), vec4<u32>(1u, 1u, u_input.a, 32577u)), vec4<u32>(var_0.a, var_2.a, var_0.a, 4294967295u)))));
}

