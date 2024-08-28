struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_3,
    d: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(4294967295u, 1u, 25981u, 71205u), vec4<u32>(4294967295u, 33536u, 1u, 23122u), vec4<u32>(30561u, 4294967295u, 4294967295u, 0u), vec4<u32>(75834u, 34303u, 1u, 58581u), vec4<u32>(0u, 4294967295u, 125510u, 278u), vec4<u32>(4049u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 1u, 28340u, 1u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 22891u, 25595u, 30536u), vec4<u32>(33868u, 4294967295u, 37370u, 55505u), vec4<u32>(49422u, 13708u, 77639u, 49728u), vec4<u32>(0u, 78463u, 4294967295u, 54160u), vec4<u32>(4294967295u, 0u, 21857u, 34246u), vec4<u32>(1u, 0u, 0u, 56435u), vec4<u32>(1u, 4294967295u, 4294967295u, 40509u), vec4<u32>(4294967295u, 45492u, 0u, 0u), vec4<u32>(0u, 1u, 1u, 29886u), vec4<u32>(49800u, 28366u, 19171u, 1u), vec4<u32>(82906u, 4294967295u, 0u, 1u), vec4<u32>(12436u, 0u, 0u, 85877u), vec4<u32>(29708u, 45419u, 50755u, 4294967295u), vec4<u32>(21205u, 30031u, 15789u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), vec4<u32>(275u, 1u, 43924u, 45523u), vec4<u32>(1u, 39201u, 4294967295u, 1u), vec4<u32>(56481u, 40934u, 95659u, 9331u), vec4<u32>(51058u, 4294967295u, 31818u, 59199u), vec4<u32>(10476u, 73069u, 0u, 1u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = all(!select(vec4<bool>(all(vec2<bool>(true, false)), true, true, select(false, false, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)));
    let var_1 = min(vec2<i32>(min(0i, max(u_input.a, countOneBits(-2147483647i))), u_input.a), vec2<i32>(reverseBits(u_input.a), min(_wgslsmith_add_i32(u_input.a, -1i), 0i ^ u_input.a)) >> (~select(vec2<u32>(44366u, 4294967295u), ~vec2<u32>(0u, 10413u), vec2<bool>(var_0, false)) % vec2<u32>(32u)));
    global0 = array<vec4<u32>, 28>();
    var var_2 = Struct_3(_wgslsmith_mult_i32(i32(-1i) * -(var_1.x & 1i), 0i));
    global0 = array<vec4<u32>, 28>();
    return 52845u;
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    global0 = array<vec4<u32>, 28>();
    global0 = array<vec4<u32>, 28>();
    let var_0 = Struct_5(1u, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-1297f, _wgslsmith_f_op_f32(ceil(495f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1256f * 570f))))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_mod_u32(func_3(), _wgslsmith_mult_u32(55716u, _wgslsmith_div_u32(1u, ~1u))) < abs(abs(15555u & var_0.a));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-313f, -1653f, var_0.b.x, -753f), vec4<f32>(-1000f, -257f, var_0.b.x, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-218f, var_0.b.x, -1470f, var_0.b.x) * vec4<f32>(-1129f, -1090f, var_0.b.x, 129f)))) * vec4<f32>(_wgslsmith_f_op_f32(round(-1256f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2169f)), 1001f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1442f, 540f)) + _wgslsmith_div_f32(var_0.b.x, 840f)))), 1i);
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 933f, 1637f, 1f)), arg_0.a)), _wgslsmith_dot_vec3_i32(~select(abs(vec3<i32>(arg_0.b, -2147483647i, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -1i, arg_0.b), vec3<i32>(u_input.a, -1i, -33974i)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false)), -vec3<i32>(-2147483647i, i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(11681i, arg_0.b, u_input.a), vec3<i32>(-22935i, arg_0.b, 26668i)))));
    var_0 = func_2(true, _wgslsmith_mult_i32(~countOneBits(0i), ~reverseBits(_wgslsmith_clamp_i32(-1793i, 0i, var_0.b))), Struct_4(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(var_0.b, -1460i, 12828i), u_input.a, 1i), min(~vec3<i32>(u_input.a, var_0.b, -12502i), vec3<i32>(0i, -47305i, u_input.a))), vec4<bool>(all(vec3<bool>(true, true, true)), !all(vec4<bool>(false, true, false, true)), select(any(vec2<bool>(false, true)), any(vec2<bool>(false, false)), true), false), Struct_3(arg_0.b), -(~_wgslsmith_mod_vec4_i32(vec4<i32>(-8587i, u_input.a, 4541i, arg_0.b), vec4<i32>(arg_0.b, u_input.a, u_input.a, 1i)))), Struct_4(~vec3<i32>(arg_0.b, 10966i, var_0.b) & abs(~vec3<i32>(u_input.a, -11460i, -2147483647i)), vec4<bool>(true, any(vec2<bool>(false, false)) && (arg_0.a.x < var_0.a.x), false, !all(vec3<bool>(false, true, true))), Struct_3(-2147483647i), vec4<i32>(52101i, u_input.a >> (1u % 32u), 2702i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -35781i, var_0.b), vec3<i32>(arg_0.b, 2147483647i, u_input.a)))));
    let var_1 = Struct_4(select(-(~(-vec3<i32>(var_0.b, -25620i, 1i))), ~(-vec3<i32>(arg_0.b, 0i, -41781i)), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))), select(select(vec4<bool>(all(vec2<bool>(true, false)), true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(true, false))), true), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, true))), vec4<bool>(true, true, true, true)), Struct_3(arg_0.b), firstTrailingBit(-max(~vec4<i32>(-1i, -14790i, var_0.b, arg_0.b), max(vec4<i32>(arg_0.b, 0i, 5948i, -17185i), vec4<i32>(var_0.b, -1i, u_input.a, 0i)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)), ~0i);
    var var_2 = 16862u;
    return !var_1.b.ww;
}

fn func_1() -> vec2<i32> {
    let var_0 = !any(!func_4(func_2(true, -21619i, Struct_4(vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, true, true), Struct_3(u_input.a), vec4<i32>(1i, u_input.a, 21987i, 55938i)), Struct_4(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec4<bool>(true, false, true, true), Struct_3(0i), vec4<i32>(u_input.a, u_input.a, 0i, 10652i)))));
    let var_1 = Struct_3(1i);
    global0 = array<vec4<u32>, 28>();
    let var_2 = reverseBits(_wgslsmith_add_i32(~(-var_1.a) & var_1.a, u_input.a));
    global0 = array<vec4<u32>, 28>();
    return -(abs(vec2<i32>(0i, var_1.a)) ^ ~(~vec2<i32>(var_2, var_2))) | firstTrailingBit(-vec2<i32>(-1i, u_input.a));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(ceil(-2342f)), _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3.x, -113f, arg_2.a.a.x), vec3<f32>(454f, arg_2.a.a.x, -308f), vec3<bool>(true, false, false))))))))), _wgslsmith_f_op_vec3_f32(-arg_3));
    let var_1 = Struct_3(countOneBits(_wgslsmith_dot_vec2_i32(min(~arg_2.b, vec2<i32>(arg_0.x, -11680i) << (vec2<u32>(0u, 69344u) % vec2<u32>(32u))), ~(-vec2<i32>(arg_2.a.b, u_input.a)))));
    let var_2 = 4294967295u;
    var var_3 = ~(u_input.a >> (var_2 % 32u));
    global0 = array<vec4<u32>, 28>();
    return ~max(~vec3<u32>(42369u >> (var_2 % 32u), _wgslsmith_clamp_u32(var_2, 29729u, var_2), 4294967295u), vec3<u32>(16419u & var_2, var_2, ~1u) >> (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2, 156681u, 15542u), vec3<u32>(23685u, var_2, 9843u)), _wgslsmith_add_vec3_u32(vec3<u32>(29480u, var_2, var_2), vec3<u32>(23330u, var_2, 1u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(-1i, -1i, 2147483647i)), u_input.a, min(1i, 2147483647i), u_input.a), vec4<i32>(firstLeadingBit(-1i), _wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_div_i32(u_input.a, 39849i), -u_input.a)), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1794f - 154f), -263f))), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(-1113f)), _wgslsmith_f_op_f32(f32(-1f) * -1128f), _wgslsmith_f_op_f32(min(837f, 759f)), 920f), -u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.a) & ~vec2<i32>(u_input.a, u_input.a), ~func_1())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-754f, 3240f, 802f), vec3<f32>(-484f, -753f, -797f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_add_vec4_u32(abs(global0[_wgslsmith_index_u32(0u, 28u)]), global0[_wgslsmith_index_u32(5016u, 28u)] >> (global0[_wgslsmith_index_u32(14473u, 28u)] % vec4<u32>(32u))), vec4<u32>(var_0.x, 43779u, ~var_0.x, ~var_0.x << (~4294967295u % 32u)), true), vec4<i32>(-reverseBits(u_input.a), _wgslsmith_mult_i32(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(5618i, u_input.a, u_input.a)), _wgslsmith_sub_i32(u_input.a, 44337i)), u_input.a), select(2147483647i, select(u_input.a, -26606i | u_input.a, all(vec3<bool>(false, true, false))), any(vec2<bool>(false, true))), 33725i), 4071u);
}

