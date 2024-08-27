struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec4<f32>(927f, 699f, -1938f, 832f), vec2<bool>(false, false), true), Struct_1(vec4<f32>(-412f, -407f, -1354f, -1061f), vec2<bool>(true, false), false), Struct_1(vec4<f32>(-231f, -726f, 151f, 1087f), vec2<bool>(true, false), true));

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec4<f32>(-828f, 651f, -915f, -1893f), vec2<bool>(true, false), true)), Struct_2(Struct_1(vec4<f32>(313f, 1000f, 1433f, 1000f), vec2<bool>(false, false), true)), Struct_2(Struct_1(vec4<f32>(393f, -1170f, -521f, 1019f), vec2<bool>(true, false), true)), Struct_2(Struct_1(vec4<f32>(-464f, 640f, -641f, 440f), vec2<bool>(true, false), false)), Struct_2(Struct_1(vec4<f32>(-345f, 698f, -786f, 138f), vec2<bool>(false, false), false)), Struct_2(Struct_1(vec4<f32>(1144f, 420f, 582f, -314f), vec2<bool>(true, true), true)), Struct_2(Struct_1(vec4<f32>(864f, 502f, 1170f, -850f), vec2<bool>(true, false), false)), Struct_2(Struct_1(vec4<f32>(256f, -1846f, 189f, -600f), vec2<bool>(false, false), true)), Struct_2(Struct_1(vec4<f32>(-1000f, 595f, -270f, 531f), vec2<bool>(false, false), false)), Struct_2(Struct_1(vec4<f32>(-1000f, -325f, 931f, 656f), vec2<bool>(false, true), false)), Struct_2(Struct_1(vec4<f32>(483f, -607f, -341f, -223f), vec2<bool>(false, false), false)), Struct_2(Struct_1(vec4<f32>(-357f, -235f, 954f, 329f), vec2<bool>(false, true), false)), Struct_2(Struct_1(vec4<f32>(-150f, -101f, 351f, 1088f), vec2<bool>(true, false), false)), Struct_2(Struct_1(vec4<f32>(365f, -188f, 1315f, -123f), vec2<bool>(false, false), false)), Struct_2(Struct_1(vec4<f32>(-1437f, 477f, 256f, -1120f), vec2<bool>(true, true), true)), Struct_2(Struct_1(vec4<f32>(-1087f, 149f, 1000f, 1509f), vec2<bool>(true, true), false)), Struct_2(Struct_1(vec4<f32>(-1000f, 1766f, -850f, 821f), vec2<bool>(true, true), true)), Struct_2(Struct_1(vec4<f32>(1058f, -467f, 122f, -1000f), vec2<bool>(true, true), false)), Struct_2(Struct_1(vec4<f32>(362f, -1336f, 722f, 328f), vec2<bool>(false, true), false)), Struct_2(Struct_1(vec4<f32>(151f, 1676f, 1000f, 604f), vec2<bool>(true, true), true)), Struct_2(Struct_1(vec4<f32>(-1000f, -1090f, 478f, 1046f), vec2<bool>(true, true), true)), Struct_2(Struct_1(vec4<f32>(1444f, 827f, -251f, -1188f), vec2<bool>(true, false), true)), Struct_2(Struct_1(vec4<f32>(1990f, -281f, 160f, -575f), vec2<bool>(true, true), false)), Struct_2(Struct_1(vec4<f32>(-259f, 1288f, -985f, 302f), vec2<bool>(false, false), false)), Struct_2(Struct_1(vec4<f32>(954f, -729f, -228f, -735f), vec2<bool>(true, false), false)), Struct_2(Struct_1(vec4<f32>(1364f, 349f, 357f, 1000f), vec2<bool>(true, false), false)), Struct_2(Struct_1(vec4<f32>(-920f, 1849f, -1000f, 497f), vec2<bool>(true, false), true)), Struct_2(Struct_1(vec4<f32>(728f, -704f, -513f, -893f), vec2<bool>(false, true), false)), Struct_2(Struct_1(vec4<f32>(1249f, 902f, 285f, -1374f), vec2<bool>(true, false), true)), Struct_2(Struct_1(vec4<f32>(525f, -345f, -733f, -1193f), vec2<bool>(false, true), false)), Struct_2(Struct_1(vec4<f32>(-1588f, -1858f, 514f, -485f), vec2<bool>(false, false), false)), Struct_2(Struct_1(vec4<f32>(226f, 291f, 608f, -1353f), vec2<bool>(false, false), false)));

var<private> global2: f32;

var<private> global3: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    global1 = array<Struct_2, 32>();
    let var_0 = vec4<i32>(reverseBits(-2147483647i), -u_input.b, max(u_input.b, _wgslsmith_mod_i32(min(2147483647i, i32(-1i) * -2172i), 12977i)), _wgslsmith_mod_i32(abs(~u_input.b | u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 1i, 28052i) >> (u_input.a.zyz % vec3<u32>(32u)), -vec3<i32>(u_input.b, u_input.b, 37874i)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -17668i, u_input.b), vec3<i32>(1i, -4248i, u_input.b), vec3<i32>(u_input.b, u_input.b, 5159i)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + -2917f), arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), -2752f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)))));
    let var_2 = false;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -185f, -1167f)), vec4<f32>(arg_0.x, -1000f, arg_0.x, arg_0.x)))))), select(vec2<bool>(all(vec2<bool>(false, var_2)), var_2), vec2<bool>((u_input.b == u_input.b) | (arg_0.x < -1160f), (false && var_2) != !var_2), !any(!vec4<bool>(true, var_2, true, true))), false);
    return var_0.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = ~1i;
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_sub_u32(~4294967295u, _wgslsmith_clamp_u32(1u, arg_0, u_input.c))), 3u)]);
    var var_2 = abs(_wgslsmith_div_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 52160i, u_input.b), vec4<i32>(u_input.b, 30857i, 11084i, u_input.b) ^ vec4<i32>(0i, 2147483647i, 2147483647i, u_input.b)), -abs(vec4<i32>(18283i, 95i, -1i, 15121i) << (vec4<u32>(0u, 64121u, 0u, arg_0) % vec4<u32>(32u)))));
    var var_3 = Struct_3(~(-(func_3(vec3<f32>(var_1.a.a.x, -431f, -1000f)) | func_3(vec3<f32>(var_1.a.a.x, 1596f, var_1.a.a.x)))), var_1.a, _wgslsmith_f_op_f32(var_1.a.a.x + var_1.a.a.x));
    global3 = -1643f;
    return Struct_1(var_3.b.a, var_3.b.b, all(vec4<bool>(!(!var_3.b.c), !select(true, var_1.a.c, var_3.b.b.x), var_1.a.c, var_3.b.c || (1i >= var_3.a))));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> vec2<f32> {
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(-arg_0.b.a.x));
    let var_0 = func_2(~u_input.a.x);
    var var_1 = func_2(u_input.c);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x + arg_0.c), _wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(arg_2 * var_0.a.x))), vec2<bool>(true, true), var_1.c));
    global0 = array<Struct_1, 3>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(abs(var_2.a.a.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1966f)))))), -1751f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_3(u_input.b, global0[_wgslsmith_index_u32(36463u, 3u)], -1103f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-846f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1362f, 306f) * vec2<f32>(-1662f, 466f)))), vec2<f32>(980f, _wgslsmith_f_op_f32(-216f * -1000f)), select(!vec2<bool>(var_0, false), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), var_0), vec2<bool>(var_0, true)))), vec2<f32>(-1209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-165f + 1049f) + -1299f))), true));
    global2 = _wgslsmith_f_op_f32(round(335f));
    let var_2 = func_2(~(~4294967295u));
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-328f, 973f), _wgslsmith_f_op_vec2_f32(func_1(Struct_3(u_input.b, var_2, -957f), true, var_2.a.x)).x, -1643f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.a.xxz)))));
}

