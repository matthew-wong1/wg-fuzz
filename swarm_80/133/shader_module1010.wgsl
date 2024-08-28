struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    global0 = array<Struct_1, 2>();
    let var_0 = arg_1;
    var var_1 = _wgslsmith_div_f32(-704f, -308f);
    var var_2 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, 0u <= u_input.b, var_0.d), (u_input.c > 4294967295u) || arg_1.d), !select(select(!vec3<bool>(true, arg_0.d, true), !vec3<bool>(var_0.d, true, arg_0.d), any(vec4<bool>(var_0.d, arg_0.d, var_0.d, arg_0.d))), !(!vec3<bool>(var_0.d, arg_1.d, false)), any(!vec4<bool>(false, var_0.d, var_0.d, false))), select(!(!(!vec3<bool>(arg_0.d, false, true))), select(vec3<bool>(any(vec3<bool>(false, false, true)), !arg_0.d, var_0.d), vec3<bool>(true, true, true), _wgslsmith_div_f32(var_0.b.x, var_0.b.x) >= 453f), select(select(select(vec3<bool>(arg_1.d, false, true), vec3<bool>(false, true, var_0.d), true), !vec3<bool>(arg_1.d, true, false), select(vec3<bool>(arg_1.d, true, true), vec3<bool>(true, arg_0.d, var_0.d), vec3<bool>(false, false, false))), select(!vec3<bool>(true, arg_0.d, false), !vec3<bool>(false, arg_1.d, false), select(vec3<bool>(false, arg_0.d, false), vec3<bool>(arg_0.d, arg_0.d, var_0.d), true)), any(vec3<bool>(false, false, var_0.d)))));
    var_2 = select(!(!vec3<bool>(arg_1.d || arg_0.d, u_input.c != u_input.b, true)), select(vec3<bool>(var_0.d, !var_2.x, true), vec3<bool>(arg_1.d, var_0.d | (false || arg_1.d), all(!var_2.zy)), select(select(!vec3<bool>(arg_0.d, false, false), vec3<bool>(var_0.d, false, false), select(false, var_0.d, true)), select(vec3<bool>(true, arg_1.d, arg_0.d), !vec3<bool>(arg_0.d, false, var_2.x), any(vec4<bool>(arg_0.d, true, true, var_0.d))), any(select(vec3<bool>(true, var_2.x, true), vec3<bool>(var_2.x, true, false), vec3<bool>(arg_1.d, arg_0.d, false))))), select(select(select(!vec3<bool>(true, arg_0.d, false), vec3<bool>(false, true, false), !vec3<bool>(var_2.x, true, false)), !(!vec3<bool>(arg_0.d, false, var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -584f) >= _wgslsmith_f_op_f32(floor(139f))), vec3<bool>(true, true, true), true));
    return firstLeadingBit(firstTrailingBit(vec3<i32>(arg_0.c.x, ~u_input.a | _wgslsmith_div_i32(0i, arg_1.c.x), ~arg_1.c.x)));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-334f)), _wgslsmith_div_f32(409f, -893f), -1670f, _wgslsmith_f_op_f32(select(-855f, -3235f, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-236f, -617f, 2020f, -300f)))))));
    global0 = array<Struct_1, 2>();
    var var_1 = -select(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -4838i, 2147483647i), vec3<i32>(1i, -9848i, u_input.a)), vec3<i32>(u_input.a, u_input.a, 2147483647i) << (vec3<u32>(50085u, u_input.c, 0u) % vec3<u32>(32u))), reverseBits(vec3<i32>(u_input.a, 1i, 1i))), func_3(Struct_1(-669f, vec4<f32>(-285f, 963f, var_0.x, -237f), vec2<i32>(-16456i, u_input.a), true), Struct_1(-1007f, var_0, firstTrailingBit(vec2<i32>(-1i, 38933i)), arg_0 > 595u)), vec3<bool>(arg_1, arg_1, false));
    var var_2 = var_0.x;
    global0 = array<Struct_1, 2>();
    return _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(abs(select(vec3<u32>(u_input.c, 2155u, 0u), vec3<u32>(u_input.c, u_input.b, 42112u), false) << (vec3<u32>(arg_0, u_input.b, 1u) % vec3<u32>(32u))), firstTrailingBit(~abs(vec3<u32>(u_input.b, 2856u, 0u)))), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.c, arg_0) ^ vec3<u32>(4294967295u, 60538u, 78351u), vec3<u32>(62803u, 43812u, 1u)), vec3<u32>(u_input.b, arg_0, 4294967295u) >> (vec3<u32>(1u, 0u, arg_0) % vec3<u32>(32u))), abs(vec3<u32>(33933u, max(0u, arg_0), 47257u))));
}

fn func_1(arg_0: i32) -> vec3<u32> {
    let var_0 = 0u << (_wgslsmith_mult_u32(4294967295u, u_input.b) % 32u);
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_1 = u_input.a;
    global0 = array<Struct_1, 2>();
    return func_2(select(u_input.c, ~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(22855u, 0u, 4294967295u), vec3<u32>(70275u, var_0, 47816u))), (i32(-1i) * -36332i) == arg_0), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (vec3<u32>(~(~u_input.c), 34892u, max(1u, ~u_input.c)) ^ ~(~(~vec3<u32>(u_input.b, u_input.c, u_input.c)))) << ((vec3<u32>(u_input.c, 1u, abs(15353u)) << (_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(36504u, u_input.b, 35217u) >> (vec3<u32>(0u, 68394u, 1u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 1u, 0u), vec3<u32>(13998u, 21448u, u_input.c))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(3402u, 0u, 53009u), vec3<u32>(u_input.c, 4294967295u, 0u), vec3<bool>(false, false, false)), func_1(u_input.a))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_1 = vec2<f32>(940f, 237f);
    let var_2 = vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(var_0.xy, vec2<u32>(var_0.x, 75u)), ~var_0.x ^ var_0.x), _wgslsmith_add_u32(var_0.x, reverseBits(_wgslsmith_clamp_u32(var_0.x << (var_0.x % 32u), var_0.x, u_input.b))), min(u_input.b, u_input.c));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(ceil(-1000f))) - vec3<f32>(_wgslsmith_div_f32(1079f, var_1.x), 616f, _wgslsmith_f_op_f32(var_1.x * var_1.x))) - vec3<f32>(220f, var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x)))));
    let var_4 = select(-_wgslsmith_mod_vec4_i32(vec4<i32>(-721i, u_input.a, u_input.a, 11822i) << (vec4<u32>(13177u, var_2.x, var_0.x, var_0.x) % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.a, u_input.a, -1455i) ^ vec4<i32>(-5955i, 0i, 2147483647i, u_input.a)) ^ -reverseBits(-vec4<i32>(-1i, 1i, 2147483647i, 51781i)), vec4<i32>(u_input.a, u_input.a, -35478i, -3966i), any(vec4<bool>(true, -720f != var_1.x, any(vec4<bool>(false, false, true, true)), all(vec4<bool>(true, false, true, false)))));
    var var_5 = Struct_1(-164f, vec4<f32>(211f, var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.x * var_3.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-411f)))), vec2<i32>(var_4.x, _wgslsmith_mod_i32(u_input.a, 2147483647i)), false);
    var_0 = _wgslsmith_add_vec3_u32(var_2, select(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 40986u, var_0.x), var_2), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 4294967295u, u_input.c), var_2)), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_2.x, 773u), var_2 << (var_2 % vec3<u32>(32u))), all(!(!vec4<bool>(var_5.d, false, true, var_5.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(var_5.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_4.x, var_4.x, 0i, 9420i), vec4<i32>(-1i, 1i, 19515i, 14166i)), vec4<i32>(var_5.c.x, 0i, 7105i, u_input.a))));
}

