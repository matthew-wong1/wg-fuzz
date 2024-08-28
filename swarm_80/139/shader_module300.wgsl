struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_4,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(Struct_1(2147483647i, vec3<f32>(-520f, 1972f, -380f), 4294967295u), Struct_3(4294967295u, vec2<f32>(-847f, -580f)), Struct_1(1i, vec3<f32>(-1959f, 1416f, -800f), 4294967295u), Struct_4(true, 1i, Struct_1(1i, vec3<f32>(-318f, -1302f, 756f), 4294967295u)), -7503i), Struct_5(Struct_1(-1i, vec3<f32>(1000f, -637f, 479f), 91447u), Struct_3(4294967295u, vec2<f32>(-1207f, -1477f)), Struct_1(-21558i, vec3<f32>(1000f, -189f, -393f), 4294967295u), Struct_4(false, 3138i, Struct_1(-1i, vec3<f32>(561f, -484f, 514f), 0u)), -12319i), Struct_5(Struct_1(4050i, vec3<f32>(287f, -1000f, 222f), 0u), Struct_3(0u, vec2<f32>(-211f, -1039f)), Struct_1(-68007i, vec3<f32>(1582f, -1661f, 128f), 48807u), Struct_4(false, 1i, Struct_1(43576i, vec3<f32>(465f, -545f, 294f), 24463u)), -18604i), Struct_5(Struct_1(2147483647i, vec3<f32>(1233f, -1219f, 303f), 25045u), Struct_3(1u, vec2<f32>(1000f, 858f)), Struct_1(i32(-2147483648), vec3<f32>(325f, 326f, -818f), 4294967295u), Struct_4(false, i32(-2147483648), Struct_1(31322i, vec3<f32>(1000f, 357f, -1087f), 4294967295u)), 18227i), Struct_5(Struct_1(0i, vec3<f32>(792f, 934f, -538f), 0u), Struct_3(25407u, vec2<f32>(781f, -519f)), Struct_1(8247i, vec3<f32>(327f, 408f, 1000f), 0u), Struct_4(false, 2512i, Struct_1(19744i, vec3<f32>(1000f, -930f, -184f), 1u)), -30531i), Struct_5(Struct_1(0i, vec3<f32>(1000f, -1000f, -532f), 0u), Struct_3(1u, vec2<f32>(857f, 1584f)), Struct_1(69772i, vec3<f32>(-858f, 563f, -1000f), 5813u), Struct_4(false, 2147483647i, Struct_1(i32(-2147483648), vec3<f32>(715f, 953f, -1618f), 12860u)), i32(-2147483648)), Struct_5(Struct_1(i32(-2147483648), vec3<f32>(796f, 1084f, 1283f), 0u), Struct_3(0u, vec2<f32>(588f, -390f)), Struct_1(2147483647i, vec3<f32>(-441f, -165f, 1000f), 45681u), Struct_4(false, 20417i, Struct_1(0i, vec3<f32>(390f, 1442f, 333f), 0u)), 11655i), Struct_5(Struct_1(-1i, vec3<f32>(-295f, 130f, -807f), 37u), Struct_3(2614u, vec2<f32>(920f, 2293f)), Struct_1(2147483647i, vec3<f32>(1199f, 1007f, -119f), 28582u), Struct_4(true, 11819i, Struct_1(-3574i, vec3<f32>(-209f, 483f, -861f), 1u)), 2147483647i), Struct_5(Struct_1(1i, vec3<f32>(-344f, 1000f, -874f), 4294967295u), Struct_3(0u, vec2<f32>(980f, -791f)), Struct_1(-60744i, vec3<f32>(-455f, -360f, 879f), 1u), Struct_4(false, 27874i, Struct_1(1398i, vec3<f32>(200f, 1408f, -1463f), 25116u)), -1i), Struct_5(Struct_1(1i, vec3<f32>(222f, 810f, -1049f), 0u), Struct_3(4294967295u, vec2<f32>(1127f, 1000f)), Struct_1(36506i, vec3<f32>(1000f, 725f, 2166f), 41243u), Struct_4(false, -40622i, Struct_1(-66875i, vec3<f32>(632f, -880f, -1955f), 0u)), -1i), Struct_5(Struct_1(-9570i, vec3<f32>(280f, 1000f, 709f), 4294967295u), Struct_3(15654u, vec2<f32>(-1829f, -1000f)), Struct_1(-1i, vec3<f32>(-183f, -547f, 241f), 14563u), Struct_4(false, 21839i, Struct_1(-36167i, vec3<f32>(-1374f, 450f, -387f), 6924u)), -4997i), Struct_5(Struct_1(-21927i, vec3<f32>(-575f, 131f, 860f), 1u), Struct_3(1u, vec2<f32>(-1000f, 885f)), Struct_1(6299i, vec3<f32>(-153f, -321f, -1000f), 16627u), Struct_4(false, 2147483647i, Struct_1(0i, vec3<f32>(1000f, 302f, -351f), 65457u)), 1i), Struct_5(Struct_1(i32(-2147483648), vec3<f32>(-1549f, 1027f, 767f), 4294967295u), Struct_3(4294967295u, vec2<f32>(-649f, 591f)), Struct_1(1i, vec3<f32>(-439f, -1584f, 444f), 0u), Struct_4(true, 2147483647i, Struct_1(i32(-2147483648), vec3<f32>(1000f, -238f, -235f), 2377u)), -29012i), Struct_5(Struct_1(-1i, vec3<f32>(-871f, 921f, 2407f), 1u), Struct_3(17389u, vec2<f32>(-191f, 1085f)), Struct_1(8655i, vec3<f32>(1000f, 1163f, -980f), 10571u), Struct_4(true, 1900i, Struct_1(-58773i, vec3<f32>(-396f, 1394f, -674f), 1u)), -5770i), Struct_5(Struct_1(-33804i, vec3<f32>(-2168f, -925f, 1166f), 2113u), Struct_3(0u, vec2<f32>(-1871f, -2255f)), Struct_1(2147483647i, vec3<f32>(-1356f, 122f, 1126f), 0u), Struct_4(false, 70376i, Struct_1(220i, vec3<f32>(-1000f, -303f, -1698f), 4294967295u)), 2147483647i), Struct_5(Struct_1(-1i, vec3<f32>(1517f, 170f, 117f), 13605u), Struct_3(69125u, vec2<f32>(-384f, -1408f)), Struct_1(0i, vec3<f32>(-379f, -213f, -1000f), 68275u), Struct_4(false, 31209i, Struct_1(-1i, vec3<f32>(775f, 140f, 1000f), 46640u)), -1i), Struct_5(Struct_1(936i, vec3<f32>(2237f, 1499f, 1635f), 33677u), Struct_3(1u, vec2<f32>(-568f, -1452f)), Struct_1(18478i, vec3<f32>(479f, -1401f, 624f), 0u), Struct_4(true, 9207i, Struct_1(38889i, vec3<f32>(386f, 139f, 280f), 19049u)), 0i), Struct_5(Struct_1(2147483647i, vec3<f32>(-2543f, 355f, -926f), 4294967295u), Struct_3(32134u, vec2<f32>(795f, -1922f)), Struct_1(30439i, vec3<f32>(358f, 1000f, -1067f), 14745u), Struct_4(false, -15643i, Struct_1(-1352i, vec3<f32>(-387f, 265f, -1177f), 9019u)), 10447i), Struct_5(Struct_1(-1i, vec3<f32>(-1168f, 1180f, -609f), 17493u), Struct_3(23890u, vec2<f32>(326f, -956f)), Struct_1(0i, vec3<f32>(-400f, 376f, 1000f), 18491u), Struct_4(true, i32(-2147483648), Struct_1(7920i, vec3<f32>(-499f, -696f, -1000f), 4294967295u)), 12975i), Struct_5(Struct_1(2147483647i, vec3<f32>(-943f, 125f, -101f), 32706u), Struct_3(81584u, vec2<f32>(1252f, 746f)), Struct_1(2147483647i, vec3<f32>(-850f, 645f, 532f), 34018u), Struct_4(false, 2147483647i, Struct_1(0i, vec3<f32>(1188f, 138f, 675f), 4294967295u)), 0i));

var<private> global1: array<f32, 16> = array<f32, 16>(1896f, -806f, 265f, 1200f, -1061f, -750f, 1844f, -755f, -400f, 361f, -1452f, -218f, 1000f, 259f, -1000f, -958f);

var<private> global2: Struct_2;

var<private> global3: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: f32) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 20u)];
    global1 = array<f32, 16>();
    global0 = array<Struct_5, 20>();
    let var_1 = reverseBits(firstLeadingBit(arg_0.c.a));
    var var_2 = -42624i;
    return 34075i;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    global2 = Struct_2(!all(select(select(vec3<bool>(true, false, global2.a), vec3<bool>(global2.a, false, global2.a), vec3<bool>(global2.a, true, global2.a)), vec3<bool>(false, global2.a, global2.a), true)), -vec2<i32>(global2.b.x, func_3(Struct_4(global2.a, u_input.b, Struct_1(-7384i, vec3<f32>(global1[_wgslsmith_index_u32(global2.c.c, 16u)], global2.d.x, arg_0.b.x), 4294967295u)), !global3[_wgslsmith_index_u32(1u, 17u)], -1673f)), global2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1626f, global1[_wgslsmith_index_u32(1u, 16u)], arg_0.b.x)))))) - global2.c.b));
    var var_0 = global2.c;
    global3 = array<vec4<bool>, 17>();
    let var_1 = global3[_wgslsmith_index_u32(global2.c.c | ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 1u, global2.c.c, global2.c.c)), firstTrailingBit(vec4<u32>(0u, var_0.c, arg_0.a, 1u))), ~vec4<u32>(0u, u_input.a, u_input.a, global2.c.c)), 17u)];
    global1 = array<f32, 16>();
    return arg_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(exp2(arg_1.b.x));
    var var_1 = any(!(!vec3<bool>(arg_2, false, arg_2)));
    var var_2 = arg_1;
    let var_3 = arg_1;
    global1 = array<f32, 16>();
    return false;
}

fn func_1() -> Struct_2 {
    let var_0 = !vec4<bool>(global2.a, func_4(select(select(vec2<bool>(true, global2.a), vec2<bool>(false, global2.a), true), select(vec2<bool>(global2.a, true), vec2<bool>(global2.a, false), vec2<bool>(global2.a, global2.a)), !vec2<bool>(global2.a, global2.a)), func_2(Struct_3(u_input.a, global2.c.b.zx)), false), true, any(!(!vec2<bool>(true, global2.a))));
    global1 = array<f32, 16>();
    let var_1 = !global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, ~(~min(4294967295u, u_input.a))), 17u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.b.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 16u)]))))));
    var var_3 = Struct_2(_wgslsmith_sub_i32(-u_input.b >> (1u % 32u), ~(~(-1i))) < 2147483647i, vec2<i32>(firstTrailingBit(-u_input.b) << (~1u % 32u), global2.b.x), Struct_1(~(global2.c.a | (u_input.b >> (u_input.a % 32u))), global2.c.b, ~func_2(Struct_3(global2.c.c, vec2<f32>(-2355f, 663f))).a), _wgslsmith_f_op_vec3_f32(global2.d - _wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, _wgslsmith_f_op_f32(-global2.c.b.x), _wgslsmith_f_op_f32(var_2 - 723f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.d.x, -659f, -201f), global2.c.b)), global2.d))));
    return Struct_2(true, global2.b, Struct_1(1i, var_3.c.b, var_3.c.c), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global2.c.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 16>();
    global2 = func_1();
    global1 = array<f32, 16>();
    var var_0 = global2.b;
    var var_1 = Struct_3(4294967295u, vec2<f32>(-336f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1311f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2091f))))));
    global2 = Struct_2(any(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 54425u, 4294967295u), 17u)]), vec2<i32>(var_0.x & var_0.x, global2.c.a), Struct_1(global2.c.a ^ ~abs(-10400i), _wgslsmith_f_op_vec3_f32(select(global2.c.b, vec3<f32>(_wgslsmith_f_op_f32(656f * 700f), _wgslsmith_f_op_f32(sign(-1529f)), _wgslsmith_f_op_f32(f32(-1f) * -898f)), select(select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(false, global2.a, global2.a), vec3<bool>(true, global2.a, true)), vec3<bool>(global2.a, global2.a, global2.a), select(vec3<bool>(global2.a, true, global2.a), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))), u_input.a), _wgslsmith_f_op_vec3_f32(-global2.c.b));
    global1 = array<f32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a, 0u, var_1.a), vec3<u32>(global2.c.c, var_1.a, 4294967295u)), vec3<u32>(global2.c.c, global2.c.c, 4294967295u) ^ vec3<u32>(var_1.a, 18540u, 0u))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 31906i, -10388i) >> (vec3<u32>(0u, u_input.a, 1u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.b.x, global2.c.a, 15492i), vec3<i32>(8737i, 2147483647i, var_0.x))), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, var_0.x, u_input.b, 2147483647i), reverseBits(vec4<i32>(-91054i, 0i, -2147483647i, u_input.b))), -1i) << (vec3<u32>(u_input.a, u_input.a, 6470u) % vec3<u32>(32u)));
}

