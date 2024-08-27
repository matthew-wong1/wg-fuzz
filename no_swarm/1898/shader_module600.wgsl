struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<bool>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec3<f32>(616f, -529f, 1423f), Struct_1(true, 2610u, vec2<bool>(true, false), vec3<f32>(1383f, -891f, 855f), vec4<f32>(-210f, -501f, -372f, -609f)), false, true), Struct_4(vec3<f32>(622f, -1000f, 254f), Struct_1(true, 29906u, vec2<bool>(true, false), vec3<f32>(-1066f, 1169f, -1049f), vec4<f32>(1011f, -351f, 1966f, 216f)), true, true), Struct_4(vec3<f32>(1760f, -479f, -1107f), Struct_1(true, 38071u, vec2<bool>(true, false), vec3<f32>(600f, -339f, -767f), vec4<f32>(1316f, 859f, 689f, 611f)), true, true), Struct_4(vec3<f32>(-546f, -477f, 266f), Struct_1(true, 40718u, vec2<bool>(true, false), vec3<f32>(1117f, -1000f, -2007f), vec4<f32>(-896f, 1307f, -2011f, -303f)), false, true), Struct_4(vec3<f32>(509f, -918f, 2014f), Struct_1(false, 65207u, vec2<bool>(true, false), vec3<f32>(1857f, -383f, 397f), vec4<f32>(200f, -784f, 3131f, 1000f)), false, true), Struct_4(vec3<f32>(-1000f, -903f, 1084f), Struct_1(false, 17942u, vec2<bool>(true, true), vec3<f32>(-1000f, 132f, 1985f), vec4<f32>(-1000f, 898f, 1375f, -638f)), false, false), Struct_4(vec3<f32>(856f, 573f, -677f), Struct_1(true, 6663u, vec2<bool>(true, false), vec3<f32>(133f, 761f, -1437f), vec4<f32>(1702f, 979f, -624f, 742f)), false, false), Struct_4(vec3<f32>(-546f, -700f, -303f), Struct_1(false, 0u, vec2<bool>(true, true), vec3<f32>(-1224f, 293f, -409f), vec4<f32>(-112f, -422f, 1103f, 566f)), false, false), Struct_4(vec3<f32>(-922f, 289f, 1000f), Struct_1(true, 8444u, vec2<bool>(true, true), vec3<f32>(810f, -471f, 603f), vec4<f32>(-1494f, -1193f, -402f, -823f)), false, false), Struct_4(vec3<f32>(-1034f, -2784f, -1438f), Struct_1(false, 22929u, vec2<bool>(true, false), vec3<f32>(-1718f, 501f, -1728f), vec4<f32>(1065f, -1111f, -160f, 116f)), false, false), Struct_4(vec3<f32>(1000f, -824f, 867f), Struct_1(false, 20216u, vec2<bool>(false, true), vec3<f32>(-298f, 178f, 449f), vec4<f32>(-1597f, -775f, -121f, -406f)), true, false), Struct_4(vec3<f32>(-526f, -392f, 414f), Struct_1(true, 4294967295u, vec2<bool>(false, true), vec3<f32>(586f, 2344f, 1068f), vec4<f32>(-3234f, 339f, -945f, -833f)), false, false), Struct_4(vec3<f32>(-154f, -925f, 463f), Struct_1(true, 14487u, vec2<bool>(true, false), vec3<f32>(-152f, -697f, -457f), vec4<f32>(499f, 1000f, 2514f, 1970f)), true, false), Struct_4(vec3<f32>(-366f, -785f, -597f), Struct_1(true, 4294967295u, vec2<bool>(false, true), vec3<f32>(725f, 1578f, 836f), vec4<f32>(-164f, -1163f, 570f, 1036f)), false, false), Struct_4(vec3<f32>(1201f, 524f, 1268f), Struct_1(true, 39407u, vec2<bool>(false, false), vec3<f32>(308f, 1017f, 743f), vec4<f32>(582f, 324f, 676f, 505f)), true, true), Struct_4(vec3<f32>(286f, 277f, 305f), Struct_1(false, 29375u, vec2<bool>(false, true), vec3<f32>(-850f, 1000f, 1621f), vec4<f32>(-2681f, -1000f, 2733f, -553f)), true, false), Struct_4(vec3<f32>(393f, -777f, 276f), Struct_1(false, 48364u, vec2<bool>(true, false), vec3<f32>(-744f, 1409f, -770f), vec4<f32>(-1697f, -1131f, 716f, -512f)), false, true), Struct_4(vec3<f32>(818f, -717f, -836f), Struct_1(false, 1u, vec2<bool>(true, true), vec3<f32>(-425f, 1504f, 314f), vec4<f32>(-549f, -642f, 1302f, -1117f)), false, false), Struct_4(vec3<f32>(-1571f, 1239f, 626f), Struct_1(true, 8502u, vec2<bool>(true, true), vec3<f32>(1208f, 953f, 1505f), vec4<f32>(-750f, -1969f, -181f, 265f)), false, true), Struct_4(vec3<f32>(903f, 611f, -816f), Struct_1(true, 90116u, vec2<bool>(true, false), vec3<f32>(1061f, 1159f, -1503f), vec4<f32>(-1000f, -1000f, 639f, 1075f)), false, true), Struct_4(vec3<f32>(-410f, -603f, -428f), Struct_1(false, 20455u, vec2<bool>(false, false), vec3<f32>(2089f, 662f, -1198f), vec4<f32>(-396f, 2224f, 1361f, 722f)), false, false), Struct_4(vec3<f32>(678f, -922f, 1000f), Struct_1(false, 0u, vec2<bool>(true, true), vec3<f32>(206f, -149f, 182f), vec4<f32>(-493f, 621f, 1533f, -1265f)), true, false), Struct_4(vec3<f32>(607f, 1204f, 629f), Struct_1(true, 5905u, vec2<bool>(true, false), vec3<f32>(1053f, -1130f, -420f), vec4<f32>(883f, -232f, 782f, -1000f)), true, false), Struct_4(vec3<f32>(-255f, -249f, 843f), Struct_1(false, 1u, vec2<bool>(true, true), vec3<f32>(-679f, -662f, 263f), vec4<f32>(-914f, -621f, -253f, 557f)), false, false), Struct_4(vec3<f32>(218f, -130f, 500f), Struct_1(false, 594u, vec2<bool>(true, false), vec3<f32>(1410f, 1969f, -1748f), vec4<f32>(-1101f, 1000f, 334f, 585f)), false, true), Struct_4(vec3<f32>(-1000f, 260f, -833f), Struct_1(false, 12128u, vec2<bool>(true, true), vec3<f32>(-520f, 1565f, 1106f), vec4<f32>(1691f, -968f, 149f, 207f)), true, false), Struct_4(vec3<f32>(110f, 548f, -242f), Struct_1(false, 1u, vec2<bool>(true, true), vec3<f32>(-960f, 645f, 1000f), vec4<f32>(1598f, -815f, -761f, 1000f)), false, false), Struct_4(vec3<f32>(-126f, -199f, 499f), Struct_1(true, 42u, vec2<bool>(true, false), vec3<f32>(-583f, 817f, -2710f), vec4<f32>(590f, 1359f, 2430f, -888f)), false, false), Struct_4(vec3<f32>(1280f, 222f, 1000f), Struct_1(false, 59376u, vec2<bool>(true, false), vec3<f32>(184f, 971f, 1083f), vec4<f32>(-384f, -1000f, 664f, 1000f)), true, false), Struct_4(vec3<f32>(1603f, -159f, 604f), Struct_1(false, 35865u, vec2<bool>(true, true), vec3<f32>(-248f, 1051f, 294f), vec4<f32>(-217f, 1030f, -941f, 352f)), true, true), Struct_4(vec3<f32>(1977f, -140f, 1000f), Struct_1(true, 4294967295u, vec2<bool>(false, true), vec3<f32>(992f, -867f, -120f), vec4<f32>(1123f, -2183f, 511f, -239f)), false, false), Struct_4(vec3<f32>(1502f, -1000f, 1685f), Struct_1(false, 61437u, vec2<bool>(true, true), vec3<f32>(-1103f, 796f, 579f), vec4<f32>(1149f, -576f, -1000f, 1664f)), false, true));

var<private> global4: array<vec3<f32>, 5>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = !(!select(vec4<bool>(true, global2.b.a, false, !arg_1.c.a), !(!vec4<bool>(global1.x, arg_1.b.a, false, global2.d)), true));
    let var_1 = select(~1i, max(reverseBits(arg_1.e.x), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_1.e.zx | arg_1.e.zy, vec2<i32>(arg_1.e.x, arg_1.e.x) >> (vec2<u32>(arg_0.x, u_input.a.x) % vec2<u32>(32u))), 2147483647i)), ~arg_1.e.x > abs(46607i));
    let var_2 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(max(~global2.b.b, ~1u), _wgslsmith_div_u32(global2.b.b, 1320u), _wgslsmith_sub_u32(~0u, min(arg_1.b.b, global2.b.b)), ~countOneBits(12130u)), arg_0 ^ (arg_0 << (_wgslsmith_clamp_vec4_u32(arg_0, arg_0, arg_0) % vec4<u32>(32u))));
    var var_3 = arg_1;
    var_3 = arg_1;
    return ~(~abs(arg_1.a));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> f32 {
    var var_0 = !(!arg_0.b.c.c);
    let var_1 = Struct_2(reverseBits(func_3(~vec4<u32>(1u, 1u, global2.b.b, 0u) | max(vec4<u32>(1u, arg_0.b.b.b, 53050u, 21518u), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x)), Struct_2(vec2<u32>(global2.b.b, 0u), global2.b, arg_0.b.c, _wgslsmith_f_op_vec3_f32(arg_0.b.d - vec3<f32>(global2.a.x, arg_0.b.d.x, -1313f)), -vec4<i32>(arg_0.b.e.x, -2147483647i, 431i, arg_0.b.e.x)))), global2.b, global2.b, vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(global2.b.e.x * _wgslsmith_f_op_f32(global2.b.e.x * _wgslsmith_div_f32(arg_0.b.c.e.x, global2.b.e.x))), 103f), _wgslsmith_div_vec4_i32(vec4<i32>(select(25046i, -arg_0.b.e.x, any(arg_0.a)), ~5781i, arg_0.b.e.x, -28238i), arg_0.b.e));
    let var_2 = true;
    return arg_0.b.d.x;
}

fn func_2() -> Struct_4 {
    let var_0 = firstTrailingBit(-2147483647i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.b.d.x, -218f)))))));
    global2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(339f, var_1, -2200f), vec3<f32>(var_1, 681f, global2.a.x))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global2.a.x, var_1), _wgslsmith_f_op_f32(abs(var_1)), -1225f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, global2.b.d.x) + vec3<f32>(-254f, 862f, 816f)))), global2.b, global2.c, true);
    global0 = _wgslsmith_f_op_f32(func_4(Struct_3(!(!(!vec3<bool>(global1.x, false, true))), Struct_2(func_3(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 14079u) << (vec4<u32>(4294967295u, 4294967295u, 40332u, 28673u) % vec4<u32>(32u)), Struct_2(u_input.a.yy, global2.b, Struct_1(global2.b.a, 105708u, vec2<bool>(global2.b.a, false), vec3<f32>(-712f, 471f, global2.b.e.x), vec4<f32>(178f, 663f, 1919f, global2.b.d.x)), global2.a, vec4<i32>(-2147483647i, var_0, var_0, var_0))), Struct_1(true, min(u_input.a.x, 1u), vec2<bool>(true, true), global2.a, _wgslsmith_f_op_vec4_f32(max(global2.b.e, global2.b.e))), global2.b, _wgslsmith_f_op_vec3_f32(sign(global2.a)), -min(vec4<i32>(0i, 21144i, 0i, 1i), vec4<i32>(var_0, var_0, 12528i, var_0)))), vec2<u32>(reverseBits(global2.b.b) | global2.b.b, _wgslsmith_div_u32(~(~0u), ~_wgslsmith_div_u32(global2.b.b, global2.b.b)))));
    let var_2 = _wgslsmith_mult_i32(var_0, select(~var_0, var_0, global1.x));
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global2.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(global2.a, global2.b.e.wzy)), vec3<f32>(676f, -1447f, -1558f), true)))), Struct_1(true, global2.b.b, vec2<bool>(false, global2.b.c.x), vec3<f32>(1186f, 1000f, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-global2.b.d.x))), vec4<f32>(_wgslsmith_f_op_f32(select(global2.a.x, _wgslsmith_f_op_f32(floor(var_1)), global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(f32(-1f) * -834f), all(vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_f32(min(772f, global2.a.x)), _wgslsmith_f_op_f32(-546f * var_1))), any(!select(!vec3<bool>(global2.d, global2.b.a, global1.x), !vec3<bool>(global1.x, true, global2.d), !global1.x)), true);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: f32) -> Struct_1 {
    global2 = Struct_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1334f, 1476f, arg_2), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1403f, -599f, arg_0.a.x), global2.a)))))), _wgslsmith_f_op_vec3_f32(-global2.b.e.yyy))), func_2().b, any(select(func_2().b.c, vec2<bool>(any(vec2<bool>(arg_0.b.c.x, true)), arg_0.b.c.x | arg_0.c), !(false | global1.x))), true);
    let var_0 = global3[_wgslsmith_index_u32(global2.b.b, 32u)];
    let var_1 = Struct_1(false, _wgslsmith_dot_vec3_u32(firstLeadingBit(~u_input.a), u_input.a), vec2<bool>(all(!(!vec3<bool>(false, global1.x, arg_0.b.c.x))), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(211f, _wgslsmith_f_op_f32(-var_0.b.e.x), _wgslsmith_f_op_f32(f32(-1f) * -603f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global2.b.d.x, _wgslsmith_f_op_f32(floor(var_0.a.x)), arg_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(122f))), arg_2, _wgslsmith_f_op_f32(231f * -259f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) + _wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(371f)) - _wgslsmith_f_op_f32(exp2(arg_2))), _wgslsmith_f_op_f32(-arg_2), -1487f)));
    let var_2 = reverseBits(i32(-1i) * -1i);
    var var_3 = any(vec4<bool>(true, any(select(select(vec3<bool>(false, true, arg_0.c), vec3<bool>(true, var_1.c.x, true), vec3<bool>(true, true, arg_0.b.c.x)), select(vec3<bool>(global2.d, false, false), vec3<bool>(global1.x, false, false), global2.b.a), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(arg_0.c, global2.d, var_1.a), vec3<bool>(var_1.c.x, global1.x, true)))), false, true));
    return arg_0.b;
}

fn func_1(arg_0: u32) -> Struct_4 {
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a ^ u_input.a, u_input.a), ~52823u), 32u)];
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-603f, global2.b.e.x, global2.a.x))))))));
    global4 = array<vec3<f32>, 5>();
    let var_1 = Struct_4(global4[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(global2.b.b, ~u_input.a.x >> (arg_0 % 32u))), 5u)], func_5(func_2(), vec4<f32>(-1811f, 733f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.d.x)), var_0.x), global2.a.x), false, global2.b.a);
    let var_2 = !vec4<bool>(select(var_1.c, global2.d, func_5(var_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, var_1.a.x, var_0.x, 984f) * vec4<f32>(var_0.x, -1068f, global2.b.e.x, -853f)), var_0.x).c.x), true, true, false);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(global2.b.d.x, _wgslsmith_f_op_f32(-global2.b.e.x), -1682f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-410f - _wgslsmith_f_op_f32(max(global2.a.x, global2.b.d.x))) + global2.a.x)));
    global2 = global3[_wgslsmith_index_u32(0u, 32u)];
    global4 = array<vec3<f32>, 5>();
    var var_1 = global2.b.e;
    let var_2 = func_1(1u);
    let var_3 = vec4<i32>(-1i) * -(vec4<i32>(select(-55713i, 1i, global1.x), 38366i, -17931i, abs(0i)) | vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(8675i, -5521i, -56389i, -1i), vec4<i32>(0i, 2147483647i, 0i, 2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(31942i, 10521i, -2147483647i, -4049i), vec4<i32>(-1i, -12944i, 0i, 1i)), 0i, 1i));
    let var_4 = true;
    var var_5 = vec4<bool>(any(select(vec4<bool>(!var_4, var_3.x < var_3.x, true, 1u < var_2.b.b), vec4<bool>(var_4, true, true, true), global2.b.c.x)), false, !all(!(!vec4<bool>(false, global2.d, var_2.b.c.x, false))), global2.b.a);
    var var_6 = Struct_3(select(var_5.zyz, var_5.xyx, var_5.zyy), Struct_2(u_input.a.yy, Struct_1(all(!vec4<bool>(global1.x, var_5.x, var_5.x, global2.b.a)), global2.b.b, var_5.zz, func_2().a, func_2().b.e), Struct_1(var_5.x, ~global2.b.b, vec2<bool>(all(vec2<bool>(true, global1.x)), func_5(Struct_4(var_2.b.d, Struct_1(true, var_2.b.b, var_2.b.c, vec3<f32>(215f, -741f, global2.b.d.x), vec4<f32>(-652f, -1416f, global2.a.x, -684f)), false, var_4), vec4<f32>(125f, var_2.a.x, -752f, -1888f), var_2.b.e.x).c.x), _wgslsmith_f_op_vec3_f32(-var_1.zzz), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 279f, 149f, var_2.b.e.x), vec4<f32>(var_2.a.x, var_1.x, 899f, -223f), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(332f, -1000f, _wgslsmith_div_f32(var_1.x, global2.b.d.x))), -var_3));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-17867i, -1i, var_6.b.e.x, var_3.x), vec4<i32>(var_3.x, -1i, var_6.b.e.x, var_6.b.e.x)), var_6.b.e) & var_6.b.e.x, var_6.b.e.x));
}

