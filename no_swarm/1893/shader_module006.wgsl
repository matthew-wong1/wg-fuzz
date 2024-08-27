struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<u32>(43618u, 4294967295u), vec2<f32>(-1003f, -1696f), vec2<f32>(199f, -909f), vec2<f32>(1507f, -1877f), 12137i), Struct_1(vec2<u32>(1u, 0u), vec2<f32>(296f, 379f), vec2<f32>(-1446f, 1374f), vec2<f32>(-384f, -889f), 5621i), Struct_1(vec2<u32>(67985u, 1u), vec2<f32>(-1345f, -2134f), vec2<f32>(271f, 607f), vec2<f32>(944f, 218f), 0i), Struct_1(vec2<u32>(1u, 0u), vec2<f32>(1481f, 1419f), vec2<f32>(1185f, 528f), vec2<f32>(1115f, 1140f), 0i), Struct_1(vec2<u32>(36803u, 5914u), vec2<f32>(-1108f, -1053f), vec2<f32>(-1073f, 951f), vec2<f32>(-453f, 1843f), 0i), Struct_1(vec2<u32>(55052u, 17513u), vec2<f32>(-415f, 310f), vec2<f32>(-556f, 1273f), vec2<f32>(-845f, 704f), 1i), Struct_1(vec2<u32>(5065u, 0u), vec2<f32>(723f, -570f), vec2<f32>(-354f, -229f), vec2<f32>(732f, -1043f), 1i), Struct_1(vec2<u32>(21056u, 0u), vec2<f32>(209f, -401f), vec2<f32>(-743f, -875f), vec2<f32>(203f, 1000f), 10246i), Struct_1(vec2<u32>(79735u, 0u), vec2<f32>(1508f, 684f), vec2<f32>(-470f, 766f), vec2<f32>(-916f, -543f), 0i), Struct_1(vec2<u32>(0u, 22120u), vec2<f32>(613f, -881f), vec2<f32>(2358f, -249f), vec2<f32>(-1327f, -439f), -30275i), Struct_1(vec2<u32>(1u, 4294967295u), vec2<f32>(-141f, -473f), vec2<f32>(-848f, 1283f), vec2<f32>(1010f, -1200f), -33015i), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<f32>(-1000f, 200f), vec2<f32>(202f, 426f), vec2<f32>(1167f, 566f), -54220i), Struct_1(vec2<u32>(1u, 1u), vec2<f32>(366f, -1143f), vec2<f32>(1440f, -1000f), vec2<f32>(181f, 1145f), 10124i), Struct_1(vec2<u32>(49573u, 63126u), vec2<f32>(1097f, 181f), vec2<f32>(-483f, 699f), vec2<f32>(-603f, 1000f), i32(-2147483648)), Struct_1(vec2<u32>(73497u, 29123u), vec2<f32>(295f, 489f), vec2<f32>(591f, 1000f), vec2<f32>(-450f, -401f), -47572i), Struct_1(vec2<u32>(2043u, 1u), vec2<f32>(1924f, 390f), vec2<f32>(-1362f, 869f), vec2<f32>(1148f, -480f), 1i), Struct_1(vec2<u32>(0u, 2581u), vec2<f32>(-277f, 796f), vec2<f32>(1000f, -1234f), vec2<f32>(-212f, 239f), 11366i), Struct_1(vec2<u32>(1u, 0u), vec2<f32>(-1000f, -620f), vec2<f32>(1000f, 670f), vec2<f32>(-579f, -365f), -1i), Struct_1(vec2<u32>(5805u, 4294967295u), vec2<f32>(559f, -1478f), vec2<f32>(1299f, 1307f), vec2<f32>(-1918f, 1000f), -11389i), Struct_1(vec2<u32>(4294967295u, 53686u), vec2<f32>(-371f, -135f), vec2<f32>(534f, 314f), vec2<f32>(838f, -251f), 0i), Struct_1(vec2<u32>(1926u, 4883u), vec2<f32>(2460f, 391f), vec2<f32>(169f, -942f), vec2<f32>(-2080f, 326f), 2147483647i), Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(-719f, -573f), vec2<f32>(1014f, 692f), vec2<f32>(524f, 1000f), 2147483647i), Struct_1(vec2<u32>(12422u, 55849u), vec2<f32>(-1344f, -729f), vec2<f32>(999f, -127f), vec2<f32>(-1000f, -325f), 0i), Struct_1(vec2<u32>(48030u, 0u), vec2<f32>(1121f, 232f), vec2<f32>(935f, 404f), vec2<f32>(-269f, -375f), -74928i), Struct_1(vec2<u32>(47493u, 10878u), vec2<f32>(-328f, 350f), vec2<f32>(1235f, 1567f), vec2<f32>(-1273f, -347f), 1i), Struct_1(vec2<u32>(0u, 0u), vec2<f32>(111f, 1449f), vec2<f32>(-1068f, -672f), vec2<f32>(1000f, 1084f), 1i), Struct_1(vec2<u32>(4294967295u, 39219u), vec2<f32>(756f, -1000f), vec2<f32>(713f, 437f), vec2<f32>(1797f, 1000f), -1i), Struct_1(vec2<u32>(47803u, 101319u), vec2<f32>(-655f, -1457f), vec2<f32>(933f, 124f), vec2<f32>(-221f, 136f), -31933i), Struct_1(vec2<u32>(1u, 13609u), vec2<f32>(-289f, -1780f), vec2<f32>(-653f, -486f), vec2<f32>(1140f, 1431f), 80981i), Struct_1(vec2<u32>(105502u, 0u), vec2<f32>(-791f, -442f), vec2<f32>(-713f, 1653f), vec2<f32>(-571f, 1000f), 2147483647i));

var<private> global1: vec2<f32>;

var<private> global2: u32 = 14142u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> vec2<f32> {
    global0 = array<Struct_1, 30>();
    let var_0 = arg_1.a;
    let var_1 = any(select(vec4<bool>(any(vec3<bool>(true, arg_1.c.x, arg_1.c.x)), !all(arg_1.c.xy), arg_1.c.x, !arg_1.c.x | any(arg_1.c.xx)), vec4<bool>(arg_1.c.x, arg_1.b, arg_1.b, true), select(!select(vec4<bool>(arg_1.b, true, arg_1.b, false), vec4<bool>(true, false, arg_1.b, false), arg_1.b), vec4<bool>(arg_1.c.x, false, any(arg_1.c.xy), true), !(!vec4<bool>(arg_1.b, true, true, arg_1.c.x)))));
    let var_2 = ~_wgslsmith_div_vec4_u32(firstTrailingBit(firstTrailingBit(vec4<u32>(1u, 61370u, 1u, var_0.a.x))), ~vec4<u32>(u_input.e, ~var_0.a.x, ~var_0.a.x, firstTrailingBit(u_input.e)));
    global0 = array<Struct_1, 30>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d), var_0.d.x) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 872f)), var_0.d.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.a.d))))));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    global1 = vec2<f32>(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), -1592f)));
    var var_0 = global0[_wgslsmith_index_u32(0u, 30u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2322f, 1000f))) * -1275f);
}

fn func_2() -> StorageBuffer {
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.x)), 1519f) * _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) * vec2<f32>(global1.x, global1.x))))), vec2<f32>(global1.x, _wgslsmith_div_f32(1708f, _wgslsmith_f_op_f32(func_3()))));
    let var_0 = Struct_2(Struct_1(~(~(~vec2<u32>(u_input.e, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, -402f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(391f, 1505f)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x - -1338f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(global1.x))))), reverseBits(-71974i)), false, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(f32(-1f) * -855f), global1.x);
    global0 = array<Struct_1, 30>();
    global1 = _wgslsmith_f_op_vec2_f32(-var_0.a.c);
    let var_1 = ~var_0.a.e;
    return StorageBuffer(u_input.d.zx, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = countOneBits(~0u);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, 0i, u_input.d.x), u_input.d) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), u_input.d), Struct_2(Struct_1(vec2<u32>(u_input.e, u_input.e), vec2<f32>(448f, global1.x), vec2<f32>(global1.x, -2359f), vec2<f32>(global1.x, 1584f), u_input.a), true, select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), _wgslsmith_f_op_f32(global1.x - -490f), _wgslsmith_f_op_f32(floor(global1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 2817f) * vec2<f32>(1354f, global1.x)))));
    var var_1 = global0[_wgslsmith_index_u32(~firstLeadingBit(abs(firstTrailingBit(4294967295u))) ^ _wgslsmith_mult_u32(0u, 4294967295u), 30u)];
    global1 = var_0;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, global1.x)) * _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_vec2_f32(func_1(vec3<i32>(9742i, u_input.d.x, u_input.a), Struct_2(global0[_wgslsmith_index_u32(42391u, 30u)], false, vec3<bool>(true, false, true), 2479f, 872f))).x)))), _wgslsmith_f_op_f32(abs(var_0.x)));
    let x = u_input.a;
    s_output = func_2();
}

