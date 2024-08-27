struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec2<i32>(0i, 0i), Struct_1(-1763f, false, vec3<u32>(70451u, 23710u, 4294967295u), vec2<i32>(1i, 1i)), Struct_1(-266f, false, vec3<u32>(29405u, 8713u, 4294967295u), vec2<i32>(2147483647i, 13776i)), Struct_2(true, -61175i), true), Struct_3(vec2<i32>(0i, -12164i), Struct_1(902f, false, vec3<u32>(0u, 0u, 26464u), vec2<i32>(-41227i, 26580i)), Struct_1(-1730f, true, vec3<u32>(19289u, 0u, 4294967295u), vec2<i32>(8095i, 41903i)), Struct_2(true, 0i), false), Struct_3(vec2<i32>(-48014i, 0i), Struct_1(-1101f, true, vec3<u32>(37553u, 0u, 4294967295u), vec2<i32>(-34534i, -37605i)), Struct_1(1448f, true, vec3<u32>(4294967295u, 31991u, 4294967295u), vec2<i32>(i32(-2147483648), 1i)), Struct_2(false, 1i), true), Struct_3(vec2<i32>(15282i, 1i), Struct_1(1914f, true, vec3<u32>(4294967295u, 32044u, 1u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(-221f, true, vec3<u32>(1u, 3877u, 1u), vec2<i32>(2147483647i, 2147483647i)), Struct_2(false, i32(-2147483648)), false), Struct_3(vec2<i32>(-11052i, 1i), Struct_1(-726f, false, vec3<u32>(0u, 31906u, 45286u), vec2<i32>(-3377i, 1i)), Struct_1(-506f, true, vec3<u32>(4294967295u, 1u, 23186u), vec2<i32>(15927i, -24082i)), Struct_2(false, 4179i), true), Struct_3(vec2<i32>(1i, 2147483647i), Struct_1(1816f, false, vec3<u32>(4294967295u, 14711u, 27702u), vec2<i32>(1i, -11i)), Struct_1(-751f, false, vec3<u32>(1u, 10177u, 0u), vec2<i32>(0i, -1i)), Struct_2(true, -15773i), true), Struct_3(vec2<i32>(-20984i, 0i), Struct_1(828f, true, vec3<u32>(24983u, 4294967295u, 43492u), vec2<i32>(26707i, i32(-2147483648))), Struct_1(190f, false, vec3<u32>(52014u, 17112u, 0u), vec2<i32>(-34820i, -12718i)), Struct_2(true, 39530i), false), Struct_3(vec2<i32>(-54908i, 3259i), Struct_1(904f, true, vec3<u32>(1u, 0u, 1u), vec2<i32>(0i, 0i)), Struct_1(706f, false, vec3<u32>(4294967295u, 0u, 1u), vec2<i32>(-1i, -1727i)), Struct_2(false, -1i), false), Struct_3(vec2<i32>(1i, 0i), Struct_1(-3489f, true, vec3<u32>(32355u, 45606u, 1u), vec2<i32>(-20960i, 35064i)), Struct_1(-1377f, false, vec3<u32>(0u, 1u, 71135u), vec2<i32>(-24807i, 1i)), Struct_2(true, -1i), false), Struct_3(vec2<i32>(0i, 42587i), Struct_1(1000f, false, vec3<u32>(0u, 29844u, 1u), vec2<i32>(-36248i, 2147483647i)), Struct_1(923f, false, vec3<u32>(0u, 56948u, 4294967295u), vec2<i32>(i32(-2147483648), -1i)), Struct_2(true, 1037i), true), Struct_3(vec2<i32>(-41826i, 1i), Struct_1(-971f, false, vec3<u32>(4294967295u, 0u, 46470u), vec2<i32>(i32(-2147483648), 29318i)), Struct_1(411f, true, vec3<u32>(0u, 10295u, 1u), vec2<i32>(-32527i, 34671i)), Struct_2(true, 2147483647i), false), Struct_3(vec2<i32>(33680i, i32(-2147483648)), Struct_1(1023f, true, vec3<u32>(49980u, 0u, 18619u), vec2<i32>(13142i, 0i)), Struct_1(1096f, true, vec3<u32>(1u, 1u, 4294967295u), vec2<i32>(9681i, 0i)), Struct_2(true, 73711i), false), Struct_3(vec2<i32>(20757i, 1i), Struct_1(1408f, true, vec3<u32>(12929u, 11706u, 23469u), vec2<i32>(-17830i, -1i)), Struct_1(594f, true, vec3<u32>(29138u, 94373u, 21099u), vec2<i32>(53431i, -21250i)), Struct_2(false, 2147483647i), true), Struct_3(vec2<i32>(15919i, 2147483647i), Struct_1(-276f, false, vec3<u32>(4294967295u, 37185u, 11910u), vec2<i32>(-17273i, 35400i)), Struct_1(386f, true, vec3<u32>(0u, 12070u, 22581u), vec2<i32>(5463i, -22669i)), Struct_2(false, -16663i), true), Struct_3(vec2<i32>(0i, -46189i), Struct_1(273f, true, vec3<u32>(0u, 1u, 4294967295u), vec2<i32>(-14998i, 64818i)), Struct_1(-977f, true, vec3<u32>(12326u, 74559u, 50514u), vec2<i32>(-3873i, -1i)), Struct_2(true, -7317i), true), Struct_3(vec2<i32>(i32(-2147483648), -47765i), Struct_1(1103f, false, vec3<u32>(98895u, 12390u, 87513u), vec2<i32>(-47326i, 15022i)), Struct_1(-199f, false, vec3<u32>(0u, 0u, 4294967295u), vec2<i32>(2147483647i, 2147483647i)), Struct_2(false, i32(-2147483648)), false), Struct_3(vec2<i32>(16713i, 2147483647i), Struct_1(-843f, true, vec3<u32>(0u, 0u, 70749u), vec2<i32>(0i, 1i)), Struct_1(1673f, false, vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(25180i, 0i)), Struct_2(true, 47801i), true), Struct_3(vec2<i32>(-13820i, 2147483647i), Struct_1(2194f, false, vec3<u32>(15400u, 53450u, 0u), vec2<i32>(24972i, -14090i)), Struct_1(-439f, true, vec3<u32>(1u, 1u, 1u), vec2<i32>(-1i, -1i)), Struct_2(true, -10062i), false), Struct_3(vec2<i32>(33961i, -2260i), Struct_1(296f, false, vec3<u32>(4294967295u, 4294967295u, 1u), vec2<i32>(55037i, -57876i)), Struct_1(-405f, true, vec3<u32>(5453u, 52928u, 0u), vec2<i32>(0i, 0i)), Struct_2(false, -1i), true), Struct_3(vec2<i32>(0i, -15619i), Struct_1(-396f, true, vec3<u32>(1u, 4294967295u, 20059u), vec2<i32>(-68403i, 0i)), Struct_1(-142f, false, vec3<u32>(60317u, 86533u, 4294967295u), vec2<i32>(-38880i, 2147483647i)), Struct_2(true, -32556i), true), Struct_3(vec2<i32>(-1i, -44435i), Struct_1(955f, true, vec3<u32>(1263u, 4294967295u, 0u), vec2<i32>(-1i, i32(-2147483648))), Struct_1(1276f, false, vec3<u32>(43142u, 4294967295u, 4294967295u), vec2<i32>(2147483647i, -1i)), Struct_2(true, i32(-2147483648)), true), Struct_3(vec2<i32>(-1i, 41388i), Struct_1(-1000f, false, vec3<u32>(84903u, 4294967295u, 0u), vec2<i32>(33890i, -1i)), Struct_1(884f, false, vec3<u32>(27069u, 52001u, 1u), vec2<i32>(-14129i, -14770i)), Struct_2(false, -31585i), true), Struct_3(vec2<i32>(2147483647i, -1i), Struct_1(1369f, false, vec3<u32>(5346u, 0u, 4294967295u), vec2<i32>(-11186i, -10367i)), Struct_1(-606f, true, vec3<u32>(4294967295u, 28878u, 35681u), vec2<i32>(9432i, -71963i)), Struct_2(true, 0i), true), Struct_3(vec2<i32>(i32(-2147483648), 0i), Struct_1(-622f, true, vec3<u32>(15919u, 19091u, 95948u), vec2<i32>(-35977i, 2147483647i)), Struct_1(1000f, true, vec3<u32>(1u, 4294967295u, 2627u), vec2<i32>(0i, -22367i)), Struct_2(false, 2147483647i), false), Struct_3(vec2<i32>(2147483647i, -12367i), Struct_1(414f, false, vec3<u32>(66189u, 92353u, 22443u), vec2<i32>(-15414i, 1i)), Struct_1(-537f, false, vec3<u32>(1u, 61397u, 1u), vec2<i32>(-10141i, 98464i)), Struct_2(true, -1524i), true), Struct_3(vec2<i32>(1i, -15161i), Struct_1(-581f, false, vec3<u32>(42967u, 48684u, 1u), vec2<i32>(2147483647i, 32778i)), Struct_1(236f, true, vec3<u32>(0u, 0u, 38800u), vec2<i32>(i32(-2147483648), 1i)), Struct_2(false, -77158i), true), Struct_3(vec2<i32>(-26732i, 33137i), Struct_1(-480f, false, vec3<u32>(0u, 60729u, 0u), vec2<i32>(-38470i, 1i)), Struct_1(-1000f, true, vec3<u32>(32148u, 12736u, 1u), vec2<i32>(i32(-2147483648), 28078i)), Struct_2(true, 10487i), false), Struct_3(vec2<i32>(1i, 2147483647i), Struct_1(-1000f, true, vec3<u32>(52494u, 4294967295u, 0u), vec2<i32>(-20328i, 1i)), Struct_1(857f, true, vec3<u32>(54523u, 0u, 74903u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_2(false, 38429i), false), Struct_3(vec2<i32>(-1i, 36017i), Struct_1(-2086f, false, vec3<u32>(18116u, 79773u, 4294967295u), vec2<i32>(2170i, i32(-2147483648))), Struct_1(-1516f, true, vec3<u32>(0u, 1u, 4294967295u), vec2<i32>(17235i, 1i)), Struct_2(true, 24382i), true));

var<private> global1: array<Struct_3, 13>;

var<private> global2: Struct_2 = Struct_2(true, i32(-2147483648));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(arg_1.b.d.x, arg_1.c.d.x), _wgslsmith_dot_vec3_i32(select(~(-vec3<i32>(1i, 0i, 1i)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-1i, -10472i, arg_1.b.d.x)), u_input.d), global2.a), _wgslsmith_mult_vec3_i32(u_input.d, -(u_input.d & u_input.d))), reverseBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global2.b, global2.b), u_input.d.yy), vec2<i32>(12749i, -6667i)), u_input.d.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(11869u, arg_0.x, arg_0.x), vec3<u32>(u_input.c.x, u_input.c.x, 44121u)) % 32u))));
    var var_1 = ~arg_1.c.c.x;
    var var_2 = Struct_4(arg_0, global0[_wgslsmith_index_u32(abs(1u << (arg_0.x % 32u)), 29u)]);
    global2 = var_2.b.d;
    let var_3 = ~min(_wgslsmith_sub_u32(19741u, firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(25654u, arg_1.b.c.x)))), _wgslsmith_div_u32(~1u, _wgslsmith_add_u32(firstLeadingBit(u_input.a), 38207u)));
    return vec3<f32>(_wgslsmith_div_f32(-2427f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.c.a - 1384f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.b.b.a - var_2.b.b.a), _wgslsmith_f_op_f32(var_2.b.b.a + var_2.b.c.a), any(vec4<bool>(true, global2.a, global2.a, global2.a)))) + var_2.b.b.a)), -338f);
}

fn func_4(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = global1[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.c.x) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 18495u, 0u)), vec3<u32>(u_input.a, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.a), vec3<u32>(u_input.c.x, 1u, u_input.c.x)))) ^ countOneBits(~(~16026u))) & u_input.b, 13u)];
    let var_1 = !(arg_0.x <= _wgslsmith_f_op_f32(arg_0.x - -126f));
    var_0 = Struct_3(-_wgslsmith_clamp_vec2_i32(var_0.c.d, abs(u_input.d.yx ^ u_input.d.yz), vec2<i32>(0i, countOneBits(-14748i))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.a, arg_0.x))))), true, vec3<u32>(var_0.b.c.x, var_0.b.c.x, 4294967295u), vec2<i32>(-1i) * -max(u_input.d.zy, u_input.d.zx)), Struct_1(_wgslsmith_f_op_f32(-arg_0.x), u_input.d.x == u_input.d.x, ~(~vec3<u32>(18236u, var_0.c.c.x, 4294967295u)), u_input.d.xz), Struct_2(var_0.d.a, -1i), 1283f > _wgslsmith_div_f32(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))));
    global1 = array<Struct_3, 13>();
    global2 = var_0.d;
    return !select(!(!vec4<bool>(false, var_0.d.a, false, true)), select(vec4<bool>(true, true, 26423i <= global2.b, !var_1), !(!vec4<bool>(var_0.b.b, var_0.c.b, false, var_0.c.b)), true), true);
}

fn func_2() -> vec4<u32> {
    let var_0 = !select(select(vec4<bool>(false, global2.a, global2.a, global2.a & false), !(!vec4<bool>(global2.a, false, global2.a, global2.a)), vec4<bool>(!global2.a, true, true, all(vec2<bool>(true, false)))), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(140f, 122f, 142f), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(0u, u_input.b, u_input.a, 4294967295u), Struct_3(u_input.d.xx, Struct_1(522f, false, vec3<u32>(u_input.a, 57025u, 4294967295u), u_input.d.xx), Struct_1(-123f, global2.a, vec3<u32>(u_input.b, 43500u, u_input.c.x), vec2<i32>(0i, u_input.d.x)), Struct_2(global2.a, 3553i), global2.a))))), vec4<bool>(global2.a, any(vec2<bool>(false, global2.a)) || !global2.a, func_4(vec3<f32>(836f, -954f, 1682f)).x || global2.a, true));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -936f);
    global0 = array<Struct_3, 29>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(720f)), _wgslsmith_f_op_f32(f32(-1f) * -104f))))));
    global1 = array<Struct_3, 13>();
    return countOneBits(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 105902u, 0u) << (vec4<u32>(1u, 43896u, u_input.b, u_input.c.x) % vec4<u32>(32u))), vec4<u32>(1u, abs(u_input.b), u_input.b, ~u_input.a)) & vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(~14879u, abs(u_input.a)), 1u, ~(~u_input.b)));
}

fn func_1() -> Struct_3 {
    global1 = array<Struct_3, 13>();
    let var_0 = ~func_2();
    global1 = array<Struct_3, 13>();
    var var_1 = max(0i, -2147483647i);
    global2 = Struct_2(true, global2.b);
    return global0[_wgslsmith_index_u32((func_2().x >> (max(u_input.a, u_input.c.x) % 32u)) | 1u, 29u)];
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_1 {
    global2 = arg_0.d;
    global2 = Struct_2(~func_1().a.x == _wgslsmith_add_i32(-_wgslsmith_mult_i32(arg_0.c.d.x, arg_0.d.b), _wgslsmith_dot_vec2_i32(u_input.d.xz | u_input.d.xz, -u_input.d.zx)), 0i);
    global0 = array<Struct_3, 29>();
    global2 = arg_0.d;
    var var_0 = ~(~min(firstLeadingBit(31677u), ~1u));
    return arg_0.c;
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    return ~(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    var var_1 = _wgslsmith_dot_vec3_u32(select(~(firstLeadingBit(vec3<u32>(53233u, 4294967295u, 53674u)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.b), vec3<u32>(48749u, u_input.b, u_input.b)) % vec3<u32>(32u))), vec3<u32>(u_input.c.x, 28986u, 15504u), !(!(!global2.a))), vec3<u32>(func_6(min(global2.b, countOneBits(global2.b)), global2.a, func_5(func_1(), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1963f, 1040f, 111f), vec4<f32>(-1143f, -1000f, -530f, 971f))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -1i, global2.b, 2147483647i), vec4<i32>(u_input.d.x, 325i, u_input.d.x, 2147483647i))), firstTrailingBit(abs(4294967295u)), 2456u ^ ~u_input.c.x));
    global0 = array<Struct_3, 29>();
    let var_2 = Struct_2(false, (~(u_input.d.x | u_input.d.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 66012u, u_input.a, u_input.b), vec4<u32>(21078u, u_input.c.x, 1u, u_input.c.x)) % 32u)) | (-u_input.d.x >> (~countOneBits(u_input.c.x) % 32u)));
    var var_3 = ~var_2.b;
    global2 = Struct_2(var_2.a, var_2.b ^ _wgslsmith_mult_i32(u_input.d.x, -firstLeadingBit(59798i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~2147483647i, ~(~(~(-39206i)))), -(~(select(vec4<i32>(var_2.b, -8597i, 24042i, u_input.d.x), vec4<i32>(1i, var_2.b, var_2.b, -2147483647i), vec4<bool>(global2.a, true, true, global2.a)) | vec4<i32>(var_2.b, var_2.b, -1i, -1769i))));
}

