struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: i32,
    d: vec4<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(0i, 16364i, 2147483647i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(-39668i, 26897i, -35555i), vec3<i32>(20179i, 1i, 0i), vec3<i32>(2147483647i, -12468i, 97138i), vec3<i32>(-37479i, 17272i, -1i));

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec3<f32>(-995f, 2429f, 387f), vec2<f32>(751f, 1388f), Struct_1(-5640i, false, vec4<u32>(4294967295u, 4294967295u, 1u, 31306u)), 0i, vec2<u32>(1u, 1u)), Struct_2(vec3<f32>(-162f, -175f, 317f), vec2<f32>(1241f, 791f), Struct_1(14099i, false, vec4<u32>(27830u, 29939u, 1u, 1u)), -25028i, vec2<u32>(32067u, 34778u)), Struct_2(vec3<f32>(980f, -1102f, 1000f), vec2<f32>(-2578f, 229f), Struct_1(2147483647i, false, vec4<u32>(68259u, 1u, 108600u, 56942u)), 2147483647i, vec2<u32>(38324u, 4294967295u)), Struct_2(vec3<f32>(1485f, -864f, 628f), vec2<f32>(619f, 125f), Struct_1(0i, false, vec4<u32>(0u, 4294967295u, 0u, 9211u)), 2147483647i, vec2<u32>(1u, 2866u)), Struct_2(vec3<f32>(743f, -1300f, 365f), vec2<f32>(-1081f, 852f), Struct_1(38764i, true, vec4<u32>(75003u, 34210u, 0u, 1u)), -18097i, vec2<u32>(1658u, 52161u)), Struct_2(vec3<f32>(-910f, 1000f, -422f), vec2<f32>(-151f, -1000f), Struct_1(1i, false, vec4<u32>(18105u, 12265u, 26104u, 1u)), -13177i, vec2<u32>(4294967295u, 1u)), Struct_2(vec3<f32>(-1354f, 801f, -2032f), vec2<f32>(625f, -202f), Struct_1(-1i, false, vec4<u32>(6496u, 4294967295u, 4294967295u, 60811u)), i32(-2147483648), vec2<u32>(41326u, 0u)), Struct_2(vec3<f32>(-1614f, -1467f, -592f), vec2<f32>(681f, -999f), Struct_1(43886i, false, vec4<u32>(53335u, 40352u, 1u, 21694u)), i32(-2147483648), vec2<u32>(1604u, 1u)), Struct_2(vec3<f32>(-188f, -1425f, -312f), vec2<f32>(-111f, 194f), Struct_1(-23172i, true, vec4<u32>(0u, 0u, 1u, 0u)), -39827i, vec2<u32>(22763u, 0u)), Struct_2(vec3<f32>(-684f, 1033f, -482f), vec2<f32>(-993f, 879f), Struct_1(-31586i, true, vec4<u32>(1u, 23148u, 6280u, 4294967295u)), -13873i, vec2<u32>(1u, 65890u)), Struct_2(vec3<f32>(732f, -1841f, 2112f), vec2<f32>(1071f, -1774f), Struct_1(7884i, false, vec4<u32>(0u, 4195u, 0u, 78047u)), -21768i, vec2<u32>(1u, 4294967295u)), Struct_2(vec3<f32>(-137f, -1856f, 574f), vec2<f32>(-1000f, -1823f), Struct_1(-1i, true, vec4<u32>(4294967295u, 0u, 2910u, 30933u)), 30584i, vec2<u32>(1u, 1u)), Struct_2(vec3<f32>(-2165f, 734f, 919f), vec2<f32>(1356f, -660f), Struct_1(33799i, false, vec4<u32>(4637u, 58039u, 38869u, 29336u)), 2147483647i, vec2<u32>(97258u, 89261u)), Struct_2(vec3<f32>(2531f, -1830f, 404f), vec2<f32>(1621f, 580f), Struct_1(-32475i, false, vec4<u32>(1u, 0u, 4294967295u, 5802u)), i32(-2147483648), vec2<u32>(4294967295u, 36302u)), Struct_2(vec3<f32>(-1267f, -1446f, 1604f), vec2<f32>(251f, -477f), Struct_1(0i, true, vec4<u32>(6003u, 27498u, 0u, 20787u)), 78043i, vec2<u32>(0u, 4294967295u)), Struct_2(vec3<f32>(1242f, 1464f, 211f), vec2<f32>(1081f, -580f), Struct_1(29136i, false, vec4<u32>(48128u, 52780u, 1u, 46181u)), 33549i, vec2<u32>(2693u, 24066u)), Struct_2(vec3<f32>(-290f, -679f, -3146f), vec2<f32>(1186f, 583f), Struct_1(2147483647i, true, vec4<u32>(62645u, 46826u, 0u, 25130u)), 0i, vec2<u32>(0u, 0u)), Struct_2(vec3<f32>(-1147f, -429f, -1504f), vec2<f32>(-1439f, -1140f), Struct_1(-3978i, false, vec4<u32>(1u, 13200u, 1u, 0u)), 2147483647i, vec2<u32>(43595u, 0u)), Struct_2(vec3<f32>(1271f, 929f, 1262f), vec2<f32>(1370f, 2101f), Struct_1(0i, true, vec4<u32>(9170u, 49592u, 4294967295u, 4294967295u)), 1i, vec2<u32>(1u, 83695u)), Struct_2(vec3<f32>(-1051f, -912f, -905f), vec2<f32>(-388f, 1056f), Struct_1(i32(-2147483648), true, vec4<u32>(0u, 4294967295u, 4294967295u, 33059u)), -11388i, vec2<u32>(47057u, 12134u)), Struct_2(vec3<f32>(286f, 2300f, -1378f), vec2<f32>(-1000f, -1756f), Struct_1(-33097i, true, vec4<u32>(0u, 113435u, 4294967295u, 83607u)), 0i, vec2<u32>(70340u, 51461u)), Struct_2(vec3<f32>(898f, 148f, 173f), vec2<f32>(2597f, 2089f), Struct_1(0i, false, vec4<u32>(17094u, 0u, 7152u, 40352u)), 0i, vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec3<f32>(-2139f, 350f, -960f), vec2<f32>(664f, -1068f), Struct_1(2147483647i, false, vec4<u32>(55933u, 0u, 3005u, 91875u)), 2168i, vec2<u32>(0u, 1u)), Struct_2(vec3<f32>(695f, -1000f, -2110f), vec2<f32>(257f, 1345f), Struct_1(4817i, false, vec4<u32>(1064u, 0u, 86558u, 4294967295u)), 2147483647i, vec2<u32>(4294967295u, 1350u)));

var<private> global2: vec2<f32> = vec2<f32>(-267f, 1209f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(countOneBits(max(~(~73894u), _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(4294967295u, arg_1.e.a.c.c.x)), arg_1.d.xw))), 8u)];
    var var_1 = arg_3.c.x;
    let var_2 = -(~max(~vec2<i32>(-3307i, arg_0.x), vec2<i32>(-1i, -13932i)) << (arg_3.c.zy % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) * 1000f);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> bool {
    let var_0 = true;
    global2 = vec2<f32>(1367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec2<i32>(-1i, u_input.a), Struct_5(arg_0.x, Struct_4(Struct_2(vec3<f32>(-591f, -570f, global2.x), vec2<f32>(323f, -1605f), Struct_1(u_input.b, arg_0.x, vec4<u32>(0u, 4294967295u, 1u, 937u)), -37873i, vec2<u32>(1u, 12665u)), Struct_1(u_input.b, arg_0.x, vec4<u32>(0u, 4294967295u, 30892u, 4294967295u)), arg_1), u_input.a, vec4<u32>(4294967295u, 49668u, 76129u, 25328u), Struct_4(Struct_2(vec3<f32>(arg_1, 966f, arg_1), vec2<f32>(-801f, global2.x), Struct_1(2147483647i, true, vec4<u32>(4294967295u, 0u, 4294967295u, 4327u)), u_input.b, vec2<u32>(4294967295u, 44312u)), Struct_1(-24342i, true, vec4<u32>(21910u, 0u, 1445u, 82613u)), global2.x)), vec4<f32>(global2.x, 338f, global2.x, global2.x), Struct_1(u_input.b, false, vec4<u32>(1u, 74484u, 23309u, 72379u)))), _wgslsmith_f_op_f32(trunc(-957f))))) + 272f));
    let var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(32915u, ~(0u << (0u % 32u))), firstTrailingBit(abs(~vec2<u32>(1u, 4913u)))), vec2<u32>(~20854u, 1u));
    var var_2 = !select(!select(select(vec4<bool>(false, false, arg_0.x, true), vec4<bool>(false, arg_0.x, var_0, true), vec4<bool>(false, false, arg_0.x, false)), !vec4<bool>(arg_0.x, arg_0.x, false, true), true), !(!select(vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(false, false, true, true), true)), var_0);
    var var_3 = Struct_3(select(vec2<u32>(16278u, ~(~9088u)), vec2<u32>(3063u << (var_1 % 32u), var_1) & _wgslsmith_sub_vec2_u32(~vec2<u32>(var_1, 4294967295u), reverseBits(vec2<u32>(4294967295u, 0u))), arg_0.x), Struct_1(_wgslsmith_dot_vec3_i32(-(~global0[_wgslsmith_index_u32(0u, 8u)]), vec3<i32>(-u_input.a, u_input.a, reverseBits(24683i))), any(vec3<bool>(false, false, false)) != true, _wgslsmith_div_vec4_u32(firstTrailingBit(~vec4<u32>(var_1, 14021u, var_1, 7512u)), ~vec4<u32>(var_1, var_1, var_1, 0u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(466f * 1976f), _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(floor(global2.x))))));
    return !((~(~var_3.a.x) <= ~_wgslsmith_sub_u32(62966u, var_3.b.c.x)) | true);
}

fn func_1() -> f32 {
    var var_0 = all(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, func_2(vec3<bool>(true, false, false), global2.x), true), vec3<bool>(true, false, all(vec2<bool>(true, false)) | true)));
    var var_1 = select(vec2<bool>(false, func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), -23190i != u_input.a)), select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(true, true, false, false))), any(vec4<bool>(true, true, true, true)) & true), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(func_2(vec3<bool>(true, false, false), -1076f), select(false, false, false)))), select(vec2<bool>(!(global2.x != global2.x), any(select(vec2<bool>(true, true), vec2<bool>(true, false), true))), vec2<bool>(false, all(vec2<bool>(false, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), false)));
    var var_2 = Struct_1(_wgslsmith_sub_i32(u_input.b, u_input.b), true, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(38883u, 111503u, 4267u, 77615u), vec4<u32>(0u, 43758u, 0u, 65249u), vec4<u32>(1u, 0u, 0u, 0u))), vec4<u32>(24454u, 1u, firstLeadingBit(55021u), ~118702u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4830u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 78421u)), 1u, _wgslsmith_clamp_u32(43606u, 1u, 0u)), ~(~vec4<u32>(1u, 1u, 12120u, 0u)))));
    global2 = vec2<f32>(460f, global2.x);
    let var_3 = Struct_5(var_2.b, Struct_4(global1[_wgslsmith_index_u32(~1u, 24u)], Struct_1(22804i, var_1.x, var_2.c), 655f), var_2.a >> (var_2.c.x % 32u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 37238u, ~(~18990u), min(1u, ~35104u)), var_2.c >> (min(~vec4<u32>(var_2.c.x, 1u, var_2.c.x, 4294967295u), ~var_2.c) % vec4<u32>(32u))), Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-616f, global2.x, 1498f) - vec3<f32>(global2.x, -752f, global2.x)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), global2.x), Struct_1(_wgslsmith_mod_i32(u_input.b, u_input.b), all(vec3<bool>(false, false, var_2.b)), vec4<u32>(var_2.c.x, 4294967295u, 1u, var_2.c.x)), var_2.a, var_2.c.xx), Struct_1(var_2.a, false, vec4<u32>(~var_2.c.x, var_2.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, var_2.c.x), var_2.c.zz), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.c.x), vec2<u32>(23761u, 21891u)))), _wgslsmith_f_op_f32(floor(-1516f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) + -1874f) + _wgslsmith_f_op_f32(min(-1050f, 267f))) - var_3.b.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global0 = array<vec3<i32>, 8>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, -1273f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) - vec2<f32>(global2.x, -1634f))))), vec2<f32>(global2.x, _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-global2.x))))));
    var var_2 = min(~reverseBits(min(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(u_input.a, 12176i))), _wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.a, 0i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.a, -2147483647i))), reverseBits(max(vec2<i32>(u_input.b, -2147483647i), ~vec2<i32>(u_input.a, -679i)))));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1719f), _wgslsmith_f_op_f32(-var_1.x));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-vec2<i32>(u_input.a, 0i), Struct_5(false, Struct_4(Struct_2(vec3<f32>(global2.x, var_1.x, var_1.x), vec2<f32>(-631f, global2.x), Struct_1(u_input.a, true, vec4<u32>(38970u, 78055u, 0u, 29340u)), -10584i, vec2<u32>(48352u, 4294967295u)), Struct_1(var_2.x, false, vec4<u32>(4294967295u, 0u, 1u, 0u)), var_1.x), var_2.x, vec4<u32>(4294967295u, 25773u, 0u, 4294967295u), Struct_4(Struct_2(vec3<f32>(var_1.x, global2.x, var_1.x), var_1, Struct_1(u_input.b, false, vec4<u32>(4294967295u, 57751u, 65634u, 4294967295u)), var_2.x, vec2<u32>(20749u, 0u)), Struct_1(2147483647i, true, vec4<u32>(20343u, 19890u, 34286u, 17632u)), global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-670f, -153f, -1000f, -332f)), Struct_1(-7648i, false, vec4<u32>(23866u, 33996u, 0u, 4294967295u)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_div_i32(var_2.x << (0u % 32u), -33227i), firstTrailingBit(1i), -(-26984i | u_input.a), -4571i), vec2<u32>(1u, 1u));
}

