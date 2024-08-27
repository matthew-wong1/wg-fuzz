struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<f32>(-816f, -1203f), vec4<f32>(1155f, -567f, -251f, 153f), vec4<f32>(-1469f, -807f, 1000f, -227f)), Struct_2(vec2<f32>(-913f, -535f), vec4<f32>(-1377f, -1370f, -2356f, -2375f), vec4<f32>(-864f, -708f, 1216f, 807f)), Struct_2(vec2<f32>(865f, 1233f), vec4<f32>(-129f, 1018f, 1525f, -842f), vec4<f32>(207f, -1723f, 1057f, -434f)), Struct_2(vec2<f32>(-1784f, -535f), vec4<f32>(499f, 572f, 1329f, -623f), vec4<f32>(1043f, -1249f, 950f, -254f)), Struct_2(vec2<f32>(458f, -425f), vec4<f32>(-1000f, 508f, 1577f, 1002f), vec4<f32>(757f, 1000f, 1493f, -225f)), Struct_2(vec2<f32>(-1583f, 676f), vec4<f32>(-1039f, -2498f, -545f, 667f), vec4<f32>(854f, -110f, -2077f, -1036f)), Struct_2(vec2<f32>(372f, 190f), vec4<f32>(-170f, 1148f, -475f, 1000f), vec4<f32>(1153f, 808f, -175f, 972f)), Struct_2(vec2<f32>(1666f, -1191f), vec4<f32>(703f, 1995f, 1392f, 134f), vec4<f32>(796f, -929f, -1000f, -396f)), Struct_2(vec2<f32>(953f, 1191f), vec4<f32>(-1372f, -551f, -118f, -851f), vec4<f32>(-1674f, 640f, -3014f, -1000f)), Struct_2(vec2<f32>(-1084f, -749f), vec4<f32>(1188f, -687f, 1149f, 1000f), vec4<f32>(533f, -772f, -854f, -1813f)), Struct_2(vec2<f32>(-1202f, 2371f), vec4<f32>(-572f, 482f, 379f, 337f), vec4<f32>(1051f, -136f, -806f, 704f)), Struct_2(vec2<f32>(1181f, 1521f), vec4<f32>(758f, -1346f, 1880f, -1543f), vec4<f32>(1250f, -712f, 716f, -662f)), Struct_2(vec2<f32>(-517f, 131f), vec4<f32>(1361f, 167f, 1040f, -1755f), vec4<f32>(-1113f, 1952f, 351f, -1138f)), Struct_2(vec2<f32>(-302f, 192f), vec4<f32>(175f, -408f, -577f, 380f), vec4<f32>(684f, -1000f, 601f, -1390f)), Struct_2(vec2<f32>(1987f, -608f), vec4<f32>(-1925f, -1020f, -1126f, 636f), vec4<f32>(-164f, 2726f, -1888f, -1700f)), Struct_2(vec2<f32>(-363f, -776f), vec4<f32>(-675f, -603f, 1598f, -774f), vec4<f32>(871f, -1000f, 678f, -238f)), Struct_2(vec2<f32>(1000f, 1000f), vec4<f32>(644f, 321f, 2263f, 1000f), vec4<f32>(-2069f, 493f, -120f, -382f)), Struct_2(vec2<f32>(-150f, 368f), vec4<f32>(383f, 242f, 894f, -2375f), vec4<f32>(2130f, 173f, 1000f, 236f)), Struct_2(vec2<f32>(265f, 364f), vec4<f32>(-1000f, 928f, 289f, 2026f), vec4<f32>(1032f, -535f, 2427f, -768f)), Struct_2(vec2<f32>(1896f, 868f), vec4<f32>(1176f, -1687f, -906f, -597f), vec4<f32>(243f, -702f, 293f, 662f)), Struct_2(vec2<f32>(-711f, -959f), vec4<f32>(1197f, 941f, 1000f, -335f), vec4<f32>(454f, 523f, 444f, 1377f)), Struct_2(vec2<f32>(470f, -1000f), vec4<f32>(407f, -1421f, -362f, -1235f), vec4<f32>(-564f, 1752f, -220f, 583f)), Struct_2(vec2<f32>(-728f, 841f), vec4<f32>(-316f, -709f, -893f, 1000f), vec4<f32>(-891f, 1135f, 158f, -1000f)), Struct_2(vec2<f32>(652f, -970f), vec4<f32>(1000f, 331f, 830f, -776f), vec4<f32>(1410f, 1000f, 421f, 1000f)), Struct_2(vec2<f32>(1000f, -1199f), vec4<f32>(1000f, 104f, 839f, 318f), vec4<f32>(1702f, 617f, 195f, 2305f)), Struct_2(vec2<f32>(2791f, 882f), vec4<f32>(1923f, -1780f, 234f, 152f), vec4<f32>(-1505f, 248f, -1106f, 1302f)));

var<private> global2: array<u32, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> u32 {
    var var_0 = !vec2<bool>(arg_0.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), !(firstLeadingBit(arg_2.x) >= -arg_2.x));
    var var_1 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 14187i, 14940i, arg_2.x), vec4<i32>(1i, arg_2.x, u_input.b, 1729i), u_input.a), abs(u_input.a), select(max(u_input.a, vec4<i32>(0i, arg_2.x, u_input.a.x, 3076i)), -vec4<i32>(3432i, 2147483647i, -35689i, arg_2.x), !vec4<bool>(var_0.x, arg_1.x, var_0.x, true))), -u_input.a), _wgslsmith_sub_vec3_i32(vec3<i32>(min(2147483647i, arg_2.x) | select(u_input.a.x, u_input.a.x, false), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.wy), _wgslsmith_add_i32(arg_2.x, -2147483647i)), u_input.b), vec3<i32>(arg_2.x, select(select(1i, -8804i, arg_1.x), countOneBits(0i), all(vec2<bool>(false, var_0.x))), arg_2.x ^ ~u_input.b)), !vec2<bool>(var_0.x, arg_1.x), vec3<bool>(true, true, all(!(!arg_1))));
    let var_2 = 4294967295u ^ countOneBits(global2[_wgslsmith_index_u32(~(~261u) & u_input.c, 2u)]);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -762f))));
    var var_4 = Struct_1(var_1.a, -(abs(_wgslsmith_clamp_vec3_i32(arg_2, var_1.a.yzw, var_1.a.yxw)) & vec3<i32>(var_1.a.x ^ -2147483647i, 4644i, var_1.b.x)), select(select(vec2<bool>(arg_2.x != u_input.a.x, 425f < var_3), select(!vec2<bool>(false, var_0.x), arg_1.xz, select(vec2<bool>(arg_1.x, var_0.x), vec2<bool>(false, false), arg_1.xw)), any(!arg_1)), vec2<bool>(true, true), var_1.d.yy), arg_1.wzw);
    return _wgslsmith_sub_u32(_wgslsmith_mod_u32(~var_2, ~(var_2 & _wgslsmith_clamp_u32(1u, var_2, u_input.c))), 858u);
}

fn func_2() -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(abs(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, 1u), select(vec3<u32>(79109u, u_input.c, 41028u), vec3<u32>(90160u, 61345u, global2[_wgslsmith_index_u32(0u, 2u)]), true)))), 26u)];
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -131f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1775f * var_0.a.x))))) + -698f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)));
    var var_1 = global1[_wgslsmith_index_u32(1u, 26u)];
    global2 = array<u32, 2>();
    return global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_3(vec2<f32>(_wgslsmith_f_op_f32(floor(528f)), 219f), vec4<bool>(select(false, true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), true, true, all(vec3<bool>(true, true, true))), ~u_input.a.xwx), 2u)], 26u)];
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = arg_0.x;
    let var_1 = vec3<u32>(u_input.c, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, countOneBits(4294967295u), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(36279u, 2u)], 2u)]), _wgslsmith_mod_vec3_u32(~select(vec3<u32>(59082u, 1u, u_input.c), vec3<u32>(4294967295u, 42976u, u_input.c), true), vec3<u32>(~1u, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 2u)], 2u)], 4294967295u), 2u)], ~0u))), global2[_wgslsmith_index_u32(~6774u, 2u)]);
    let var_2 = func_2();
    var var_3 = true;
    let var_4 = Struct_1(vec4<i32>(~reverseBits(2147483647i) | (i32(-1i) * -arg_2.x), -arg_2.x, arg_2.x, -2147483647i), vec3<i32>(arg_0.x, 36581i, _wgslsmith_div_i32(arg_2.x, -countOneBits(52660i))), !select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), var_1.x == var_1.x), vec2<bool>(true, all(vec3<bool>(false, true, false)))), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))));
    return Struct_1(_wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(~var_4.a, var_4.a), vec4<i32>(-12481i, -27794i | ~arg_2.x, 72345i, arg_0.x)), vec3<i32>(-select(arg_0.x, _wgslsmith_sub_i32(1i, 14477i), var_4.c.x), _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(var_4.a.x, var_4.a.x, 8949i, -15775i)), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_4.a, vec4<i32>(arg_0.x, arg_2.x, u_input.b, arg_0.x)), 21816i, arg_2.x)), var_4.c, var_4.d);
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(u_input.a.ywx, func_2(), u_input.a.wwy);
    var var_1 = func_2();
    var_1 = func_2();
    global2 = array<u32, 2>();
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.x, var_1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f))), 1639f));
    return func_4(-firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.a.zyz, var_0.a.xxz) | vec3<i32>(2147483647i, var_0.b.x, -1i)), func_2(), _wgslsmith_mult_vec3_i32(u_input.a.zwx, vec3<i32>(36526i, _wgslsmith_mult_i32(var_0.b.x, reverseBits(-27765i)), ~u_input.a.x & _wgslsmith_dot_vec3_i32(var_0.b, vec3<i32>(10127i, var_0.a.x, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1414f;
    let var_0 = all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true))) & true;
    global2 = array<u32, 2>();
    global1 = array<Struct_2, 26>();
    let var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-472f * -984f), _wgslsmith_f_op_f32(-1349f * 1000f)) - -1297f), 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-338f - _wgslsmith_f_op_f32(round(362f))), -288f), _wgslsmith_f_op_f32(trunc(643f))));
    let var_3 = func_2();
    let var_4 = Struct_1(vec4<i32>(~_wgslsmith_sub_i32(var_1.a.x, var_1.a.x), 1i ^ var_1.a.x, select(~_wgslsmith_clamp_i32(11623i, -2147483647i, 2147483647i), ~var_1.a.x, u_input.b <= u_input.b), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 2147483647i)) << (~vec2<u32>(u_input.c, 33566u) % vec2<u32>(32u)), var_1.a.wx)), min(vec3<i32>(-var_1.a.x, abs(var_1.b.x), ~(-1i)) >> ((vec3<u32>(45103u, 1u, 45799u) ^ (vec3<u32>(1u, 1u, 1u) << (vec3<u32>(u_input.c, 62892u, 1u) % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(~vec3<i32>(0i, u_input.a.x, -30i) & -u_input.a.xxy, _wgslsmith_sub_vec3_i32(~vec3<i32>(var_1.a.x, u_input.a.x, u_input.a.x), min(vec3<i32>(1i, var_1.a.x, -1i), u_input.a.wyz)))), !var_1.c, vec3<bool>(any(select(vec4<bool>(true, var_1.d.x, var_1.d.x, var_1.d.x), select(vec4<bool>(false, var_1.d.x, var_0, false), vec4<bool>(true, false, false, false), vec4<bool>(false, var_1.c.x, var_0, true)), true)), true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-472f, var_2.x, var_2.x, var_2.x), vec4<f32>(var_2.x, var_3.b.x, var_2.x, 1359f), vec4<bool>(false, true, var_4.c.x, var_1.d.x)))) + var_2), var_4.a, abs(firstLeadingBit(~vec2<i32>(u_input.a.x, var_1.b.x))), firstLeadingBit(abs(u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.c.x)))))));
}

