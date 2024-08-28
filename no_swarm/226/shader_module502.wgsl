struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec2<f32>(847f, -1000f), false, vec4<u32>(1u, 0u, 3743u, 4294967295u));

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(15773u, 428f, Struct_1(false, vec2<f32>(-1809f, -2247f), false, vec4<u32>(86899u, 12836u, 0u, 4294967295u)), vec2<u32>(46008u, 1u), Struct_1(true, vec2<f32>(1553f, 546f), false, vec4<u32>(4294967295u, 1u, 4294967295u, 20947u))), Struct_2(0u, 753f, Struct_1(false, vec2<f32>(596f, -1906f), true, vec4<u32>(23897u, 1824u, 36752u, 0u)), vec2<u32>(4294967295u, 64912u), Struct_1(true, vec2<f32>(900f, -1006f), false, vec4<u32>(1u, 0u, 76601u, 1u))), Struct_2(90863u, -1000f, Struct_1(false, vec2<f32>(-188f, 881f), true, vec4<u32>(86010u, 23139u, 1u, 1u)), vec2<u32>(93203u, 1u), Struct_1(true, vec2<f32>(766f, 1411f), false, vec4<u32>(1u, 4294967295u, 46000u, 36608u))), Struct_2(1u, -504f, Struct_1(false, vec2<f32>(-1294f, 119f), true, vec4<u32>(49878u, 54757u, 30280u, 39916u)), vec2<u32>(28808u, 20853u), Struct_1(false, vec2<f32>(685f, 693f), true, vec4<u32>(0u, 4294967295u, 81491u, 1u))), Struct_2(1u, 256f, Struct_1(true, vec2<f32>(812f, 1000f), true, vec4<u32>(0u, 28949u, 73925u, 41079u)), vec2<u32>(76758u, 42117u), Struct_1(true, vec2<f32>(711f, 561f), false, vec4<u32>(6846u, 4294967295u, 10382u, 67454u))), Struct_2(20530u, -455f, Struct_1(false, vec2<f32>(518f, -294f), false, vec4<u32>(4294967295u, 1u, 4294967295u, 28375u)), vec2<u32>(58401u, 4294967295u), Struct_1(true, vec2<f32>(1000f, -1876f), true, vec4<u32>(24107u, 0u, 39882u, 4294967295u))), Struct_2(0u, 1000f, Struct_1(true, vec2<f32>(1235f, -1084f), false, vec4<u32>(1u, 0u, 1u, 38223u)), vec2<u32>(63016u, 62640u), Struct_1(true, vec2<f32>(189f, -1691f), true, vec4<u32>(4294967295u, 4294967295u, 1u, 871u))), Struct_2(8792u, 262f, Struct_1(true, vec2<f32>(-881f, -198f), true, vec4<u32>(64191u, 9518u, 32548u, 1u)), vec2<u32>(4294967295u, 16677u), Struct_1(true, vec2<f32>(-1504f, -447f), false, vec4<u32>(0u, 4294967295u, 53304u, 84887u))), Struct_2(0u, 833f, Struct_1(false, vec2<f32>(1952f, -1379f), false, vec4<u32>(1u, 1u, 33172u, 0u)), vec2<u32>(23799u, 8594u), Struct_1(true, vec2<f32>(-1000f, -632f), true, vec4<u32>(1u, 50674u, 30642u, 58519u))), Struct_2(26797u, -1777f, Struct_1(false, vec2<f32>(1644f, -538f), true, vec4<u32>(29404u, 92009u, 0u, 4294967295u)), vec2<u32>(1u, 54172u), Struct_1(false, vec2<f32>(1538f, 190f), false, vec4<u32>(27114u, 1u, 27275u, 9606u))), Struct_2(1u, -496f, Struct_1(false, vec2<f32>(734f, -419f), true, vec4<u32>(4294967295u, 3258u, 1u, 4294967295u)), vec2<u32>(4294967295u, 0u), Struct_1(true, vec2<f32>(-775f, 633f), true, vec4<u32>(4294967295u, 45650u, 72185u, 49471u))), Struct_2(7907u, 171f, Struct_1(true, vec2<f32>(-622f, 188f), true, vec4<u32>(7404u, 4294967295u, 123842u, 52553u)), vec2<u32>(4294967295u, 1u), Struct_1(true, vec2<f32>(-2282f, -304f), false, vec4<u32>(0u, 4294967295u, 0u, 4294967295u))), Struct_2(1u, -877f, Struct_1(true, vec2<f32>(930f, 1531f), true, vec4<u32>(57158u, 67885u, 28127u, 33078u)), vec2<u32>(18955u, 60724u), Struct_1(false, vec2<f32>(571f, -890f), true, vec4<u32>(37855u, 75344u, 0u, 0u))), Struct_2(110279u, 1678f, Struct_1(false, vec2<f32>(-547f, -911f), true, vec4<u32>(0u, 1u, 22770u, 1u)), vec2<u32>(4294967295u, 1u), Struct_1(true, vec2<f32>(1244f, -1000f), false, vec4<u32>(22023u, 34162u, 25532u, 60976u))), Struct_2(4294967295u, 1112f, Struct_1(false, vec2<f32>(174f, 188f), true, vec4<u32>(1u, 4294967295u, 14708u, 1u)), vec2<u32>(1u, 17124u), Struct_1(false, vec2<f32>(337f, 936f), true, vec4<u32>(4294967295u, 10758u, 4294967295u, 4294967295u))), Struct_2(8167u, -393f, Struct_1(true, vec2<f32>(-2081f, -1161f), false, vec4<u32>(4294967295u, 4294967295u, 103778u, 15452u)), vec2<u32>(4294967295u, 8701u), Struct_1(false, vec2<f32>(-239f, 2057f), true, vec4<u32>(1u, 37577u, 4294967295u, 64803u))), Struct_2(0u, -291f, Struct_1(true, vec2<f32>(896f, -1411f), false, vec4<u32>(58673u, 4066u, 1u, 0u)), vec2<u32>(4294967295u, 2518u), Struct_1(true, vec2<f32>(1254f, -305f), true, vec4<u32>(1u, 0u, 740u, 4294967295u))), Struct_2(26044u, -1198f, Struct_1(false, vec2<f32>(750f, -613f), false, vec4<u32>(1u, 0u, 0u, 0u)), vec2<u32>(0u, 0u), Struct_1(false, vec2<f32>(468f, -972f), false, vec4<u32>(67090u, 49291u, 1u, 1u))), Struct_2(92210u, 251f, Struct_1(false, vec2<f32>(143f, 1594f), true, vec4<u32>(56615u, 1u, 12647u, 46381u)), vec2<u32>(15535u, 33339u), Struct_1(true, vec2<f32>(-144f, -1078f), false, vec4<u32>(1u, 0u, 4294967295u, 45717u))), Struct_2(69317u, 654f, Struct_1(false, vec2<f32>(-611f, -936f), false, vec4<u32>(4294967295u, 1u, 22374u, 54113u)), vec2<u32>(62799u, 29306u), Struct_1(false, vec2<f32>(1496f, 1000f), false, vec4<u32>(4294967295u, 35830u, 4294967295u, 14175u))), Struct_2(61927u, -586f, Struct_1(false, vec2<f32>(1031f, -776f), false, vec4<u32>(44550u, 695u, 54482u, 14215u)), vec2<u32>(78598u, 12010u), Struct_1(false, vec2<f32>(-1000f, 1948f), true, vec4<u32>(65549u, 4294967295u, 1u, 58639u))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: i32) -> vec2<u32> {
    var var_0 = Struct_1(false, global0.b, global0.a, ~global0.d);
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.b))))))), var_0.c, global0.d);
    let var_2 = var_1;
    global0 = var_1;
    var_0 = Struct_1(var_2.c || true, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-244f, _wgslsmith_div_f32(var_1.b.x, var_1.b.x)), _wgslsmith_div_vec2_f32(var_2.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.b)))))), !global0.a, _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(var_0.d, global0.d), abs(~vec4<u32>(global0.d.x, 54714u, 1u, var_2.d.x)), ((vec4<u32>(arg_2.x, global0.d.x, global0.d.x, arg_2.x) << (var_2.d % vec4<u32>(32u))) & vec4<u32>(4574u, 69711u, global0.d.x, var_1.d.x)) & var_1.d));
    return vec2<u32>(global0.d.x, _wgslsmith_mod_u32(~(~(~4294967295u)), ~(~(~0u))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_3(u_input.a.x);
    var var_1 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(max(~global0.d.x, 1u), global0.d.x, _wgslsmith_mult_u32(34974u, global0.d.x), global0.d.x), abs(global0.d)), arg_0, Struct_1(select(!global0.a, false, !(global0.c && false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(2324f, global0.b.x), _wgslsmith_f_op_f32(-arg_0))), true, vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(global0.d.x, 0u), firstLeadingBit(global0.d.x)), global0.d.x, min(1u, ~global0.d.x), global0.d.x)), max(~vec2<u32>(21600u, global0.d.x ^ global0.d.x), global0.d.zy << (~func_3(vec3<i32>(-2147483647i, var_0.a, 2147483647i), vec2<i32>(-35428i, var_0.a), vec2<u32>(1u, global0.d.x), u_input.a.x) % vec2<u32>(32u))), Struct_1(!(true | select(false, global0.a, global0.c)), global0.b, all(select(vec4<bool>(global0.a, true, global0.c, true), vec4<bool>(global0.c, global0.c, false, global0.c), vec4<bool>(global0.c, global0.c, true, false))) != !all(vec3<bool>(false, true, global0.c)), global0.d));
    let var_2 = !select(select(select(vec2<bool>(true, false), !vec2<bool>(var_1.e.c, var_1.c.c), vec2<bool>(global0.a, var_1.e.c)), vec2<bool>(any(vec3<bool>(true, false, global0.c)), true), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(global0.c, true, global0.c, true)), select(var_1.c.c, false, any(vec3<bool>(true, var_1.e.a, var_1.c.c)))), vec2<bool>(true & (global0.a && var_1.e.a), !var_1.e.c));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, 2305f, false)))))));
    global0 = var_1.c;
    return var_1.c;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    global0 = func_2(_wgslsmith_f_op_f32(-global0.b.x));
    let var_0 = arg_0;
    global1 = array<Struct_2, 21>();
    var var_1 = _wgslsmith_mult_vec2_i32(-vec2<i32>(countOneBits(-u_input.a.x), ~(-2147483647i)), -(u_input.a.wx | vec2<i32>(-18330i, var_0.a)));
    var var_2 = global1[_wgslsmith_index_u32(abs(min(arg_2.d.x, 29964u)), 21u)];
    return u_input.a.ywx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec4<i32>(-1i, 1i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(-31892i, -38853i), u_input.a.x & u_input.a.x), u_input.a.x), _wgslsmith_dot_vec3_i32(-u_input.a.zzz, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a.xzw, vec3<i32>(u_input.a.x, -24272i, u_input.a.x)), func_1(Struct_3(u_input.a.x), vec4<f32>(-1000f, -1000f, global0.b.x, global0.b.x), Struct_1(global0.c, vec2<f32>(-2361f, -637f), global0.c, vec4<u32>(global0.d.x, 4294967295u, global0.d.x, 0u)), u_input.a.x)))));
    let var_1 = Struct_1(!(_wgslsmith_f_op_f32(-global0.b.x) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.x + global0.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global0.b)))), -21865i >= var_0.x, ~_wgslsmith_mult_vec4_u32(~global0.d, ~global0.d));
    var var_2 = -224f == global0.b.x;
    let var_3 = vec2<i32>(-u_input.a.x, -1i);
    global0 = func_2(608f);
    let var_4 = !(all(vec2<bool>(var_1.a, false)) || ((-1i <= -var_3.x) & all(vec3<bool>(true, true, global0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(-global0.b.x)), (-5534i >> ((~var_1.d.x >> (44246u % 32u)) % 32u)) << (~(~_wgslsmith_mod_u32(0u, var_1.d.x)) % 32u), var_1.d.x, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(6273u, 50922u, 4294967295u), min(var_1.d.x, var_1.d.x)) | _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(global0.d, global0.d), ~(~vec4<u32>(var_1.d.x, global0.d.x, 4294967295u, global0.d.x))));
}

