struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(776f), 2147483647i, vec2<bool>(true, true));

var<private> global1: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), 1986f, 30405u, 639f), -286f, vec3<bool>(true, true, false), Struct_1(vec2<u32>(4294967295u, 31891u), 165f, 3285u, 337f), Struct_1(vec2<u32>(32578u, 17701u), 1991f, 1u, -1057f)), Struct_2(Struct_1(vec2<u32>(94559u, 31266u), 525f, 11212u, -891f), -490f, vec3<bool>(true, false, false), Struct_1(vec2<u32>(39556u, 41257u), 601f, 7364u, -1807f), Struct_1(vec2<u32>(23442u, 249u), -1132f, 22451u, 784f)), Struct_2(Struct_1(vec2<u32>(1143u, 4294967295u), 378f, 17394u, 272f), -167f, vec3<bool>(true, true, false), Struct_1(vec2<u32>(4294967295u, 4294967295u), -787f, 40904u, 1026f), Struct_1(vec2<u32>(4294967295u, 22631u), -1000f, 25182u, 901f)), Struct_2(Struct_1(vec2<u32>(78616u, 87638u), 473f, 0u, -1537f), 1054f, vec3<bool>(false, false, true), Struct_1(vec2<u32>(32446u, 1u), 319f, 25456u, 1586f), Struct_1(vec2<u32>(66548u, 18846u), 1179f, 4294967295u, 243f)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), -984f, 0u, -781f), 474f, vec3<bool>(true, false, true), Struct_1(vec2<u32>(1u, 58247u), 1000f, 1u, 1170f), Struct_1(vec2<u32>(2380u, 33676u), -1426f, 1u, -626f)), Struct_2(Struct_1(vec2<u32>(9463u, 4294967295u), 1871f, 37503u, -1943f), -631f, vec3<bool>(false, true, true), Struct_1(vec2<u32>(79253u, 52513u), -1258f, 4294967295u, -1056f), Struct_1(vec2<u32>(29014u, 63540u), 567f, 45683u, 2088f)), Struct_2(Struct_1(vec2<u32>(4036u, 0u), -2035f, 0u, -1516f), 943f, vec3<bool>(true, false, true), Struct_1(vec2<u32>(4294967295u, 1u), -1000f, 20093u, -589f), Struct_1(vec2<u32>(108330u, 53079u), -658f, 1u, 297f)), Struct_2(Struct_1(vec2<u32>(1u, 0u), -1262f, 1u, -598f), 1784f, vec3<bool>(true, true, false), Struct_1(vec2<u32>(1u, 0u), 1155f, 0u, 541f), Struct_1(vec2<u32>(80709u, 9710u), -1004f, 1u, -117f)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 745f, 91884u, -142f), -1437f, vec3<bool>(true, true, true), Struct_1(vec2<u32>(4294967295u, 0u), 635f, 77974u, 858f), Struct_1(vec2<u32>(27916u, 52317u), -536f, 0u, -1853f)), Struct_2(Struct_1(vec2<u32>(5320u, 0u), 1000f, 0u, 586f), -762f, vec3<bool>(true, false, false), Struct_1(vec2<u32>(4294967295u, 35100u), 992f, 4294967295u, 433f), Struct_1(vec2<u32>(56239u, 4294967295u), 711f, 63857u, 175f)), Struct_2(Struct_1(vec2<u32>(0u, 0u), 1000f, 0u, -2586f), 807f, vec3<bool>(true, true, false), Struct_1(vec2<u32>(1u, 4294967295u), 1028f, 4294967295u, 169f), Struct_1(vec2<u32>(44418u, 17484u), 409f, 94173u, -865f)), Struct_2(Struct_1(vec2<u32>(12534u, 1u), 277f, 1u, 2618f), 377f, vec3<bool>(true, true, false), Struct_1(vec2<u32>(4294967295u, 4294967295u), 781f, 19592u, 325f), Struct_1(vec2<u32>(0u, 0u), 965f, 18111u, -797f)), Struct_2(Struct_1(vec2<u32>(96206u, 4294967295u), 1471f, 0u, -208f), -827f, vec3<bool>(true, false, true), Struct_1(vec2<u32>(57072u, 21567u), 231f, 1u, 1000f), Struct_1(vec2<u32>(4294967295u, 83837u), -1080f, 1u, 157f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 77u), -1151f, 4294967295u, 1337f), -411f, vec3<bool>(false, false, false), Struct_1(vec2<u32>(29925u, 0u), 132f, 20293u, 190f), Struct_1(vec2<u32>(0u, 4294967295u), -520f, 1611u, 850f)), Struct_2(Struct_1(vec2<u32>(29598u, 0u), -934f, 10263u, 357f), 1061f, vec3<bool>(false, true, false), Struct_1(vec2<u32>(42947u, 1u), 1968f, 4294967295u, -1784f), Struct_1(vec2<u32>(1u, 5142u), -1295f, 1u, 918f)), Struct_2(Struct_1(vec2<u32>(19348u, 64756u), -622f, 0u, -1298f), -400f, vec3<bool>(false, true, true), Struct_1(vec2<u32>(1u, 71141u), -1124f, 8817u, -876f), Struct_1(vec2<u32>(41117u, 39026u), 593f, 4294967295u, -1493f)), Struct_2(Struct_1(vec2<u32>(1u, 15864u), 1660f, 10546u, -384f), -1321f, vec3<bool>(false, true, false), Struct_1(vec2<u32>(4294967295u, 113066u), 732f, 4294967295u, -1672f), Struct_1(vec2<u32>(33909u, 36633u), -1198f, 28443u, 2242f)), Struct_2(Struct_1(vec2<u32>(12375u, 0u), -1410f, 31226u, 552f), 683f, vec3<bool>(false, true, false), Struct_1(vec2<u32>(30267u, 4294967295u), 2545f, 43578u, -1346f), Struct_1(vec2<u32>(4294967295u, 6519u), -2275f, 4294967295u, -347f)), Struct_2(Struct_1(vec2<u32>(18343u, 4294967295u), 705f, 1u, 936f), 810f, vec3<bool>(true, true, true), Struct_1(vec2<u32>(0u, 4294967295u), -1979f, 1u, 115f), Struct_1(vec2<u32>(0u, 0u), -673f, 4294967295u, 208f)), Struct_2(Struct_1(vec2<u32>(71932u, 58429u), 1913f, 24024u, -148f), -655f, vec3<bool>(false, false, true), Struct_1(vec2<u32>(4294967295u, 4294967295u), 1677f, 4294967295u, 991f), Struct_1(vec2<u32>(1u, 0u), 601f, 15578u, -378f)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 2588f, 19357u, -1000f), -2159f, vec3<bool>(false, true, false), Struct_1(vec2<u32>(1u, 64777u), -2378f, 1u, -901f), Struct_1(vec2<u32>(4294967295u, 704u), 991f, 80698u, -744f)), Struct_2(Struct_1(vec2<u32>(18150u, 0u), -568f, 0u, 1841f), 1227f, vec3<bool>(true, true, true), Struct_1(vec2<u32>(11393u, 8798u), 934f, 15861u, -1471f), Struct_1(vec2<u32>(4294967295u, 8177u), -427f, 25757u, 1083f)));

var<private> global2: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec2<u32>(15123u, 1u), -949f, 16008u, 1027f), 1205f, vec3<bool>(true, false, false), Struct_1(vec2<u32>(0u, 4294967295u), -560f, 0u, 1000f), Struct_1(vec2<u32>(12602u, 92608u), 376f, 53642u, -1652f)), Struct_2(Struct_1(vec2<u32>(81217u, 51727u), -132f, 72451u, 426f), 1311f, vec3<bool>(false, true, true), Struct_1(vec2<u32>(49793u, 112568u), 1310f, 0u, 693f), Struct_1(vec2<u32>(15916u, 0u), -2318f, 4294967295u, -1633f)), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), -765f, 1u, -1061f), 1000f, vec3<bool>(false, true, false), Struct_1(vec2<u32>(102336u, 43827u), 597f, 58033u, -302f), Struct_1(vec2<u32>(80492u, 4294967295u), -1165f, 0u, 410f)));

var<private> global3: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(1112f, -128f, -1000f), vec3<f32>(1000f, -480f, -738f), vec3<f32>(619f, 268f, -844f), vec3<f32>(588f, -939f, -1000f), vec3<f32>(405f, 313f, 465f), vec3<f32>(701f, -892f, -249f), vec3<f32>(-554f, 519f, 278f), vec3<f32>(425f, 333f, -1563f), vec3<f32>(1104f, 1533f, 1925f), vec3<f32>(109f, -1000f, 412f), vec3<f32>(1702f, -692f, 1307f), vec3<f32>(1740f, 773f, -1215f), vec3<f32>(-1000f, 597f, -424f), vec3<f32>(-657f, -253f, -690f), vec3<f32>(1373f, -1296f, -631f), vec3<f32>(661f, 117f, 1173f), vec3<f32>(-853f, 543f, 118f), vec3<f32>(-1984f, 458f, -1000f), vec3<f32>(1557f, -556f, 1000f), vec3<f32>(-590f, 1000f, 1347f), vec3<f32>(534f, -218f, -1931f), vec3<f32>(436f, -228f, -720f), vec3<f32>(-105f, -1000f, 1000f), vec3<f32>(-2184f, -648f, 421f), vec3<f32>(-1000f, -2604f, -968f), vec3<f32>(1783f, 125f, 1886f), vec3<f32>(-769f, -395f, 327f), vec3<f32>(1037f, -945f, -547f), vec3<f32>(551f, -559f, 620f), vec3<f32>(1843f, -286f, -222f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: bool) -> bool {
    let var_0 = min(~(~(~vec2<u32>(55367u, 1u))), _wgslsmith_add_vec2_u32(vec2<u32>(~0u, abs(arg_2 >> (arg_1 % 32u))), vec2<u32>(arg_1, 4294967295u) >> (~reverseBits(vec2<u32>(0u, arg_1)) % vec2<u32>(32u))));
    return global0.c.x;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_5, arg_3: vec4<bool>) -> i32 {
    let var_0 = all(select(!arg_3.xyy, select(!arg_3.xxw, arg_3.wxy, arg_3.xyy), select(vec3<bool>(arg_3.x, -410f < global0.a.a, true), arg_3.yyz, any(select(vec2<bool>(arg_1, false), global0.c, false)))));
    global1 = array<Struct_2, 22>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32((countOneBits(87080u) >> (_wgslsmith_mult_u32(arg_2.c, arg_2.b) % 32u)) << (4294967295u % 32u), 30u)] + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(4294967295u, 30u)] - _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(8769u, 30u)])) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(3664u, 30u)] - global3[_wgslsmith_index_u32(8136u, 30u)]) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -645f, 802f) * global3[_wgslsmith_index_u32(arg_2.c, 30u)])))));
    let var_2 = select(vec2<i32>(-1i) * -u_input.a.zy, vec2<i32>(-2147483647i, global0.b), ~4294967295u == arg_2.b) ^ (abs(~(~vec2<i32>(global0.b, 1i))) & -_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(global0.b, 1i)), ~u_input.a.zz));
    global0 = Struct_4(global0.a, global0.b, !global0.c);
    return -61238i;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(global0.a.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(334f * _wgslsmith_f_op_f32(global0.a.a - global0.a.a)), _wgslsmith_f_op_f32(-global0.a.a))), 1u << (_wgslsmith_clamp_u32(51901u, ~0u >> ((1u >> (1u % 32u)) % 32u), 1u) % 32u), 1u);
    var var_1 = global0.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))) - global0.a.a) - -1313f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(893f * -501f) - _wgslsmith_f_op_f32(-global0.a.a))))));
    global3 = array<vec3<f32>, 30>();
    let var_3 = ~firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(~2147483647i, func_3(var_1.a, global0.c.x, Struct_5(786f, var_0.c, 69844u), vec4<bool>(true, true, global0.c.x, global0.c.x)), _wgslsmith_add_i32(u_input.a.x, -2147483647i)), countOneBits(vec3<i32>(-45940i, global0.b, 25099i)) >> ((vec3<u32>(var_0.b, var_0.b, var_0.b) & vec3<u32>(var_0.b, 23100u, var_0.b)) % vec3<u32>(32u))));
    return global0.a;
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1992f + -912f), _wgslsmith_f_op_f32(-global0.a.a))), -1027f)), u_input.a.x, !(!select(select(global0.c, vec2<bool>(global0.c.x, global0.c.x), global0.c.x), !vec2<bool>(global0.c.x, global0.c.x), func_1(false, 10090u, 4294967295u, true))));
    var var_0 = func_4(global0.b, func_2());
    var var_1 = vec4<i32>(11610i, -global0.b, global0.b, 1i);
    var var_2 = 1u;
    global1 = array<Struct_2, 22>();
    let var_3 = var_1.wzw;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.a + 608f), -462f, 679f, _wgslsmith_f_op_f32(f32(-1f) * -1184f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -529f, -1000f, 1166f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, -335f, 562f, 1284f)), global0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -1000f, global0.a.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -233f, global0.a.a, global0.a.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(15631u, 79373u, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.x - -806f))))), min(vec3<i32>(~firstLeadingBit(2147483647i), max(reverseBits(-1i), 4355i), countOneBits(-2147483647i)), -countOneBits(vec3<i32>(var_1.x, -4820i, 1i)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))));
}

