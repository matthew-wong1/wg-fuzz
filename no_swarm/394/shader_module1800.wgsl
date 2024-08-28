struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(vec2<bool>(false, true), 4294967295u, 2147483647i, Struct_1(vec2<i32>(2147483647i, -1i), vec3<f32>(578f, -1421f, 247f), 1000f), Struct_2(Struct_1(vec2<i32>(1i, -1i), vec3<f32>(785f, 165f, 699f), 1580f), 1i, Struct_1(vec2<i32>(-17283i, -25399i), vec3<f32>(-353f, 702f, -1661f), -774f), vec2<f32>(204f, 1723f))), Struct_4(vec2<bool>(true, true), 30156u, -1i, Struct_1(vec2<i32>(-32877i, i32(-2147483648)), vec3<f32>(967f, -1000f, -127f), -2579f), Struct_2(Struct_1(vec2<i32>(17952i, 2147483647i), vec3<f32>(-216f, -938f, -1334f), -742f), -33595i, Struct_1(vec2<i32>(1693i, i32(-2147483648)), vec3<f32>(2243f, -426f, 104f), 151f), vec2<f32>(-278f, 141f))), Struct_4(vec2<bool>(true, true), 3022u, -13075i, Struct_1(vec2<i32>(27654i, 43867i), vec3<f32>(1000f, 105f, -879f), -1810f), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<f32>(-1079f, 1000f, 554f), -2916f), 2147483647i, Struct_1(vec2<i32>(-47085i, -27420i), vec3<f32>(1294f, 805f, -960f), -1000f), vec2<f32>(-1000f, -1000f))), Struct_4(vec2<bool>(false, false), 0u, 52963i, Struct_1(vec2<i32>(-16607i, 1i), vec3<f32>(-965f, -127f, 2048f), 675f), Struct_2(Struct_1(vec2<i32>(1i, 1i), vec3<f32>(1406f, 1593f, -252f), 255f), -18262i, Struct_1(vec2<i32>(1i, -1i), vec3<f32>(1073f, 450f, 2469f), -331f), vec2<f32>(-987f, -1397f))), Struct_4(vec2<bool>(false, true), 0u, 38452i, Struct_1(vec2<i32>(1i, 22155i), vec3<f32>(-536f, -1028f, 1069f), -485f), Struct_2(Struct_1(vec2<i32>(-1i, 9348i), vec3<f32>(-549f, 273f, -535f), -117f), 1i, Struct_1(vec2<i32>(i32(-2147483648), -9234i), vec3<f32>(802f, -197f, 692f), 1671f), vec2<f32>(-125f, -624f))), Struct_4(vec2<bool>(false, false), 15157u, 9204i, Struct_1(vec2<i32>(1i, 23007i), vec3<f32>(630f, -1012f, 1855f), 590f), Struct_2(Struct_1(vec2<i32>(2147483647i, 0i), vec3<f32>(-1396f, -1695f, -873f), 174f), -1i, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<f32>(-1000f, 221f, -195f), -721f), vec2<f32>(110f, -700f))), Struct_4(vec2<bool>(false, true), 45696u, i32(-2147483648), Struct_1(vec2<i32>(4878i, -354i), vec3<f32>(-389f, 1696f, 468f), -793f), Struct_2(Struct_1(vec2<i32>(-578i, 1i), vec3<f32>(-939f, 1222f, -203f), -1000f), 1i, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec3<f32>(550f, -1644f, -886f), 130f), vec2<f32>(-268f, -512f))), Struct_4(vec2<bool>(true, false), 6991u, 2147483647i, Struct_1(vec2<i32>(-39554i, 18840i), vec3<f32>(-1297f, 1000f, -109f), -1121f), Struct_2(Struct_1(vec2<i32>(1i, -15541i), vec3<f32>(1214f, -531f, -699f), -1496f), 2147483647i, Struct_1(vec2<i32>(0i, 26547i), vec3<f32>(504f, -136f, -1207f), 1000f), vec2<f32>(-1000f, 2528f))), Struct_4(vec2<bool>(false, false), 4294967295u, 2147483647i, Struct_1(vec2<i32>(9933i, -8904i), vec3<f32>(-812f, 2668f, -204f), 444f), Struct_2(Struct_1(vec2<i32>(1i, 10444i), vec3<f32>(1000f, 1008f, 468f), 1000f), 0i, Struct_1(vec2<i32>(0i, -46434i), vec3<f32>(422f, 903f, 1286f), 782f), vec2<f32>(-986f, 1315f))), Struct_4(vec2<bool>(true, false), 58657u, 30812i, Struct_1(vec2<i32>(-1i, 28871i), vec3<f32>(-865f, 452f, 214f), 1379f), Struct_2(Struct_1(vec2<i32>(0i, 18593i), vec3<f32>(948f, 1223f, -967f), 495f), i32(-2147483648), Struct_1(vec2<i32>(0i, 31428i), vec3<f32>(809f, 810f, -382f), -704f), vec2<f32>(-581f, -200f))), Struct_4(vec2<bool>(false, false), 59628u, i32(-2147483648), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(-936f, 1000f, -1003f), 1814f), Struct_2(Struct_1(vec2<i32>(0i, i32(-2147483648)), vec3<f32>(-554f, -2250f, -1354f), 1000f), 1i, Struct_1(vec2<i32>(-7671i, 0i), vec3<f32>(1418f, -1139f, -160f), -248f), vec2<f32>(540f, -180f))), Struct_4(vec2<bool>(true, false), 65237u, 0i, Struct_1(vec2<i32>(-1114i, -28953i), vec3<f32>(-1842f, -345f, 310f), -1213f), Struct_2(Struct_1(vec2<i32>(0i, 2147483647i), vec3<f32>(-239f, -2462f, 1367f), -1000f), i32(-2147483648), Struct_1(vec2<i32>(-20586i, 1i), vec3<f32>(1483f, -750f, 781f), 1117f), vec2<f32>(718f, -671f))));

var<private> global1: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(250f, -223f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>) -> u32 {
    global1 = array<vec2<f32>, 1>();
    global1 = array<vec2<f32>, 1>();
    global0 = array<Struct_4, 12>();
    var var_0 = u_input.b.x;
    let var_1 = Struct_3(Struct_1(u_input.b.xw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.x, arg_0.x, 1712f), vec3<f32>(arg_0.x, -746f, 489f))))), arg_0.x));
    return _wgslsmith_clamp_u32(22553u, _wgslsmith_add_u32(54651u << (0u % 32u), ~min(select(4294967295u, u_input.c.x, arg_1.x), 4294967295u)), 4294967295u);
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_4, 12>();
    let var_0 = (abs(vec4<u32>(~1u, ~51556u, 663u, max(4294967295u, u_input.c.x))) ^ (~vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x) << ((vec4<u32>(u_input.c.x, 0u, u_input.c.x, 0u) | ~vec4<u32>(68559u, 73828u, u_input.c.x, 23920u)) % vec4<u32>(32u)))) << ((_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x)) | vec4<u32>(39952u, u_input.c.x, 38683u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x)) % vec4<u32>(32u))) ^ (vec4<u32>(func_3(vec3<f32>(-825f, -147f, 1064f), vec2<bool>(false, false)), 1u, u_input.c.x, 0u) ^ ((vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x) | vec4<u32>(4294967295u, 1u, 1u, 73147u)) & vec4<u32>(u_input.c.x, 4294967295u, 0u, 4294967295u)))) % vec4<u32>(32u));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1276f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-946f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(561f)) - _wgslsmith_f_op_f32(-441f + 303f))))), 603f);
    global1 = array<vec2<f32>, 1>();
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.wy, u_input.b.yx), reverseBits(_wgslsmith_div_i32(u_input.d.x, u_input.a.x)), min(_wgslsmith_mult_i32(6894i, u_input.e.x), _wgslsmith_div_i32(u_input.e.x, u_input.d.x)), -33909i), vec4<i32>(u_input.e.x, 6508i, ~(u_input.a.x >> (u_input.c.x % 32u)), firstTrailingBit(u_input.a.x))) >> (var_0 % vec4<u32>(32u));
    return Struct_1(var_2.yx, var_1, var_1.x);
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(-357f, _wgslsmith_f_op_f32(f32(-1f) * -1078f))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(arg_0.b.x * arg_0.c)))) + arg_1.b);
    var_0 = vec3<f32>(211f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.d.c))), arg_1.c);
    let var_1 = true;
    var var_2 = Struct_5(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a.x, func_2().a.x), vec2<i32>(-arg_0.a.x & _wgslsmith_sub_i32(u_input.b.x, arg_2.d.a.x), _wgslsmith_sub_i32(~u_input.a.x, -9967i ^ arg_1.a.x))), 2147483647i, func_2().b, Struct_2(Struct_1(-u_input.a.wy, arg_2.e.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c)))), _wgslsmith_mult_i32(arg_0.a.x, arg_1.a.x), Struct_1(vec2<i32>(-7254i, ~u_input.d.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, var_0.x, arg_0.c)) * vec3<f32>(arg_2.e.a.b.x, 210f, arg_2.e.d.x)), 1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 1u)]))), arg_2);
    let var_3 = Struct_4(vec2<bool>(false, false), reverseBits(~_wgslsmith_mult_u32(var_2.e.b | 1u, 52407u)), -1i, var_2.d.a, Struct_2(func_1(arg_1.a.x, -596f), arg_0.a.x, Struct_1(var_2.e.e.a.a, _wgslsmith_f_op_vec3_f32(-arg_1.b), _wgslsmith_f_op_f32(-495f + _wgslsmith_f_op_f32(step(622f, -456f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1149f, -480f), arg_1.b.yx))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_1.b, arg_2.e.c.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 12>();
    global0 = array<Struct_4, 12>();
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(func_4(func_1(var_0 ^ _wgslsmith_mult_i32(-var_0, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(-2355f, 1060f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-354f, -1723f)) + _wgslsmith_f_op_f32(min(1234f, 946f))))), func_2(), Struct_4(vec2<bool>(!any(vec2<bool>(true, false)), !any(vec3<bool>(false, true, true))), 29733u, firstLeadingBit(~reverseBits(var_0)), func_2(), Struct_2(func_1(i32(-1i) * -1i, _wgslsmith_f_op_f32(f32(-1f) * -115f)), 2147483647i, Struct_1(-vec2<i32>(u_input.b.x, -39657i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(196f, 1000f, -246f)), -613f), vec2<f32>(_wgslsmith_f_op_f32(2089f * 1000f), -1000f)))));
    let var_2 = global0[_wgslsmith_index_u32(16474u, 12u)];
    var var_3 = 18775u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.a.b.x)))), select(~reverseBits(vec3<u32>(1u, 0u, 2147u)) & select(firstLeadingBit(vec3<u32>(var_2.b, 4294967295u, 1u)), abs(vec3<u32>(4294967295u, var_2.b, u_input.c.x)), false), select(~(~vec3<u32>(u_input.c.x, 56570u, 26428u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, var_2.b, 1u) >> (vec3<u32>(7273u, 1u, u_input.c.x) % vec3<u32>(32u)), abs(vec3<u32>(4294967295u, var_2.b, var_2.b)), vec3<u32>(u_input.c.x, 1u, 1u)), select(select(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), vec3<bool>(false, var_2.a.x, true), vec3<bool>(false, true, var_2.a.x)), vec3<bool>(false, true, var_2.a.x), select(vec3<bool>(true, var_2.a.x, true), vec3<bool>(true, var_2.a.x, var_2.a.x), true))), all(!vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x))));
}

