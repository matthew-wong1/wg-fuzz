struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 7> = array<i32, 7>(-1i, 0i, -35703i, 15053i, -15100i, 2147483647i, 7252i);

var<private> global2: array<Struct_1, 2>;

var<private> global3: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_1(vec4<f32>(1046f, -895f, -1000f, 830f), false), Struct_1(vec4<f32>(-324f, -1459f, 2279f, 1362f), true), Struct_2(7205u, Struct_1(vec4<f32>(-1059f, -1311f, 544f, -357f), false))), Struct_3(Struct_1(vec4<f32>(-950f, 948f, 2060f, 329f), false), Struct_1(vec4<f32>(390f, -670f, 165f, -452f), false), Struct_2(111943u, Struct_1(vec4<f32>(314f, 314f, 592f, -1658f), true))), Struct_3(Struct_1(vec4<f32>(-439f, -1000f, 975f, -703f), false), Struct_1(vec4<f32>(392f, 432f, 1000f, -1493f), true), Struct_2(0u, Struct_1(vec4<f32>(-113f, -1326f, -1000f, -794f), true))), Struct_3(Struct_1(vec4<f32>(1145f, 893f, -482f, -1255f), true), Struct_1(vec4<f32>(-536f, -407f, -1171f, 2160f), true), Struct_2(1u, Struct_1(vec4<f32>(-135f, 761f, 132f, 604f), false))), Struct_3(Struct_1(vec4<f32>(-392f, -444f, -1000f, 682f), false), Struct_1(vec4<f32>(-326f, 248f, -1182f, 360f), false), Struct_2(1u, Struct_1(vec4<f32>(-866f, -920f, 329f, -1512f), true))), Struct_3(Struct_1(vec4<f32>(-170f, -1562f, -879f, 983f), true), Struct_1(vec4<f32>(507f, -487f, -1354f, -271f), true), Struct_2(1u, Struct_1(vec4<f32>(-244f, 1360f, 1692f, 660f), true))), Struct_3(Struct_1(vec4<f32>(180f, -1294f, -1994f, -435f), false), Struct_1(vec4<f32>(605f, -613f, 1000f, 780f), true), Struct_2(4294967295u, Struct_1(vec4<f32>(-271f, -1086f, 1140f, 866f), false))), Struct_3(Struct_1(vec4<f32>(-367f, 1823f, 155f, 605f), false), Struct_1(vec4<f32>(-1131f, -1745f, -1424f, -373f), true), Struct_2(1u, Struct_1(vec4<f32>(1352f, 956f, 733f, -1000f), true))), Struct_3(Struct_1(vec4<f32>(-208f, -1000f, 900f, 379f), false), Struct_1(vec4<f32>(149f, 841f, -1674f, -521f), false), Struct_2(0u, Struct_1(vec4<f32>(2170f, -998f, -221f, -1000f), true))), Struct_3(Struct_1(vec4<f32>(1456f, -1415f, 947f, -527f), false), Struct_1(vec4<f32>(-1110f, 1064f, 1596f, -988f), true), Struct_2(55476u, Struct_1(vec4<f32>(1891f, 610f, -438f, 481f), true))), Struct_3(Struct_1(vec4<f32>(1238f, -935f, -1734f, -525f), false), Struct_1(vec4<f32>(621f, -250f, 395f, 1605f), false), Struct_2(12404u, Struct_1(vec4<f32>(1011f, -168f, 1016f, 742f), true))), Struct_3(Struct_1(vec4<f32>(1435f, 1247f, 1784f, -1264f), false), Struct_1(vec4<f32>(-1807f, 1068f, 1126f, 874f), true), Struct_2(35103u, Struct_1(vec4<f32>(1269f, 978f, 777f, -2783f), true))), Struct_3(Struct_1(vec4<f32>(283f, -216f, 254f, 469f), false), Struct_1(vec4<f32>(812f, -780f, 659f, -711f), false), Struct_2(70204u, Struct_1(vec4<f32>(1008f, 1105f, -1000f, 254f), false))), Struct_3(Struct_1(vec4<f32>(-866f, -178f, -229f, 1000f), true), Struct_1(vec4<f32>(-287f, 1490f, 1848f, 897f), false), Struct_2(40184u, Struct_1(vec4<f32>(1000f, 415f, -1226f, 974f), true))), Struct_3(Struct_1(vec4<f32>(190f, 550f, 297f, -1000f), true), Struct_1(vec4<f32>(-1943f, 472f, 268f, 2438f), false), Struct_2(56424u, Struct_1(vec4<f32>(-364f, 1315f, 899f, -1528f), false))), Struct_3(Struct_1(vec4<f32>(-308f, 1236f, -301f, -2359f), true), Struct_1(vec4<f32>(404f, 1000f, -573f, 267f), true), Struct_2(0u, Struct_1(vec4<f32>(-105f, -852f, 934f, -1000f), true))), Struct_3(Struct_1(vec4<f32>(-1002f, 788f, -1119f, 548f), true), Struct_1(vec4<f32>(869f, -599f, 1404f, 1993f), false), Struct_2(35393u, Struct_1(vec4<f32>(961f, 587f, -934f, -208f), true))), Struct_3(Struct_1(vec4<f32>(-529f, 677f, 749f, -1703f), false), Struct_1(vec4<f32>(-1267f, -1291f, 1137f, -246f), false), Struct_2(4294967295u, Struct_1(vec4<f32>(286f, -266f, -2048f, 317f), false))), Struct_3(Struct_1(vec4<f32>(1507f, -937f, -203f, 1368f), false), Struct_1(vec4<f32>(-1135f, -796f, 332f, 1894f), true), Struct_2(4294967295u, Struct_1(vec4<f32>(117f, -1013f, -1201f, 238f), false))), Struct_3(Struct_1(vec4<f32>(1485f, 531f, 345f, 914f), true), Struct_1(vec4<f32>(-2702f, -295f, -1061f, -192f), false), Struct_2(1u, Struct_1(vec4<f32>(300f, 1000f, -241f, -242f), false))), Struct_3(Struct_1(vec4<f32>(-1485f, 511f, 1025f, 1000f), false), Struct_1(vec4<f32>(-394f, 1587f, -1226f, -690f), false), Struct_2(0u, Struct_1(vec4<f32>(1295f, 1715f, -1488f, -1566f), true))), Struct_3(Struct_1(vec4<f32>(664f, -448f, -221f, 362f), true), Struct_1(vec4<f32>(1236f, -179f, -2065f, -1117f), false), Struct_2(8001u, Struct_1(vec4<f32>(-197f, -1000f, -1000f, -371f), false))), Struct_3(Struct_1(vec4<f32>(-1000f, 1000f, 988f, -493f), true), Struct_1(vec4<f32>(365f, 799f, -2849f, 268f), false), Struct_2(1u, Struct_1(vec4<f32>(183f, 738f, -2289f, -524f), false))), Struct_3(Struct_1(vec4<f32>(-1000f, -945f, -124f, -383f), false), Struct_1(vec4<f32>(377f, -334f, -821f, -1300f), false), Struct_2(0u, Struct_1(vec4<f32>(305f, -879f, -676f, -1339f), false))), Struct_3(Struct_1(vec4<f32>(161f, 2117f, 1000f, -1050f), false), Struct_1(vec4<f32>(-310f, -1000f, 877f, -1920f), true), Struct_2(4294967295u, Struct_1(vec4<f32>(-737f, 1548f, 425f, 703f), true))), Struct_3(Struct_1(vec4<f32>(-614f, 839f, -1739f, -1000f), true), Struct_1(vec4<f32>(854f, 566f, -1000f, -402f), true), Struct_2(35800u, Struct_1(vec4<f32>(1000f, 108f, 623f, 216f), true))), Struct_3(Struct_1(vec4<f32>(-206f, 976f, 1514f, -1228f), false), Struct_1(vec4<f32>(957f, 975f, -556f, -100f), false), Struct_2(26185u, Struct_1(vec4<f32>(870f, -481f, 1323f, -1109f), true))));

var<private> global4: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32) -> i32 {
    global2 = array<Struct_1, 2>();
    var var_0 = select(!(!(!vec4<bool>(true, global0.b.b, global0.b.b, true))), vec4<bool>(40603u < global0.a, global0.b.b, global0.b.b, any(select(select(vec4<bool>(true, global0.b.b, global0.b.b, false), vec4<bool>(global0.b.b, false, global0.b.b, global0.b.b), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, false, global0.b.b), vec4<bool>(false, global0.b.b, true, global0.b.b), vec4<bool>(true, global0.b.b, true, false)), global0.b.b != global0.b.b))), all(!select(!vec4<bool>(global0.b.b, false, global0.b.b, global0.b.b), vec4<bool>(true, false, false, global0.b.b), !vec4<bool>(false, global0.b.b, false, true))));
    var var_1 = global0.b.a.zw;
    let var_2 = 0u << (global0.a % 32u);
    var var_3 = vec2<u32>(min(_wgslsmith_add_u32(~var_2, var_2), u_input.a.x), _wgslsmith_sub_u32(~_wgslsmith_div_u32(~0u, 4294967295u & global0.a), ~reverseBits(30048u)));
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: i32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(604f, global0.b.a.x) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(501f, arg_0) - vec2<f32>(global0.b.a.x, arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, -2358f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1317f, global0.b.a.x)))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.a.wy * global0.b.a.ww)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(221f, -529f), vec2<f32>(arg_1, arg_1), vec2<bool>(global0.b.b, global0.b.b))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1767f, 1313f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, -109f)))))));
    let var_1 = global0.b.a;
    global4 = 1i | arg_2;
    var var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(firstLeadingBit(arg_2)), func_3(~(-31176i)), abs(arg_2 >> (global0.a % 32u))), (select(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], 43953i, 17148i), vec3<i32>(-11310i, 25638i, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec3<bool>(true, global0.b.b, false)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(12881u, global0.a, u_input.a.x), vec3<u32>(12781u, global0.a, u_input.a.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x)) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.a.x, global0.a, global0.a) % vec3<u32>(32u))), vec3<i32>(global1[_wgslsmith_index_u32(abs(0u), 7u)], func_3(0i) << (4294967295u % 32u), arg_2) & vec3<i32>(40817i, _wgslsmith_mod_i32(-5974i, arg_2 | global1[_wgslsmith_index_u32(8863u, 7u)]), 43471i));
    var var_3 = Struct_2(_wgslsmith_mult_u32(1u, 8002u), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_1 * -1000f), _wgslsmith_f_op_f32(-global0.b.a.x), -730f, _wgslsmith_f_op_f32(ceil(-1342f))))), arg_1 > var_1.x));
    return Struct_5(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global0.a, _wgslsmith_clamp_u32(global0.a, 1u, 1u) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global0.a, u_input.a.x), vec4<u32>(u_input.a.x, 4547u, 1u, 4294967295u)) % 32u)), 27u)], Struct_4(Struct_2(u_input.a.x, var_3.b), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.b.a), var_3.b.b), Struct_1(_wgslsmith_div_vec4_f32(global0.b.a, vec4<f32>(-1107f, var_1.x, var_1.x, -901f)), true)));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<u32>) -> Struct_5 {
    let var_0 = -vec2<i32>(_wgslsmith_clamp_i32(min(u_input.b, global1[_wgslsmith_index_u32(arg_0.a.c.a, 7u)]), _wgslsmith_mult_i32(2147483647i, 0i), u_input.b), firstLeadingBit(-14632i)) | (vec2<i32>(u_input.b, -(global1[_wgslsmith_index_u32(0u, 7u)] >> (u_input.a.x % 32u))) & -(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(29845i, global1[_wgslsmith_index_u32(48986u, 7u)]), vec2<i32>(34229i, u_input.b)) ^ abs(vec2<i32>(-1i, 0i))));
    var var_1 = Struct_4(arg_0.a.c, global2[_wgslsmith_index_u32(~(global0.a << (func_2(_wgslsmith_f_op_f32(-905f * -1225f), _wgslsmith_f_op_f32(select(-1108f, global0.b.a.x, arg_0.a.c.b.b)), -global1[_wgslsmith_index_u32(arg_2.x, 7u)]).b.a.a % 32u)), 2u)], Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b.b.a + vec4<f32>(arg_0.a.a.a.x, -899f, -207f, 1540f)), _wgslsmith_f_op_vec4_f32(-arg_0.a.c.b.a)), !global0.b.b));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -471f);
    global2 = array<Struct_1, 2>();
    var var_3 = func_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)) + global0.b.a.x), _wgslsmith_div_f32(_wgslsmith_div_f32(-873f, _wgslsmith_f_op_f32(sign(453f))), _wgslsmith_f_op_f32(-arg_0.a.a.a.x)), var_0.x).b.a.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + arg_0.a.a.a.x), global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.a.a, 10436u), vec3<u32>(arg_2.x, 22879u, 4246u))), 7u)]).a.c;
    return Struct_5(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(func_2(global0.b.a.x, -2350f, -29475i).b.a.a, u_input.a.x >> (var_1.a.a % 32u)), ~min(vec2<u32>(arg_0.a.c.a, arg_2.x), arg_2.zx)), 0u | arg_2.x), 27u)], func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_3.b.a.x, -1366f))))), _wgslsmith_f_op_f32(1625f * -323f), -53650i).b);
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: vec3<f32>, arg_3: bool) -> Struct_2 {
    global0 = arg_0.a.c;
    let var_0 = vec3<bool>(false, select(global0.b.b, !(func_4(Struct_5(arg_0.a, arg_0.b), arg_0.b.c.b, vec3<u32>(global0.a, u_input.a.x, u_input.a.x), u_input.a).b.c.b && global0.b.b), true), any(!(!select(vec3<bool>(global0.b.b, false, arg_0.b.b.b), vec3<bool>(false, arg_0.b.a.b.b, false), global0.b.b))));
    global3 = array<Struct_3, 27>();
    let var_1 = vec2<bool>(true, arg_0.b.b.b);
    var var_2 = arg_0;
    return func_4(arg_0, 6234u != arg_0.a.c.a, vec3<u32>(~u_input.a.x, 0u, 0u), u_input.a).a.c;
}

fn func_1() -> Struct_2 {
    global4 = u_input.b;
    var var_0 = -u_input.b;
    var var_1 = func_5(func_4(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -943f))), global0.b.a.x, -7656i), global0.b.b | true, vec3<u32>(~4294967295u, ~global0.a, 22711u), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, global0.a), global0.a), ~u_input.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(456f, -858f), _wgslsmith_div_f32(-407f, global0.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-147f)), global0.b.a.x)), true)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(731f, -416f, global0.b.a.x), vec3<f32>(global0.b.a.x, 435f, 300f))))), global0.b.b);
    global4 = -(-17371i << ((u_input.a.x | global0.a) % 32u));
    var var_2 = func_4(Struct_5(global3[_wgslsmith_index_u32(global0.a, 27u)], Struct_4(func_5(func_2(-574f, -271f, u_input.b), _wgslsmith_f_op_f32(floor(856f)), vec3<f32>(-790f, var_1.b.a.x, global0.b.a.x), true), func_5(func_2(global0.b.a.x, -464f, u_input.b), global0.b.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.a.x, -355f, 123f)), var_1.b.a.x >= 346f).b, Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.b.a), true != global0.b.b))), func_2(func_4(func_4(Struct_5(global3[_wgslsmith_index_u32(42573u, 27u)], Struct_4(Struct_2(25047u, global2[_wgslsmith_index_u32(4294967295u, 2u)]), Struct_1(global0.b.a, true), Struct_1(vec4<f32>(-1759f, global0.b.a.x, 537f, global0.b.a.x), true))), true, vec3<u32>(1u, 1u, 0u), _wgslsmith_mult_vec2_u32(u_input.a, u_input.a)), select(false, false, var_1.b.b) & any(vec2<bool>(var_1.b.b, var_1.b.b)), ~(vec3<u32>(19581u, global0.a, global0.a) >> (vec3<u32>(65529u, var_1.a, var_1.a) % vec3<u32>(32u))), abs(u_input.a) ^ vec2<u32>(global0.a, 4294967295u)).b.b.a.x, _wgslsmith_f_op_f32(global0.b.a.x + -1148f), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(global1[_wgslsmith_index_u32(30239u, 7u)], global1[_wgslsmith_index_u32(22633u, 7u)], -2609i)), -vec3<i32>(-35614i, -33321i, 0i), vec3<i32>(11655i, global1[_wgslsmith_index_u32(45695u, 7u)], -1i) >> (vec3<u32>(global0.a, u_input.a.x, var_1.a) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(global0.a, 7u)]), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -1i), vec3<i32>(global1[_wgslsmith_index_u32(global0.a, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], -15874i))))).b.c.b, vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(1u, global0.a)), var_1.a, min(u_input.a.x, _wgslsmith_add_u32(1u, var_1.a))), ~(~51089u), 0u), _wgslsmith_sub_vec2_u32(~min(vec2<u32>(global0.a, 5836u), vec2<u32>(u_input.a.x, 1u)) & u_input.a, u_input.a)).b.a;
    return func_4(func_2(-620f, -199f, u_input.b), true, firstTrailingBit(vec3<u32>(countOneBits(1u), ~firstTrailingBit(21764u), 1u)), vec2<u32>(func_4(Struct_5(global3[_wgslsmith_index_u32(~global0.a, 27u)], func_4(Struct_5(global3[_wgslsmith_index_u32(u_input.a.x, 27u)], Struct_4(Struct_2(var_1.a, global2[_wgslsmith_index_u32(16306u, 2u)]), var_2.b, global2[_wgslsmith_index_u32(0u, 2u)])), var_1.b.b, vec3<u32>(u_input.a.x, 65524u, var_1.a), vec2<u32>(74736u, 0u)).b), any(vec3<bool>(global0.b.b, var_1.b.b, true)), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, var_1.a, 24373u), abs(vec3<u32>(var_2.a, var_2.a, u_input.a.x))), ~vec2<u32>(u_input.a.x, var_2.a)).a.c.a, ~4294967295u)).b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 27>();
    var var_0 = vec3<bool>(false, !all(vec4<bool>(global0.b.b, global0.b.b, all(vec2<bool>(true, false)), global0.b.b)), any(select(!vec2<bool>(true, global0.b.b), vec2<bool>(!global0.b.b, true), select(select(vec2<bool>(global0.b.b, global0.b.b), vec2<bool>(false, global0.b.b), global0.b.b), !vec2<bool>(true, global0.b.b), true))));
    let var_1 = abs(abs(~u_input.b));
    global0 = func_1();
    var_0 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(global0.b.b, false, var_0.x), true), vec3<bool>(any(vec4<bool>(true, global0.b.b, false, false)), true, true), !select(vec3<bool>(false, var_0.x, true), vec3<bool>(global0.b.b, false, global0.b.b), global0.b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~4294967295u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(max(vec2<i32>(0i, var_1), vec2<i32>(22529i, 6721i))), ~vec2<i32>(15547i, -2097i)), ~vec2<i32>(abs(0i), var_1)));
}

