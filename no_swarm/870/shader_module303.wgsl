struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: i32;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<u32>(4294967295u, 1u, 143790u), vec3<f32>(1267f, 1751f, -456f), 2147483647i, vec4<u32>(1u, 298u, 4294967295u, 4294967295u), vec4<f32>(-1774f, 1093f, 1000f, -1436f)), Struct_1(vec3<u32>(1u, 21728u, 4294967295u), vec3<f32>(551f, -1000f, 377f), i32(-2147483648), vec4<u32>(74320u, 75566u, 14328u, 1u), vec4<f32>(-154f, 448f, -129f, 576f)), Struct_1(vec3<u32>(0u, 4693u, 20670u), vec3<f32>(-1416f, 1606f, -1084f), 0i, vec4<u32>(1174u, 20446u, 71422u, 4294967295u), vec4<f32>(825f, 1715f, -1040f, -834f)), Struct_1(vec3<u32>(35605u, 1u, 11540u), vec3<f32>(656f, 1000f, -470f), -1i, vec4<u32>(4294967295u, 1u, 1u, 56498u), vec4<f32>(-155f, -842f, 1316f, 852f)), Struct_1(vec3<u32>(1u, 1u, 0u), vec3<f32>(1000f, 389f, 1022f), 22492i, vec4<u32>(3241u, 4294967295u, 1u, 36626u), vec4<f32>(-1164f, 775f, -1540f, -753f)), Struct_1(vec3<u32>(0u, 32996u, 0u), vec3<f32>(-2205f, 1331f, -1039f), i32(-2147483648), vec4<u32>(4294967295u, 0u, 27227u, 1u), vec4<f32>(-378f, -975f, -1000f, 177f)), Struct_1(vec3<u32>(1u, 0u, 18909u), vec3<f32>(-1019f, 370f, -136f), 24646i, vec4<u32>(25733u, 1u, 25604u, 0u), vec4<f32>(-1046f, 542f, 485f, 1266f)), Struct_1(vec3<u32>(70893u, 52702u, 0u), vec3<f32>(1112f, -1534f, -1081f), 17538i, vec4<u32>(0u, 30856u, 1u, 1u), vec4<f32>(787f, 299f, -280f, 1000f)), Struct_1(vec3<u32>(48451u, 22304u, 29315u), vec3<f32>(-268f, -1000f, 896f), 20408i, vec4<u32>(112065u, 4294967295u, 1u, 1u), vec4<f32>(-320f, 1274f, 434f, -1048f)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(-160f, 1401f, 1862f), 2147483647i, vec4<u32>(18056u, 46857u, 43520u, 4294967295u), vec4<f32>(-591f, 326f, 724f, -431f)), Struct_1(vec3<u32>(15423u, 4294967295u, 72466u), vec3<f32>(-528f, -969f, 1000f), 0i, vec4<u32>(1785u, 0u, 1u, 4294967295u), vec4<f32>(-1047f, 1654f, 816f, 1324f)), Struct_1(vec3<u32>(0u, 15669u, 0u), vec3<f32>(151f, 844f, 633f), -1i, vec4<u32>(83873u, 1u, 13329u, 52959u), vec4<f32>(-1992f, 658f, 254f, 1134f)), Struct_1(vec3<u32>(9472u, 0u, 1u), vec3<f32>(318f, -991f, 681f), 18651i, vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<f32>(-364f, 1000f, -985f, -1481f)), Struct_1(vec3<u32>(36954u, 46380u, 0u), vec3<f32>(110f, -878f, -189f), 1i, vec4<u32>(8356u, 1u, 3621u, 35923u), vec4<f32>(-1316f, -517f, 843f, 1094f)), Struct_1(vec3<u32>(0u, 1u, 91813u), vec3<f32>(-561f, -504f, 262f), 2147483647i, vec4<u32>(53832u, 1u, 56968u, 1u), vec4<f32>(184f, -602f, -1598f, -247f)), Struct_1(vec3<u32>(1u, 1u, 0u), vec3<f32>(1000f, -1101f, -369f), 23876i, vec4<u32>(12062u, 0u, 60767u, 4294967295u), vec4<f32>(1480f, 1592f, 671f, 2271f)), Struct_1(vec3<u32>(41990u, 76501u, 16556u), vec3<f32>(182f, -2009f, 649f), -1i, vec4<u32>(4294967295u, 3337u, 9652u, 51404u), vec4<f32>(-136f, -1051f, -350f, 1000f)), Struct_1(vec3<u32>(1u, 15240u, 41172u), vec3<f32>(-935f, -329f, 219f), -33797i, vec4<u32>(84946u, 4294967295u, 4294967295u, 0u), vec4<f32>(642f, 294f, 898f, 210f)), Struct_1(vec3<u32>(33804u, 4294967295u, 83502u), vec3<f32>(1045f, 1000f, -894f), 20081i, vec4<u32>(1u, 14183u, 2435u, 34140u), vec4<f32>(-1503f, -1135f, 285f, -286f)), Struct_1(vec3<u32>(81620u, 50721u, 4294967295u), vec3<f32>(1218f, -250f, -490f), 2147483647i, vec4<u32>(20486u, 1u, 29697u, 528u), vec4<f32>(1563f, -148f, -689f, 175f)), Struct_1(vec3<u32>(0u, 21010u, 1u), vec3<f32>(1580f, -283f, 1192f), -13237i, vec4<u32>(48569u, 1u, 37506u, 4294967295u), vec4<f32>(-1876f, -142f, 1064f, 1000f)), Struct_1(vec3<u32>(0u, 17886u, 4294967295u), vec3<f32>(2283f, 1644f, -1380f), -32149i, vec4<u32>(4294967295u, 4294967295u, 13171u, 0u), vec4<f32>(-1000f, 2182f, 978f, -1305f)), Struct_1(vec3<u32>(36747u, 51990u, 0u), vec3<f32>(-885f, -1244f, 633f), 0i, vec4<u32>(27119u, 72739u, 15605u, 14203u), vec4<f32>(792f, -1760f, 590f, -950f)), Struct_1(vec3<u32>(0u, 66800u, 4294967295u), vec3<f32>(1383f, -1152f, -603f), 19627i, vec4<u32>(4294967295u, 805u, 54087u, 0u), vec4<f32>(-577f, -143f, -1000f, 366f)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<f32>(-639f, 1145f, -168f), 2147483647i, vec4<u32>(0u, 1u, 40175u, 51693u), vec4<f32>(-651f, -2618f, -1679f, -447f)), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(143f, 129f, 400f), 17818i, vec4<u32>(0u, 23823u, 10984u, 0u), vec4<f32>(2537f, 825f, 1037f, 748f)), Struct_1(vec3<u32>(13666u, 22979u, 4294967295u), vec3<f32>(435f, 1000f, -1577f), i32(-2147483648), vec4<u32>(0u, 13780u, 1u, 31837u), vec4<f32>(-1050f, -1023f, -360f, -1000f)), Struct_1(vec3<u32>(11026u, 4294967295u, 10727u), vec3<f32>(-464f, 386f, -2462f), i32(-2147483648), vec4<u32>(0u, 43945u, 4294967295u, 4294967295u), vec4<f32>(1391f, 315f, -1808f, 619f)), Struct_1(vec3<u32>(37402u, 65133u, 1u), vec3<f32>(-264f, 770f, 434f), -1i, vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<f32>(288f, 1000f, -1951f, 829f)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: i32) -> vec3<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(step(-125f, _wgslsmith_f_op_f32(-315f - -916f)))))), _wgslsmith_f_op_f32(f32(-1f) * -815f), -2100f);
    global0 = array<Struct_1, 2>();
    let var_1 = vec4<i32>(~(-1i), 1i, arg_0, arg_1.x);
    global0 = array<Struct_1, 2>();
    var var_2 = Struct_1(~vec3<u32>(40362u, 0u >> (0u % 32u), u_input.b) | _wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.a.x, 1u, 1u) | vec3<u32>(35345u, 1u, u_input.b)), vec3<u32>(~u_input.a.x, max(4294967295u, 1u), 4584u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, 1575f, -809f))) * vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-119f, 1537f, _wgslsmith_f_op_f32(round(1000f))))), 470i, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 3571u, u_input.b, 1u), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 71353u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 28106u, 0u), vec4<u32>(9170u, u_input.a.x, 1u, u_input.a.x)), max(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(38053u, u_input.b, 1u, 64993u))), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b, 38771u), u_input.a.x << (17369u % 32u), 1u, 5367u), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 59190u, u_input.b), vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1128f, -487f), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), -297f) - vec4<f32>(-166f, _wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1448f, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(141f, 212f, var_0.x, -792f))))))));
    return var_2.a;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: bool) -> vec4<f32> {
    global1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-abs(-60714i), abs(0i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(11108i, -3192i, 2147483647i), vec3<i32>(1i, 0i, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(-21096i, -43663i, -2147483647i), select(vec3<i32>(17359i, -2147483647i, 17984i), vec3<i32>(62942i, 0i, 0i), true))), -firstTrailingBit(~8052i)), vec4<i32>(_wgslsmith_sub_i32(-5245i, 24875i), -77230i, reverseBits(_wgslsmith_add_i32(1i, ~(-2147483647i))), 1i));
    var var_0 = Struct_1((~(~vec3<u32>(39863u, 46084u, 0u)) >> (select(select(vec3<u32>(u_input.a.x, arg_1, u_input.a.x), vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<bool>(arg_2, false, true)), vec3<u32>(u_input.a.x, 87669u, u_input.b), vec3<bool>(true, true, true)) % vec3<u32>(32u))) & func_3(_wgslsmith_div_i32(2147483647i, 2147483647i) >> (firstLeadingBit(21213u) % 32u), ~vec2<i32>(1i, 25625i), -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-108f, 1313f, 1275f) * vec3<f32>(-901f, -1827f, -229f)))))), -_wgslsmith_sub_i32(1i, ~0i) & _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(35853i, 2147483647i), vec2<i32>(-26215i, -36115i), vec2<bool>(false, true)), max(vec2<i32>(0i, -3997i), vec2<i32>(-4018i, -1i))), vec2<i32>(1i, 1i)), _wgslsmith_div_vec4_u32(vec4<u32>(select(u_input.b, arg_1 | 0u, arg_0), ~arg_1, _wgslsmith_dot_vec3_u32(~vec3<u32>(93070u, 16433u, 0u), vec3<u32>(u_input.a.x, 1u, 1u) ^ vec3<u32>(24795u, u_input.b, 0u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, arg_1), min(4294967295u, 1u))), max(vec4<u32>(u_input.b << (5748u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(20379u, 0u, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, 36180u, 4294967295u, 0u)), 42643u, 0u), vec4<u32>(abs(arg_1), ~3824u, arg_1, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, -1196f, 2315f, 1010f))))));
    let var_1 = 4294967295u <= ~(~_wgslsmith_sub_u32(u_input.a.x >> (u_input.b % 32u), var_0.a.x));
    global0 = array<Struct_1, 2>();
    var var_2 = -162f;
    return vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(f32(-1f) * -1861f)) - var_0.b.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = select(vec2<bool>(true, false), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, arg_2.x > 0i), !any(vec3<bool>(false, false, true))), !(arg_3.b.x <= _wgslsmith_f_op_f32(-arg_0.x)));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0));
    var_2 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(var_2.x * -390f), arg_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-423f + 834f))), _wgslsmith_f_op_f32(ceil(-532f)))))));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.b.x, -491f, 2007f, 348f), arg_3.e)))) - arg_0)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1460f, var_2.x)), _wgslsmith_f_op_f32(arg_0.x * arg_3.e.x)), _wgslsmith_f_op_vec4_f32(func_2(select(var_0.x, true, var_0.x), 0u, any(var_0))).x, arg_3.e.x, var_2.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(arg_3.e.x + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-arg_3.e.x)))));
    return arg_3.c;
}

fn func_1(arg_0: vec3<bool>) -> vec3<u32> {
    let var_0 = !vec3<bool>(arg_0.x && !(0u < u_input.a.x), true, any(select(!vec4<bool>(arg_0.x, arg_0.x, false, true), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, true))));
    var var_1 = max(~(-754i), -(countOneBits(2147483647i) >> (u_input.b % 32u)));
    let var_2 = _wgslsmith_div_i32(1i, func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-341f)), -730f, -552f, -1018f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-731f, 134f, 713f, -218f), vec4<f32>(1354f, 125f, 1803f, -682f))) - _wgslsmith_f_op_vec4_f32(func_2(false, u_input.b, false)))), select(firstTrailingBit(-2147483647i) << (~u_input.b % 32u), (0i << (u_input.b % 32u)) & -1i, !(!var_0.x)), vec2<i32>(~(~(-2147483647i)), 1i), Struct_1(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-681f)), _wgslsmith_f_op_f32(131f * 430f), _wgslsmith_div_f32(1638f, 100f)), -abs(-68956i), vec4<u32>(reverseBits(u_input.b), ~0u, u_input.a.x & 26695u, ~u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1047f, -1700f, 1792f, 826f) - vec4<f32>(-817f, 1061f, -1226f, -1000f))))));
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstLeadingBit(1u), 984u), 2u)];
    var var_4 = Struct_1(~(~(~(~var_3.a))), vec3<f32>(_wgslsmith_f_op_f32(exp2(1f)), var_3.b.x, var_3.e.x), _wgslsmith_add_i32(-var_3.c, reverseBits(~(-47210i))), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(select(1u, 22495u, true), u_input.b, ~19389u), var_3.d.yxy | var_3.d.xwz), _wgslsmith_clamp_u32(~3042u, 0u, var_3.d.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(53120u, 6170u, 92772u, var_3.d.x) | vec4<u32>(u_input.a.x, var_3.a.x, var_3.d.x, 78424u), ~vec4<u32>(1u, u_input.a.x, 25905u, 54130u), true), countOneBits(vec4<u32>(41154u, 59997u, u_input.b, u_input.a.x)) & ~var_3.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.e) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_3.e)))) + vec4<f32>(1f, _wgslsmith_f_op_f32(abs(var_3.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.e.x + 849f)), _wgslsmith_f_op_f32(-var_3.b.x))));
    return func_3(var_4.c, reverseBits(reverseBits(vec2<i32>(-42624i, -10354i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(-24976i, -47402i), vec2<i32>(var_3.c, var_4.c))) >> (~firstLeadingBit(vec2<u32>(14623u, 1165u)) % vec2<u32>(32u)), i32(-1i) * -16857i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_i32(-29773i, 4347i, abs(i32(-1i) * -18128i)) >> (~(~(u_input.a.x & 18069u)) % 32u);
    var var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(countOneBits(~8200i), -countOneBits(-1i)), 0i, abs(0i)), ~(~4294967295u), ~(func_1(vec3<bool>(false, true, true)) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(40203u, u_input.a.x, 60718u), vec3<u32>(0u, 2256u, 54736u)), max(vec3<u32>(18045u, u_input.a.x, u_input.b), vec3<u32>(14195u, 10429u, 11878u))) % vec3<u32>(32u))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(1i, 2147483647i, -4811i, 0i)), abs(vec4<i32>(-32589i, 14850i, -19689i, 24847i)) >> (vec4<u32>(u_input.a.x, 36444u, 24869u, u_input.a.x) % vec4<u32>(32u))), 1i, firstTrailingBit(42416i)));
}

