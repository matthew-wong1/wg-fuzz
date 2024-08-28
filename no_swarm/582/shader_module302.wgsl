struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>) -> u32 {
    global0 = array<Struct_1, 16>();
    let var_0 = Struct_4(vec3<f32>(1f, 1f, 1f), true, Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(437f, -849f))) - vec2<f32>(-156f, 508f)))), vec4<u32>(~_wgslsmith_div_u32(0u, 4294967295u), 1u, u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(5753u, 1u, 4294967295u), min(vec3<u32>(u_input.c.x, u_input.a, u_input.c.x), vec3<u32>(1u, 4294967295u, 4294967295u)))), Struct_2(false, arg_1, -752f, select(vec3<u32>(47468u, 1479u, u_input.b), vec3<u32>(36854u, 0u, u_input.c.x), false) >> (abs(vec3<u32>(1u, u_input.a, 4294967295u)) % vec3<u32>(32u)))), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1336f)), -1554f)), max(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(49912u, u_input.a, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, 3266u, 26682u))), vec4<u32>(u_input.a, ~8863u, _wgslsmith_mod_u32(41662u, u_input.b), ~9009u)), Struct_2(arg_1.x, select(!arg_1, vec2<bool>(arg_1.x, false), !arg_1), _wgslsmith_f_op_f32(f32(-1f) * -266f), vec3<u32>(17920u, u_input.b, abs(29303u)))));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    var var_1 = var_0.d.b;
    return ~(~(~43059u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.a.x)) + _wgslsmith_f_op_f32(-arg_2.c.c)))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-658f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(908f + 822f)), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, arg_2.c.c, 204f) * vec3<f32>(var_0, -301f, -3139f)))), select(!(!vec3<bool>(arg_2.c.a, false, true)), select(select(vec3<bool>(arg_0.x, arg_2.c.b.x, arg_2.c.b.x), vec3<bool>(true, false, arg_2.c.b.x), vec3<bool>(arg_0.x, arg_2.c.b.x, false)), !vec3<bool>(arg_0.x, arg_2.c.b.x, false), !vec3<bool>(false, arg_2.c.b.x, arg_0.x)), arg_0.x))), min(24624u, u_input.b) >= func_3((arg_1.yx >> (u_input.c % vec2<u32>(32u))) >> (vec2<u32>(u_input.c.x, 90036u) % vec2<u32>(32u)), !vec2<bool>(arg_0.x, false)), Struct_3(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1114f, -1000f))), vec4<u32>(_wgslsmith_mult_u32(16042u, arg_2.b.x), ~_wgslsmith_add_u32(u_input.c.x, 0u), arg_2.b.x, ~8630u), Struct_2(arg_0.x, vec2<bool>(arg_0.x, any(vec4<bool>(true, false, false, arg_0.x))), -306f, select(vec3<u32>(arg_2.c.d.x, u_input.a, arg_2.c.d.x), arg_2.b.wxz & arg_2.b.wxw, select(vec3<bool>(arg_2.c.a, true, arg_2.c.b.x), vec3<bool>(true, arg_0.x, true), vec3<bool>(true, arg_0.x, false))))), arg_2);
    global0 = array<Struct_1, 16>();
    let var_2 = Struct_1(all(select(!vec3<bool>(arg_0.x, var_1.d.c.a, true), !vec3<bool>(true, arg_2.c.b.x, var_1.b), all(arg_2.c.b))));
    global0 = array<Struct_1, 16>();
    return _wgslsmith_f_op_f32(floor(432f));
}

fn func_1() -> Struct_5 {
    let var_0 = 0u;
    global0 = array<Struct_1, 16>();
    var var_1 = _wgslsmith_sub_vec4_i32(~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(52532i, 24568i), ~28967i), 738i, 0i, 1i), ~vec4<i32>(6156i, 1i, firstLeadingBit(24977i), max(reverseBits(12772i), 1i)));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    return Struct_5(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), Struct_3(vec2<f32>(-1263f, 152f), vec4<u32>(var_0, 51930u, 18362u, 1u), Struct_2(false, vec2<bool>(false, false), 1878f, vec3<u32>(u_input.b, u_input.a, 1u))), -2147483647i))))), -442f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(min(-2138f, 411f)), true)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-314f)) + -920f)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: bool, arg_3: u32) -> vec3<f32> {
    global0 = array<Struct_1, 16>();
    let var_0 = vec2<bool>(!arg_2, arg_2);
    let var_1 = vec4<bool>(arg_2, all(!select(var_0, select(var_0, vec2<bool>(arg_2, true), var_0.x), vec2<bool>(true, false))), var_0.x & arg_2, false);
    let var_2 = vec2<i32>(-1i, _wgslsmith_clamp_i32(max(_wgslsmith_clamp_i32(countOneBits(-38922i), _wgslsmith_sub_i32(-19602i, 40209i), 0i), _wgslsmith_mult_i32(i32(-1i) * -7275i, 1i)), countOneBits(-2147483647i), 1i));
    var var_3 = u_input.c;
    return _wgslsmith_f_op_vec3_f32(-arg_1.a.wyx);
}

fn func_5(arg_0: vec3<f32>) -> Struct_3 {
    global0 = array<Struct_1, 16>();
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1102f + _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))), true));
    var var_1 = abs(vec3<i32>(1i, 1i, 1i));
    global0 = array<Struct_1, 16>();
    var var_2 = Struct_2(true, !select(vec2<bool>(true, u_input.b > u_input.c.x), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 296f) - _wgslsmith_f_op_f32(f32(-1f) * -608f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, false)))) * _wgslsmith_f_op_f32(step(-2235f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))))), vec3<u32>(_wgslsmith_mult_u32(u_input.b, 0u), 39047u, ~_wgslsmith_add_u32(u_input.b | 0u, select(86054u, u_input.c.x, false))));
    return Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, var_2.c) * vec2<f32>(arg_0.x, -151f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, 249f) * vec2<f32>(var_2.c, -193f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c + 295f) - _wgslsmith_f_op_f32(select(-1197f, 334f, true))), _wgslsmith_f_op_f32(trunc(1616f)))), ~vec4<u32>(111120u, ~firstLeadingBit(var_2.d.x), ~countOneBits(var_2.d.x), ~1u), Struct_2(all(vec2<bool>(false, false)) | var_2.b.x, var_2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), ~var_2.d));
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    global0 = array<Struct_1, 16>();
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(step(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a) + arg_1.a)))));
    global0 = array<Struct_1, 16>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.a, arg_1.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2668f, -930f, -1159f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1582f, 916f, -1015f), vec3<f32>(arg_1.c.a.x, arg_1.a.x, arg_3), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(309f, -1154f, -1000f))))), true))));
    let var_2 = global0[_wgslsmith_index_u32(max(38013u, arg_0), 16u)];
    return global0[_wgslsmith_index_u32(1u, 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_6(u_input.a, Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 326f, 780f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1707f, -962f, -1032f) + vec3<f32>(1760f, 139f, 222f))) * vec3<f32>(-971f, -1000f, _wgslsmith_f_op_f32(-2991f - 652f))), all(vec2<bool>(false, true)), func_5(_wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(46935u, 26223u), func_1(), select(var_0, var_0, var_0), ~4294967295u))), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1279f, 1326f, -659f) + vec3<f32>(922f, -1242f, -161f))))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1161f, 486f, 1570f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-853f, -143f, -837f), vec3<f32>(-278f, -665f, -899f))), false)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2497f), func_1().a.x, 680f))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-830f, _wgslsmith_f_op_f32(626f * 285f))), func_5(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(823f, -1991f, 232f)))).c.c))));
    global0 = array<Struct_1, 16>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-519f, -1270f), vec2<f32>(173f, 2079f))))))), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, 4294967295u, 0u), vec4<u32>(4294967295u, u_input.b, 0u, u_input.c.x)) >> (vec4<u32>(138u, u_input.a, u_input.a, u_input.b) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a, 4294967295u, 103239u, 18369u), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 0u), vec4<bool>(false, true, var_0, false)), ~vec4<u32>(u_input.c.x, 63890u, 17007u, 1u))), vec4<u32>(~75683u, ~(u_input.c.x >> (u_input.a % 32u)), select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), vec2<u32>(u_input.b, u_input.c.x)), ~u_input.b, true), _wgslsmith_clamp_u32(0u, func_3(vec2<i32>(-46295i, -37156i), vec2<bool>(var_1.a, var_1.a)), countOneBits(0u)))), Struct_2(var_1.a, select(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-902f, 362f, 1000f))).c.b, vec2<bool>(true, true), select(vec2<bool>(var_0, var_1.a), !vec2<bool>(var_0, false), var_0)), _wgslsmith_f_op_f32(905f + 538f), reverseBits(vec3<u32>(u_input.a, u_input.b, 1u))));
    var_2 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -950f), _wgslsmith_f_op_f32(round(883f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-672f, -251f)))));
    let var_3 = func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.c, var_2.a.x, 483f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), var_2.c.c, _wgslsmith_f_op_f32(-399f + 380f)) - vec3<f32>(var_2.c.c, _wgslsmith_f_op_f32(sign(349f)), _wgslsmith_f_op_f32(step(1364f, -161f)))))));
    let var_4 = -2147483647i;
    let var_5 = Struct_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, -1128f, 1197f), vec4<f32>(var_2.c.c, -1624f, var_3.c.c, var_3.a.x))))))));
    var var_6 = var_2.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1757f)))), -117f, true))), vec2<f32>(_wgslsmith_f_op_f32(var_5.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1090f, var_5.a.x)) + _wgslsmith_f_op_f32(-var_2.c.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.c.c)))))), var_3.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_3.c.b, firstTrailingBit(vec4<i32>(2147483647i, var_4, var_4, var_4)), func_5(var_5.a.xwy), 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x - var_5.a.x)), (835f <= _wgslsmith_f_op_f32(func_2(vec2<bool>(true, var_2.c.a), vec4<i32>(2147483647i, 2147483647i, var_4, 63501i), var_3, 0i))) && var_0)));
}

