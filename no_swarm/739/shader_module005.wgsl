struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(4355u, 55800u), 17003i, true, -1450f);

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<u32>(4294967295u, 0u), 28900i, false, -631f), Struct_1(vec2<u32>(0u, 13793u), -41196i, false, -218f), Struct_1(vec2<u32>(95040u, 4294967295u), -11885i, false, -1000f), Struct_1(vec2<u32>(0u, 0u), 2147483647i, false, -917f), Struct_1(vec2<u32>(14660u, 20729u), -13943i, false, 498f), Struct_1(vec2<u32>(82534u, 7398u), 1643i, true, -1041f), Struct_1(vec2<u32>(4294967295u, 1u), i32(-2147483648), true, 777f), Struct_1(vec2<u32>(4294967295u, 0u), 0i, false, -313f), Struct_1(vec2<u32>(31807u, 83400u), -1i, true, 1597f), Struct_1(vec2<u32>(1u, 20021u), i32(-2147483648), true, -406f), Struct_1(vec2<u32>(45198u, 35791u), 1i, true, -247f), Struct_1(vec2<u32>(0u, 1u), 10849i, false, -776f), Struct_1(vec2<u32>(18339u, 1u), -1i, false, 1107f), Struct_1(vec2<u32>(0u, 4294967295u), -45446i, false, -1571f), Struct_1(vec2<u32>(77083u, 0u), -1i, false, 163f), Struct_1(vec2<u32>(12548u, 1u), -33159i, false, 1475f), Struct_1(vec2<u32>(0u, 1u), 5633i, false, -1000f), Struct_1(vec2<u32>(10456u, 0u), -23664i, false, 826f), Struct_1(vec2<u32>(1u, 1u), 0i, true, 1000f), Struct_1(vec2<u32>(4294967295u, 4294967295u), 18435i, true, -197f), Struct_1(vec2<u32>(5581u, 61325u), 1i, false, -1675f), Struct_1(vec2<u32>(17733u, 45961u), 21377i, false, -1703f), Struct_1(vec2<u32>(21117u, 1u), -1i, false, -148f));

var<private> global2: vec2<i32> = vec2<i32>(58985i, 13341i);

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec2<f32>(-3207f, -951f), -34499i), Struct_2(vec2<f32>(-2386f, 656f), i32(-2147483648)), Struct_2(vec2<f32>(214f, -1648f), 66481i), Struct_2(vec2<f32>(-1000f, -1324f), -83858i), Struct_2(vec2<f32>(732f, 1024f), 39663i), Struct_2(vec2<f32>(1090f, 1069f), -17803i), Struct_2(vec2<f32>(609f, 608f), i32(-2147483648)), Struct_2(vec2<f32>(-1246f, -552f), i32(-2147483648)), Struct_2(vec2<f32>(-1098f, 258f), 1i), Struct_2(vec2<f32>(406f, 710f), -17020i), Struct_2(vec2<f32>(700f, 1149f), -5054i), Struct_2(vec2<f32>(1000f, -426f), 1i), Struct_2(vec2<f32>(-148f, 752f), 43944i), Struct_2(vec2<f32>(-466f, -768f), 0i), Struct_2(vec2<f32>(-1461f, -502f), 16052i), Struct_2(vec2<f32>(539f, 1000f), 1i), Struct_2(vec2<f32>(-374f, -2932f), 12437i), Struct_2(vec2<f32>(-753f, 1756f), 1i), Struct_2(vec2<f32>(461f, -163f), 2147483647i), Struct_2(vec2<f32>(1381f, -975f), 2147483647i), Struct_2(vec2<f32>(-259f, -419f), -1i), Struct_2(vec2<f32>(369f, 641f), i32(-2147483648)), Struct_2(vec2<f32>(-1282f, -1448f), -1i), Struct_2(vec2<f32>(280f, -306f), -1i), Struct_2(vec2<f32>(-168f, 1507f), -62445i), Struct_2(vec2<f32>(1114f, 1327f), -1i), Struct_2(vec2<f32>(-1773f, -1287f), 2147483647i), Struct_2(vec2<f32>(-134f, 587f), 50148i), Struct_2(vec2<f32>(559f, 902f), -359i), Struct_2(vec2<f32>(1493f, -1475f), 0i), Struct_2(vec2<f32>(-1064f, -420f), -1i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> i32 {
    var var_0 = u_input.a;
    global1 = array<Struct_1, 23>();
    let var_1 = u_input.b;
    global2 = min(~_wgslsmith_sub_vec2_i32(~(~var_0.xw), _wgslsmith_sub_vec2_i32(vec2<i32>(-50110i, -13353i), u_input.d) >> (~global0.a % vec2<u32>(32u))), firstTrailingBit(max(vec2<i32>(-1i) * -vec2<i32>(-44351i, arg_0.b), countOneBits(vec2<i32>(global0.b, -1i)))));
    var var_2 = global0.d;
    return _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>((i32(-1i) * -17403i) >> (~abs(var_1) % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(0i >> (u_input.c % 32u), -22431i), ~firstLeadingBit(var_0.xx)), arg_0.b, ~abs(_wgslsmith_dot_vec3_i32(var_0.yxx, var_0.wzz))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_i32(~(~(-_wgslsmith_mult_vec3_i32(u_input.a.xxz, u_input.a.yxz))), u_input.a.zwz);
    let var_1 = -1000f;
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    global3 = array<Struct_2, 31>();
    return Struct_1(global0.a, _wgslsmith_mod_i32(1i, func_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, -938f)), _wgslsmith_div_i32(2147483647i, u_input.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - arg_0.a.x), _wgslsmith_f_op_f32(-160f - 866f)), abs(~u_input.c))), global0.c, -1122f);
}

fn func_1() -> f32 {
    global0 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, global0.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, 1781f)))), i32(-1i) * -(global0.b >> (global0.a.x % 32u))));
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.d + global0.d), _wgslsmith_f_op_f32(floor(global0.d))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.d, global0.d)))) * vec2<f32>(_wgslsmith_f_op_f32(select(global0.d, -752f, false)), global0.d))), !vec2<bool>(global0.c, all(vec2<bool>(false, global0.c)))));
    global2 = firstTrailingBit(u_input.d);
    global2 = u_input.a.wx | (vec2<i32>(-_wgslsmith_sub_i32(global0.b, -22372i), global0.b) ^ vec2<i32>(-11251i, 7526i ^ min(global0.b, u_input.d.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(475f, global0.d))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1468f, var_0.x)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -475f), var_0.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1726f)) - _wgslsmith_f_op_f32(sign(global0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-249f, -701f)), -u_input.d.x);
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(46527u, 21141u, 28787u))), max(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(76204u, global0.a.x, u_input.b)), ~vec3<u32>(global0.a.x, u_input.b, 1u)), select(vec3<u32>(u_input.c, global0.a.x, 9189u), abs(vec3<u32>(32267u, 50036u, u_input.b)), false))));
    global1 = array<Struct_1, 23>();
    var var_2 = Struct_1(~_wgslsmith_mod_vec2_u32(~var_1.zz, vec2<u32>(1u, 4294967295u)), _wgslsmith_sub_i32(~global0.b, u_input.a.x) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.zwz, vec3<i32>(48917i, 0i, -1i) ^ u_input.a.wxz), -(~u_input.a.zxx)), ((any(vec4<bool>(false, false, global0.c, false)) | !global0.c) || true) || true, _wgslsmith_f_op_f32(func_1()));
    var var_3 = ~1u;
    global2 = vec2<i32>(var_2.b, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, ~select(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a.x, 5876u, 1904u), vec3<u32>(4294967295u, u_input.b, 25301u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(24679u, var_2.a.x, 65810u), vec3<u32>(53277u, var_2.a.x, 5658u)), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))), vec3<f32>(global0.d, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a.x, global0.d, false)), _wgslsmith_div_f32(global0.d, var_2.d)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-167f, -657f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-563f - -233f) - var_0.a.x)))), _wgslsmith_mod_i32(global0.b >> (4294967295u % 32u), i32(-1i) * -44034i), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(54844u, var_1.x, u_input.c) ^ (vec3<u32>(0u, 4294967295u, 4294967295u) >> (vec3<u32>(global0.a.x, u_input.c, global0.a.x) % vec3<u32>(32u))), reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_1.x, global0.a.x), vec3<u32>(1484u, 27257u, 21354u), vec3<u32>(u_input.b, global0.a.x, u_input.c)))), ~vec3<u32>(u_input.b & u_input.b, 1u, 4294967295u)));
}

