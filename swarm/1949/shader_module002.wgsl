struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: bool,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(77866u, Struct_1(vec3<bool>(false, false, true), vec3<f32>(1460f, 1210f, -131f), true, vec2<bool>(false, true), -17158i), Struct_1(vec3<bool>(false, false, true), vec3<f32>(441f, 1338f, 120f), false, vec2<bool>(false, true), i32(-2147483648)), vec3<f32>(-1025f, 1250f, -891f), -505f), Struct_2(52482u, Struct_1(vec3<bool>(true, false, false), vec3<f32>(-168f, -719f, -705f), false, vec2<bool>(true, false), 0i), Struct_1(vec3<bool>(true, false, false), vec3<f32>(878f, -568f, 1298f), true, vec2<bool>(true, true), -1i), vec3<f32>(-328f, 1000f, 1255f), 1174f), Struct_2(29760u, Struct_1(vec3<bool>(false, true, true), vec3<f32>(1213f, -984f, 854f), true, vec2<bool>(true, true), 20781i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(1479f, 1000f, -1572f), false, vec2<bool>(true, true), -1i), vec3<f32>(-1000f, 365f, 621f), -1279f), Struct_2(46100u, Struct_1(vec3<bool>(false, true, false), vec3<f32>(1000f, -1000f, -432f), true, vec2<bool>(false, true), 0i), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-530f, 842f, 1818f), false, vec2<bool>(false, true), 0i), vec3<f32>(188f, -625f, 1204f), -824f), Struct_2(21225u, Struct_1(vec3<bool>(true, true, true), vec3<f32>(-742f, -233f, -1003f), false, vec2<bool>(true, false), 1i), Struct_1(vec3<bool>(true, true, false), vec3<f32>(-458f, 1035f, 127f), false, vec2<bool>(true, false), -1599i), vec3<f32>(1199f, 177f, -1349f), -972f), Struct_2(12079u, Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1516f, 1000f, -1589f), false, vec2<bool>(false, false), -1i), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1310f, 1142f, 1498f), true, vec2<bool>(true, true), 8219i), vec3<f32>(-816f, 171f, -735f), 840f), Struct_2(28879u, Struct_1(vec3<bool>(true, true, false), vec3<f32>(-473f, 1522f, -1671f), true, vec2<bool>(true, true), -56901i), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-369f, 2538f, 651f), true, vec2<bool>(true, true), 0i), vec3<f32>(-305f, 449f, -1000f), -1109f), Struct_2(4294967295u, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1000f, -1000f, -842f), true, vec2<bool>(true, false), -24925i), Struct_1(vec3<bool>(false, true, true), vec3<f32>(-306f, 503f, 399f), true, vec2<bool>(true, false), i32(-2147483648)), vec3<f32>(-1000f, -1000f, 1210f), -616f), Struct_2(1u, Struct_1(vec3<bool>(false, false, true), vec3<f32>(-111f, -103f, -925f), true, vec2<bool>(true, true), 1i), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-2129f, -791f, -1000f), false, vec2<bool>(false, false), 0i), vec3<f32>(1399f, -372f, -1024f), -310f), Struct_2(0u, Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1354f, 124f, 1733f), true, vec2<bool>(false, true), -27506i), Struct_1(vec3<bool>(false, false, false), vec3<f32>(-1000f, -1029f, 925f), true, vec2<bool>(false, true), -7692i), vec3<f32>(173f, -132f, -409f), -777f), Struct_2(97831u, Struct_1(vec3<bool>(true, true, false), vec3<f32>(-782f, -1000f, -157f), true, vec2<bool>(false, false), 2147483647i), Struct_1(vec3<bool>(true, false, true), vec3<f32>(-1000f, 813f, 1094f), true, vec2<bool>(false, false), 1694i), vec3<f32>(-505f, -230f, 1000f), 879f), Struct_2(9937u, Struct_1(vec3<bool>(false, false, false), vec3<f32>(238f, 759f, 752f), true, vec2<bool>(false, true), -49100i), Struct_1(vec3<bool>(false, true, false), vec3<f32>(363f, -1000f, -477f), true, vec2<bool>(true, true), 1i), vec3<f32>(1324f, -2324f, -725f), -839f), Struct_2(33179u, Struct_1(vec3<bool>(false, false, true), vec3<f32>(-135f, -1115f, 1296f), true, vec2<bool>(false, false), i32(-2147483648)), Struct_1(vec3<bool>(true, false, false), vec3<f32>(1965f, -134f, -335f), false, vec2<bool>(true, false), -6930i), vec3<f32>(-349f, -2112f, -551f), 2251f), Struct_2(4294967295u, Struct_1(vec3<bool>(false, true, true), vec3<f32>(-2395f, -604f, -517f), false, vec2<bool>(true, true), 46318i), Struct_1(vec3<bool>(false, true, false), vec3<f32>(1572f, -113f, 1256f), false, vec2<bool>(true, false), -59134i), vec3<f32>(397f, 1325f, 1347f), -1589f), Struct_2(41601u, Struct_1(vec3<bool>(true, false, false), vec3<f32>(1000f, 1000f, 1473f), false, vec2<bool>(false, false), 0i), Struct_1(vec3<bool>(false, false, true), vec3<f32>(1124f, 2859f, -551f), false, vec2<bool>(true, true), -48819i), vec3<f32>(-1000f, -512f, 2213f), -1094f), Struct_2(0u, Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1045f, -893f, -107f), false, vec2<bool>(true, true), -18019i), Struct_1(vec3<bool>(true, true, true), vec3<f32>(-1000f, -1000f, 950f), false, vec2<bool>(true, false), 42779i), vec3<f32>(523f, -891f, -862f), 1435f), Struct_2(4294967295u, Struct_1(vec3<bool>(true, false, false), vec3<f32>(721f, 1046f, 1562f), true, vec2<bool>(false, false), 0i), Struct_1(vec3<bool>(false, true, false), vec3<f32>(-682f, 138f, 169f), true, vec2<bool>(true, true), 0i), vec3<f32>(274f, -214f, -351f), -154f), Struct_2(4294967295u, Struct_1(vec3<bool>(true, true, false), vec3<f32>(-1251f, -1251f, -142f), true, vec2<bool>(false, false), 16674i), Struct_1(vec3<bool>(true, true, false), vec3<f32>(177f, -1074f, -687f), true, vec2<bool>(true, false), 33513i), vec3<f32>(1772f, -783f, 1114f), 418f));

var<private> global2: array<Struct_1, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> vec4<bool> {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_div_f32(arg_1.x, arg_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(arg_1.x, arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -213f, arg_0.b.x, arg_1.x) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-479f, arg_1.x, arg_1.x, -918f) - arg_1), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, -1188f, 1471f, arg_1.x))))))));
    let var_2 = Struct_3(vec3<i32>(-_wgslsmith_sub_i32(1i, -40001i), -54094i, -1i), _wgslsmith_f_op_f32(-var_1.x), ~vec2<u32>(~_wgslsmith_div_u32(1u, u_input.a.x), arg_0.a.x));
    global2 = array<Struct_1, 11>();
    global1 = array<Struct_2, 18>();
    return vec4<bool>(all(select(select(global0.zyz, vec3<bool>(global0.x, false, global0.x), false), select(!global0.wxx, !global0.yyz, global0.x), !select(vec3<bool>(arg_0.d, false, false), vec3<bool>(arg_0.d, false, global0.x), global0.wxx))), all(!select(select(vec4<bool>(arg_0.d, true, false, arg_0.d), vec4<bool>(false, false, global0.x, false), arg_0.d), !vec4<bool>(false, true, global0.x, false), !vec4<bool>(false, false, global0.x, true))), global0.x || !(!global0.x | all(vec4<bool>(true, arg_0.d, arg_0.d, true))), !(!arg_0.d));
}

fn func_2(arg_0: Struct_4) -> vec2<f32> {
    global0 = select(!select(select(vec4<bool>(arg_0.d, global0.x, false, global0.x), vec4<bool>(false, true, false, false), !vec4<bool>(false, true, false, global0.x)), !vec4<bool>(false, true, false, global0.x), arg_0.d), select(select(vec4<bool>(true & arg_0.d, all(vec3<bool>(global0.x, global0.x, true)), all(global0.yx), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(!vec4<bool>(arg_0.d, global0.x, true, global0.x), !func_3(arg_0, vec4<f32>(arg_0.b.x, -384f, arg_0.b.x, arg_0.b.x)), vec4<bool>(any(vec3<bool>(arg_0.d, arg_0.d, arg_0.d)), true, false | arg_0.d, arg_0.c.x > 1321f)), func_3(Struct_4(abs(arg_0.a), _wgslsmith_f_op_vec2_f32(arg_0.b - arg_0.c.zy), arg_0.c, !arg_0.d), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1420f, arg_0.c.x, arg_0.b.x, -725f))))))), vec4<bool>(true, (_wgslsmith_div_f32(-254f, arg_0.c.x) <= _wgslsmith_f_op_f32(step(1092f, arg_0.c.x))) && select(global0.x, true, arg_0.d), select(global0.x, !global0.x, true), (!global0.x | arg_0.d) | true));
    let var_0 = global1[_wgslsmith_index_u32(28253u, 18u)];
    let var_1 = select(!global0.zy, select(var_0.b.a.zx, func_3(Struct_4(select(vec2<u32>(36814u, u_input.a.x), vec2<u32>(24904u, 0u), arg_0.d), _wgslsmith_f_op_vec2_f32(-var_0.b.b.zz), arg_0.c, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(919f, var_0.c.b.x, 857f, arg_0.b.x)))).zy, reverseBits(var_0.b.e) > min(firstTrailingBit(var_0.c.e), _wgslsmith_mult_i32(var_0.b.e, -28622i))), any(var_0.b.a));
    global0 = vec4<bool>(2147483647i <= -_wgslsmith_add_i32(var_0.b.e, -11241i & var_0.b.e), true, countOneBits(_wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.c.e, 2147483647i), 0i)) > abs(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.e, 18618i, 41511i, 1i), vec4<i32>(-2147483647i, var_0.b.e, 2147483647i, var_0.b.e))), arg_0.d);
    let var_2 = ~_wgslsmith_add_vec2_i32(abs(~vec2<i32>(-2147483647i, -10039i)), ~reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(52029i, var_0.b.e), vec2<i32>(var_0.c.e, 1i), vec2<i32>(var_0.b.e, -13958i))));
    return _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-406f, var_0.d.x)));
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_4(vec2<u32>(4294967295u, 9707u), _wgslsmith_f_op_vec2_f32(func_2(Struct_4(vec2<u32>(~1u, u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(491f, 276f), vec2<f32>(-467f, 194f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1169f, -641f, -1876f), vec3<f32>(-948f, -318f, -1449f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1670f, -314f, -480f), vec3<f32>(808f, -305f, 332f)))), all(!global0.xyy)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-856f, -615f, 875f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1839f, -1175f, -439f)))))), global0.x);
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    global2 = array<Struct_1, 11>();
    var var_1 = vec4<bool>((countOneBits(abs(var_0.a.x)) > var_0.a.x) != true, any(!func_3(var_0, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.x, 570f, -1000f, -1202f), vec4<f32>(var_0.c.x, -2559f, var_0.b.x, var_0.b.x)))).yxw), !global0.x, any(!(!vec2<bool>(global0.x, true))));
    return vec3<i32>(-(i32(-1i) * -64152i), -20703i, -1i);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_3 {
    return Struct_3(abs(-countOneBits(arg_0) << (vec3<u32>(_wgslsmith_mult_u32(3740u, u_input.a.x), firstLeadingBit(1u), u_input.a.x ^ u_input.a.x) % vec3<u32>(32u))), arg_1.x, _wgslsmith_div_vec2_u32(abs(~(u_input.a.zw >> (vec2<u32>(48799u, u_input.a.x) % vec2<u32>(32u)))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 4492u, u_input.a.x)), u_input.a.x)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool) -> bool {
    var var_0 = Struct_3(select(~(vec3<i32>(12138i, arg_0.a.x, arg_0.a.x) >> (vec3<u32>(34833u, u_input.a.x, 29757u) % vec3<u32>(32u))) >> (u_input.a.ywz % vec3<u32>(32u)), vec3<i32>(arg_0.a.x, -2147483647i, -2147483647i), any(!global0.yy)), _wgslsmith_f_op_f32(sign(-1000f)), ~(~arg_1.a));
    var var_1 = arg_0;
    global2 = array<Struct_1, 11>();
    var var_2 = arg_0.b > func_4(var_0.a, vec4<f32>(arg_0.b, -2091f, _wgslsmith_f_op_f32(step(func_4(var_0.a, vec4<f32>(1740f, arg_1.b.x, -828f, arg_0.b)).b, _wgslsmith_f_op_f32(-138f - var_0.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1225f, -813f)))))).b;
    global1 = array<Struct_2, 18>();
    return any(global0.yyz);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 11>();
    global2 = array<Struct_1, 11>();
    let var_0 = -1i;
    global2 = array<Struct_1, 11>();
    let var_1 = vec3<bool>(true, func_5(func_4(-func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-133f, 1252f, -2569f, 1978f))))), Struct_4(vec2<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 400u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1642f, -1019f)))), vec3<f32>(1f, 1f, 1f), true), func_3(Struct_4(vec2<u32>(6630u, u_input.a.x) ^ vec2<u32>(u_input.a.x, 73545u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1302f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1702f, 327f, 406f)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-343f, -277f, 236f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(528f, -1179f, -398f, 1512f) + vec4<f32>(1818f, -1260f, -713f, 334f)))).x), !(!(global0.x && global0.x) && (func_3(Struct_4(vec2<u32>(14083u, u_input.a.x), vec2<f32>(-387f, 1548f), vec3<f32>(1634f, -272f, -326f), global0.x), vec4<f32>(-230f, -214f, -449f, 2483f)).x || false)));
    var var_2 = vec2<i32>(countOneBits(_wgslsmith_add_i32(var_0, _wgslsmith_sub_i32(var_0, 35373i))) >> ((~firstLeadingBit(4294967295u) & (~u_input.a.x ^ 0u)) % 32u), 2147483647i);
    var var_3 = abs(33014u);
    let var_4 = Struct_2(~u_input.a.x, Struct_1(vec3<bool>(func_3(Struct_4(vec2<u32>(u_input.a.x, 1u), vec2<f32>(1038f, 1000f), vec3<f32>(-676f, 230f, 1304f), true), vec4<f32>(224f, -1559f, 1074f, -334f)).x | select(false, false, false), false, true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(780f, 136f, -1583f))))), !var_1.x, !global0.xy, -_wgslsmith_add_i32(var_2.x >> (36662u % 32u), 0i)), global2[_wgslsmith_index_u32(u_input.a.x, 11u)], vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-793f, -322f)) + _wgslsmith_div_f32(177f, 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(635f + -254f)), _wgslsmith_f_op_f32(step(552f, -224f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1334f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -963f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-228f)), _wgslsmith_f_op_f32(floor(257f)), !var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -417f)))));
    var_2 = firstLeadingBit(max(~vec2<i32>(~1i, -2147483647i), -(~vec2<i32>(-2147483647i, 66549i))));
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(~select(-20731i, var_2.x, global0.x), var_4.b.e), ~abs(countOneBits(vec4<i32>(var_0, var_4.b.e, var_0, 5845i))), ~(-func_1()), -vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.x, var_0), vec3<i32>(var_0, 2147483647i, 0i)), countOneBits(var_2.x >> (0u % 32u))));
}

