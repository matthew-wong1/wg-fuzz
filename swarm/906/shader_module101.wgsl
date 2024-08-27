struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec3<f32>(279f, 468f, 472f), -742f, vec4<f32>(294f, -1083f, -1173f, -906f), vec3<bool>(false, false, false), Struct_2(34534u, i32(-2147483648))), Struct_3(vec3<f32>(-2668f, 429f, -547f), 1394f, vec4<f32>(2032f, -140f, 356f, 402f), vec3<bool>(false, true, true), Struct_2(1u, 11382i)), Struct_3(vec3<f32>(587f, -147f, -585f), 979f, vec4<f32>(-225f, -1422f, 162f, 563f), vec3<bool>(false, true, false), Struct_2(53650u, i32(-2147483648))), Struct_3(vec3<f32>(-489f, -3372f, -1006f), -1780f, vec4<f32>(1000f, 163f, -968f, 442f), vec3<bool>(true, false, true), Struct_2(1u, i32(-2147483648))), Struct_3(vec3<f32>(1195f, 593f, -665f), -448f, vec4<f32>(-1037f, 204f, -1473f, -1042f), vec3<bool>(false, true, true), Struct_2(52478u, -1i)), Struct_3(vec3<f32>(325f, 957f, 928f), -1000f, vec4<f32>(-114f, 762f, -1560f, -825f), vec3<bool>(false, true, true), Struct_2(1u, 2147483647i)), Struct_3(vec3<f32>(655f, -1480f, 2595f), 1284f, vec4<f32>(564f, 1032f, 857f, -931f), vec3<bool>(true, true, true), Struct_2(1u, 1i)), Struct_3(vec3<f32>(808f, 277f, -1882f), 728f, vec4<f32>(-281f, -157f, 686f, -775f), vec3<bool>(false, false, true), Struct_2(29349u, 0i)), Struct_3(vec3<f32>(-522f, -1498f, 577f), -128f, vec4<f32>(796f, -1220f, -879f, -150f), vec3<bool>(true, true, false), Struct_2(43452u, 4748i)), Struct_3(vec3<f32>(833f, -1576f, -137f), -1055f, vec4<f32>(-471f, -620f, -393f, -468f), vec3<bool>(false, true, false), Struct_2(14479u, i32(-2147483648))), Struct_3(vec3<f32>(122f, 1410f, 1040f), -502f, vec4<f32>(368f, -277f, 540f, 1179f), vec3<bool>(true, true, false), Struct_2(0u, -9426i)), Struct_3(vec3<f32>(-754f, -458f, -113f), 738f, vec4<f32>(-1707f, 956f, -493f, 293f), vec3<bool>(false, false, false), Struct_2(12279u, 1i)), Struct_3(vec3<f32>(-1303f, 1024f, -340f), 804f, vec4<f32>(-143f, -830f, -329f, -1134f), vec3<bool>(true, false, false), Struct_2(0u, 0i)), Struct_3(vec3<f32>(1740f, 582f, 1967f), 479f, vec4<f32>(125f, 491f, -1000f, -1231f), vec3<bool>(false, true, true), Struct_2(8010u, 2147483647i)), Struct_3(vec3<f32>(292f, 460f, 339f), 2496f, vec4<f32>(1176f, -1024f, -1707f, -1155f), vec3<bool>(false, false, false), Struct_2(40649u, -53155i)), Struct_3(vec3<f32>(1000f, -400f, -2316f), 584f, vec4<f32>(1942f, 1856f, 1000f, -380f), vec3<bool>(false, false, false), Struct_2(65700u, 49840i)), Struct_3(vec3<f32>(118f, -1000f, -1924f), 301f, vec4<f32>(1404f, 899f, -1000f, 1471f), vec3<bool>(false, false, true), Struct_2(1421u, -1i)), Struct_3(vec3<f32>(-989f, -626f, 702f), 288f, vec4<f32>(-410f, 537f, 1236f, -1382f), vec3<bool>(false, true, false), Struct_2(1u, -1i)), Struct_3(vec3<f32>(1010f, 328f, -512f), -581f, vec4<f32>(702f, 638f, 588f, 1271f), vec3<bool>(true, true, false), Struct_2(27955u, 2147483647i)), Struct_3(vec3<f32>(-1352f, -1540f, -1432f), -343f, vec4<f32>(1044f, 823f, 263f, -472f), vec3<bool>(true, true, false), Struct_2(28281u, 33407i)), Struct_3(vec3<f32>(619f, -820f, -1034f), -1000f, vec4<f32>(1153f, 1566f, 2007f, -1478f), vec3<bool>(true, false, true), Struct_2(4294967295u, 1i)), Struct_3(vec3<f32>(647f, 440f, -790f), 875f, vec4<f32>(1000f, -1228f, -104f, -1535f), vec3<bool>(true, true, false), Struct_2(19545u, -1i)));

var<private> global2: i32;

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> Struct_2 {
    return Struct_2(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(45364u, 13u)], 1u, 6716u, u_input.c), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 6783u, u_input.c, global0[_wgslsmith_index_u32(u_input.c, 13u)])), 13u)], ~u_input.c), u_input.a.x);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32, arg_3: i32) -> vec4<i32> {
    let var_0 = -(~_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.b));
    global3 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(abs(vec3<u32>(4294967295u, 15202u, 0u))) & ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 13u)], arg_0.e.a, arg_2), vec3<u32>(1u >> (global0[_wgslsmith_index_u32(0u, 13u)] % 32u), arg_0.e.a, arg_2))), 13u)];
    global2 = _wgslsmith_clamp_i32(((i32(-1i) * -arg_1.a) | -12569i) >> (0u % 32u), arg_3, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, ~(var_0 << (u_input.c % 32u)), _wgslsmith_mod_i32(arg_0.e.b, arg_1.a) | 19351i), vec4<i32>(~(-13776i) >> (arg_2 % 32u), select(_wgslsmith_div_i32(arg_0.e.b, 1i), var_0 | -2459i, arg_0.d.x), _wgslsmith_sub_i32(0i, func_1().b), u_input.b.x)));
    let var_1 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e.a, arg_0.e.a, arg_2), vec3<u32>(10917u, global0[_wgslsmith_index_u32(u_input.c, 13u)], u_input.c))), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_0.e.a, 1u), ~vec3<u32>(global0[_wgslsmith_index_u32(50253u, 13u)], 1u, 6068u))), ~u_input.c), arg_0.e.b);
    global3 = select(((arg_0.e.a | _wgslsmith_add_u32(15890u, 37225u)) & 24202u) & 0u, u_input.c, true);
    return ~countOneBits(max(abs(vec4<i32>(arg_3, var_0, arg_1.a, var_1.b)), vec4<i32>(-arg_3, _wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(-6123i, 0i)), ~(-2147483647i), firstTrailingBit(arg_3))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(~0i, arg_1.b, u_input.b.x, firstTrailingBit(-32892i)), vec4<i32>(arg_1.b, ~u_input.b.x, ~u_input.b.x, -u_input.a.x), vec4<bool>(false, true, true, true)), _wgslsmith_mult_vec4_i32(vec4<i32>(~0i, reverseBits(72955i), abs(2147483647i), _wgslsmith_sub_i32(-2147483647i, 0i)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 9943i, -2147483647i)), -2147483647i, -u_input.b.x, _wgslsmith_mod_i32(-16250i, arg_1.b)))) << (select(vec4<u32>(~u_input.c, arg_0, 4294967295u, arg_0), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 105295u, 8066u, global0[_wgslsmith_index_u32(4294967295u, 13u)]) << (vec4<u32>(20228u, global0[_wgslsmith_index_u32(60013u, 13u)], 60265u, 3317u) % vec4<u32>(32u)), ~vec4<u32>(14961u, arg_0, u_input.c, 10190u))), true) % vec4<u32>(32u));
    global2 = ~(~_wgslsmith_mod_i32(var_0.x, _wgslsmith_dot_vec4_i32(-var_0, func_3(Struct_3(vec3<f32>(arg_2, arg_2, -694f), arg_2, vec4<f32>(-2155f, -992f, arg_2, -174f), vec3<bool>(true, true, true), Struct_2(u_input.c, -1i)), Struct_4(arg_1.b, arg_2), 0u, 25178i))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, 261f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, arg_2, -1024f)))))));
    var var_2 = _wgslsmith_f_op_f32(669f * var_1.a.x) == var_1.a.x;
    let var_3 = -20175i;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_2)))), _wgslsmith_f_op_f32(-arg_2), !any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f)), _wgslsmith_f_op_f32(round(arg_2))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> i32 {
    global3 = 1u;
    global0 = array<u32, 13>();
    let var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f) + arg_1.b), -296f), _wgslsmith_f_op_vec3_f32(-arg_0.a)));
    let var_1 = arg_1;
    var var_2 = arg_1;
    return _wgslsmith_add_i32(-10112i, ~var_1.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = arg_2.x;
    let var_1 = Struct_2(4553u, _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_add_i32(u_input.b.x, _wgslsmith_add_i32(u_input.a.x, -1i))), countOneBits(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x) & _wgslsmith_clamp_i32(2147483647i, -7292i, -13815i))));
    var var_2 = var_1.b;
    var var_3 = abs(4302u);
    var var_4 = reverseBits(~select(4294967295u, _wgslsmith_sub_u32(firstTrailingBit(u_input.c), max(var_1.a, global0[_wgslsmith_index_u32(arg_0.a, 13u)])), false | all(vec2<bool>(true, false))));
    return global1[_wgslsmith_index_u32(46512u, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(~_wgslsmith_mod_u32(~20480u, global0[_wgslsmith_index_u32(1u & global0[_wgslsmith_index_u32(u_input.c, 13u)], 13u)]), func_4(func_2(countOneBits(53756u), func_1(), 1f), Struct_4(u_input.a.x, -1409f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(533f, 949f, 508f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-293f, 395f, 813f)))))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-973f, -556f, 448f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(791f)), -1000f, _wgslsmith_f_op_f32(-898f - -197f))))));
    let var_1 = var_0.c.zw;
    global3 = 4294967295u ^ var_0.e.a;
    let var_2 = Struct_4(abs(_wgslsmith_div_i32(1i, i32(-1i) * -11619i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-425f)))))));
    global0 = array<u32, 13>();
    global1 = array<Struct_3, 22>();
    let var_3 = Struct_1(vec3<f32>(func_2(var_0.e.a, Struct_2(firstLeadingBit(72517u), firstLeadingBit(17369i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -255f))).a.x, -650f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(574f + 237f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -709f))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, 1i, _wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(15819u, 4294967295u, 1u), var_0.e.a, firstLeadingBit(28151u), u_input.c), vec4<u32>(~_wgslsmith_mult_u32(var_0.e.a, 0u), ~1u, select(4294967295u, 4294967295u, var_0.d.x) | var_0.e.a, _wgslsmith_add_u32(_wgslsmith_mod_u32(4656u, global0[_wgslsmith_index_u32(4294967295u, 13u)]), abs(66595u)))), min(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-34317i, -2147483647i), func_5(Struct_2(var_0.e.a, u_input.a.x), vec3<f32>(var_2.b, var_0.a.x, 1324f), var_0.c.ywy).e.b), var_0.e.b, var_2.a ^ -u_input.b.x), reverseBits(~abs(vec3<i32>(31322i, 19152i, -3020i)))));
}

