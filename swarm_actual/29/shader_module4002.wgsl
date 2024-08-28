struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(vec4<f32>(256f, -1354f, 438f, -530f), vec4<u32>(3881u, 4294967295u, 88069u, 84715u), Struct_1(12679u, vec4<bool>(false, false, false, false), false, vec3<i32>(1i, 4804i, -29840i)), 638f), Struct_3(vec4<f32>(374f, 1880f, 1229f, 1669f), vec4<u32>(1u, 24168u, 28647u, 4294967295u), Struct_1(0u, vec4<bool>(false, true, false, true), false, vec3<i32>(-517i, 0i, 0i)), 1000f), Struct_3(vec4<f32>(1910f, -590f, 416f, 2503f), vec4<u32>(1u, 0u, 14848u, 4294967295u), Struct_1(0u, vec4<bool>(false, true, true, false), true, vec3<i32>(1i, 2147483647i, -78384i)), -1216f), Struct_3(vec4<f32>(1535f, -1178f, 1527f, 128f), vec4<u32>(1u, 1u, 0u, 48060u), Struct_1(11567u, vec4<bool>(true, true, true, false), true, vec3<i32>(i32(-2147483648), 50454i, 1i)), -943f), Struct_3(vec4<f32>(-327f, 1537f, -1000f, -1504f), vec4<u32>(0u, 1u, 14869u, 78524u), Struct_1(1u, vec4<bool>(true, true, false, false), true, vec3<i32>(-15373i, 28932i, -1i)), 1265f), Struct_3(vec4<f32>(1248f, 1000f, 1984f, 1607f), vec4<u32>(0u, 15722u, 0u, 52064u), Struct_1(27325u, vec4<bool>(true, false, true, true), false, vec3<i32>(36297i, -5678i, 7344i)), -436f), Struct_3(vec4<f32>(-1203f, -827f, 374f, 2228f), vec4<u32>(1u, 1u, 0u, 29537u), Struct_1(4294967295u, vec4<bool>(false, false, true, true), false, vec3<i32>(-1i, 52407i, 15412i)), -498f), Struct_3(vec4<f32>(-209f, 125f, 1189f, 278f), vec4<u32>(37658u, 34768u, 1u, 4294967295u), Struct_1(0u, vec4<bool>(true, false, false, false), false, vec3<i32>(2147483647i, 0i, 1i)), -332f), Struct_3(vec4<f32>(1000f, -1191f, 888f, 189f), vec4<u32>(0u, 4294967295u, 12519u, 4294967295u), Struct_1(1u, vec4<bool>(true, false, true, false), true, vec3<i32>(i32(-2147483648), -5677i, 2147483647i)), 503f), Struct_3(vec4<f32>(838f, -1000f, 504f, -1438f), vec4<u32>(0u, 28512u, 17107u, 1u), Struct_1(103583u, vec4<bool>(true, true, true, true), false, vec3<i32>(0i, 1i, -14540i)), -396f), Struct_3(vec4<f32>(1888f, -202f, -263f, 1137f), vec4<u32>(20889u, 4294967295u, 42984u, 4294967295u), Struct_1(0u, vec4<bool>(false, false, true, false), false, vec3<i32>(-854i, i32(-2147483648), -1i)), -600f), Struct_3(vec4<f32>(-344f, -107f, -659f, -1048f), vec4<u32>(4294967295u, 12368u, 0u, 4294967295u), Struct_1(0u, vec4<bool>(true, false, true, true), false, vec3<i32>(-6605i, 3418i, 52608i)), 351f), Struct_3(vec4<f32>(-533f, -1188f, -1120f, 427f), vec4<u32>(1u, 68096u, 0u, 0u), Struct_1(20848u, vec4<bool>(true, true, true, false), true, vec3<i32>(0i, 0i, 22247i)), 973f), Struct_3(vec4<f32>(483f, -148f, -294f, -478f), vec4<u32>(0u, 90941u, 19077u, 15608u), Struct_1(54122u, vec4<bool>(false, false, false, true), false, vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648))), -326f), Struct_3(vec4<f32>(609f, -974f, 1944f, -367f), vec4<u32>(24968u, 904u, 4294967295u, 26865u), Struct_1(3679u, vec4<bool>(true, true, false, true), true, vec3<i32>(i32(-2147483648), -7812i, -38174i)), -1413f), Struct_3(vec4<f32>(1801f, -1035f, -236f, -473f), vec4<u32>(4294967295u, 4294967295u, 1u, 14458u), Struct_1(45831u, vec4<bool>(false, true, false, true), true, vec3<i32>(36091i, 2147483647i, i32(-2147483648))), 449f), Struct_3(vec4<f32>(-691f, -624f, 804f, -323f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 25544u), Struct_1(25801u, vec4<bool>(false, true, false, true), true, vec3<i32>(0i, 20872i, i32(-2147483648))), 438f), Struct_3(vec4<f32>(780f, -754f, -540f, -2136f), vec4<u32>(4294967295u, 6629u, 0u, 59910u), Struct_1(6465u, vec4<bool>(true, true, false, false), true, vec3<i32>(i32(-2147483648), 0i, 1474i)), 1329f), Struct_3(vec4<f32>(-800f, -781f, 195f, -2109f), vec4<u32>(17912u, 4294967295u, 14756u, 8711u), Struct_1(32880u, vec4<bool>(false, false, false, true), true, vec3<i32>(1i, 13039i, 35054i)), -1737f), Struct_3(vec4<f32>(-981f, 119f, 191f, 1106f), vec4<u32>(66536u, 0u, 0u, 1u), Struct_1(62256u, vec4<bool>(false, true, false, false), true, vec3<i32>(-1i, -1i, 19301i)), 1000f), Struct_3(vec4<f32>(540f, 2080f, -181f, 906f), vec4<u32>(0u, 331u, 4294967295u, 0u), Struct_1(9735u, vec4<bool>(false, true, false, true), false, vec3<i32>(19556i, -1i, 42184i)), -1161f), Struct_3(vec4<f32>(-934f, 1622f, 1309f, 211f), vec4<u32>(1u, 4294967295u, 4294967295u, 60593u), Struct_1(1u, vec4<bool>(false, false, true, false), true, vec3<i32>(1i, 2147483647i, 2147483647i)), -1327f), Struct_3(vec4<f32>(-2197f, 260f, 1000f, -1103f), vec4<u32>(4294967295u, 0u, 27514u, 4294967295u), Struct_1(0u, vec4<bool>(true, false, false, false), true, vec3<i32>(-1i, -25362i, 47951i)), -112f), Struct_3(vec4<f32>(-310f, 436f, -1000f, -1718f), vec4<u32>(0u, 4294967295u, 0u, 9441u), Struct_1(0u, vec4<bool>(false, false, true, false), false, vec3<i32>(-26417i, 41712i, 1i)), 2341f), Struct_3(vec4<f32>(-905f, -1000f, 1126f, -1225f), vec4<u32>(17581u, 0u, 31967u, 0u), Struct_1(69130u, vec4<bool>(true, true, false, false), true, vec3<i32>(-37631i, 28924i, -1i)), 1000f), Struct_3(vec4<f32>(-1492f, 1574f, 542f, 996f), vec4<u32>(45460u, 1u, 0u, 0u), Struct_1(54693u, vec4<bool>(true, false, true, false), false, vec3<i32>(-9094i, 2147483647i, 36305i)), -655f), Struct_3(vec4<f32>(2289f, 1056f, -527f, -1000f), vec4<u32>(4848u, 1u, 18840u, 6449u), Struct_1(0u, vec4<bool>(true, true, false, true), true, vec3<i32>(-8906i, -1i, -31555i)), 1567f), Struct_3(vec4<f32>(1060f, 915f, -610f, -527f), vec4<u32>(28028u, 1u, 0u, 0u), Struct_1(66666u, vec4<bool>(false, true, true, true), false, vec3<i32>(-29529i, -34698i, i32(-2147483648))), 541f), Struct_3(vec4<f32>(-519f, 1000f, -511f, 508f), vec4<u32>(0u, 5180u, 4294967295u, 33323u), Struct_1(0u, vec4<bool>(false, true, false, false), false, vec3<i32>(2147483647i, i32(-2147483648), 16527i)), -2050f), Struct_3(vec4<f32>(-718f, 1747f, -694f, 113f), vec4<u32>(15816u, 67110u, 1141u, 11885u), Struct_1(48438u, vec4<bool>(false, false, false, true), false, vec3<i32>(0i, -1i, -1i)), 881f));

var<private> global1: Struct_4 = Struct_4(Struct_2(Struct_1(1u, vec4<bool>(true, true, true, false), true, vec3<i32>(-53297i, 1i, 1i))), Struct_3(vec4<f32>(437f, -2246f, 361f, 1248f), vec4<u32>(85853u, 1u, 1u, 22301u), Struct_1(32824u, vec4<bool>(false, false, false, true), false, vec3<i32>(20409i, -38741i, 1i)), -2188f), 119549u, vec3<bool>(true, true, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>) -> vec2<f32> {
    var var_0 = global1.a;
    global0 = array<Struct_3, 30>();
    global1 = Struct_4(global1.a, global0[_wgslsmith_index_u32(1u, 30u)], 72673u, vec3<bool>(false, var_0.a.b.x, true));
    let var_1 = var_0.a.a;
    var_0 = global1.a;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(365f, global1.b.d))) - global1.b.a.zz);
}

fn func_3() -> u32 {
    global0 = array<Struct_3, 30>();
    let var_0 = Struct_4(global1.a, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.x, global1.b.a.x, global1.b.a.x, -1085f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-798f, global1.b.d, 1000f, -1000f)))), global1.b.b, Struct_1(global1.b.b.x, vec4<bool>(global1.b.a.x < global1.b.a.x, true, true, !global1.a.a.b.x), true, global1.a.a.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b.d)) + _wgslsmith_f_op_f32(-1419f - global1.b.a.x)) + _wgslsmith_f_op_f32(-global1.b.a.x))), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(global1.b.b, vec4<u32>(4294967295u, 31869u, 1u, 34568u) | vec4<u32>(global1.b.b.x, 1u, 4294967295u, 89592u)), ~select(_wgslsmith_clamp_vec4_u32(global1.b.b, global1.b.b, vec4<u32>(16088u, 38279u, global1.c, 4294967295u)), ~vec4<u32>(global1.c, 4294967295u, 0u, 30893u), true)), vec3<bool>(!(_wgslsmith_f_op_f32(global1.b.a.x - -111f) > global1.b.a.x), all(vec4<bool>(false, !global1.a.a.c, false, select(true, true, true))), all(vec3<bool>(global1.a.a.d.x > -41800i, true, any(global1.a.a.b.wx)))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 30u)];
    global0 = array<Struct_3, 30>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_sub_u32(1u, var_0.a.a.a), var_0.b.c.b, global1.a.a.c, firstTrailingBit(~var_1.c.d)));
    return 1u;
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_3, 30>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec2_f32(-global1.b.a.yz)));
    global1 = Struct_4(global1.a, global1.b, ~(~global1.a.a.a ^ func_3()) | _wgslsmith_div_u32(u_input.b, 236u), !select(global1.a.a.b.xxy, select(select(vec3<bool>(false, false, global1.d.x), global1.b.c.b.xwx, global1.d), vec3<bool>(global1.d.x, true, true), global1.d), select(global1.d, global1.a.a.b.yyx, true)));
    global1 = Struct_4(Struct_2(Struct_1(firstLeadingBit(~4294967295u), !select(vec4<bool>(global1.a.a.b.x, false, true, global1.a.a.b.x), vec4<bool>(global1.d.x, global1.b.c.c, global1.d.x, global1.b.c.b.x), global1.a.a.b), true, ~global1.b.c.d)), global1.b, select(u_input.b, _wgslsmith_div_u32(u_input.a.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(global1.b.b, global1.b.b))), (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, 56098u), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 1u)) > abs(2248u)) != true), !global1.b.c.b.zww);
    var var_1 = global1.b.c.d.x;
    return Struct_1(4294967295u, vec4<bool>(false | (1u == _wgslsmith_clamp_u32(1385u, u_input.b, 0u)), all(select(vec2<bool>(true, true), select(global1.d.xx, global1.b.c.b.xx, global1.d.x), select(vec2<bool>(false, global1.b.c.b.x), vec2<bool>(true, global1.d.x), vec2<bool>(true, true)))), global1.b.c.c, 1i >= global1.b.c.d.x), global1.b.c.b.x, -abs(vec3<i32>(-1i) * -global1.b.c.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.a.x, global1.b.d, 1192f, 721f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.d, global1.b.d, global1.b.a.x, -319f), vec4<f32>(global1.b.a.x, global1.b.a.x, global1.b.a.x, -685f), global1.a.a.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(915f, 1383f, global1.b.a.x, -414f)), select(vec4<bool>(global1.d.x, true, true, true), global1.a.a.b, global1.d.x)))), global1.b.b, func_1(), global1.b.d);
    var_0 = global1.b;
    let var_1 = ~vec3<u32>(func_3(), 1u, 4294967295u);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(671f, 780f) - global1.b.a.zw)));
    let var_3 = var_1.yx;
    let var_4 = ~_wgslsmith_sub_vec3_u32(abs(var_0.b.zzz), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global1.b.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-2597f, -1156f), -123f, 1192f, _wgslsmith_f_op_f32(global1.b.d * var_0.d)) - vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), var_2.x, _wgslsmith_f_op_f32(var_2.x - var_0.d), _wgslsmith_f_op_f32(-977f - var_0.d)))), var_2.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-373f, var_0.a.x, -1232f, 1093f), vec4<f32>(global1.b.d, 1000f, var_0.d, -193f))), _wgslsmith_f_op_vec4_f32(-global1.b.a)) * global1.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 572f, global1.b.d, 1379f))))), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, reverseBits(-10756i), _wgslsmith_add_i32(global1.a.a.d.x, -18985i), -29208i), -vec4<i32>(var_0.c.d.x, var_0.c.d.x, 39972i, global1.b.c.d.x) << (vec4<u32>(22961u, var_4.x, var_1.x, var_1.x) % vec4<u32>(32u)), -(vec4<i32>(var_0.c.d.x, 14994i, -54425i, 1i) << (vec4<u32>(var_1.x, 108737u, var_1.x, 58344u) % vec4<u32>(32u)))), firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(var_0.c.d.x, 2147483647i), _wgslsmith_sub_i32(var_0.c.d.x, var_0.c.d.x), var_0.c.d.x, global1.b.c.d.x >> (var_1.x % 32u)))), -_wgslsmith_sub_i32(1635i, -1i));
}

