struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: Struct_3,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2>;

var<private> global1: vec4<i32>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<i32>(-30413i, -20259i, i32(-2147483648), -32753i), -1i, false, vec3<f32>(-938f, -1140f, -651f)));

var<private> global3: vec3<f32>;

var<private> global4: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(20860u, vec3<i32>(-1i, -65862i, 51934i), 22027i, vec4<f32>(1287f, 548f, 281f, -1000f)), Struct_4(4294967295u, vec3<i32>(-15772i, 7460i, -25646i), 29869i, vec4<f32>(-1533f, 1137f, -506f, 1371f)), Struct_4(4294967295u, vec3<i32>(-19034i, 13266i, 2147483647i), i32(-2147483648), vec4<f32>(-1457f, 1206f, -221f, 352f)), Struct_4(4389u, vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), 0i, vec4<f32>(2057f, -569f, -495f, 718f)), Struct_4(0u, vec3<i32>(-8023i, 0i, -19176i), 28953i, vec4<f32>(413f, -2041f, -307f, -1002f)), Struct_4(4294967295u, vec3<i32>(-1i, 2147483647i, 2147483647i), 8347i, vec4<f32>(114f, -399f, 139f, 816f)), Struct_4(4294967295u, vec3<i32>(-21050i, 2147483647i, i32(-2147483648)), -17898i, vec4<f32>(580f, -1159f, 1003f, 807f)), Struct_4(60095u, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), -51126i, vec4<f32>(-1955f, 888f, -1092f, 638f)), Struct_4(27471u, vec3<i32>(-59574i, 1i, 10459i), -26048i, vec4<f32>(619f, -694f, 655f, -511f)), Struct_4(1u, vec3<i32>(1i, 24484i, -1i), 1i, vec4<f32>(-961f, 1000f, 276f, -466f)), Struct_4(17046u, vec3<i32>(1i, -9977i, 1i), -1744i, vec4<f32>(-1881f, 229f, 109f, -195f)), Struct_4(0u, vec3<i32>(-4460i, 1i, -1i), i32(-2147483648), vec4<f32>(-1486f, 600f, 1558f, 573f)), Struct_4(1u, vec3<i32>(1i, -49981i, i32(-2147483648)), i32(-2147483648), vec4<f32>(-133f, -458f, -543f, 1182f)), Struct_4(1u, vec3<i32>(-1i, 37208i, -18032i), 2147483647i, vec4<f32>(-1072f, 2500f, 810f, 1545f)), Struct_4(47925u, vec3<i32>(-33445i, 1i, 2147483647i), 15331i, vec4<f32>(-447f, 148f, 1591f, 211f)), Struct_4(4294967295u, vec3<i32>(-30705i, 37655i, -1i), i32(-2147483648), vec4<f32>(268f, 364f, -1082f, 2018f)), Struct_4(45818u, vec3<i32>(46567i, 7296i, -52904i), i32(-2147483648), vec4<f32>(1123f, -425f, -455f, 157f)), Struct_4(5843u, vec3<i32>(23427i, 2147483647i, 2147483647i), -1i, vec4<f32>(2065f, -1036f, -1538f, 457f)), Struct_4(7217u, vec3<i32>(-23119i, 2147483647i, -20888i), -1i, vec4<f32>(-525f, 370f, 299f, -124f)), Struct_4(1u, vec3<i32>(43423i, 1i, 29425i), i32(-2147483648), vec4<f32>(-1191f, -521f, -336f, -667f)), Struct_4(31383u, vec3<i32>(21372i, -1i, -1i), -19017i, vec4<f32>(1760f, -116f, 1101f, -2152f)), Struct_4(1u, vec3<i32>(31216i, 1i, -10770i), 1i, vec4<f32>(910f, -1144f, 1000f, 747f)), Struct_4(43997u, vec3<i32>(27670i, 16004i, 0i), i32(-2147483648), vec4<f32>(-591f, 237f, 1097f, -867f)), Struct_4(1u, vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), -38856i, vec4<f32>(-773f, 1249f, 453f, 193f)), Struct_4(0u, vec3<i32>(0i, 22409i, 0i), 710i, vec4<f32>(1224f, -784f, -1542f, 173f)), Struct_4(4294967295u, vec3<i32>(i32(-2147483648), 1i, 14382i), 36022i, vec4<f32>(708f, 1399f, -613f, -236f)), Struct_4(9252u, vec3<i32>(0i, i32(-2147483648), 0i), i32(-2147483648), vec4<f32>(1211f, 592f, 136f, 1534f)), Struct_4(57044u, vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), i32(-2147483648), vec4<f32>(-296f, 783f, 1017f, -442f)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_4) -> u32 {
    global1 = arg_0.a.a;
    let var_0 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0.a.a, vec4<i32>(arg_2.b.x, global1.x, global2.a.a.x, -1i), firstTrailingBit(arg_0.a.a)) >> (~vec4<u32>(arg_1.x, 15071u, arg_2.a, 57817u) % vec4<u32>(32u)), arg_0.a.a);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1324f, -481f) + -1363f))))));
    global0 = array<Struct_4, 2>();
    let var_2 = 4544i;
    return 1u;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> vec3<u32> {
    return ~vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_sub_u32(25361u, u_input.a.x), 2552u), _wgslsmith_mult_u32(4294967295u, select(u_input.a.x, ~u_input.a.x, true)), func_3(Struct_2(arg_1.a, 16027i), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 1u, 171996u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 57718u))), Struct_4(u_input.a.x, arg_1.a.a.wxz | vec3<i32>(0i, 6256i, arg_0.a.b), 21992i ^ global1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -699f, arg_0.a.d.x, arg_0.a.d.x)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: bool, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec3_u32(select(~(reverseBits(vec3<u32>(0u, u_input.a.x, u_input.a.x)) | func_2(Struct_3(Struct_1(arg_3, arg_3.x, arg_2, vec3<f32>(349f, 1349f, -1094f))), Struct_3(global2.a))), ~vec3<u32>(u_input.a.x, 4294967295u, 44146u) >> (vec3<u32>(0u, ~1u, 2725u) % vec3<u32>(32u)), vec3<bool>(false, false, all(vec4<bool>(true, global2.a.c, global2.a.c, global2.a.c)) != all(vec3<bool>(false, true, false)))), ~(~_wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.a.x, 0u, 0u), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec3<u32>(68709u, 1u, u_input.a.x) << (vec3<u32>(52158u, 30399u, 0u) % vec3<u32>(32u)))));
    var var_1 = firstLeadingBit(firstLeadingBit(arg_3.x) | (i32(-1i) * -40210i));
    global1 = countOneBits(global2.a.a);
    let var_2 = _wgslsmith_div_vec4_u32(firstTrailingBit(firstTrailingBit(~(~vec4<u32>(53566u, u_input.a.x, 22342u, 0u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(u_input.a.x), max(u_input.a.x, 12329u), _wgslsmith_sub_u32(1u, u_input.a.x), func_3(Struct_2(global2.a, 0i), vec3<u32>(0u, 1u, 1u), Struct_4(74886u, global2.a.a.wyx, global1.x, vec4<f32>(329f, -1243f, global2.a.d.x, global2.a.d.x)))) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 89095u)), vec4<u32>(_wgslsmith_div_u32(6984u, _wgslsmith_mod_u32(0u, u_input.a.x)), 1u, firstTrailingBit(1u), 90328u), (vec4<u32>(50200u, 69147u, 4294967295u, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(40836u, u_input.a.x, 18269u, 0u) | vec4<u32>(u_input.a.x, 80391u, u_input.a.x, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 112238u, 35792u, 86360u), vec4<u32>(u_input.a.x, 2408u, u_input.a.x, 0u))) % vec4<u32>(32u))));
    global3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global2.a.d), global2.a.d));
    return Struct_2(global2.a, 2147483647i);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_5) -> vec4<i32> {
    global1 = arg_1.a.a << ((_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(arg_0, u_input.a.x, arg_0, 31574u)), ~vec4<u32>(4116u, 0u, 39401u, u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, 24909u, 53502u) | vec4<u32>(42341u, u_input.a.x, 1u, 8647u), _wgslsmith_add_vec4_u32(vec4<u32>(44616u, arg_0, 4294967295u, arg_0), vec4<u32>(21639u, 95115u, u_input.a.x, arg_0)))) >> (vec4<u32>(abs(6341u), u_input.a.x, u_input.a.x, ~u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u));
    global2 = arg_2.c;
    let var_0 = arg_2.d.ww;
    var var_1 = !(~(~global1.x & arg_1.a.a.x) != 1i);
    var var_2 = Struct_4(func_2(Struct_3(func_1(vec3<i32>(global1.x, 21528i, arg_1.b), _wgslsmith_f_op_f32(max(arg_2.b, -1446f)), any(var_0), vec4<i32>(-53273i, global1.x, -2147483647i, -56575i)).a), Struct_3(Struct_1(vec4<i32>(arg_1.a.a.x, -34236i, 22516i, global1.x), -2147483647i, !arg_2.c.a.c, vec3<f32>(arg_2.c.a.d.x, 1399f, global2.a.d.x)))).x, _wgslsmith_sub_vec3_i32(arg_1.a.a.xww, _wgslsmith_div_vec3_i32(firstTrailingBit(~vec3<i32>(-2147483647i, -40287i, -18190i)), global1.www)), _wgslsmith_clamp_i32(0i, 1i, arg_2.c.a.a.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(arg_2.a, vec4<f32>(-427f, _wgslsmith_div_f32(global2.a.d.x, -356f), _wgslsmith_f_op_f32(177f * 274f), 120f))), arg_2.a)));
    return vec4<i32>(func_1(vec3<i32>(global1.x, global1.x, _wgslsmith_dot_vec3_i32(min(vec3<i32>(arg_1.b, -1i, 0i), var_2.b), vec3<i32>(-22923i, -1i, var_2.b.x) >> (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))), 626f, all(select(var_0, !vec2<bool>(false, arg_1.a.c), var_0.x)), func_1(_wgslsmith_add_vec3_i32(global1.xyx, vec3<i32>(arg_1.a.a.x, 2147483647i, global2.a.a.x)), global3.x, func_1(reverseBits(vec3<i32>(global1.x, 24289i, global2.a.b)), arg_1.a.d.x, global2.a.c, global2.a.a).a.c, firstTrailingBit(_wgslsmith_mult_vec4_i32(arg_2.e, arg_1.a.a))).a.a).b, ~(~(~(~0i))), global1.x, var_2.b.x);
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    global3 = func_1(vec3<i32>(-60226i, _wgslsmith_sub_i32(-arg_1.x, -57801i), ~(-_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(-14887i, global1.x, global2.a.b, 2147483647i)))), -658f, global2.a.c, firstLeadingBit(vec4<i32>(-arg_1.x, firstTrailingBit(-1i), _wgslsmith_div_i32(arg_1.x, 57283i), global2.a.a.x))).a.d;
    global2 = Struct_3(func_1(global1.zwz, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global3.x)), -1118f, global2.a.c)), global2.a.d.x)), all(vec3<bool>(false, true, true)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global2.a.b, global2.a.b), global2.a.a.xwz) << (arg_0 % 32u), global2.a.b, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 4320i, arg_1.x), vec3<i32>(-61858i, -1i, global2.a.b) >> (vec3<u32>(arg_0, 0u, 1u) % vec3<u32>(32u))), func_4(func_3(Struct_2(global2.a, 1i), vec3<u32>(u_input.a.x, 58167u, u_input.a.x), Struct_4(arg_0, arg_1.yzy, 0i, vec4<f32>(global3.x, global2.a.d.x, global3.x, -584f))), Struct_2(Struct_1(vec4<i32>(-1i, arg_1.x, -64604i, -1i), 2147483647i, global2.a.c, vec3<f32>(-1524f, -1128f, arg_3.x)), arg_1.x), Struct_5(vec4<f32>(global3.x, -1039f, global2.a.d.x, -127f), 1987f, Struct_3(global2.a), vec4<bool>(false, arg_2, global2.a.c, false), vec4<i32>(arg_1.x, global2.a.a.x, 56429i, global1.x))).x)).a);
    let var_0 = func_1(global2.a.a.wzw, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, arg_3.x)))), true, vec4<i32>(-1i, -11257i ^ -func_4(u_input.a.x, Struct_2(global2.a, -53809i), Struct_5(vec4<f32>(745f, -952f, arg_3.x, 473f), global3.x, Struct_3(global2.a), vec4<bool>(true, false, global2.a.c, arg_2), vec4<i32>(1i, 2147483647i, global1.x, arg_1.x))).x, _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(global2.a.b, -1i, global1.x, 0i)), vec4<i32>(-global2.a.a.x, global2.a.a.x, _wgslsmith_div_i32(1i, -41013i), global2.a.a.x)), -global1.x));
    let var_1 = ~vec4<u32>(_wgslsmith_sub_u32(~0u, firstLeadingBit(arg_0)), _wgslsmith_clamp_u32(1u, arg_0, _wgslsmith_mult_u32(u_input.a.x, arg_0)), abs(~66128u), 0u) & ~vec4<u32>(u_input.a.x, 1u | u_input.a.x, ~(~u_input.a.x), 25697u);
    var var_2 = Struct_1(arg_1, ~(-_wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, -9757i), global2.a.a.wx, global2.a.c), global2.a.a.yy >> (vec2<u32>(arg_0, var_1.x) % vec2<u32>(32u)))), true, _wgslsmith_f_op_vec3_f32(global2.a.d + vec3<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.d.x + -1288f) - _wgslsmith_f_op_f32(1884f + global2.a.d.x)))));
    return Struct_1(_wgslsmith_div_vec4_i32(~vec4<i32>(max(1i, var_2.a.x), _wgslsmith_clamp_i32(arg_1.x, global2.a.a.x, 3471i), 2147483647i, global2.a.a.x), var_2.a), func_4(_wgslsmith_sub_u32(~(~1u), abs(_wgslsmith_add_u32(arg_0, 62141u))), Struct_2(func_1(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.a.x, global2.a.a.x, arg_1.x), vec3<i32>(var_2.a.x, 0i, global2.a.a.x)), _wgslsmith_f_op_f32(-arg_3.x), false, ~global2.a.a).a, arg_1.x), Struct_5(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.d.x, arg_3.x, global2.a.d.x, 691f))), 652f, Struct_3(func_1(global2.a.a.wwz, arg_3.x, false, vec4<i32>(873i, -2147483647i, global1.x, 2746i)).a), vec4<bool>(true, false, true, func_1(var_2.a.yyw, global3.x, false, vec4<i32>(var_2.b, var_0.a.a.x, -2804i, -56100i)).a.c), global2.a.a)).x, !global2.a.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1782f))), -525f, 1869f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_4, 28>();
    var var_0 = _wgslsmith_f_op_f32(-global2.a.d.x);
    var var_1 = all(select(!(!select(vec4<bool>(global2.a.c, global2.a.c, false, global2.a.c), vec4<bool>(false, global2.a.c, true, global2.a.c), false)), !(!vec4<bool>(true, global2.a.c, global2.a.c, global2.a.c)), select(vec4<bool>(false, true, global2.a.c, global2.a.c), !(!vec4<bool>(true, false, global2.a.c, false)), !(global3.x != -2396f))));
    let var_2 = func_5(~0u, func_4(0u, func_1(-vec3<i32>(33256i, 30017i, global2.a.b), _wgslsmith_f_op_f32(f32(-1f) * -913f), 36055u == u_input.a.x, global2.a.a >> (vec4<u32>(72656u, u_input.a.x, 67471u, 4232u) % vec4<u32>(32u))), Struct_5(vec4<f32>(global2.a.d.x, global2.a.d.x, 948f, 1730f), 511f, Struct_3(Struct_1(vec4<i32>(-2147483647i, -54996i, global1.x, global1.x), global2.a.a.x, global2.a.c, vec3<f32>(-344f, 1506f, global3.x))), select(vec4<bool>(global2.a.c, true, global2.a.c, global2.a.c), vec4<bool>(false, global2.a.c, true, false), false), _wgslsmith_mult_vec4_i32(vec4<i32>(global2.a.b, global2.a.a.x, global1.x, global2.a.b), global2.a.a))) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u) ^ vec3<u32>(u_input.a.x, u_input.a.x, 45785u), vec3<u32>(19647u, 115476u, 42546u)), 1u, 55987u, firstTrailingBit(_wgslsmith_clamp_u32(u_input.a.x, 86007u, 27483u))) % vec4<u32>(32u)), true & global2.a.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -1411f)))))));
    var_1 = (-global1.x <= global1.x) & var_2.c;
    global4 = array<Struct_4, 28>();
    let var_3 = func_1(-global1.wzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1768f - -415f) - _wgslsmith_f_op_f32(global2.a.d.x + -156f))))), true, vec4<i32>(abs(abs(0i)), ~global2.a.b, global2.a.b, ~var_2.b & (var_2.b & -39899i)) >> (~vec4<u32>(func_3(Struct_2(var_2, 1i), vec3<u32>(1u, 0u, u_input.a.x), Struct_4(4294967295u, vec3<i32>(22421i, 0i, var_2.a.x), var_2.b, vec4<f32>(1000f, var_2.d.x, 351f, global3.x))), 4294967295u, u_input.a.x, ~32132u) % vec4<u32>(32u)));
    global1 = -vec4<i32>(global1.x << (_wgslsmith_div_u32(u_input.a.x ^ u_input.a.x, 43646u) % 32u), -17158i, countOneBits(var_3.b), ~7447i);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, _wgslsmith_mod_vec3_i32(abs(global1.wxy), var_3.a.a.xxw ^ countOneBits(func_5(u_input.a.x, vec4<i32>(-50540i, -1i, 0i, -1i), var_2.c, vec2<f32>(global3.x, global2.a.d.x)).a.yxy)), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(u_input.a.x, 38215u, 0u, 13495u))), abs(vec4<u32>(4294967295u, u_input.a.x >> (u_input.a.x % 32u), 356u, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(434f)), var_2.d.x, -1205f, _wgslsmith_f_op_f32(round(847f)))))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, 5311u), u_input.a.x, u_input.a.x), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(62177u, 20594u, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 64174u)), vec3<u32>(40213u, 4294967295u, u_input.a.x) | vec3<u32>(1u, u_input.a.x, u_input.a.x)))));
}

