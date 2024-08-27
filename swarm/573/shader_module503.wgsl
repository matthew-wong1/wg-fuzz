struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -381f;

var<private> global1: array<vec4<i32>, 18>;

var<private> global2: bool = true;

var<private> global3: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(-1000f, -1214f, 1287f, -1539f), vec4<f32>(1000f, -1264f, -786f, -1438f), vec4<f32>(777f, -499f, 512f, 105f), vec4<f32>(-433f, 385f, 664f, -825f), vec4<f32>(819f, 124f, -410f, 964f), vec4<f32>(2519f, -1225f, -849f, 477f), vec4<f32>(1235f, 2563f, 828f, 454f), vec4<f32>(-993f, -477f, -573f, 1301f), vec4<f32>(-352f, -716f, 1224f, -1000f), vec4<f32>(294f, 457f, -262f, -578f), vec4<f32>(980f, -715f, 761f, -2611f), vec4<f32>(-832f, 321f, 640f, 224f), vec4<f32>(596f, 724f, -404f, -1139f), vec4<f32>(781f, 642f, 336f, -814f), vec4<f32>(-1000f, -1294f, -327f, 1288f), vec4<f32>(-651f, -508f, -1020f, 903f), vec4<f32>(-269f, -1312f, 251f, -318f), vec4<f32>(1373f, 403f, -1000f, 1167f), vec4<f32>(699f, 428f, 836f, 1000f), vec4<f32>(142f, 363f, 1741f, -1327f), vec4<f32>(-1311f, -189f, 806f, 1143f), vec4<f32>(571f, -1141f, -1467f, 1118f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global3 = array<vec4<f32>, 22>();
    let var_0 = select(select(vec2<bool>((2147483647i >> (arg_2.d % 32u)) >= ~30055i, true), !vec2<bool>(arg_0.b, arg_0.b), select(vec2<bool>(arg_0.b, any(vec2<bool>(true, true))), !select(vec2<bool>(true, false), vec2<bool>(arg_0.b, arg_0.b), arg_0.b), vec2<bool>(true, true))), select(!select(vec2<bool>(false, arg_0.b), select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, false)), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(false, arg_0.b), vec2<bool>(false, true))), !vec2<bool>(arg_0.b, arg_0.b | true), !select(select(vec2<bool>(true, arg_0.b), vec2<bool>(true, arg_0.b), arg_0.b), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, arg_0.b)), vec2<bool>(true, true))), !(all(vec3<bool>(true, arg_0.b, true)) && true) | false);
    let var_1 = ~1u;
    global3 = array<vec4<f32>, 22>();
    global1 = array<vec4<i32>, 18>();
    return _wgslsmith_mult_i32(arg_2.b, _wgslsmith_div_i32(arg_1.a.a, _wgslsmith_dot_vec3_i32(select(countOneBits(vec3<i32>(0i, arg_2.a, arg_1.b.b)), vec3<i32>(arg_1.b.b, arg_1.b.a, 549i) << (vec3<u32>(0u, 24335u, 4294967295u) % vec3<u32>(32u)), select(vec3<bool>(true, false, arg_0.b), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, true))), ~vec3<i32>(arg_2.a, arg_1.b.b, -56585i))));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = Struct_3(-1495f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, true)) + 245f))) > _wgslsmith_f_op_f32(-1481f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))));
    let var_1 = vec2<i32>(func_3(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - var_0.a) + _wgslsmith_f_op_f32(var_0.a - arg_0.c.x)), true || all(vec3<bool>(var_0.b, var_0.b, var_0.b))), Struct_2(Struct_1(arg_0.b | arg_0.b, arg_0.b, _wgslsmith_f_op_vec3_f32(-arg_0.c), u_input.a), Struct_1(_wgslsmith_sub_i32(arg_0.a, 1i), ~(-1i), vec3<f32>(arg_0.c.x, arg_0.c.x, 794f), _wgslsmith_add_u32(arg_0.d, 12697u)), max(~0u, _wgslsmith_sub_u32(4294967295u, u_input.a))), arg_0), ~arg_0.b);
    var var_2 = Struct_2(Struct_1(var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, 1i, 2147483647i, var_1.x), vec4<i32>(-1i, -2147483647i, arg_0.a, arg_0.b)), _wgslsmith_sub_i32(-1i, arg_0.b)), var_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.c.x, 932f)), 1957f, _wgslsmith_f_op_f32(round(var_0.a))) - arg_0.c), _wgslsmith_sub_u32(arg_0.d, 1u)), arg_0, _wgslsmith_dot_vec2_u32(reverseBits(abs(vec2<u32>(10510u, 4294967295u))), ~(~vec2<u32>(arg_0.d, 43566u) << (countOneBits(vec2<u32>(arg_0.d, 14659u)) % vec2<u32>(32u)))));
    global3 = array<vec4<f32>, 22>();
    global2 = -80460i >= ~var_1.x;
    return vec3<bool>(true, var_0.b, false);
}

fn func_4(arg_0: vec3<bool>) -> f32 {
    let var_0 = select(all(!vec2<bool>(arg_0.x, false)) & !arg_0.x, !(0u == u_input.a), true);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-499f * _wgslsmith_f_op_f32(-1f))));
    let var_2 = Struct_2(Struct_1(~_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-9115i, -48333i, 10319i)), abs(vec3<i32>(-75676i, 2147483647i, -2147483647i))), func_3(Struct_3(_wgslsmith_f_op_f32(-766f * -627f), true), Struct_2(Struct_1(1i, 36353i, vec3<f32>(-1098f, -1000f, 1093f), 30840u), Struct_1(0i, 0i, vec3<f32>(-1000f, 406f, -644f), u_input.a), 29264u), Struct_1(1i, ~(-1i), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(265f, 1081f, 1174f))), ~u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1703f, 564f, -1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(773f, 223f, -573f))), _wgslsmith_sub_u32(u_input.a >> (u_input.a % 32u), _wgslsmith_mod_u32(4294967295u, u_input.a)) & max(u_input.a, min(u_input.a, 34597u))), Struct_1(firstTrailingBit(countOneBits(abs(1i))), _wgslsmith_mod_i32(2147483647i, -73478i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1451f, -1000f, 302f) - vec3<f32>(1f, 1f, 1f)), 47746u), 0u);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1762f - var_2.a.c.x) - -406f), true);
    var var_4 = ~vec3<u32>(4294967295u, var_2.c, ~1u);
    return var_2.a.c.x;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(11765i, -2530i, vec3<f32>(628f, -134f, 871f), arg_2)))), _wgslsmith_f_op_f32(floor(-1581f))))), arg_0);
    global1 = array<vec4<i32>, 18>();
    global1 = array<vec4<i32>, 18>();
    let var_1 = select(!select(!vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b), !(!vec4<bool>(false, arg_0, false, arg_0)), true), select(!(!select(vec4<bool>(true, arg_0, arg_0, var_0.b), vec4<bool>(false, false, false, arg_0), arg_0)), vec4<bool>(true, true, false, !arg_0), !(!(!vec4<bool>(false, var_0.b, false, false)))), true);
    global0 = _wgslsmith_f_op_f32(trunc(var_0.a));
    return Struct_1(-1i, 1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1886f), _wgslsmith_f_op_f32(f32(-1f) * -1105f)), _wgslsmith_f_op_f32(619f * -840f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, -1322f, true)) - _wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, var_0.a)), _wgslsmith_f_op_f32(floor(-1411f)), var_0.a), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), -292f))), abs(firstLeadingBit(arg_2)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3) -> f32 {
    let var_0 = arg_0;
    let var_1 = 26997i;
    var var_2 = abs(_wgslsmith_mod_vec3_i32(select(-(~vec3<i32>(arg_0.b.b, -11332i, -31397i)), vec3<i32>(_wgslsmith_clamp_i32(var_0.b.b, var_0.b.a, -43158i), -1987i, -var_0.b.a), vec3<bool>(true, true, all(vec4<bool>(arg_2.b, false, true, true)))), ~(-select(vec3<i32>(arg_0.a.a, 0i, var_1), vec3<i32>(4098i, var_1, var_1), vec3<bool>(arg_2.b, arg_2.b, arg_2.b)))));
    let var_3 = max(~(~(~(~vec4<u32>(arg_0.a.d, arg_0.c, u_input.a, 1u)))), ~vec4<u32>(var_0.b.d, 0u, abs(~u_input.a), var_0.c));
    let var_4 = !(!(!any(select(vec3<bool>(arg_2.b, false, true), vec3<bool>(true, true, true), vec3<bool>(arg_2.b, false, true)))));
    return var_0.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-(((vec3<i32>(-533i, 556i, -27988i) << (vec3<u32>(4294967295u, u_input.a, 25725u) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, -63369i), vec3<i32>(1i, 0i, 0i))) & countOneBits(vec3<i32>(1i, 1i, 1i))));
    let var_1 = all(!vec4<bool>(all(vec2<bool>(true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), true, true));
    global2 = true;
    var var_2 = _wgslsmith_f_op_f32(-265f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(-2147483647i, -2147483647i, vec3<f32>(700f, -524f, -586f), u_input.a), func_1(var_1, vec2<u32>(45235u, u_input.a), u_input.a), ~u_input.a), vec2<bool>(true, true), Struct_3(_wgslsmith_f_op_f32(abs(1000f)), u_input.a >= 13070u)))));
    global1 = array<vec4<i32>, 18>();
    global3 = array<vec4<f32>, 22>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(517f)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(18257u, u_input.a), ~(~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, u_input.a), vec4<u32>(24171u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(784f, _wgslsmith_div_f32(var_3, 1000f))), 1626f))), var_0);
}

