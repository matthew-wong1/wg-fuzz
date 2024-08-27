struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_1, 14>;

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(449u, vec4<u32>(1u, 9421u, 1u, 18084u), 43530i, vec4<f32>(1231f, 747f, 241f, 289f)), Struct_2(4294967295u, vec4<u32>(6968u, 49545u, 4294967295u, 81634u), -14470i, vec4<f32>(413f, 106f, 651f, 1598f)), Struct_2(49828u, vec4<u32>(0u, 20906u, 4294967295u, 34646u), i32(-2147483648), vec4<f32>(-222f, -1084f, 946f, 1000f)), Struct_2(21209u, vec4<u32>(4294967295u, 0u, 69913u, 1u), i32(-2147483648), vec4<f32>(3159f, -287f, 533f, -1217f)), Struct_2(1u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 7845u), 0i, vec4<f32>(-706f, -1095f, -419f, 736f)), Struct_2(4294967295u, vec4<u32>(1u, 23807u, 6493u, 60937u), 0i, vec4<f32>(-837f, 135f, 1436f, -1234f)), Struct_2(3265u, vec4<u32>(58965u, 44806u, 57955u, 27656u), 43940i, vec4<f32>(322f, -398f, 666f, 142f)), Struct_2(26844u, vec4<u32>(1u, 28280u, 4294967295u, 0u), -23820i, vec4<f32>(-870f, -1737f, -572f, 801f)), Struct_2(0u, vec4<u32>(56945u, 4294967295u, 59145u, 4294967295u), i32(-2147483648), vec4<f32>(796f, -1170f, 730f, -2423f)), Struct_2(1u, vec4<u32>(95588u, 1u, 0u, 15628u), i32(-2147483648), vec4<f32>(-611f, -1090f, -617f, 451f)), Struct_2(0u, vec4<u32>(1u, 1u, 0u, 33502u), i32(-2147483648), vec4<f32>(-1237f, 714f, 390f, 896f)), Struct_2(115173u, vec4<u32>(30871u, 45947u, 0u, 46945u), -60223i, vec4<f32>(671f, -237f, 400f, -1180f)), Struct_2(119765u, vec4<u32>(82048u, 4294967295u, 34025u, 25424u), 0i, vec4<f32>(-1000f, 499f, -864f, 254f)), Struct_2(1u, vec4<u32>(36952u, 83913u, 4294967295u, 4294967295u), 2147483647i, vec4<f32>(252f, -1562f, -300f, 351f)), Struct_2(46747u, vec4<u32>(1u, 0u, 4294967295u, 0u), -1i, vec4<f32>(-1041f, 840f, -1331f, 910f)), Struct_2(4294967295u, vec4<u32>(56983u, 1u, 68195u, 17962u), i32(-2147483648), vec4<f32>(-460f, 201f, -246f, -302f)), Struct_2(60407u, vec4<u32>(45335u, 4294967295u, 21347u, 0u), 38571i, vec4<f32>(1000f, -849f, -1000f, -1105f)), Struct_2(8024u, vec4<u32>(4294967295u, 30158u, 1243u, 4294967295u), 21746i, vec4<f32>(1000f, 1208f, -414f, 935f)), Struct_2(4294967295u, vec4<u32>(1u, 35660u, 16008u, 34210u), 10037i, vec4<f32>(224f, -638f, 1000f, -1110f)), Struct_2(60803u, vec4<u32>(51351u, 4294967295u, 1u, 29391u), -36495i, vec4<f32>(1000f, 1410f, 102f, -1564f)), Struct_2(17022u, vec4<u32>(21025u, 19302u, 10735u, 43009u), 1i, vec4<f32>(-1006f, 209f, 158f, -109f)), Struct_2(4294967295u, vec4<u32>(4294967295u, 4294967295u, 35323u, 28151u), i32(-2147483648), vec4<f32>(-1000f, 356f, -2256f, -1135f)), Struct_2(1u, vec4<u32>(19389u, 9814u, 1u, 4294967295u), -1i, vec4<f32>(760f, -650f, 1000f, 574f)), Struct_2(4294967295u, vec4<u32>(1u, 0u, 1u, 0u), 32606i, vec4<f32>(1540f, -1403f, -1413f, -1535f)), Struct_2(0u, vec4<u32>(57324u, 4294967295u, 1374u, 8036u), 27683i, vec4<f32>(1642f, 220f, -381f, 920f)), Struct_2(1u, vec4<u32>(4294967295u, 1u, 18299u, 13970u), 0i, vec4<f32>(209f, 1323f, -870f, -1532f)), Struct_2(30390u, vec4<u32>(28594u, 4294967295u, 28793u, 0u), 1i, vec4<f32>(330f, 716f, 2479f, 466f)), Struct_2(4294967295u, vec4<u32>(21433u, 4294967295u, 4294967295u, 46957u), 0i, vec4<f32>(-616f, 242f, -340f, -305f)), Struct_2(35826u, vec4<u32>(0u, 1u, 4294967295u, 5415u), 27468i, vec4<f32>(672f, 898f, 829f, -926f)), Struct_2(47198u, vec4<u32>(19725u, 1u, 0u, 29039u), 15661i, vec4<f32>(1000f, -375f, 352f, -1801f)));

var<private> global3: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(0u, 4294967295u, 6917u, 48641u), vec4<u32>(72207u, 4294967295u, 0u, 17353u), vec4<u32>(0u, 790u, 7967u, 16548u), vec4<u32>(0u, 40572u, 1u, 4294967295u), vec4<u32>(31328u, 94772u, 47995u, 0u), vec4<u32>(60331u, 4294967295u, 0u, 21069u), vec4<u32>(5980u, 0u, 20542u, 0u), vec4<u32>(1u, 1u, 22987u, 4294967295u), vec4<u32>(0u, 39377u, 12959u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = vec2<bool>(!(!all(select(vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(arg_1, false, true, true), vec4<bool>(true, false, false, arg_1)))), true | ((i32(-1i) * -1i) != u_input.c.x));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(~0u, 14u)]);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, u_input.b), 30u)];
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b.b - global0.x))))) * -815f);
    var var_4 = Struct_2(var_2.b.x | _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(~52095u, 10u)], vec4<u32>(var_2.a, reverseBits(1u), var_2.b.x, ~var_2.b.x)), ~_wgslsmith_div_vec4_u32(~(~var_2.b), vec4<u32>(var_2.a, _wgslsmith_mult_u32(68960u, var_2.b.x), var_2.b.x, u_input.b)), var_2.c >> (u_input.b % 32u), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(var_2.d, var_2.d))))), vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(839f, -464f)) + var_1.b.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x + var_1.a.b))), -1407f))));
    return ~(~(-9170i));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: bool, arg_3: vec2<f32>) -> u32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, abs(~0u)), 30u)];
    global3 = array<vec4<u32>, 10>();
    var var_1 = select(vec2<bool>(arg_2, arg_2), vec2<bool>(!(var_0.c < max(u_input.a.x, 1i)), !(false & any(vec4<bool>(true, false, arg_2, true)))), true);
    var var_2 = vec2<i32>(59046i, firstLeadingBit(var_0.c ^ ~func_3(u_input.a.x, arg_2)));
    global2 = array<Struct_2, 30>();
    return 115088u & (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_0.b.yy, ~vec2<u32>(u_input.b, var_0.a)), 0u) >> (~abs(var_0.a) % 32u));
}

fn func_1() -> i32 {
    let var_0 = vec2<u32>(4294967295u, min(80059u, ~(~u_input.b)));
    global2 = array<Struct_2, 30>();
    var var_1 = global2[_wgslsmith_index_u32(~(~abs(~func_2(vec4<i32>(u_input.c.x, 9966i, u_input.a.x, -2147483647i), -1i, false, vec2<f32>(global0.x, 1103f)))), 30u)];
    var var_2 = ~reverseBits(4294967295u);
    var var_3 = Struct_3(Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), all(vec3<bool>(true, false, false))), -1421f, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1094f), true)) - 1053f), vec3<bool>(var_1.c <= func_3(0i, false), true, var_1.d.x == _wgslsmith_f_op_f32(var_1.d.x * global0.x))), Struct_1(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), vec3<bool>(false, true, false), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2543f), _wgslsmith_div_f32(-1417f, 1014f), select(false, true, true)))), vec4<bool>(abs(var_1.b.x) < 75464u, true, true, !all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(var_1.d.x * -1000f), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))));
    return _wgslsmith_div_i32(var_1.c, _wgslsmith_add_i32(-2147483647i, min(2147483647i, select(firstLeadingBit(-1i), u_input.a.x >> (var_0.x % 32u), all(vec4<bool>(var_3.a.e.x, var_3.a.c.x, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-func_1(), func_1()), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.c.x), vec4<i32>(u_input.c.x, 39209i, -1i, 0i) | vec4<i32>(u_input.a.x, u_input.c.x, -1i, -2147483647i), vec4<bool>(false, false, true, false)), -vec4<i32>(1i, -1i, 1i, -64i))), select(u_input.a.yx, vec2<i32>(~u_input.c.x, 0i), vec2<bool>(any(vec2<bool>(true, true)), (-7974i ^ u_input.c.x) == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, -1i, u_input.a.x), vec4<i32>(-20742i, u_input.c.x, -55412i, u_input.c.x)))));
    let var_1 = global2[_wgslsmith_index_u32(~reverseBits(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(28663u, 1u, 4294967295u), vec3<u32>(17852u, 16058u, u_input.b)))), 30u)];
    global2 = array<Struct_2, 30>();
    let var_2 = !(select(any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), any(vec4<bool>(false, true, false, false)), all(vec3<bool>(true, true, false)) | true) != !any(vec4<bool>(false, true, false, false)));
    global1 = array<Struct_1, 14>();
    global2 = array<Struct_2, 30>();
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + -393f), _wgslsmith_f_op_f32(floor(global0.x)), select(true, true, var_2))), _wgslsmith_f_op_f32(-1734f + 1447f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - var_1.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = _wgslsmith_f_op_f32(min(var_1.d.x, _wgslsmith_f_op_f32(trunc(1073f))));
    global3 = array<vec4<u32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(378f, global0.x, var_1.d.x, -342f)) * _wgslsmith_f_op_vec4_f32(select(var_1.d, var_1.d, vec4<bool>(var_2, var_2, false, var_2)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_1.d.x, global0.x, global0.x) + var_1.d)))), var_1.b.xwx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.d, vec4<f32>(var_1.d.x, 358f, global0.x, var_1.d.x))))))), var_1.d.zy);
}

