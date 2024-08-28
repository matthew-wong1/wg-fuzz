struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(1037f, 40054u, vec2<bool>(true, true), -9280i, 111f), -1i, 15996u, 1000f), Struct_2(Struct_1(1050f, 9992u, vec2<bool>(true, true), 1i, 1000f), -42229i, 31821u, 1179f), Struct_2(Struct_1(384f, 54870u, vec2<bool>(false, false), 2147483647i, 400f), 10636i, 79363u, 1189f), Struct_2(Struct_1(1000f, 1u, vec2<bool>(true, true), 18286i, 1000f), 2147483647i, 18605u, -281f), Struct_2(Struct_1(-721f, 59623u, vec2<bool>(true, true), 2147483647i, -956f), 2147483647i, 4294967295u, 118f), Struct_2(Struct_1(-634f, 26898u, vec2<bool>(true, false), 65264i, -947f), 29392i, 1u, 114f), Struct_2(Struct_1(-305f, 88609u, vec2<bool>(false, false), 26525i, 431f), -41388i, 1u, -1035f), Struct_2(Struct_1(-211f, 1u, vec2<bool>(false, false), -34323i, 2529f), 1i, 26592u, -920f), Struct_2(Struct_1(-189f, 37627u, vec2<bool>(false, false), -18625i, -2301f), -22068i, 4294967295u, 1000f), Struct_2(Struct_1(358f, 34787u, vec2<bool>(false, true), 1i, -963f), -1i, 1u, -393f), Struct_2(Struct_1(154f, 21284u, vec2<bool>(true, true), 32213i, 477f), 44980i, 45503u, -1104f), Struct_2(Struct_1(565f, 4294967295u, vec2<bool>(true, true), i32(-2147483648), 783f), 1i, 10142u, -692f), Struct_2(Struct_1(-1130f, 0u, vec2<bool>(true, false), i32(-2147483648), -157f), 2147483647i, 3467u, 1785f), Struct_2(Struct_1(-118f, 0u, vec2<bool>(true, false), 2147483647i, -383f), 0i, 1461u, -718f), Struct_2(Struct_1(406f, 4294967295u, vec2<bool>(true, true), -7507i, 916f), 1i, 0u, -267f), Struct_2(Struct_1(537f, 11307u, vec2<bool>(false, true), i32(-2147483648), -1000f), -1i, 17837u, 932f), Struct_2(Struct_1(-333f, 1107u, vec2<bool>(false, true), -1i, 1000f), 2147483647i, 63964u, -515f), Struct_2(Struct_1(-835f, 1u, vec2<bool>(false, true), 52584i, 888f), 1i, 36231u, -1442f), Struct_2(Struct_1(-241f, 1u, vec2<bool>(false, false), 2147483647i, 479f), 1i, 4294967295u, 216f), Struct_2(Struct_1(238f, 0u, vec2<bool>(true, true), 25837i, -1290f), i32(-2147483648), 4294967295u, 1230f), Struct_2(Struct_1(294f, 67023u, vec2<bool>(false, false), 38079i, -322f), -12689i, 26061u, 1086f), Struct_2(Struct_1(1706f, 1u, vec2<bool>(false, true), 1i, 1529f), 28827i, 0u, -1285f), Struct_2(Struct_1(-1424f, 4294967295u, vec2<bool>(false, true), -39372i, 812f), -52954i, 0u, -1000f), Struct_2(Struct_1(213f, 4294967295u, vec2<bool>(false, true), 1i, -1130f), 0i, 76579u, -677f), Struct_2(Struct_1(-510f, 45767u, vec2<bool>(false, false), 1i, 284f), -1i, 10519u, 106f), Struct_2(Struct_1(-824f, 52085u, vec2<bool>(true, false), 8975i, 640f), i32(-2147483648), 85302u, 932f), Struct_2(Struct_1(-214f, 47013u, vec2<bool>(false, true), -21443i, 339f), 2147483647i, 1u, 679f), Struct_2(Struct_1(758f, 624u, vec2<bool>(false, true), 29969i, 2009f), 32533i, 0u, -1000f), Struct_2(Struct_1(540f, 58662u, vec2<bool>(false, false), -5051i, -1839f), 16194i, 0u, 429f), Struct_2(Struct_1(481f, 71314u, vec2<bool>(false, true), -13928i, -250f), 9144i, 7675u, -768f));

var<private> global1: f32 = -929f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 30>();
    let var_0 = select(select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), !(all(vec3<bool>(true, false, true)) | any(vec2<bool>(false, true)))), !vec3<bool>(1u >= _wgslsmith_dot_vec2_u32(vec2<u32>(3117u, 1u), vec2<u32>(80073u, 1u)), !any(vec2<bool>(false, false)), true), (u_input.b & -15613i) > u_input.b);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -700f))));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(max(~31665u, _wgslsmith_mult_u32(~4294967295u, ~10430u)), min(51400u, 1u) & firstTrailingBit(~33438u), firstLeadingBit(select(~2374u, ~52969u, all(vec4<bool>(true, false, var_0.x, false))))), _wgslsmith_mod_vec3_u32(countOneBits(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(31556u, 42068u, 1u), vec3<u32>(6574u, 99583u, 0u)))), vec3<u32>(reverseBits(_wgslsmith_mod_u32(1u, 4294967295u)), _wgslsmith_add_u32(~785u, firstLeadingBit(17903u)), ~abs(22779u))));
    let var_2 = global0[_wgslsmith_index_u32(~var_1.x, 30u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.d, var_2.d)) + var_2.d);
}

fn func_2() -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1672f);
    global0 = array<Struct_2, 30>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 279f, false))), _wgslsmith_f_op_f32(func_3())))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1546f))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -1375f))));
    let var_1 = !(!all(vec2<bool>(true, true)));
    let var_2 = 844f;
    return Struct_3(Struct_1(var_2, 0u, select(!(!vec2<bool>(var_1, true)), select(vec2<bool>(false, false), !vec2<bool>(var_1, var_1), !vec2<bool>(true, var_1)), 0i != _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i)), u_input.b & 1i, var_2), vec4<i32>(~u_input.a.x, -max(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(2147483647i, u_input.a.x)), u_input.b), ~u_input.b, u_input.b));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    global0 = array<Struct_2, 30>();
    let var_0 = Struct_1(130f, min(~_wgslsmith_clamp_u32(arg_0.a.b, 44696u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.b, 4294967295u, 95081u, arg_0.a.b), vec4<u32>(0u, 0u, arg_3.a.b, 0u))), 4294967295u), !func_2().a.c, _wgslsmith_sub_i32(-84770i, arg_0.a.d), _wgslsmith_f_op_f32(ceil(781f)));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1000f, -554f, arg_0.a.c.x)))))), _wgslsmith_div_u32(~(~9761u), 26015u), vec2<bool>(arg_3.b.x > ~var_0.d, true), var_0.d, arg_3.a.a), 0i, arg_0.a.b, arg_0.a.a);
    var var_2 = ~(~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_3.a.b, 41495u, 18244u, arg_3.a.b)), select(vec4<u32>(1u, arg_3.a.b, 4376u, arg_0.a.b), vec4<u32>(var_0.b, arg_3.a.b, 43768u, var_1.c), select(vec4<bool>(var_0.c.x, arg_3.a.c.x, arg_2, true), vec4<bool>(var_0.c.x, true, false, true), false)), ~vec4<u32>(arg_3.a.b, var_0.b, 0u, 69932u)));
    var_2 = ~(min(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.b, 1u, var_0.b), vec4<u32>(41427u, 4294967295u, 87733u, arg_3.a.b)) ^ ~vec4<u32>(arg_0.a.b, arg_0.a.b, var_0.b, var_0.b), firstLeadingBit(countOneBits(vec4<u32>(1u, 4294967295u, arg_3.a.b, 81312u)))) ^ _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_3.a.b, arg_3.a.b, var_2.x), vec4<u32>(21848u, 0u, var_1.a.b, arg_3.a.b)), abs(vec4<u32>(var_2.x, arg_3.a.b, arg_0.a.b, 108044u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(66888u, 1u, 1u, 1u), vec4<u32>(var_1.a.b, 62859u, var_1.a.b, var_0.b)) % vec4<u32>(32u))));
    return Struct_3(Struct_1(var_1.d, firstTrailingBit(0u), !func_2().a.c, firstLeadingBit(firstTrailingBit(1i)), -1088f), arg_0.b);
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_3 {
    global0 = array<Struct_2, 30>();
    return func_4(func_2(), true, select(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), true)), 0u < func_2().a.b, true), Struct_3(Struct_1(arg_1, 4294967295u, vec2<bool>(true, true), u_input.a.x, arg_1), -(~(vec4<i32>(49422i, arg_0, 0i, 23773i) >> (vec4<u32>(29343u, 13029u, 0u, 4294967295u) % vec4<u32>(32u))))));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = ((~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 24577u, arg_1.a.b), vec3<u32>(4067u, arg_1.a.b, arg_1.a.b)) << (min(~vec3<u32>(1u, arg_1.a.b, arg_1.a.b), countOneBits(vec3<u32>(4294967295u, 28104u, arg_3.a.b))) % vec3<u32>(32u))) << (vec3<u32>(10046u, arg_3.a.b, _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, arg_1.a.b), ~46912u)) % vec3<u32>(32u))) | ~(~(~vec3<u32>(34360u, 4294967295u, 0u)));
    var var_1 = arg_1.a.c.x;
    var var_2 = max(abs(_wgslsmith_mod_u32(max(min(arg_1.a.b, arg_3.a.b), func_2().a.b), _wgslsmith_add_u32(_wgslsmith_sub_u32(17262u, arg_1.a.b), 1u << (arg_3.a.b % 32u)))), ~(_wgslsmith_mult_u32(4294967295u, _wgslsmith_add_u32(arg_3.a.b, 47193u)) & var_0.x));
    global1 = _wgslsmith_f_op_f32(floor(986f));
    global0 = array<Struct_2, 30>();
    return !arg_2.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = select(vec2<bool>(all(func_5(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), Struct_3(Struct_1(-718f, 7841u, vec2<bool>(var_0, true), 40249i, -764f), vec4<i32>(16107i, 1i, u_input.b, 0i)), !vec3<bool>(false, true, var_0), func_1(21264i, -1033f))), var_0), !select(vec2<bool>(all(vec2<bool>(false, var_0)), false), vec2<bool>(select(false, var_0, var_0), true), true), vec2<bool>(select(true, false, func_4(Struct_3(Struct_1(1752f, 1u, vec2<bool>(var_0, var_0), 30996i, -232f), vec4<i32>(u_input.a.x, u_input.b, 26388i, u_input.b)), var_0 && false, true, func_4(Struct_3(Struct_1(2224f, 1u, vec2<bool>(false, var_0), 1i, 385f), vec4<i32>(u_input.b, 28487i, 2147483647i, 0i)), true, false, Struct_3(Struct_1(-1099f, 7952u, vec2<bool>(true, var_0), u_input.a.x, 1450f), vec4<i32>(25486i, u_input.b, 12210i, 48754i)))).a.c.x), true));
    global1 = 1000f;
    let var_2 = _wgslsmith_sub_vec4_u32(abs(abs(vec4<u32>(16549u, 47987u, 4294967295u, 2330u))), vec4<u32>(1u, 1u, 1u, 1u)) | ~reverseBits(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(6239u, 59711u, 53063u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 12932u, 4294967295u, 72365u), vec4<u32>(4187u, 63098u, 1u, 40656u), vec4<u32>(18516u, 4294967295u, 4294967295u, 0u))));
    let var_3 = vec2<u32>(48454u, 91975u);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -961f), abs(4294967295u), var_1, -2147483647i, 633f);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(2523f, _wgslsmith_f_op_f32(var_4.a - var_4.a), _wgslsmith_f_op_f32(exp2(var_4.e))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, -1596f, -1000f)), vec3<f32>(-1531f, -377f, var_4.e), vec3<bool>(var_1.x, true, var_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a * 609f), _wgslsmith_f_op_f32(-var_4.a)) * _wgslsmith_f_op_f32(abs(-2215f))), var_2.wzz, vec2<f32>(var_4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.e))));
}

