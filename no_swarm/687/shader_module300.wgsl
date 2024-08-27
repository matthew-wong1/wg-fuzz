struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = Struct_1(arg_0, -2147483647i, ~vec4<i32>(firstLeadingBit(1i), -1i, 21294i, abs(_wgslsmith_mod_i32(2147483647i, 36849i))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, false, true)))) | (_wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(u_input.a, 0i)) < -u_input.a));
    var var_1 = ~arg_0;
    var var_2 = -1000f;
    global0 = array<vec3<i32>, 30>();
    var var_3 = Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.a, 6195u, abs(select(4597u, var_0.a, var_0.d)), reverseBits(var_0.a)), ~vec4<u32>(_wgslsmith_mod_u32(0u, var_0.a), _wgslsmith_add_u32(1u, var_0.a), 38406u, abs(var_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(708f, arg_1, 377f) + vec3<f32>(-558f, -1000f, 1000f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-896f, 1065f, -735f), vec3<f32>(-352f, 1160f, arg_1)))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_1)), arg_1, _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -866f, -1000f)))), var_0, false, Struct_1(0u, -44283i, ~var_0.c, !all(vec3<bool>(false, false, var_0.d))));
    return _wgslsmith_mod_u32(var_3.c.a, ~_wgslsmith_sub_u32(~(~28772u), arg_0));
}

fn func_2() -> u32 {
    global0 = array<vec3<i32>, 30>();
    let var_0 = Struct_2(vec4<bool>(true, (all(vec4<bool>(false, true, false, true)) != false) | !all(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)) || true), true, Struct_1(func_3(~abs(0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1282f + 1145f) + _wgslsmith_f_op_f32(round(710f)))), firstLeadingBit(_wgslsmith_mod_i32(2147483647i, abs(1i))), ~select(min(vec4<i32>(u_input.a, -1i, u_input.a, -8252i), vec4<i32>(14966i, 9561i, -1i, 2147483647i)), firstLeadingBit(vec4<i32>(2147483647i, 24072i, 44604i, -1i)), true), any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), select(true, true, false)))), Struct_1(35836u, _wgslsmith_add_i32(abs(i32(-1i) * -516i), u_input.a), _wgslsmith_div_vec4_i32(~vec4<i32>(2147483647i, 33244i, u_input.a, u_input.a) | -vec4<i32>(-3635i, u_input.a, -13076i, u_input.a), ~(vec4<i32>(u_input.a, -1i, -20628i, 45559i) ^ vec4<i32>(-1i, u_input.a, u_input.a, u_input.a))), true));
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    var var_1 = ~(~(~abs(~vec4<u32>(var_0.d.a, var_0.d.a, var_0.c.a, 37914u))));
    return 58334u;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = !(any(!vec4<bool>(true, false, arg_0, arg_0)) && all(vec3<bool>(true, true, true)));
    var var_1 = (vec2<i32>(-25088i, _wgslsmith_mod_i32(-22850i, u_input.a)) & ~(~(vec2<i32>(-1i, 1i) ^ vec2<i32>(u_input.a, u_input.a)))) << (~arg_1.yx % vec2<u32>(32u));
    global0 = array<vec3<i32>, 30>();
    global0 = array<vec3<i32>, 30>();
    var_1 = firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(var_1.x, _wgslsmith_sub_i32(-1i, var_1.x), countOneBits(u_input.a)), u_input.a >> (_wgslsmith_dot_vec2_u32(arg_1.xx, arg_1.zy) % 32u)) ^ countOneBits(vec2<i32>(_wgslsmith_mod_i32(u_input.a, var_1.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.a, var_1.x, u_input.a), vec4<i32>(u_input.a, -10533i, -3002i, -2442i)))));
    return !(!select(vec2<bool>(!arg_0, true), vec2<bool>(arg_0, false), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0))));
}

fn func_1(arg_0: u32, arg_1: i32) -> f32 {
    let var_0 = select(func_4(any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), true)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, 28160u), vec3<u32>(59054u, arg_0, 61466u)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, arg_0, 7555u)), vec3<bool>(false, false, false)) | vec3<u32>(4294967295u, arg_0, func_2())), select(vec2<bool>(true, true), !func_4(true, vec3<u32>(arg_0, 3045u, arg_0) | vec3<u32>(85688u, 71238u, arg_0)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !func_4(false, vec3<u32>(arg_0, 58504u, 13168u)))), vec2<bool>(any(vec3<bool>(true, all(vec3<bool>(true, false, true)), false)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))));
    var var_1 = Struct_5(vec3<i32>(max(u_input.a, u_input.a ^ -24631i), 2147483647i, -43904i));
    let var_2 = _wgslsmith_div_f32(933f, 223f);
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1690f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - 420f), _wgslsmith_f_op_f32(sign(var_2)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 * 856f)))))), arg_0, -612f, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(4294967295u), ~1u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, arg_0) << (vec2<u32>(4294967295u, arg_0) % vec2<u32>(32u)), ~vec2<u32>(arg_0, 4294967295u))), -(-2147483647i ^ var_1.a.x), select(vec4<i32>(40670i, var_1.a.x, _wgslsmith_add_i32(1i, arg_1), 0i), vec4<i32>(41550i, -2147483647i, _wgslsmith_clamp_i32(-43124i, 2147483647i, -1i), -1i), !vec4<bool>(var_0.x, false, var_0.x, false)), var_0.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-867f)), _wgslsmith_f_op_f32(-var_2))))));
    global0 = array<vec3<i32>, 30>();
    return _wgslsmith_div_f32(2543f, _wgslsmith_f_op_f32(f32(-1f) * -212f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(-16212i >= u_input.a, false, true, any(vec2<bool>(true, true))), true);
    let var_1 = u_input.a;
    var var_2 = Struct_1(_wgslsmith_sub_u32(~(~(~1u)), 83010u), -firstLeadingBit(var_1), max(vec4<i32>(~(-var_1), var_1, i32(-1i) * -u_input.a, u_input.a), vec4<i32>(65498i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 23113i), vec2<i32>(-18837i, 110447i)), -vec2<i32>(-2147483647i, 18435i)), ~u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-51536i, var_1), vec2<i32>(28257i, var_1)), -vec2<i32>(-1i, var_1)))), all(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)));
    var_0 = vec4<bool>(var_2.d | var_0.x, any(!(!vec2<bool>(true, var_2.d))), !(_wgslsmith_f_op_f32(step(606f, _wgslsmith_f_op_f32(func_1(var_2.a, 0i)))) >= -1321f), (max(-2147483647i, _wgslsmith_dot_vec2_i32(var_2.c.xy, vec2<i32>(-15273i, u_input.a))) | u_input.a) <= -u_input.a);
    var var_3 = Struct_1(var_2.a, -select(~var_1, countOneBits(u_input.a), any(func_4(var_2.d, vec3<u32>(var_2.a, 1u, 4294967295u)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a, var_1, -1i) & min(var_2.c, var_2.c), vec4<i32>(firstTrailingBit(var_1), -var_2.c.x, i32(-1i) * -31372i, -var_1), vec4<i32>(~var_1, 2147483647i, var_1, var_1)) ^ select(vec4<i32>(-2147483647i, -1i, 1i, var_2.b), var_2.c, func_4(true, _wgslsmith_clamp_vec3_u32(vec3<u32>(8403u, var_2.a, var_2.a), vec3<u32>(0u, 21367u, var_2.a), vec3<u32>(var_2.a, 68931u, 5638u))).x), var_2.d);
    let var_4 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.a, abs(25834u) ^ func_2(), ~var_3.a, _wgslsmith_clamp_u32(~var_2.a, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(8377u, var_3.a, var_2.a, var_2.a), vec4<u32>(var_2.a, 4294967295u, var_3.a, var_2.a)))), max(vec4<u32>(var_2.a, var_3.a, 3809u, _wgslsmith_mult_u32(var_2.a, var_3.a)), select(vec4<u32>(0u, var_2.a, var_3.a, 4294967295u), vec4<u32>(1633u, var_2.a, var_3.a, 38665u) << (vec4<u32>(var_3.a, var_2.a, var_3.a, 4294967295u) % vec4<u32>(32u)), true))), _wgslsmith_add_vec4_u32(max(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_3.a, var_3.a, var_3.a), vec4<u32>(var_3.a, 0u, 0u, var_3.a)), vec4<u32>(6580u, 1917u, var_3.a, var_2.a)), ~(~(~vec4<u32>(var_3.a, 0u, 0u, var_2.a)))), firstLeadingBit(vec4<u32>(var_3.a, func_2(), _wgslsmith_mod_u32(var_3.a, _wgslsmith_sub_u32(1u, 1u)), max(~var_3.a, 7674u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(var_4.xz | (vec2<u32>(var_4.x, 1u) >> (var_4.xw % vec2<u32>(32u))))), ~4509i, abs(firstTrailingBit((vec3<i32>(0i, var_2.b, var_3.c.x) | vec3<i32>(u_input.a, var_1, u_input.a)) >> (countOneBits(vec3<u32>(var_4.x, var_4.x, var_2.a)) % vec3<u32>(32u)))), min(~_wgslsmith_div_u32(~var_4.x, ~var_3.a), var_2.a));
}

