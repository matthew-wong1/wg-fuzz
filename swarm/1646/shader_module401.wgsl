struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: Struct_3,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

var<private> global1: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(false, vec4<f32>(-1364f, -289f, 145f, -586f), vec2<i32>(i32(-2147483648), -1i), Struct_1(27540u, vec4<i32>(-1i, 0i, 1i, -19312i), vec4<i32>(i32(-2147483648), 1i, -1i, 1i), vec2<u32>(1u, 23148u), vec4<f32>(166f, 344f, -874f, 345f)), vec4<f32>(-501f, -414f, -848f, -865f)), Struct_3(true, vec4<f32>(-127f, -2713f, 1000f, 1030f), vec2<i32>(-1895i, 1i), Struct_1(9049u, vec4<i32>(26251i, -57570i, 2147483647i, 1i), vec4<i32>(2147483647i, 0i, 20708i, -18316i), vec2<u32>(87857u, 24123u), vec4<f32>(1371f, 1000f, -854f, 1757f)), vec4<f32>(615f, -489f, 1000f, -1425f)), Struct_3(false, vec4<f32>(1129f, 1091f, -197f, -1002f), vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(0u, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 29845i), vec4<i32>(13597i, 0i, 30476i, -14057i), vec2<u32>(2445u, 4579u), vec4<f32>(624f, 1952f, -614f, -193f)), vec4<f32>(-1168f, -1216f, 1497f, 121f)), Struct_3(true, vec4<f32>(833f, -603f, 281f, -302f), vec2<i32>(2147483647i, -1i), Struct_1(4294967295u, vec4<i32>(-54080i, 67389i, 1i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -6925i), vec2<u32>(4294967295u, 4294967295u), vec4<f32>(143f, -1594f, -165f, 1271f)), vec4<f32>(520f, -432f, -497f, -1333f)), Struct_3(true, vec4<f32>(1000f, 161f, -366f, -804f), vec2<i32>(2147483647i, 16329i), Struct_1(58415u, vec4<i32>(2147483647i, 33745i, 16878i, 0i), vec4<i32>(-30133i, 2147483647i, -70813i, 2147483647i), vec2<u32>(7070u, 113185u), vec4<f32>(445f, 967f, 1023f, 629f)), vec4<f32>(-739f, 572f, 513f, 1159f)), Struct_3(true, vec4<f32>(-462f, -1000f, -945f, -789f), vec2<i32>(32229i, -1i), Struct_1(1u, vec4<i32>(3242i, 9414i, 33160i, 1i), vec4<i32>(i32(-2147483648), -68793i, 0i, -1i), vec2<u32>(1u, 27010u), vec4<f32>(-658f, -675f, -1000f, 842f)), vec4<f32>(-431f, 383f, -1413f, -1000f)), Struct_3(true, vec4<f32>(1506f, -1988f, -1728f, 272f), vec2<i32>(-5615i, 6607i), Struct_1(38372u, vec4<i32>(2147483647i, -6168i, 70617i, i32(-2147483648)), vec4<i32>(-15167i, 2147483647i, -29659i, -34244i), vec2<u32>(2111u, 27148u), vec4<f32>(-505f, -1861f, -290f, -1480f)), vec4<f32>(273f, 476f, 777f, 242f)), Struct_3(true, vec4<f32>(-2868f, -193f, 319f, -542f), vec2<i32>(-1i, -20293i), Struct_1(1u, vec4<i32>(i32(-2147483648), -8581i, 30083i, i32(-2147483648)), vec4<i32>(92107i, -20307i, -1i, -1i), vec2<u32>(95139u, 4294967295u), vec4<f32>(-1945f, 783f, -106f, 818f)), vec4<f32>(-1044f, -306f, 190f, -1809f)), Struct_3(false, vec4<f32>(-412f, 817f, 1343f, 1844f), vec2<i32>(-10171i, -16545i), Struct_1(0u, vec4<i32>(i32(-2147483648), 35439i, 8668i, -48118i), vec4<i32>(-17156i, 1i, -1i, 33045i), vec2<u32>(4294967295u, 1u), vec4<f32>(1588f, -1853f, 335f, 1496f)), vec4<f32>(2646f, -384f, 463f, 792f)), Struct_3(true, vec4<f32>(1971f, -739f, -257f, 257f), vec2<i32>(18383i, 2147483647i), Struct_1(22086u, vec4<i32>(1i, 83312i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 0i, 1i, -37497i), vec2<u32>(71012u, 1u), vec4<f32>(-418f, 623f, 282f, -1000f)), vec4<f32>(1325f, -206f, -1982f, 114f)), Struct_3(false, vec4<f32>(-819f, -2726f, -444f, 598f), vec2<i32>(-11244i, -51175i), Struct_1(1u, vec4<i32>(2243i, 35381i, -28310i, 1i), vec4<i32>(2067i, -21700i, -1i, 1i), vec2<u32>(121364u, 4294967295u), vec4<f32>(-578f, -750f, -1069f, 226f)), vec4<f32>(-1761f, -1320f, 1223f, 761f)), Struct_3(true, vec4<f32>(-208f, 246f, -1822f, 1595f), vec2<i32>(-34972i, -13715i), Struct_1(4294967295u, vec4<i32>(31904i, -1i, 2147483647i, -29270i), vec4<i32>(-6221i, 15669i, 2147483647i, -26536i), vec2<u32>(2833u, 10091u), vec4<f32>(-311f, -2123f, -269f, -888f)), vec4<f32>(139f, 1889f, -814f, 489f)), Struct_3(false, vec4<f32>(1590f, 642f, -674f, -1540f), vec2<i32>(i32(-2147483648), -1i), Struct_1(38512u, vec4<i32>(-17857i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(1i, -1i, -15333i, 0i), vec2<u32>(42339u, 101420u), vec4<f32>(-104f, 343f, 641f, 142f)), vec4<f32>(-1475f, 1231f, 401f, -1000f)), Struct_3(true, vec4<f32>(1862f, 220f, 357f, 626f), vec2<i32>(39687i, 2147483647i), Struct_1(29959u, vec4<i32>(-63762i, -12726i, 7560i, -20447i), vec4<i32>(0i, 2147483647i, 6597i, 2147483647i), vec2<u32>(14216u, 1u), vec4<f32>(-1000f, 803f, -1105f, 1326f)), vec4<f32>(1151f, -1028f, -525f, -279f)), Struct_3(true, vec4<f32>(525f, 214f, -2849f, -491f), vec2<i32>(2718i, 1i), Struct_1(72948u, vec4<i32>(-11601i, -10788i, -12736i, -28829i), vec4<i32>(-425i, i32(-2147483648), 1i, -1i), vec2<u32>(1u, 0u), vec4<f32>(-1000f, -1566f, 1227f, -198f)), vec4<f32>(-989f, 514f, -279f, -892f)));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_mod_i32(-2147483647i, arg_2.c.x);
    return arg_0;
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = Struct_5(Struct_1(1u, ~u_input.b, u_input.b, _wgslsmith_add_vec2_u32(u_input.c.zw, ~firstTrailingBit(u_input.c.zx)), vec4<f32>(_wgslsmith_f_op_f32(floor(249f)), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(ceil(arg_0))), -404f)), Struct_4(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c.zyx, u_input.c.zyz, vec3<u32>(0u, u_input.c.x, 0u)), ~u_input.c.zyw), u_input.a, firstLeadingBit(min(u_input.a, 4294967295u)), u_input.a << (~u_input.c.x % 32u)), vec4<i32>(-_wgslsmith_mod_i32(u_input.b.x, 12174i), ~u_input.d.x, _wgslsmith_clamp_i32(6554i, ~1i, -2147483647i), u_input.d.x), abs(u_input.d >> (~u_input.c.xy % vec2<u32>(32u)))), Struct_3(true, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), -145f, _wgslsmith_f_op_f32(1000f + arg_0), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 30u)])))), -vec2<i32>(-u_input.b.x, i32(-1i) * -15766i), Struct_1(~countOneBits(1u), vec4<i32>(0i, ~0i, u_input.b.x, 1i), u_input.b, max(u_input.c.xy, vec2<u32>(1u, u_input.a)), global0[_wgslsmith_index_u32(abs(1u), 30u)]), vec4<f32>(arg_0, _wgslsmith_f_op_f32(min(1f, -1665f)), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(1358f * 1479f)), _wgslsmith_f_op_f32(-arg_0))), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(true, false, false, true)), true, false), true), vec4<bool>(-1268f >= arg_0, true, true, 1u < u_input.c.x), true), firstLeadingBit(~u_input.a));
    var_0 = Struct_5(var_0.a, var_0.b, var_0.c, vec4<bool>(true, var_0.d.x, any(var_0.d), -(-26894i ^ var_0.b.c.x) > (i32(-1i) * -var_0.c.c.x)), _wgslsmith_add_u32(var_0.a.d.x & 40357u, min(firstTrailingBit(var_0.a.a), u_input.a) | ~(~var_0.b.a.x)));
    var var_1 = all(vec4<bool>(var_0.d.x, var_0.c.a, any(var_0.d), any(!var_0.d)));
    let var_2 = 545f;
    let var_3 = var_0.c.e.zy;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1555f))));
}

fn func_1(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<bool>) -> vec2<f32> {
    global0 = array<vec4<f32>, 30>();
    global0 = array<vec4<f32>, 30>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(2289f, 8605u, Struct_3(true, vec4<f32>(arg_0, arg_0, -568f, arg_2.e.x), vec2<i32>(u_input.d.x, -2147483647i), Struct_1(arg_2.d.a, arg_2.d.c, u_input.b, u_input.c.xx, vec4<f32>(arg_0, arg_2.d.e.x, -2178f, 657f)), _wgslsmith_f_op_vec4_f32(step(global0[_wgslsmith_index_u32(15695u, 30u)], vec4<f32>(arg_2.e.x, arg_2.b.x, -977f, arg_0)))))), -599f) + _wgslsmith_f_op_f32(-arg_0));
    let var_1 = false;
    var var_2 = arg_3.x || arg_2.a;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-arg_2.b.x)))), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.d.e.x)) - arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(183f, Struct_4(u_input.c, u_input.b, u_input.d), global1[_wgslsmith_index_u32(u_input.c.x, 15u)], vec3<bool>(false, false, true))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(459f, 463f) - vec2<f32>(-470f, -132f)) - vec2<f32>(-805f, 861f))))));
    global1 = array<Struct_3, 15>();
    let var_1 = min(countOneBits(vec4<u32>(1u, _wgslsmith_mod_u32(u_input.c.x, 11294u), ~(~u_input.c.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.yy, vec2<u32>(u_input.a, u_input.a)), vec2<u32>(4294967295u, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)))), ~firstLeadingBit((u_input.c ^ vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 4294967295u)) & u_input.c));
    global0 = array<vec4<f32>, 30>();
    var var_2 = reverseBits(_wgslsmith_clamp_u32(~abs(var_1.x) << (var_1.x % 32u), u_input.a, var_1.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(63914u, 0u), var_1.x), 30u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(var_1.zz, u_input.c.xz), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, u_input.a), ~39709u, 0u)), 30u)]) * global0[_wgslsmith_index_u32(42521u, 30u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

