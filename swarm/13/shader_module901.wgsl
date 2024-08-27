struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(-44920i, Struct_1(-592f, vec3<f32>(231f, -1383f, 1011f)), vec4<u32>(8692u, 1u, 1u, 1u)), Struct_2(1i, Struct_1(1514f, vec3<f32>(403f, 214f, 627f)), vec4<u32>(0u, 4294967295u, 36758u, 4294967295u)), Struct_2(0i, Struct_1(124f, vec3<f32>(1474f, -340f, -768f)), vec4<u32>(26155u, 37504u, 1u, 46297u)), Struct_2(0i, Struct_1(502f, vec3<f32>(1317f, -231f, 351f)), vec4<u32>(25041u, 3329u, 7094u, 4294967295u)), Struct_2(0i, Struct_1(-456f, vec3<f32>(-1519f, -478f, -1273f)), vec4<u32>(25003u, 26258u, 20960u, 23800u)), Struct_2(-36395i, Struct_1(2557f, vec3<f32>(-1000f, 941f, -514f)), vec4<u32>(58686u, 0u, 55020u, 0u)), Struct_2(-1i, Struct_1(-1277f, vec3<f32>(335f, -953f, 1046f)), vec4<u32>(11540u, 23738u, 30285u, 1u)), Struct_2(-1i, Struct_1(-1478f, vec3<f32>(698f, -1379f, 585f)), vec4<u32>(64882u, 4294967295u, 4294967295u, 25297u)), Struct_2(0i, Struct_1(494f, vec3<f32>(331f, -413f, 760f)), vec4<u32>(18759u, 20582u, 0u, 80972u)), Struct_2(-10051i, Struct_1(-423f, vec3<f32>(1000f, 460f, -421f)), vec4<u32>(15685u, 1u, 29260u, 0u)), Struct_2(56584i, Struct_1(-929f, vec3<f32>(675f, -1000f, -796f)), vec4<u32>(1u, 52700u, 4294967295u, 28837u)), Struct_2(20021i, Struct_1(978f, vec3<f32>(680f, -291f, 1000f)), vec4<u32>(104663u, 19631u, 0u, 4294967295u)), Struct_2(-641i, Struct_1(1297f, vec3<f32>(527f, 795f, -2397f)), vec4<u32>(18906u, 0u, 68506u, 4294967295u)), Struct_2(19414i, Struct_1(1010f, vec3<f32>(-991f, 1075f, -512f)), vec4<u32>(56204u, 49461u, 7360u, 5795u)), Struct_2(29733i, Struct_1(917f, vec3<f32>(1150f, -1396f, 310f)), vec4<u32>(92133u, 39597u, 1u, 0u)), Struct_2(2147483647i, Struct_1(209f, vec3<f32>(-198f, 2061f, -288f)), vec4<u32>(0u, 35370u, 26200u, 1u)), Struct_2(-1i, Struct_1(512f, vec3<f32>(526f, -1743f, 331f)), vec4<u32>(94898u, 4294967295u, 19176u, 4294967295u)), Struct_2(13571i, Struct_1(-1950f, vec3<f32>(-1517f, 1268f, -876f)), vec4<u32>(23167u, 22231u, 1u, 0u)), Struct_2(0i, Struct_1(263f, vec3<f32>(942f, -188f, 163f)), vec4<u32>(56457u, 1u, 0u, 4294967295u)), Struct_2(1i, Struct_1(-2542f, vec3<f32>(1608f, -151f, -120f)), vec4<u32>(15996u, 4294967295u, 4294967295u, 24597u)), Struct_2(45618i, Struct_1(-1682f, vec3<f32>(1367f, 1022f, 401f)), vec4<u32>(1u, 31059u, 20526u, 0u)), Struct_2(4648i, Struct_1(302f, vec3<f32>(407f, 737f, 989f)), vec4<u32>(53341u, 1u, 4294967295u, 0u)), Struct_2(1i, Struct_1(-433f, vec3<f32>(1450f, 968f, 1924f)), vec4<u32>(8923u, 28030u, 59072u, 27977u)), Struct_2(2147483647i, Struct_1(455f, vec3<f32>(-2746f, -529f, -1529f)), vec4<u32>(4294967295u, 21821u, 48854u, 1u)), Struct_2(-1i, Struct_1(-288f, vec3<f32>(-2343f, 247f, -747f)), vec4<u32>(42136u, 4294967295u, 0u, 1u)), Struct_2(1i, Struct_1(-144f, vec3<f32>(-1116f, -1000f, 192f)), vec4<u32>(11106u, 36478u, 29813u, 0u)), Struct_2(904i, Struct_1(-1357f, vec3<f32>(-296f, 235f, 1096f)), vec4<u32>(0u, 17766u, 53216u, 1u)), Struct_2(0i, Struct_1(1000f, vec3<f32>(-388f, -668f, -1000f)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 35417u)), Struct_2(-63783i, Struct_1(-564f, vec3<f32>(1502f, -506f, -787f)), vec4<u32>(4294967295u, 4294967295u, 68027u, 33524u)), Struct_2(2147483647i, Struct_1(-719f, vec3<f32>(-187f, -221f, -919f)), vec4<u32>(4294967295u, 74813u, 2692u, 3458u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    let var_0 = arg_3;
    var var_1 = !vec2<bool>(select(select(true, true, all(vec2<bool>(true, true))), true, true), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))));
    return !(!(!(arg_2.a > arg_2.a))) | !all(vec4<bool>(all(vec2<bool>(true, true)), true, var_1.x, false));
}

fn func_2() -> vec2<u32> {
    var var_0 = all(vec3<bool>((u_input.b.x >> (~u_input.d % 32u)) != -2147483647i, !(!func_3(vec4<f32>(-1000f, 1421f, -1418f, -1102f), global0[_wgslsmith_index_u32(u_input.d, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], Struct_3(u_input.d, Struct_1(1352f, vec3<f32>(355f, -651f, 364f)), global0[_wgslsmith_index_u32(u_input.d, 30u)], Struct_1(531f, vec3<f32>(-515f, -1459f, -1583f))))), all(vec3<bool>(false, false, false))));
    global0 = array<Struct_2, 30>();
    var var_1 = u_input.e;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-308f, 268f), vec2<f32>(-569f, 318f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(961f, 1178f) + vec2<f32>(555f, -691f))), true)) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(281f)), _wgslsmith_f_op_f32(-359f * 895f))), 192f)));
    global0 = array<Struct_2, 30>();
    return ~(~vec2<u32>(4294967295u, 0u) >> (vec2<u32>(0u, _wgslsmith_sub_u32(u_input.d, u_input.d)) % vec2<u32>(32u))) ^ abs((~vec2<u32>(u_input.d, u_input.d) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(112781u, u_input.d))) << (vec2<u32>(_wgslsmith_mod_u32(0u, 3029u), _wgslsmith_mod_u32(u_input.d, 50059u)) % vec2<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: f32) -> vec3<u32> {
    global0 = array<Struct_2, 30>();
    let var_0 = select(min((vec2<u32>(u_input.d, 4294967295u) >> (vec2<u32>(79270u, u_input.d) % vec2<u32>(32u))) ^ vec2<u32>(u_input.d, 1u), ~vec2<u32>(4294967295u, u_input.d)), (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(4294967295u, 20247u)) << (func_2() % vec2<u32>(32u))) >> (~reverseBits(vec2<u32>(75417u, 8466u)) % vec2<u32>(32u)), !(!select(vec2<bool>(false, arg_1.x), vec2<bool>(false, arg_1.x), arg_1.zz))) ^ _wgslsmith_mod_vec2_u32(abs(vec2<u32>(~u_input.d, _wgslsmith_mod_u32(4294967295u, u_input.d))), ~func_2());
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1023f)))) + arg_0);
    return _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(firstLeadingBit(~vec3<u32>(0u, var_0.x, var_0.x)), reverseBits(~vec3<u32>(1u, 34700u, 1u))), vec3<u32>(min(max(~1u, 1u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(21376u, 39580u, 34275u, 22357u)), countOneBits(vec4<u32>(var_0.x, 0u, 0u, u_input.d)))), ~var_0.x & _wgslsmith_sub_u32(1u, var_0.x), ~14831u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(395f)), _wgslsmith_f_op_f32(f32(-1f) * -1168f), _wgslsmith_div_f32(2057f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -568f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(666f, -1000f, 861f, 1036f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(755f, -247f, 397f, 362f) * vec4<f32>(-165f, -1000f, 336f, -1887f))), vec4<f32>(_wgslsmith_f_op_f32(459f * -1000f), _wgslsmith_f_op_f32(-887f * 818f), -693f, -533f)))));
    global0 = array<Struct_2, 30>();
    var var_1 = ~(func_1(927f, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-118f + _wgslsmith_f_op_f32(493f - var_0.x))) >> (vec3<u32>(4294967295u, u_input.d, u_input.d) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-461f, var_0.x, -1330f, var_0.x) + vec4<f32>(var_0.x, -754f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1971f, var_0.x, 2527f, var_0.x) + vec4<f32>(1000f, 1397f, -1486f, 1112f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, 429f, var_0.x, var_0.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1670f, -1910f, 644f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(838f, 3370f, -1938f, var_0.x) * vec4<f32>(2375f, -293f, var_0.x, var_0.x))))), 34160u, ~(u_input.b.x >> ((var_1.x ^ _wgslsmith_mult_u32(1u, 0u)) % 32u)), _wgslsmith_div_vec4_f32(vec4<f32>(-1324f, _wgslsmith_f_op_f32(-var_0.x), -456f, var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1533f, -1000f, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, 903f, var_0.x)), vec4<f32>(-2685f, var_0.x, -1443f, -716f), vec4<bool>(true, true, true, true))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 766f, var_0.x) * vec4<f32>(var_0.x, var_0.x, -778f, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(2051f, var_0.x, var_0.x, -594f), vec4<f32>(702f, var_0.x, -1615f, 1257f)), true)))), vec3<u32>(~(25039u & var_1.x) >> (4294967295u % 32u), firstLeadingBit(_wgslsmith_div_u32(~63407u, firstTrailingBit(var_1.x))), u_input.d));
}

