struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec4<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<f32>(-1825f, 1542f, 1464f, 1211f), vec3<bool>(false, true, false)), Struct_1(vec4<f32>(-1619f, -103f, 801f, 492f), vec3<bool>(true, false, true)), Struct_1(vec4<f32>(1000f, 1000f, -877f, 350f), vec3<bool>(true, false, false)), Struct_1(vec4<f32>(385f, -1544f, 1016f, 1000f), vec3<bool>(true, true, true)), Struct_1(vec4<f32>(1302f, 1000f, 1000f, 942f), vec3<bool>(true, false, false)), Struct_1(vec4<f32>(589f, -152f, 1131f, 1715f), vec3<bool>(true, false, false)), Struct_1(vec4<f32>(459f, 232f, -485f, -913f), vec3<bool>(false, true, true)), Struct_1(vec4<f32>(-1970f, 1000f, -2160f, -1000f), vec3<bool>(true, false, true)), Struct_1(vec4<f32>(1000f, -335f, 198f, 1000f), vec3<bool>(true, false, true)), Struct_1(vec4<f32>(111f, 1159f, 753f, 601f), vec3<bool>(true, false, true)), Struct_1(vec4<f32>(1000f, 274f, 515f, -302f), vec3<bool>(false, false, true)), Struct_1(vec4<f32>(-528f, -1331f, -226f, -1557f), vec3<bool>(false, false, true)), Struct_1(vec4<f32>(158f, -1083f, -1985f, -494f), vec3<bool>(false, true, true)), Struct_1(vec4<f32>(970f, 1288f, -1465f, 527f), vec3<bool>(true, false, true)), Struct_1(vec4<f32>(-942f, -361f, 1950f, 1184f), vec3<bool>(true, true, false)), Struct_1(vec4<f32>(1807f, -1413f, 919f, 3303f), vec3<bool>(false, true, false)), Struct_1(vec4<f32>(2430f, -268f, -1026f, 851f), vec3<bool>(false, false, false)), Struct_1(vec4<f32>(-1070f, -678f, -714f, -1000f), vec3<bool>(false, false, true)), Struct_1(vec4<f32>(230f, -940f, 577f, 305f), vec3<bool>(false, false, true)));

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<f32>(1077f, -734f, -718f, 976f), vec3<bool>(false, false, true)), Struct_1(vec4<f32>(1074f, -1000f, -582f, 777f), vec3<bool>(true, true, true)), Struct_1(vec4<f32>(451f, 1279f, 2718f, 287f), vec3<bool>(true, true, false)), Struct_1(vec4<f32>(2106f, 1547f, 1000f, -764f), vec3<bool>(false, true, true)), Struct_1(vec4<f32>(1604f, 1565f, 236f, 156f), vec3<bool>(false, true, false)), Struct_1(vec4<f32>(-160f, 370f, -498f, -1441f), vec3<bool>(true, false, false)), Struct_1(vec4<f32>(-262f, -277f, 797f, -455f), vec3<bool>(true, true, false)), Struct_1(vec4<f32>(-1000f, 1391f, 1000f, -1229f), vec3<bool>(false, true, true)), Struct_1(vec4<f32>(892f, 537f, 388f, -177f), vec3<bool>(false, false, false)), Struct_1(vec4<f32>(-162f, -704f, 1293f, 1314f), vec3<bool>(false, false, true)), Struct_1(vec4<f32>(-1000f, 274f, -1409f, -671f), vec3<bool>(true, true, false)), Struct_1(vec4<f32>(-381f, 1211f, -1718f, 377f), vec3<bool>(true, true, true)));

var<private> global3: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-261f, -734f, 2474f, -1259f), vec4<f32>(1061f, 827f, 1062f, 826f), vec4<f32>(-250f, -192f, -1000f, 1024f), vec4<f32>(-2171f, 124f, -273f, -308f), vec4<f32>(-648f, -594f, -307f, -293f), vec4<f32>(-212f, 1639f, 607f, 1027f), vec4<f32>(391f, -566f, 570f, 1725f), vec4<f32>(-1224f, 1546f, -135f, -280f), vec4<f32>(-1160f, 880f, 215f, -1000f), vec4<f32>(2310f, -1172f, -301f, -643f), vec4<f32>(1208f, 1019f, 349f, -1736f), vec4<f32>(379f, -984f, -568f, -2403f), vec4<f32>(308f, 1103f, 1856f, -828f), vec4<f32>(-204f, -1605f, -1000f, -181f), vec4<f32>(178f, 1653f, -1038f, -915f), vec4<f32>(-597f, 291f, -1027f, -158f), vec4<f32>(-763f, 616f, 624f, -1446f), vec4<f32>(-1717f, -287f, 577f, -1308f), vec4<f32>(804f, -1000f, -336f, 720f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1020f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-315f, 776f), vec2<f32>(-2401f, 621f))))))));
    let var_1 = 18367i;
    let var_2 = vec4<bool>(true, true, (-1i ^ ~(-u_input.e.x)) == -u_input.d.x, select(true, false, any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), 1u >= u_input.c))));
    let var_3 = ~reverseBits(u_input.a);
    global1 = array<Struct_1, 19>();
    return ~firstTrailingBit(_wgslsmith_add_i32(u_input.b.x, 103523i));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global2 = array<Struct_1, 12>();
    let var_0 = arg_0.a.wxz;
    global2 = array<Struct_1, 12>();
    global0 = _wgslsmith_dot_vec3_i32(~u_input.d.wwx, vec3<i32>(-2147483647i, firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, 42074i)), func_3()) | min(vec3<i32>(countOneBits(-19857i), u_input.b.x, firstTrailingBit(-1i)), ~abs(vec3<i32>(u_input.e.x, u_input.b.x, -37712i))));
    let var_1 = global2[_wgslsmith_index_u32(1u, 12u)];
    return Struct_2(var_1.a.xyx, -_wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.b.x, 0i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 15512i)), -u_input.d), arg_0, vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x) * -384f) >= var_1.a.x), 32022i);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0.c.a.x)), arg_0.a.x, !arg_0.d.x)), _wgslsmith_f_op_f32(select(-506f, -1286f, all(vec4<bool>(true, arg_0.c.b.x, arg_0.d.x, arg_0.c.b.x))))))), !(!select(!vec4<bool>(true, arg_0.c.b.x, arg_0.c.b.x, arg_0.d.x), vec4<bool>(true, true, arg_0.d.x, arg_0.d.x), any(arg_0.c.b))), vec4<u32>(~(~4294967295u), ~1u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(u_input.c, u_input.c), u_input.a.x ^ 86991u, u_input.a.x >> (u_input.a.x % 32u)), vec4<u32>(abs(u_input.a.x), _wgslsmith_clamp_u32(37155u, u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_mod_u32(0u, 10098u)))));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    global0 = 67326i;
    var var_0 = Struct_4(func_4(func_2(global2[_wgslsmith_index_u32(u_input.a.x, 12u)]), u_input.d.x, _wgslsmith_f_op_f32(-1985f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + arg_0), -680f)))), ~(~(~(~56757u))), vec4<bool>(true, all(vec4<bool>(true, true, true, false)) && false, !(true & func_2(global1[_wgslsmith_index_u32(u_input.c, 19u)]).d.x), false), Struct_3(vec2<f32>(1893f, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(round(-314f)))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), !all(vec3<bool>(true, false, false))), ~(~(~vec4<u32>(1u, u_input.c, 58089u, u_input.c)))));
    var var_1 = Struct_4(func_4(func_2(global2[_wgslsmith_index_u32(1u, 12u)]), u_input.b.x << ((_wgslsmith_mod_u32(var_0.d.c.x, u_input.a.x) >> (_wgslsmith_sub_u32(u_input.a.x, 26380u) % 32u)) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -689f)), 95700u, select(!func_4(Struct_2(vec3<f32>(var_0.a.a.x, arg_0, var_0.a.a.x), u_input.d, Struct_1(vec4<f32>(-289f, arg_0, 689f, var_0.a.a.x), var_0.d.b.yzw), var_0.a.b.wx, u_input.e.x), u_input.d.x, var_0.a.a.x).b, var_0.c, select(!var_0.c, vec4<bool>(!var_0.d.b.x, false, true, select(true, var_0.a.b.x, false)), select(vec4<bool>(false, var_0.c.x, true, var_0.a.b.x), !var_0.a.b, !var_0.c))), var_0.a);
    var var_2 = func_4(func_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(~46153u, var_0.b), 0u), 19u)]), abs(-_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(2147483647i, 1i, -2147483647i)), u_input.b)), _wgslsmith_f_op_f32(-arg_0)).b.xxx;
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, var_1.d.a.x, -435f))), vec3<f32>(-408f, var_1.a.a.x, arg_0), !var_2.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, 703f, -1089f))))))), select(-(u_input.d ^ -vec4<i32>(u_input.d.x, u_input.e.x, -1i, 1i)), vec4<i32>(-1i >> (u_input.c % 32u), u_input.b.x, 2147483647i, 2147483647i) | _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(30721i, u_input.b.x, u_input.b.x, -16546i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -4839i, -2147483647i, -24405i), vec4<i32>(u_input.d.x, u_input.e.x, -2147483647i, u_input.e.x))), false), global1[_wgslsmith_index_u32(39081u, 19u)], vec2<bool>(true, !select(!var_1.a.b.x, all(vec4<bool>(var_1.c.x, var_2.x, var_1.a.b.x, var_0.d.b.x)), all(var_0.a.b))), u_input.b.x >> (~u_input.a.x % 32u));
    return var_1.d.c.xx;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 12>();
    global3 = array<vec4<f32>, 19>();
    var var_0 = abs(vec2<i32>(20116i, _wgslsmith_dot_vec2_i32(u_input.e.xz, (u_input.b.yx ^ u_input.b.xz) << (func_1(-1569f) % vec2<u32>(32u)))));
    let var_1 = func_2(func_2(func_2(Struct_1(vec4<f32>(-171f, -495f, -1000f, 802f), func_2(global1[_wgslsmith_index_u32(1u, 19u)]).c.b)).c).c);
    global2 = array<Struct_1, 12>();
    let var_2 = func_2(var_1.c).c;
    global1 = array<Struct_1, 19>();
    var_0 = var_1.b.yy;
    let var_3 = var_1.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(528f, _wgslsmith_f_op_vec4_f32(var_2.a + vec4<f32>(var_1.c.a.x, _wgslsmith_f_op_f32(-881f * 1043f), _wgslsmith_f_op_f32(abs(-1557f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_2.a.x)))))), u_input.a.xz);
}

