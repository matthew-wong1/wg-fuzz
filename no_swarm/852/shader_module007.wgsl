struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec3<f32>(375f, 650f, -257f), Struct_2(Struct_1(vec4<u32>(799u, 0u, 4294967295u, 0u), true, vec3<f32>(687f, 351f, -643f)), vec3<u32>(1u, 68863u, 26531u), vec2<f32>(1412f, 1254f), vec2<u32>(34416u, 68940u))), Struct_3(vec3<f32>(314f, 173f, 848f), Struct_2(Struct_1(vec4<u32>(1u, 23499u, 91995u, 85814u), true, vec3<f32>(2679f, 211f, -148f)), vec3<u32>(31807u, 0u, 9592u), vec2<f32>(885f, -818f), vec2<u32>(67861u, 56388u))), Struct_3(vec3<f32>(288f, 281f, -417f), Struct_2(Struct_1(vec4<u32>(1u, 1u, 94490u, 63400u), true, vec3<f32>(204f, -332f, 1258f)), vec3<u32>(0u, 48626u, 0u), vec2<f32>(247f, 475f), vec2<u32>(1u, 25412u))), Struct_3(vec3<f32>(-1058f, 2266f, -101f), Struct_2(Struct_1(vec4<u32>(2041u, 39131u, 30543u, 19888u), false, vec3<f32>(978f, -883f, 1045f)), vec3<u32>(4294967295u, 1u, 1u), vec2<f32>(619f, 1653f), vec2<u32>(0u, 90144u))), Struct_3(vec3<f32>(-1640f, -1000f, 1013f), Struct_2(Struct_1(vec4<u32>(4294967295u, 64912u, 0u, 14456u), false, vec3<f32>(-310f, -2159f, -1063f)), vec3<u32>(0u, 0u, 4294967295u), vec2<f32>(1129f, -157f), vec2<u32>(4294967295u, 1u))), Struct_3(vec3<f32>(-852f, -577f, -1454f), Struct_2(Struct_1(vec4<u32>(0u, 81375u, 1u, 44277u), false, vec3<f32>(490f, -1000f, 2539f)), vec3<u32>(1u, 7292u, 0u), vec2<f32>(-503f, 881f), vec2<u32>(13797u, 0u))), Struct_3(vec3<f32>(1855f, -119f, 1229f), Struct_2(Struct_1(vec4<u32>(1u, 1u, 3133u, 4294967295u), false, vec3<f32>(-1570f, 115f, -1644f)), vec3<u32>(4294967295u, 65377u, 0u), vec2<f32>(1326f, 2368f), vec2<u32>(24098u, 5145u))));

var<private> global1: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true));

var<private> global2: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-233f, -1291f, -217f, 1000f), vec4<f32>(-797f, 229f, 957f, -985f), vec4<f32>(405f, 1621f, -582f, -659f), vec4<f32>(-723f, 614f, 303f, 208f), vec4<f32>(-370f, -375f, 568f, 1319f), vec4<f32>(-501f, -1000f, 675f, -253f), vec4<f32>(479f, -1069f, -1516f, 286f), vec4<f32>(1668f, 927f, -756f, 1448f), vec4<f32>(-232f, -1997f, 750f, 882f), vec4<f32>(-306f, -735f, 618f, -875f), vec4<f32>(-616f, -1000f, -739f, -569f), vec4<f32>(-1345f, -668f, 973f, -163f), vec4<f32>(-744f, -542f, 2011f, 1000f), vec4<f32>(949f, -689f, 112f, -729f), vec4<f32>(-1000f, 238f, -1000f, 455f), vec4<f32>(1290f, -179f, -784f, -891f), vec4<f32>(1000f, 159f, 1089f, 1105f), vec4<f32>(1722f, 1220f, 600f, -1000f), vec4<f32>(-737f, -210f, 1223f, 287f), vec4<f32>(-1838f, -1679f, 1169f, 1000f), vec4<f32>(-2022f, 653f, -651f, 1000f), vec4<f32>(-938f, 2402f, -431f, 723f), vec4<f32>(1305f, -2376f, -411f, -2084f), vec4<f32>(-1077f, -419f, -761f, 1364f), vec4<f32>(428f, 476f, 1592f, 873f), vec4<f32>(768f, -1556f, 611f, -1079f), vec4<f32>(436f, 160f, 2273f, -1000f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec3<f32> {
    let var_0 = -1i;
    let var_1 = Struct_1(vec4<u32>(countOneBits(firstTrailingBit(~u_input.e)), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.b, 1u), vec3<u32>(u_input.e, 1u, 1004u)) >> (~37574u % 32u)), 4294967295u, u_input.b | u_input.e), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1006f, -784f, 201f), vec3<f32>(159f, 188f, 989f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1118f, 297f, -1000f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(393f, -402f, -561f) - vec3<f32>(-586f, -1435f, 946f)))));
    global2 = array<vec4<f32>, 27>();
    var var_2 = Struct_2(var_1, var_1.a.zxx, vec2<f32>(-570f, _wgslsmith_f_op_f32(-634f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-633f - var_1.c.x)))), ~var_1.a.zw);
    global1 = array<vec4<bool>, 29>();
    return var_1.c;
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global0 = array<Struct_3, 7>();
    let var_0 = ~(firstTrailingBit(u_input.b ^ 50262u) >> (max(u_input.b << (~u_input.b % 32u), 4294967295u) % 32u));
    var var_1 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 57307u), vec2<u32>(u_input.b, var_0)), u_input.b), var_0 << (u_input.e % 32u), u_input.b, ~var_0 ^ ~var_0), select(!arg_0.x, arg_0.x, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.d.x, vec3<bool>(arg_0.x, false, arg_0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1379f, -550f, 249f))))), ~vec3<u32>(_wgslsmith_mult_u32(~var_0, 71180u), 24630u, select(45655u, min(57827u, var_0), u_input.a <= u_input.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1801f, 1094f), vec2<f32>(1453f, 1000f))))))), vec2<u32>(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(14138u, 38260u, var_0, 40775u), reverseBits(vec4<u32>(0u, 0u, 4294967295u, 4294967295u)))), _wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.e, 4294967295u), ~u_input.e)));
    var var_2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32((-1i >> (var_0 % 32u)) ^ ~u_input.a, u_input.a), 0i, 1i) | (i32(-1i) * -21723i);
    let var_3 = ~var_0;
    return var_3;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    let var_0 = ~(~vec3<u32>(u_input.e, 43183u, u_input.e | u_input.b)) ^ vec3<u32>(105652u, countOneBits(40370u), _wgslsmith_div_u32(u_input.e, func_2(vec4<bool>(true, arg_0, arg_0, true))) & u_input.e);
    let var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(~1u, firstTrailingBit(_wgslsmith_div_u32(1u, u_input.b)))), 7u)];
    global0 = array<Struct_3, 7>();
    var var_2 = any(global1[_wgslsmith_index_u32(42748u, 29u)]);
    var var_3 = Struct_1(vec4<u32>(24949u, ~_wgslsmith_sub_u32(~var_0.x, u_input.b), ~_wgslsmith_dot_vec3_u32(var_1.b.a.a.ywy, vec3<u32>(u_input.e, 65462u, var_0.x)), var_1.b.d.x), arg_0, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.b.a.c - _wgslsmith_div_vec3_f32(vec3<f32>(245f, -1000f, -708f), var_1.b.a.c)), vec3<f32>(-911f, var_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.a.c.x, var_1.a.x))))));
    return ~abs(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_1.b.d.x, u_input.e, _wgslsmith_mult_u32(49795u, 78365u)), _wgslsmith_div_u32(firstTrailingBit(4294967295u), var_1.b.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 7>();
    var var_0 = func_1(false, u_input.c.x, vec3<bool>(true, true, true), any(select(select(vec4<bool>(true, true, false, false), global1[_wgslsmith_index_u32(u_input.e, 29u)], true), !global1[_wgslsmith_index_u32(u_input.e, 29u)], true))) ^ (func_2(vec4<bool>(false, true, true, u_input.e != u_input.b)) << (~(~(~1u)) % 32u));
    var var_1 = true;
    var var_2 = !select(global1[_wgslsmith_index_u32(1u << (u_input.e % 32u), 29u)], global1[_wgslsmith_index_u32(~countOneBits(func_1(false, -1i, vec3<bool>(false, false, false), false)), 29u)], true);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(453f, 262f))) + vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(u_input.a, var_2.wwx)).x, -467f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -175f), 2534f) * -1000f), _wgslsmith_f_op_f32(trunc(-602f))), select(21396i, u_input.c.x, !all(select(vec3<bool>(var_2.x, true, true), var_2.zyz, var_2.xxy))), u_input.c.x);
}

