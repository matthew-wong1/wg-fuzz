struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 23> = array<u32, 23>(2879u, 32348u, 22742u, 0u, 7099u, 59413u, 0u, 121117u, 25471u, 1u, 4294967295u, 10410u, 2579u, 8377u, 43678u, 47263u, 35575u, 5430u, 1u, 1u, 4294967295u, 24131u, 31554u);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(false, true, true), vec4<u32>(6795u, 0u, 6472u, 7306u), 0u, false), Struct_1(vec3<bool>(false, false, false), vec4<u32>(41704u, 4294967295u, 0u, 13896u), 51485u, true), Struct_1(vec3<bool>(true, true, true), vec4<u32>(43430u, 29327u, 4294967295u, 4294967295u), 5978u, true), Struct_1(vec3<bool>(false, false, false), vec4<u32>(0u, 0u, 0u, 17523u), 15543u, true), Struct_1(vec3<bool>(false, false, false), vec4<u32>(1u, 33101u, 27239u, 30405u), 0u, true), Struct_1(vec3<bool>(true, false, true), vec4<u32>(4294967295u, 18314u, 0u, 22175u), 0u, false), Struct_1(vec3<bool>(false, false, false), vec4<u32>(4294967295u, 0u, 15967u, 0u), 8590u, false), Struct_1(vec3<bool>(true, false, false), vec4<u32>(4294967295u, 49741u, 1u, 7519u), 35312u, false), Struct_1(vec3<bool>(true, true, true), vec4<u32>(0u, 1u, 1u, 0u), 53899u, false), Struct_1(vec3<bool>(false, true, false), vec4<u32>(4294967295u, 0u, 1u, 51636u), 90858u, true), Struct_1(vec3<bool>(false, false, true), vec4<u32>(1u, 14719u, 17252u, 1u), 90375u, true), Struct_1(vec3<bool>(true, false, true), vec4<u32>(55373u, 29624u, 40413u, 6670u), 64630u, false), Struct_1(vec3<bool>(false, true, true), vec4<u32>(0u, 1u, 7270u, 0u), 4294967295u, false), Struct_1(vec3<bool>(false, false, true), vec4<u32>(85537u, 1u, 4294967295u, 1u), 216u, true), Struct_1(vec3<bool>(false, false, true), vec4<u32>(3702u, 0u, 22683u, 6687u), 88231u, false), Struct_1(vec3<bool>(false, false, false), vec4<u32>(50928u, 1u, 0u, 84508u), 0u, true), Struct_1(vec3<bool>(true, true, true), vec4<u32>(0u, 1u, 4294967295u, 32155u), 25281u, true), Struct_1(vec3<bool>(false, true, true), vec4<u32>(1u, 1u, 4294967295u, 13387u), 1u, true), Struct_1(vec3<bool>(true, false, false), vec4<u32>(1u, 21006u, 76863u, 1u), 25448u, false), Struct_1(vec3<bool>(false, false, true), vec4<u32>(1u, 62412u, 1u, 39920u), 0u, false), Struct_1(vec3<bool>(false, true, true), vec4<u32>(92442u, 26752u, 4294967295u, 28659u), 4294967295u, true), Struct_1(vec3<bool>(false, false, true), vec4<u32>(51311u, 1618u, 0u, 29654u), 0u, true), Struct_1(vec3<bool>(false, true, false), vec4<u32>(71690u, 0u, 4294967295u, 1u), 11334u, true), Struct_1(vec3<bool>(false, false, false), vec4<u32>(6999u, 1u, 4294967295u, 15241u), 25682u, true), Struct_1(vec3<bool>(false, false, true), vec4<u32>(4294967295u, 44436u, 0u, 0u), 1332u, false), Struct_1(vec3<bool>(true, true, false), vec4<u32>(4294967295u, 4294967295u, 66079u, 17435u), 30920u, false), Struct_1(vec3<bool>(true, false, true), vec4<u32>(41475u, 1u, 0u, 41446u), 7167u, true), Struct_1(vec3<bool>(true, false, true), vec4<u32>(50731u, 1u, 40194u, 68095u), 5549u, true), Struct_1(vec3<bool>(false, true, true), vec4<u32>(82053u, 8579u, 1u, 71449u), 19064u, true), Struct_1(vec3<bool>(true, false, false), vec4<u32>(0u, 117265u, 64662u, 31547u), 9505u, false));

var<private> global3: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<u32>(72117u, 79637u, 4294967295u, 49720u), 4294967295u, true), 80206u, Struct_1(vec3<bool>(false, true, true), vec4<u32>(88808u, 4294967295u, 2900u, 0u), 1u, false)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<u32>(0u, 4294967295u, 70287u, 1u), 75962u, true), 63071u, Struct_1(vec3<bool>(true, false, true), vec4<u32>(0u, 1u, 41541u, 1u), 90220u, true)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(72855u, 60703u, 1u, 38320u), 4294967295u, false), 45031u, Struct_1(vec3<bool>(true, false, false), vec4<u32>(0u, 37775u, 4294967295u, 4294967295u), 4294967295u, true)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<u32>(29197u, 108960u, 0u, 28526u), 4294967295u, true), 0u, Struct_1(vec3<bool>(false, true, true), vec4<u32>(95283u, 92709u, 57991u, 51579u), 61900u, true)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<u32>(11312u, 21383u, 28370u, 102744u), 0u, false), 4294967295u, Struct_1(vec3<bool>(true, false, true), vec4<u32>(0u, 13530u, 0u, 28771u), 0u, false)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<u32>(0u, 64574u, 0u, 103601u), 1u, true), 4294967295u, Struct_1(vec3<bool>(true, true, true), vec4<u32>(72106u, 0u, 97776u, 60928u), 66915u, true)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<u32>(8194u, 0u, 0u, 138201u), 0u, true), 34385u, Struct_1(vec3<bool>(false, false, true), vec4<u32>(1023u, 0u, 0u, 63146u), 4294967295u, false)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(0u, 74987u, 0u, 1u), 0u, true), 4294967295u, Struct_1(vec3<bool>(false, false, true), vec4<u32>(1u, 0u, 15524u, 142528u), 37067u, true)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<u32>(67450u, 43897u, 99257u, 33578u), 0u, false), 14892u, Struct_1(vec3<bool>(false, false, false), vec4<u32>(0u, 4294967295u, 0u, 12540u), 1u, true)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(17389u, 9826u, 18636u, 66575u), 39457u, true), 1u, Struct_1(vec3<bool>(false, false, false), vec4<u32>(1u, 0u, 4294967295u, 16473u), 0u, true)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<u32>(1u, 4294967295u, 4294967295u, 72470u), 64650u, true), 0u, Struct_1(vec3<bool>(true, false, true), vec4<u32>(4294967295u, 0u, 0u, 25399u), 0u, true)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<u32>(47000u, 0u, 0u, 1869u), 0u, false), 0u, Struct_1(vec3<bool>(false, false, true), vec4<u32>(0u, 0u, 3097u, 1u), 27124u, false)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(4294967295u, 12206u, 40916u, 33525u), 4294967295u, false), 0u, Struct_1(vec3<bool>(true, true, false), vec4<u32>(1u, 1u, 28853u, 95967u), 8165u, false)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<u32>(0u, 1u, 45065u, 1u), 0u, true), 1651u, Struct_1(vec3<bool>(false, true, true), vec4<u32>(0u, 13130u, 55993u, 1u), 1459u, true)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<u32>(1u, 22887u, 57070u, 80279u), 44582u, false), 34043u, Struct_1(vec3<bool>(true, true, true), vec4<u32>(4294967295u, 59954u, 17796u, 4294967295u), 2381u, true)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<u32>(42913u, 1u, 762u, 33887u), 1u, false), 1u, Struct_1(vec3<bool>(false, false, true), vec4<u32>(1393u, 1u, 4294967295u, 1743u), 0u, true)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<u32>(4294967295u, 6037u, 23816u, 20274u), 1u, false), 64859u, Struct_1(vec3<bool>(false, true, false), vec4<u32>(71154u, 22934u, 82362u, 4294967295u), 1u, false)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<u32>(11754u, 4294967295u, 16228u, 23955u), 47169u, true), 1u, Struct_1(vec3<bool>(true, false, false), vec4<u32>(1u, 5584u, 61877u, 29871u), 49441u, false)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<u32>(69854u, 0u, 1u, 60921u), 4963u, false), 51663u, Struct_1(vec3<bool>(false, true, true), vec4<u32>(42769u, 0u, 4294967295u, 0u), 18911u, false)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<u32>(53761u, 1u, 4244u, 69240u), 58303u, false), 7986u, Struct_1(vec3<bool>(true, false, true), vec4<u32>(610u, 4294967295u, 57852u, 98010u), 1u, true)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<u32>(49019u, 1u, 38498u, 82488u), 0u, false), 4782u, Struct_1(vec3<bool>(true, true, false), vec4<u32>(1u, 0u, 91289u, 0u), 22530u, false)), Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<u32>(0u, 50362u, 16653u, 40211u), 4294967295u, false), 46675u, Struct_1(vec3<bool>(true, true, false), vec4<u32>(1u, 20365u, 4941u, 4294967295u), 1u, true)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<u32>(1u, 7570u, 49473u, 18338u), 0u, true), 23014u, Struct_1(vec3<bool>(false, true, false), vec4<u32>(0u, 4294967295u, 26517u, 33231u), 44471u, false)));

var<private> global4: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(512f, 2107f, -105f), vec3<f32>(-678f, 1193f, 416f), vec3<f32>(1000f, 744f, 1182f), vec3<f32>(255f, 549f, 205f), vec3<f32>(113f, -142f, -297f), vec3<f32>(301f, 973f, 233f), vec3<f32>(1601f, 795f, 708f), vec3<f32>(-416f, 1530f, 427f), vec3<f32>(-908f, 771f, 461f), vec3<f32>(-285f, -610f, 2529f), vec3<f32>(232f, 769f, 617f), vec3<f32>(1068f, -211f, 2173f), vec3<f32>(-2108f, 1067f, -143f));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1027f))))) - _wgslsmith_f_op_f32(-653f + 633f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1966f))))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: bool) -> bool {
    global1 = array<u32, 23>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1706f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-713f)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    global3 = array<Struct_2, 23>();
    var var_0 = select(true & func_2(vec4<bool>(true, true || arg_1.a.x, true, true), ~(~vec2<u32>(u_input.c, 7948u)), true), all(vec3<bool>(u_input.b != u_input.b, true, arg_1.a.x && false)) & any(vec2<bool>(any(arg_0.a), !arg_0.d)), 87458u <= u_input.a.x);
    global0 = -276f;
    global3 = array<Struct_2, 23>();
    var var_1 = vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.a.x, arg_1.a.x), !(u_input.a.x == 1u))), arg_0.d);
    return vec2<u32>(_wgslsmith_mod_u32(arg_0.c, reverseBits(1u) >> (countOneBits(select(24426u, global1[_wgslsmith_index_u32(arg_1.b.x, 23u)], arg_1.a.x)) % 32u)), ~14651u);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: f32) -> StorageBuffer {
    var var_0 = _wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.c, arg_0.x), _wgslsmith_sub_u32(arg_0.x, 4294967295u), 53194u >> (arg_0.x % 32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, 1u), u_input.a.yzy) | reverseBits(vec3<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(4294967295u, 23u)])), u_input.a.xzy)), _wgslsmith_add_vec3_u32(select(select(u_input.a.wwy, ~u_input.a.wyx, all(vec3<bool>(true, true, false))), u_input.a.zxx, vec3<bool>(true, all(vec4<bool>(true, false, true, true)), all(vec2<bool>(false, false)))), max(~u_input.a.xxz, _wgslsmith_clamp_vec3_u32(u_input.a.wzz, u_input.a.wxx, vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.c, 23u)], arg_0.x))) << (~u_input.a.wwy % vec3<u32>(32u))), firstTrailingBit(vec3<u32>(~(~0u), 14675u, _wgslsmith_mod_u32(~3161u, ~global1[_wgslsmith_index_u32(1u, 23u)]))));
    global0 = _wgslsmith_f_op_f32(-arg_2);
    let var_1 = -1i;
    global4 = array<vec3<f32>, 13>();
    var var_2 = global2[_wgslsmith_index_u32(~0u, 30u)];
    return StorageBuffer(289f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1083f, _wgslsmith_f_op_f32(sign(arg_2))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -182f))), _wgslsmith_f_op_f32(f32(-1f) * -1355f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1173f;
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, u_input.b | 2147483647i), 0i) | u_input.b, 3348i | (i32(-1i) * -u_input.b), u_input.b, 2147483647i);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_sub_vec2_u32(~min(vec2<u32>(112546u, u_input.c) & u_input.a.wx, _wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(2411u, u_input.a.x))), ~select(~u_input.a.ww, func_1(global2[_wgslsmith_index_u32(4294967295u, 30u)], Struct_1(vec3<bool>(true, false, true), vec4<u32>(39662u, 5704u, global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), u_input.c, false)), vec2<bool>(true, true))), ~max(vec4<i32>(var_1.x, ~u_input.b, _wgslsmith_sub_i32(var_1.x, -20636i), 1i), -var_1), _wgslsmith_f_op_f32(var_0 - var_0));
}

