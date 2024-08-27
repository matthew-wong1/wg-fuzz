struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, vec2<u32>(6582u, 77372u), Struct_2(vec3<bool>(true, true, false), vec4<u32>(28948u, 1u, 32498u, 6784u), Struct_1(vec3<bool>(false, true, false), vec2<f32>(2788f, 612f), 1u, vec3<u32>(4294967295u, 0u, 1u)), vec3<bool>(false, false, true), -1059f));

var<private> global1: array<Struct_1, 10>;

var<private> global2: bool;

var<private> global3: vec3<i32> = vec3<i32>(24331i, i32(-2147483648), -16407i);

var<private> global4: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<bool>(false, false, true), vec4<u32>(4294967295u, 0u, 1u, 1u), Struct_1(vec3<bool>(true, true, false), vec2<f32>(2099f, 661f), 4294967295u, vec3<u32>(0u, 21684u, 93627u)), vec3<bool>(true, true, false), -1202f), Struct_2(vec3<bool>(false, true, false), vec4<u32>(0u, 4294967295u, 28078u, 1u), Struct_1(vec3<bool>(false, false, true), vec2<f32>(1433f, -1000f), 12186u, vec3<u32>(1u, 51639u, 93476u)), vec3<bool>(true, false, true), 1240f), Struct_2(vec3<bool>(false, true, true), vec4<u32>(1u, 4394u, 38766u, 30825u), Struct_1(vec3<bool>(false, false, true), vec2<f32>(996f, 2322f), 5215u, vec3<u32>(24756u, 10831u, 1u)), vec3<bool>(false, false, true), -1000f), Struct_2(vec3<bool>(false, false, true), vec4<u32>(0u, 41224u, 4294967295u, 91186u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(1480f, 2440f), 4294967295u, vec3<u32>(0u, 0u, 67080u)), vec3<bool>(true, true, true), -2266f), Struct_2(vec3<bool>(true, true, false), vec4<u32>(0u, 16964u, 24729u, 15940u), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-485f, 1907f), 3585u, vec3<u32>(0u, 86106u, 1u)), vec3<bool>(false, true, true), -699f), Struct_2(vec3<bool>(false, false, true), vec4<u32>(12509u, 6136u, 40686u, 1u), Struct_1(vec3<bool>(false, false, true), vec2<f32>(1819f, 808f), 21130u, vec3<u32>(4294967295u, 1u, 4770u)), vec3<bool>(false, true, false), -1678f), Struct_2(vec3<bool>(false, false, false), vec4<u32>(0u, 378u, 1u, 18845u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(1466f, 572f), 17914u, vec3<u32>(0u, 1u, 1u)), vec3<bool>(true, false, true), 525f), Struct_2(vec3<bool>(true, false, false), vec4<u32>(4294967295u, 1u, 4294967295u, 72307u), Struct_1(vec3<bool>(true, true, false), vec2<f32>(1519f, 105f), 61378u, vec3<u32>(0u, 16158u, 1u)), vec3<bool>(true, true, true), 892f), Struct_2(vec3<bool>(true, true, true), vec4<u32>(1u, 4294967295u, 62122u, 0u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(1083f, 492f), 1u, vec3<u32>(1u, 0u, 17379u)), vec3<bool>(false, false, true), -1006f), Struct_2(vec3<bool>(true, true, true), vec4<u32>(63929u, 4294967295u, 34785u, 52347u), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-350f, -128f), 4294967295u, vec3<u32>(16270u, 0u, 4294967295u)), vec3<bool>(true, true, true), 1472f), Struct_2(vec3<bool>(false, false, false), vec4<u32>(11225u, 0u, 4294967295u, 917u), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-1638f, 591f), 0u, vec3<u32>(4294967295u, 35120u, 4294967295u)), vec3<bool>(true, true, true), 984f), Struct_2(vec3<bool>(true, true, true), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), Struct_1(vec3<bool>(false, false, true), vec2<f32>(489f, 1895f), 78064u, vec3<u32>(33450u, 69187u, 121u)), vec3<bool>(true, false, true), -1803f), Struct_2(vec3<bool>(true, false, true), vec4<u32>(12310u, 28264u, 4294967295u, 0u), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-421f, -1298f), 10659u, vec3<u32>(87532u, 1u, 4294967295u)), vec3<bool>(false, true, false), 670f), Struct_2(vec3<bool>(false, false, true), vec4<u32>(0u, 29852u, 1u, 0u), Struct_1(vec3<bool>(true, true, false), vec2<f32>(-351f, -366f), 0u, vec3<u32>(6264u, 4294967295u, 53217u)), vec3<bool>(false, true, true), 732f), Struct_2(vec3<bool>(true, false, false), vec4<u32>(47238u, 4294967295u, 11864u, 4294967295u), Struct_1(vec3<bool>(false, true, false), vec2<f32>(145f, -537f), 91062u, vec3<u32>(1u, 0u, 1u)), vec3<bool>(false, false, false), -1000f), Struct_2(vec3<bool>(true, true, true), vec4<u32>(0u, 536u, 1u, 4294967295u), Struct_1(vec3<bool>(true, false, true), vec2<f32>(228f, -795f), 139928u, vec3<u32>(22890u, 1u, 4294967295u)), vec3<bool>(false, false, true), 1361f), Struct_2(vec3<bool>(true, false, true), vec4<u32>(0u, 8571u, 41672u, 30672u), Struct_1(vec3<bool>(false, false, false), vec2<f32>(1271f, -1417f), 1u, vec3<u32>(1u, 44324u, 90853u)), vec3<bool>(false, false, false), 874f), Struct_2(vec3<bool>(true, false, false), vec4<u32>(4294967295u, 1u, 24535u, 16849u), Struct_1(vec3<bool>(false, true, true), vec2<f32>(-540f, -919f), 36422u, vec3<u32>(4294967295u, 1u, 1u)), vec3<bool>(true, false, true), -1634f), Struct_2(vec3<bool>(true, true, true), vec4<u32>(1u, 1705u, 1u, 3460u), Struct_1(vec3<bool>(false, false, false), vec2<f32>(-959f, 1000f), 101644u, vec3<u32>(4294967295u, 0u, 88411u)), vec3<bool>(true, true, true), 1975f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.e, 269f, -311f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-974f, global0.c.c.b.x, -183f) * vec3<f32>(-1157f, 223f, 207f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.e, arg_0.e, -644f)))))));
    var var_1 = reverseBits(~4294967295u);
    global4 = array<Struct_2, 19>();
    var_1 = 45729u;
    var var_2 = 4294967295u;
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, ~firstLeadingBit(18759i)), u_input.c), u_input.c.x, ~(_wgslsmith_sub_i32(u_input.c.x, -19393i) ^ ~(global3.x << (80687u % 32u))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: i32) -> bool {
    let var_0 = vec4<bool>(false, true, true, _wgslsmith_f_op_f32(-698f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c.e + -1196f), -1526f))) < 263f);
    global3 = arg_1;
    global0 = Struct_3(global0.c.a.x, ~vec2<u32>(select(u_input.d, 5571u, any(vec4<bool>(var_0.x, true, var_0.x, true))), global0.c.c.d.x | arg_0), Struct_2(select(select(!vec3<bool>(var_0.x, global0.a, false), vec3<bool>(global0.c.a.x, global0.a, var_0.x), true), select(vec3<bool>(false, var_0.x, false), vec3<bool>(global0.a, global0.a, global0.a), any(global0.c.c.a.yz)), true), select(_wgslsmith_mult_vec4_u32(u_input.e, ~vec4<u32>(arg_0, global0.b.x, global0.b.x, global0.c.b.x)), min(u_input.e, vec4<u32>(1u, u_input.b.x, u_input.d, arg_0)), global0.c.a.x), Struct_1(select(!vec3<bool>(var_0.x, true, global0.a), vec3<bool>(true, true, global0.c.a.x), var_0.xyw), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-151f, -1899f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.c.c.b.x, -886f), vec2<f32>(-3162f, global0.c.e)))), 0u, global0.c.c.d), vec3<bool>(926f < _wgslsmith_f_op_f32(sign(global0.c.e)), global0.a & true, _wgslsmith_f_op_f32(464f + global0.c.e) != -761f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.c.b.x), _wgslsmith_f_op_f32(abs(global0.c.c.b.x))) - _wgslsmith_div_f32(global0.c.c.b.x, _wgslsmith_f_op_f32(min(-633f, global0.c.e))))));
    return global0.c.c.a.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    var var_0 = vec4<bool>(arg_1.c.d.x, true, !(arg_2.c.c.b.x < _wgslsmith_f_op_f32(arg_2.c.c.b.x - _wgslsmith_f_op_f32(-arg_0.c.e))), global0.a);
    var var_1 = arg_1;
    global3 = vec3<i32>(global3.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-global3.x, -36885i), max(u_input.c.x, global3.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(global3.x, 37439i, u_input.c.x, global3.x), ~vec4<i32>(u_input.c.x, global3.x, -1i, global3.x))), max(i32(-1i) * -1i, i32(-1i) * -15508i)), -_wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 1i, global3.x)), firstTrailingBit(abs(-1i))));
    let var_2 = vec4<f32>(-1857f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c.e), var_1.c.c.b.x)))), _wgslsmith_f_op_f32(-arg_1.c.e), -1524f);
    var var_3 = Struct_4(Struct_2(vec3<bool>(true && any(vec2<bool>(var_0.x, false)), arg_2.a, true), _wgslsmith_add_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1.c.b.x, u_input.d, 76351u), vec4<u32>(arg_1.c.b.x, 4294967295u, 4294967295u, arg_2.c.b.x)), vec4<u32>(0u, global0.b.x, global0.c.b.x, 88885u), vec4<bool>(global0.a, var_0.x, arg_1.c.d.x, arg_0.a)), u_input.e), Struct_1(!select(vec3<bool>(arg_2.c.c.a.x, var_0.x, false), vec3<bool>(true, true, false), vec3<bool>(true, true, arg_2.a)), var_1.c.c.b, 15558u, vec3<u32>(arg_1.b.x, ~arg_2.c.b.x, u_input.d)), vec3<bool>(~arg_1.b.x < ~arg_1.c.b.x, false, false), global0.c.c.b.x), firstLeadingBit(vec4<u32>(~var_1.b.x, _wgslsmith_dot_vec3_u32(u_input.e.zwy, var_1.c.b.zzw), _wgslsmith_dot_vec2_u32(arg_0.c.b.yx, abs(var_1.b)), 19669u)), arg_0.c);
    return u_input.c.x;
}

fn func_2(arg_0: bool) -> StorageBuffer {
    var var_0 = func_4(Struct_3(func_3(_wgslsmith_mult_u32(21600u, _wgslsmith_sub_u32(global0.c.c.d.x, u_input.e.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 80498i, global3.x), u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global3.x, 1i), u_input.c)), 45345i), vec2<u32>(~0u, ~select(56919u, u_input.b.x, global0.a)), Struct_2(select(!vec3<bool>(false, global0.c.d.x, false), vec3<bool>(true, arg_0, global0.c.a.x), false), global0.c.b >> (vec4<u32>(global0.b.x, 48308u, global0.c.c.d.x, u_input.a.x) % vec4<u32>(32u)), global0.c.c, vec3<bool>(global0.c.d.x, all(global0.c.a), all(vec2<bool>(false, global0.c.a.x))), -1059f)), Struct_3(global0.c.c.a.x, vec2<u32>(~0u, 4294967295u) | ~min(u_input.b, vec2<u32>(u_input.a.x, 0u)), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~firstLeadingBit(u_input.e.x), ~_wgslsmith_mod_u32(global0.c.c.d.x, u_input.a.x)), 19u)]), Struct_3(true, _wgslsmith_mod_vec2_u32(u_input.e.xw, ~global0.b), Struct_2(select(select(vec3<bool>(false, false, global0.a), vec3<bool>(arg_0, true, global0.c.d.x), vec3<bool>(false, true, false)), vec3<bool>(global0.a, false, true), !global0.c.c.a), u_input.e, global0.c.c, !(!global0.c.d), _wgslsmith_f_op_f32(-1000f - -1430f))));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.c.c.b.x)), _wgslsmith_f_op_f32(-975f * global0.c.c.b.x), _wgslsmith_f_op_f32(global0.c.c.b.x + 688f), -1294f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.c.b.x, global0.c.c.b.x, 1275f, -1233f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.c.b.x, global0.c.c.b.x, 1490f, 1413f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.c.b.x, global0.c.e, global0.c.c.b.x, -3331f))), global0.c.c.a.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c.c.b.x, global0.c.c.b.x, global0.c.c.b.x, global0.c.e), vec4<f32>(-1048f, -215f, -511f, -565f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.e, global0.c.e, global0.c.c.b.x, 255f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(490f, global0.c.c.b.x, global0.c.c.b.x, global0.c.e) + vec4<f32>(-1759f, global0.c.e, global0.c.c.b.x, global0.c.c.b.x))))));
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 25128i, u_input.c.x, u_input.c.x), -select(vec4<i32>(19049i, global3.x, u_input.c.x, global3.x), vec4<i32>(0i, 0i, -11955i, 1i), vec4<bool>(false, false, false, arg_0))), abs(vec4<i32>(global3.x, 1i, -36771i, global3.x & u_input.c.x))), max(countOneBits(~select(vec4<i32>(u_input.c.x, -1i, -1i, -1i), vec4<i32>(global3.x, -1i, -1i, u_input.c.x), arg_0)), -abs(abs(vec4<i32>(63611i, global3.x, u_input.c.x, 1i)))));
    let var_3 = global0.c.b.x;
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.c.b.x) - _wgslsmith_f_op_f32(264f * 369f)))), -1833f));
    return StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, -125f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-547f - -141f))))), 1922f, var_4, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(global0.c.e * var_4)))), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.e.x, u_input.b.x, u_input.d), ~vec3<u32>(0u, u_input.e.x, 0u)), vec3<u32>(abs(u_input.e.x), 1u, u_input.b.x)), ~(~_wgslsmith_sub_u32(u_input.a.x, global0.c.c.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 19>();
    let x = u_input.a;
    s_output = func_2(-func_1(Struct_2(global0.c.c.a, u_input.e, Struct_1(global0.c.a, global0.c.c.b, u_input.e.x, vec3<u32>(global0.b.x, u_input.e.x, global0.c.c.c)), global0.c.c.a, global0.c.e)) != ~(1i >> (countOneBits(35905u) % 32u)));
}

