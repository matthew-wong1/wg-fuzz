struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: array<vec4<f32>, 12>;

var<private> global2: array<Struct_4, 7>;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(315f, vec3<u32>(20797u, 5098u, 31293u), 553f, vec3<bool>(false, false, false), 34151u), Struct_1(593f, vec3<u32>(1u, 1769u, 8881u), 154f, vec3<bool>(true, true, true), 24296u), Struct_1(-1058f, vec3<u32>(24130u, 1u, 4294967295u), 217f, vec3<bool>(false, true, true), 4294967295u), Struct_1(-136f, vec3<u32>(34315u, 16653u, 1u), 250f, vec3<bool>(true, false, true), 91612u), Struct_1(1190f, vec3<u32>(0u, 47329u, 0u), -786f, vec3<bool>(false, false, true), 2045u), Struct_1(-1931f, vec3<u32>(4294967295u, 25377u, 0u), 197f, vec3<bool>(false, true, true), 4294967295u), Struct_1(1103f, vec3<u32>(12189u, 1u, 1u), 768f, vec3<bool>(false, false, false), 0u), Struct_1(-738f, vec3<u32>(5923u, 2833u, 15889u), 683f, vec3<bool>(false, true, true), 1u), Struct_1(-1234f, vec3<u32>(10990u, 18053u, 4294967295u), -634f, vec3<bool>(true, true, false), 0u), Struct_1(-1839f, vec3<u32>(4294967295u, 1u, 39186u), -115f, vec3<bool>(true, false, false), 0u), Struct_1(-1654f, vec3<u32>(53050u, 1u, 71934u), -1000f, vec3<bool>(false, true, false), 45245u), Struct_1(492f, vec3<u32>(47795u, 17716u, 80689u), 2267f, vec3<bool>(false, false, false), 0u), Struct_1(298f, vec3<u32>(0u, 43549u, 30387u), 1065f, vec3<bool>(false, true, true), 0u), Struct_1(-928f, vec3<u32>(1u, 0u, 0u), 475f, vec3<bool>(false, true, true), 43638u), Struct_1(554f, vec3<u32>(1276u, 19579u, 4294967295u), -167f, vec3<bool>(false, false, true), 0u), Struct_1(-645f, vec3<u32>(1u, 1u, 4294967295u), -938f, vec3<bool>(true, true, false), 11170u), Struct_1(937f, vec3<u32>(40051u, 80569u, 1u), 1000f, vec3<bool>(false, true, true), 1u), Struct_1(148f, vec3<u32>(97839u, 1u, 31864u), 657f, vec3<bool>(true, false, true), 1u), Struct_1(-267f, vec3<u32>(122082u, 36085u, 56436u), -769f, vec3<bool>(true, false, false), 66656u), Struct_1(1000f, vec3<u32>(1u, 39189u, 12026u), -205f, vec3<bool>(false, true, false), 4294967295u), Struct_1(1289f, vec3<u32>(100442u, 78969u, 21099u), 444f, vec3<bool>(true, true, true), 18258u), Struct_1(-734f, vec3<u32>(4294967295u, 19274u, 1u), -1000f, vec3<bool>(true, false, false), 0u), Struct_1(-819f, vec3<u32>(4294967295u, 4294967295u, 62881u), 672f, vec3<bool>(false, true, false), 0u), Struct_1(924f, vec3<u32>(3726u, 1u, 13124u), -1787f, vec3<bool>(false, true, true), 4294967295u), Struct_1(-123f, vec3<u32>(0u, 26902u, 0u), -226f, vec3<bool>(true, true, true), 1u), Struct_1(144f, vec3<u32>(1677u, 37148u, 4294967295u), -921f, vec3<bool>(true, false, true), 4294967295u), Struct_1(-434f, vec3<u32>(3799u, 20465u, 42110u), -869f, vec3<bool>(true, false, false), 70061u), Struct_1(707f, vec3<u32>(28453u, 1u, 1u), -955f, vec3<bool>(true, false, true), 33781u), Struct_1(1000f, vec3<u32>(26425u, 71586u, 0u), -1176f, vec3<bool>(true, true, true), 53745u), Struct_1(-554f, vec3<u32>(0u, 0u, 4294967295u), 1000f, vec3<bool>(true, true, false), 76561u), Struct_1(1009f, vec3<u32>(1u, 66116u, 4294967295u), 542f, vec3<bool>(true, true, true), 0u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<bool> {
    global1 = array<vec4<f32>, 12>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-562f - _wgslsmith_f_op_f32(685f + 694f)))), ~(~min(vec3<u32>(0u, 22753u, 30678u), vec3<u32>(4294967295u, 1u, 1u))), _wgslsmith_f_op_f32(round(-1387f)), select(vec3<bool>(select(arg_0.x, false, arg_0.x), all(vec4<bool>(false, false, arg_0.x, arg_0.x)), arg_0.x), vec3<bool>(arg_0.x & arg_0.x, true, true), true), ~_wgslsmith_div_u32(max(23374u, 4294967295u), 1u)));
    let var_1 = 0i;
    var_0 = Struct_2(var_0.a);
    global1 = array<vec4<f32>, 12>();
    return select(!select(var_0.a.d, var_0.a.d, !select(vec3<bool>(false, var_0.a.d.x, false), vec3<bool>(true, var_0.a.d.x, false), vec3<bool>(false, arg_0.x, true))), !var_0.a.d, var_0.a.d);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(~min(~abs(arg_1), arg_1 >> (~arg_1 % 32u))), 7u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a.a - var_0.d.a.c) + _wgslsmith_f_op_f32(floor(var_0.a.a.a)))), -532f, _wgslsmith_f_op_f32(max(187f, _wgslsmith_f_op_f32(f32(-1f) * -533f))), _wgslsmith_f_op_f32(-1f)) * global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(0u | _wgslsmith_clamp_u32(0u, var_0.d.a.e, arg_1)), 25491u), 12u)]);
    global0 = array<vec4<i32>, 21>();
    var var_2 = var_0.d.a;
    let var_3 = any(!vec3<bool>(false, all(func_3(var_0.a.a.d.yz)), any(!vec4<bool>(false, true, var_0.a.a.d.x, arg_0.x))));
    return firstTrailingBit(_wgslsmith_sub_u32(~(~var_2.b.x), var_2.b.x));
}

fn func_2() -> vec3<u32> {
    var var_0 = ~func_4(!func_3(vec2<bool>(true, true)), 68679u);
    let var_1 = countOneBits(~select(u_input.a.x, u_input.a.x, true));
    let var_2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~min(vec3<u32>(35933u, 81570u, 21692u), vec3<u32>(4294967295u, 4294967295u, 3698u)), ~(~vec3<u32>(1u, 25471u, 22695u))), ~vec3<u32>(1u, 1u, 1u), vec3<u32>(func_4(func_3(vec2<bool>(true, false)), 0u), func_4(vec3<bool>(true, true, true), 41159u), ~(~0u))) << (~((vec3<u32>(1u, 1u, 1u) << (select(vec3<u32>(90162u, 103777u, 352u), vec3<u32>(57019u, 18145u, 728u), false) % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_add_u32(0u, 1u), 1u, 26207u)) % vec3<u32>(32u));
    global0 = array<vec4<i32>, 21>();
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(firstTrailingBit(var_2.zx), firstTrailingBit(vec2<u32>(var_2.x, var_2.x))), ~18245u, ~1u), _wgslsmith_add_vec3_u32(~max(var_2 & var_2, _wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 17339u), vec3<u32>(0u, var_2.x, var_2.x))), select(var_2, vec3<u32>(var_2.x, max(var_2.x, 7365u), 68733u), true)), reverseBits(abs(vec3<u32>(_wgslsmith_add_u32(34133u, var_2.x), var_2.x, _wgslsmith_sub_u32(67315u, 32447u)))));
    return _wgslsmith_sub_vec3_u32(countOneBits(min(min(vec3<u32>(4294967295u, var_2.x, var_2.x), vec3<u32>(4294967295u, 16275u, 4294967295u)), _wgslsmith_mod_vec3_u32(var_2, var_2)) & _wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, var_2.x, var_3.x), var_2)), var_3 ^ vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.x, 0u, 10880u), vec4<u32>(var_3.x, var_2.x, var_2.x, 95685u)), var_2.x, select(var_2.x, ~var_3.x, true)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> vec3<f32> {
    var var_0 = abs(~(func_2() >> (~vec3<u32>(arg_2.x, arg_0, arg_1) % vec3<u32>(32u))));
    return vec3<f32>(-997f, 1f, 1088f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(abs(1u), 31u)]);
    global1 = array<vec4<f32>, 12>();
    var var_2 = global2[_wgslsmith_index_u32(~var_0, 7u)];
    global1 = array<vec4<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(var_2.a.a.b.x, var_2.d.a.b.x, vec2<u32>(var_1.a.e, 4294967295u))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-933f, -994f, var_2.d.a.a)))) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.a, -1973f, 579f), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.d.a.c, var_2.d.a.a, -1165f), vec3<f32>(623f, -809f, var_1.a.c))))), var_1.a.b.yx << (vec2<u32>(0u, abs(_wgslsmith_add_u32(22645u, 42158u))) % vec2<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_2.a.a.e, var_0), 104517u << (var_0 % 32u)), ~_wgslsmith_add_u32(28674u, var_0), 7762u, var_2.a.a.b.x), ~(vec4<u32>(13588u, 10793u, var_0, 1u) << (~vec4<u32>(0u, var_1.a.e, var_2.d.a.b.x, var_0) % vec4<u32>(32u)))), var_1.a.e << (var_0 % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.a, _wgslsmith_f_op_f32(round(var_1.a.c)), _wgslsmith_f_op_f32(-var_2.d.a.c)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.c, -1000f, 1784f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.d.a.a, -574f, var_1.a.c), vec3<f32>(-828f, 1000f, var_2.d.a.a))), any(var_2.d.a.d))) + vec3<f32>(1f, 1f, 1f))));
}

