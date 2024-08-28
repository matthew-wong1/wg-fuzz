struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 18> = array<Struct_5, 18>(Struct_5(24762u, Struct_2(Struct_1(vec4<bool>(true, false, false, false), -526f, 655f), Struct_1(vec4<bool>(false, false, false, false), -1030f, -400f), Struct_1(vec4<bool>(true, true, false, true), -505f, -784f)), Struct_3(8398u, -63041i, Struct_2(Struct_1(vec4<bool>(false, false, true, true), -845f, 226f), Struct_1(vec4<bool>(false, true, false, true), -543f, -470f), Struct_1(vec4<bool>(false, false, false, true), 912f, 171f))), -456f), Struct_5(1u, Struct_2(Struct_1(vec4<bool>(false, false, false, false), 2425f, -253f), Struct_1(vec4<bool>(true, false, false, false), -1183f, -435f), Struct_1(vec4<bool>(false, true, false, false), 658f, 752f)), Struct_3(4294967295u, -54166i, Struct_2(Struct_1(vec4<bool>(false, false, true, true), -783f, -1283f), Struct_1(vec4<bool>(true, true, false, true), 1153f, 2369f), Struct_1(vec4<bool>(false, true, false, true), 1000f, -322f))), 1644f), Struct_5(4294967295u, Struct_2(Struct_1(vec4<bool>(false, false, true, false), 856f, 736f), Struct_1(vec4<bool>(false, true, true, true), -661f, 665f), Struct_1(vec4<bool>(true, false, false, true), -212f, -1872f)), Struct_3(1u, 0i, Struct_2(Struct_1(vec4<bool>(false, false, true, false), 158f, 214f), Struct_1(vec4<bool>(false, true, false, false), -764f, -1187f), Struct_1(vec4<bool>(true, false, true, false), 1000f, -662f))), 2001f), Struct_5(0u, Struct_2(Struct_1(vec4<bool>(true, true, false, false), 971f, -1138f), Struct_1(vec4<bool>(false, false, false, false), 1159f, 127f), Struct_1(vec4<bool>(false, false, false, true), -2047f, 1000f)), Struct_3(45706u, 0i, Struct_2(Struct_1(vec4<bool>(false, true, true, true), -760f, -1066f), Struct_1(vec4<bool>(true, false, false, false), -1127f, -927f), Struct_1(vec4<bool>(true, true, true, false), 2268f, -1000f))), -345f), Struct_5(76219u, Struct_2(Struct_1(vec4<bool>(false, false, false, true), 818f, 411f), Struct_1(vec4<bool>(false, false, false, true), -186f, -745f), Struct_1(vec4<bool>(false, true, true, false), 1248f, -1074f)), Struct_3(58252u, -4031i, Struct_2(Struct_1(vec4<bool>(false, true, false, true), -148f, 2603f), Struct_1(vec4<bool>(true, false, true, false), -1319f, -172f), Struct_1(vec4<bool>(false, true, false, false), -502f, 1000f))), 1252f), Struct_5(57567u, Struct_2(Struct_1(vec4<bool>(false, true, true, false), 371f, 1433f), Struct_1(vec4<bool>(true, true, true, true), 1016f, 502f), Struct_1(vec4<bool>(true, true, true, true), 257f, 1000f)), Struct_3(23162u, -1i, Struct_2(Struct_1(vec4<bool>(false, true, false, false), -209f, 768f), Struct_1(vec4<bool>(false, true, true, true), -284f, -422f), Struct_1(vec4<bool>(false, true, true, true), -3177f, -597f))), -678f), Struct_5(9910u, Struct_2(Struct_1(vec4<bool>(false, false, true, true), -115f, -1081f), Struct_1(vec4<bool>(true, false, true, true), 731f, 1488f), Struct_1(vec4<bool>(false, false, false, false), -468f, 315f)), Struct_3(1u, 7821i, Struct_2(Struct_1(vec4<bool>(false, false, true, true), -499f, 1090f), Struct_1(vec4<bool>(true, true, false, true), 1648f, 243f), Struct_1(vec4<bool>(true, false, false, true), -2212f, -290f))), 180f), Struct_5(4294967295u, Struct_2(Struct_1(vec4<bool>(true, true, true, true), 1897f, 1167f), Struct_1(vec4<bool>(false, false, false, false), -1124f, 1000f), Struct_1(vec4<bool>(true, true, false, false), 577f, 208f)), Struct_3(19013u, i32(-2147483648), Struct_2(Struct_1(vec4<bool>(false, true, false, false), 1000f, -1382f), Struct_1(vec4<bool>(false, true, true, true), 1143f, 1944f), Struct_1(vec4<bool>(false, false, false, true), 899f, 431f))), 428f), Struct_5(16723u, Struct_2(Struct_1(vec4<bool>(false, true, false, true), -1000f, -613f), Struct_1(vec4<bool>(true, true, false, false), -1000f, -128f), Struct_1(vec4<bool>(true, false, false, false), 1000f, 535f)), Struct_3(0u, 14465i, Struct_2(Struct_1(vec4<bool>(true, true, true, false), -1000f, 859f), Struct_1(vec4<bool>(true, true, true, false), 721f, -1270f), Struct_1(vec4<bool>(false, false, false, false), 1257f, 492f))), 1391f), Struct_5(1u, Struct_2(Struct_1(vec4<bool>(false, false, false, true), 2895f, -397f), Struct_1(vec4<bool>(true, true, false, false), 997f, -498f), Struct_1(vec4<bool>(true, false, true, false), -1326f, -468f)), Struct_3(4294967295u, -1i, Struct_2(Struct_1(vec4<bool>(true, false, true, true), -1966f, -1002f), Struct_1(vec4<bool>(true, true, true, false), -1303f, -523f), Struct_1(vec4<bool>(false, false, true, false), 1218f, 764f))), 1115f), Struct_5(6501u, Struct_2(Struct_1(vec4<bool>(true, false, true, false), 1604f, 1227f), Struct_1(vec4<bool>(true, true, false, true), 1241f, 1192f), Struct_1(vec4<bool>(true, false, true, false), 1100f, -890f)), Struct_3(4294967295u, -16148i, Struct_2(Struct_1(vec4<bool>(true, false, false, false), -1220f, -947f), Struct_1(vec4<bool>(false, true, false, true), 1581f, 523f), Struct_1(vec4<bool>(false, true, false, false), -1367f, 1084f))), 386f), Struct_5(1u, Struct_2(Struct_1(vec4<bool>(false, true, false, false), -1344f, -881f), Struct_1(vec4<bool>(false, true, false, false), 653f, -459f), Struct_1(vec4<bool>(false, true, true, false), -1696f, -146f)), Struct_3(19009u, 2147483647i, Struct_2(Struct_1(vec4<bool>(true, true, false, false), -1000f, 318f), Struct_1(vec4<bool>(false, true, false, false), 446f, -874f), Struct_1(vec4<bool>(true, false, false, true), -180f, 928f))), 1000f), Struct_5(4294967295u, Struct_2(Struct_1(vec4<bool>(true, false, true, false), -556f, 222f), Struct_1(vec4<bool>(true, true, true, true), -1153f, 1524f), Struct_1(vec4<bool>(true, true, false, true), -1000f, -568f)), Struct_3(546u, 17203i, Struct_2(Struct_1(vec4<bool>(true, false, true, false), -586f, 149f), Struct_1(vec4<bool>(false, true, false, false), 142f, -1197f), Struct_1(vec4<bool>(false, true, true, false), 857f, -659f))), 1577f), Struct_5(1u, Struct_2(Struct_1(vec4<bool>(true, false, true, false), -165f, -2157f), Struct_1(vec4<bool>(false, false, false, true), 512f, 1165f), Struct_1(vec4<bool>(false, true, true, false), -1358f, 295f)), Struct_3(52234u, 0i, Struct_2(Struct_1(vec4<bool>(false, true, false, true), -1000f, 366f), Struct_1(vec4<bool>(false, false, false, false), 852f, -1033f), Struct_1(vec4<bool>(false, true, true, false), -1684f, -1552f))), 266f), Struct_5(58067u, Struct_2(Struct_1(vec4<bool>(true, true, false, true), -1497f, -1755f), Struct_1(vec4<bool>(false, false, true, false), -1000f, 1512f), Struct_1(vec4<bool>(false, true, true, true), -1502f, 1886f)), Struct_3(34662u, 17861i, Struct_2(Struct_1(vec4<bool>(true, true, true, true), -1302f, -667f), Struct_1(vec4<bool>(true, true, false, false), -223f, 517f), Struct_1(vec4<bool>(true, false, true, true), -1000f, 609f))), -1148f), Struct_5(93128u, Struct_2(Struct_1(vec4<bool>(false, false, true, false), 589f, -1066f), Struct_1(vec4<bool>(false, false, true, false), 1000f, -1760f), Struct_1(vec4<bool>(false, false, true, true), 1068f, 1285f)), Struct_3(81595u, -29817i, Struct_2(Struct_1(vec4<bool>(true, true, false, true), -118f, 486f), Struct_1(vec4<bool>(false, true, false, true), 1488f, 775f), Struct_1(vec4<bool>(true, false, true, true), -1000f, 143f))), -1129f), Struct_5(11802u, Struct_2(Struct_1(vec4<bool>(false, true, false, false), 600f, -475f), Struct_1(vec4<bool>(false, true, true, false), 197f, 615f), Struct_1(vec4<bool>(true, false, false, true), -1000f, -816f)), Struct_3(4294967295u, -1i, Struct_2(Struct_1(vec4<bool>(false, false, false, true), 1000f, -179f), Struct_1(vec4<bool>(true, false, false, false), 114f, -1073f), Struct_1(vec4<bool>(true, false, false, true), -880f, 623f))), 1384f), Struct_5(4294967295u, Struct_2(Struct_1(vec4<bool>(false, false, true, true), -817f, -2438f), Struct_1(vec4<bool>(false, false, true, true), 1030f, 2392f), Struct_1(vec4<bool>(true, true, false, true), 325f, 890f)), Struct_3(50417u, -11485i, Struct_2(Struct_1(vec4<bool>(false, true, true, true), -1029f, 771f), Struct_1(vec4<bool>(false, true, true, false), 186f, -108f), Struct_1(vec4<bool>(true, true, false, true), 503f, -395f))), 1000f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(120f)) * _wgslsmith_f_op_f32(ceil(-928f))))), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(435f, 1245f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(721f + 1575f))) - _wgslsmith_div_f32(680f, -479f)))), 1562f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0, vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec4_i32(reverseBits(firstTrailingBit(vec4<i32>(1i, -49523i, arg_0.x, arg_0.x))) ^ (_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, 28014i, 7294i, -14959i), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, -11633i, arg_0.x, arg_0.x)) | vec4<i32>(16563i, 0i, arg_0.x, 626i)), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, arg_0.x, -2147483647i, arg_0.x)), vec4<i32>(0i, reverseBits(-52612i), i32(-1i) * -2147483647i, arg_0.x))));
    var var_3 = arg_0.x;
    var_3 = var_2.x;
    return var_0.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: f32, arg_3: vec2<bool>) -> vec3<i32> {
    global0 = array<Struct_5, 18>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1069f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(abs(vec3<i32>(2147483647i, -37171i, arg_1.c.b) << (vec3<u32>(arg_1.a, 1u, arg_1.a) % vec3<u32>(32u))))))), _wgslsmith_f_op_f32(round(arg_0.x)));
    global0 = array<Struct_5, 18>();
    let var_1 = arg_1.c.c.a.a.x;
    return _wgslsmith_mult_vec3_i32(select(vec3<i32>(abs(abs(-1500i)), arg_1.c.b, (-1i >> (arg_1.c.a % 32u)) | select(arg_1.c.b, 35732i, true)), ~vec3<i32>(0i, 0i, arg_1.c.b), (arg_3.x | var_1) & true), vec3<i32>(arg_1.c.b, 1i, countOneBits(arg_1.c.b)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = true;
    var var_1 = countOneBits(_wgslsmith_add_vec3_i32(func_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-arg_1.c), arg_1.b), global0[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-673f)))), vec2<bool>(true, true)), countOneBits(-abs(vec3<i32>(-52843i, 2147483647i, 21601i)))));
    var_1 = abs(~abs(vec3<i32>(-35067i, var_1.x, 2147483647i))) & -vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(-22065i, var_1.x), -2237i), abs(-var_1.x), var_1.x);
    var_0 = true;
    var var_2 = Struct_1(!arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-336f)) + -869f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-513f))));
    return Struct_2(Struct_1(arg_1.a, var_2.b, -508f), arg_1, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(42462u, Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2475f - -857f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-710f, 1082f))), _wgslsmith_f_op_f32(floor(-1312f))));
    global0 = array<Struct_5, 18>();
    let var_1 = var_0.c.a.x;
    global0 = array<Struct_5, 18>();
    global0 = array<Struct_5, 18>();
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.b))), var_0.a.c, any(var_0.c.a.zw)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~2147483647i, -6437i, -6919i));
}

