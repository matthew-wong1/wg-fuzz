struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_3, 16>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<bool> {
    var var_0 = u_input.c.x;
    var var_1 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_div_u32(u_input.b, ~u_input.d.x), 1u)), Struct_1(u_input.a.zz));
    global1 = array<Struct_3, 16>();
    var_0 = (u_input.c.x >> (firstTrailingBit(41051u) % 32u)) ^ ~u_input.c.x;
    var var_2 = vec2<u32>(~(_wgslsmith_add_u32(firstTrailingBit(1u), var_1.b.a.x) >> (1u % 32u)), ~select(var_1.b.a.x, 109999u, true));
    return select(select(vec2<bool>(select(true, false, any(vec2<bool>(true, true))), true), vec2<bool>(any(vec3<bool>(false, false, true)), true & any(vec3<bool>(false, false, false))), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(!(var_2.x > 4294967295u) & true, !(!select(true, false, true))), vec2<bool>(true, true));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(arg_0.b.x, 16u)];
    global0 = arg_0.b.x;
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.a))), vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(sign(979f)), _wgslsmith_div_f32(var_0.a.x, var_0.e), _wgslsmith_f_op_f32(-var_0.a.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -797f, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(-1000f - var_0.e)) * var_0.a)), u_input.c.x, _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.zx, vec2<i32>(var_0.d, var_0.b)), vec2<i32>(-46799i, -1i)), vec2<i32>(var_0.c.x & 46391i, 1i)), select(~(~u_input.c.xy), u_input.c.yy >> (u_input.d % vec2<u32>(32u)), select(!vec2<bool>(false, arg_2.x), arg_2.xy, !arg_2.x)), vec2<i32>(-1i) * -min(var_0.c, vec2<i32>(u_input.c.x, 12569i))), _wgslsmith_clamp_i32(~1i, var_0.d, ~var_0.c.x) ^ -2147483647i, -388f);
    let var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e - var_0.a.x) * var_0.e), _wgslsmith_div_f32(var_0.e, var_0.a.x), false)), -2036f), var_0.b, var_0.c, 1i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1617f * var_0.a.x), _wgslsmith_f_op_f32(-249f + var_0.a.x))))))));
    let var_2 = Struct_4(select(func_3(), arg_0.a, arg_2.wx), min(countOneBits(vec3<u32>(~21611u, _wgslsmith_mod_u32(arg_3.x, arg_1.a.x), arg_0.b.x)), reverseBits(arg_0.b)));
    return Struct_1(~arg_3.xz);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec2<i32>) -> vec4<i32> {
    var var_0 = func_2(Struct_4(func_3(), ~(reverseBits(u_input.a) ^ ~u_input.a)), arg_0, vec4<bool>(true, true, true, true), reverseBits(max(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_0.a.x, u_input.a.x, 37650u)), _wgslsmith_mult_u32(arg_2.a.a.x, 0u), 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 33997u, 25126u), ~u_input.a))));
    let var_1 = all(select(vec3<bool>(!all(vec2<bool>(false, true)), true, !all(vec2<bool>(true, true))), vec3<bool>(true, true, all(vec2<bool>(true, true)) & true), true));
    global0 = _wgslsmith_clamp_u32(1u, ~var_0.a.x, ~1u);
    var_0 = Struct_1(~((vec2<u32>(129218u, 33410u) >> (arg_0.a % vec2<u32>(32u))) << (vec2<u32>(80788u, 0u) % vec2<u32>(32u))) ^ ~firstTrailingBit(vec2<u32>(var_0.a.x, var_0.a.x)));
    var_0 = Struct_1(~(~u_input.d ^ u_input.d));
    return ~vec4<i32>(-16055i, (firstTrailingBit(66239i) ^ firstLeadingBit(-1i)) & countOneBits(_wgslsmith_sub_i32(u_input.c.x, -32083i)), ~firstTrailingBit(~(-2147483647i)), ~max(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), firstTrailingBit(arg_3.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> Struct_3 {
    global0 = u_input.d.x;
    global1 = array<Struct_3, 16>();
    global1 = array<Struct_3, 16>();
    global0 = 38930u;
    global1 = array<Struct_3, 16>();
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1269f, arg_0.x, arg_1, arg_0.x) + arg_0) * arg_0) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(arg_0, vec4<f32>(arg_1, arg_1, arg_0.x, arg_0.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -699f, arg_0.x, 808f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(-483f, arg_1, 1581f, arg_0.x))))), u_input.c.x, vec2<i32>(1i, _wgslsmith_dot_vec4_i32(func_4(func_2(Struct_4(vec2<bool>(false, false), vec3<u32>(1u, 36633u, u_input.b)), Struct_1(u_input.a.xx), vec4<bool>(false, false, false, false), vec3<u32>(0u, u_input.a.x, 0u)), -u_input.c.x, Struct_2(Struct_1(vec2<u32>(4294967295u, 51447u)), Struct_1(vec2<u32>(51897u, 35164u))), u_input.c.zz), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 1926i, u_input.c.x, 27861i), vec4<i32>(-26751i, -1i, u_input.c.x, -62681i)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 19178u), vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.d.x)) % vec4<u32>(32u)))), u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(472f + 227f) + -530f), _wgslsmith_f_op_f32(1460f + arg_1)) - -201f));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> vec3<f32> {
    global1 = array<Struct_3, 16>();
    global0 = func_2(Struct_4(vec2<bool>(u_input.c.x <= 1i, true), firstTrailingBit(abs(~vec3<u32>(1u, u_input.a.x, 0u)))), func_2(Struct_4(func_3(), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 74368u, 46830u), vec3<u32>(11194u, 4294967295u, 4294967295u)), ~u_input.a, ~vec3<u32>(1u, 39023u, u_input.a.x))), func_2(Struct_4(vec2<bool>(false, true), u_input.a), func_2(Struct_4(vec2<bool>(false, true), vec3<u32>(u_input.d.x, 84144u, 91039u)), func_2(Struct_4(vec2<bool>(false, false), u_input.a), Struct_1(u_input.a.yy), vec4<bool>(true, true, false, false), vec3<u32>(u_input.a.x, u_input.d.x, 41824u)), vec4<bool>(true, false, false, false), vec3<u32>(1u, u_input.b, u_input.b)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, true))), u_input.a), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false)), _wgslsmith_mult_vec3_u32(~u_input.a, u_input.a)), vec4<bool>(true, any(vec3<bool>(true, true, true)), select(true, all(vec2<bool>(false, true)), true) & any(vec2<bool>(true, false)), _wgslsmith_mod_i32(arg_1.d, i32(-1i) * -3279i) == -17942i), reverseBits(vec3<u32>(u_input.a.x, ~28116u, u_input.a.x))).a.x;
    global0 = 1u;
    var var_0 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), any(vec4<bool>(true, true, true, true))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, false, false))), all(vec2<bool>(true, true)));
    global0 = 4294967295u;
    return _wgslsmith_f_op_vec3_f32(-arg_0.a.xxz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a);
    var var_1 = vec4<u32>(4294967295u | ~_wgslsmith_clamp_u32(~0u, u_input.b | u_input.a.x, u_input.a.x), countOneBits(_wgslsmith_div_u32(select(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), u_input.d.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 96934u, 27659u, u_input.d.x), select(vec4<u32>(u_input.b, 1u, u_input.a.x, 74957u), vec4<u32>(var_0, 4294967295u, 31061u, 49249u), vec4<bool>(true, false, true, true))))), var_0, var_0);
    let var_2 = vec4<bool>(all(!vec4<bool>(4294967295u <= var_1.x, true, true, true)), true, !(select(false, true, true) || true), ~abs(var_0) < ~1u);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f * 1f), 550f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1590f, 1027f) - vec2<f32>(-1000f, -1000f))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-741f, 668f), vec2<f32>(-1000f, -2108f), var_2.wy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-424f, 1252f))))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(Struct_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1299f, 562f, var_3.x, var_3.x), vec4<f32>(var_3.x, 729f, -663f, -1000f))), 0i, firstLeadingBit(u_input.c.yz), ~44709i, 475f), func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1931f, 1820f, var_3.x, var_3.x), vec4<f32>(-1447f, -644f, 351f, -1958f), vec4<bool>(true, true, false, false))), 775f))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, -1118f, var_2.x))), var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, var_3.x))))));
    var_1 = select(_wgslsmith_div_vec4_u32(~vec4<u32>(~11459u, 9503u, _wgslsmith_sub_u32(u_input.d.x, 20028u), 1u), ~select(select(vec4<u32>(var_1.x, 4294967295u, 22339u, var_1.x), vec4<u32>(var_1.x, u_input.b, 5582u, var_0), var_2), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u) & vec4<u32>(4294967295u, 0u, var_1.x, u_input.b), !vec4<bool>(var_2.x, var_2.x, var_2.x, true))), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u & var_1.x, firstLeadingBit(var_1.x), 0u << (u_input.b % 32u), var_1.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(var_0, 4294967295u, 2280u, 1u), vec4<u32>(var_0, var_1.x, u_input.a.x, u_input.a.x)))), (var_2.x & (1i != _wgslsmith_div_i32(-1i, u_input.c.x))) | !var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1030f)), firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 2147483647i), _wgslsmith_mod_vec2_i32(u_input.c.yx, u_input.c.yx)), -u_input.c.x)), -countOneBits(firstLeadingBit(u_input.c.x)), u_input.c.xz);
}

