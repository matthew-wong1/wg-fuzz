struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_1(vec4<f32>(-1630f, 878f, -244f, -1559f), vec2<i32>(-26572i, i32(-2147483648)), vec2<bool>(false, false)), -944f, 6783u), Struct_3(Struct_1(vec4<f32>(367f, -300f, -1000f, 1753f), vec2<i32>(1i, 3143i), vec2<bool>(true, true)), 468f, 18980u), Struct_3(Struct_1(vec4<f32>(1277f, -701f, -755f, -431f), vec2<i32>(i32(-2147483648), -22723i), vec2<bool>(false, false)), -721f, 4294967295u), Struct_3(Struct_1(vec4<f32>(1000f, 225f, -1244f, 251f), vec2<i32>(2147483647i, 1i), vec2<bool>(true, true)), -438f, 73013u), Struct_3(Struct_1(vec4<f32>(-1598f, 1144f, -398f, 191f), vec2<i32>(-36101i, 13307i), vec2<bool>(false, false)), -198f, 1u), Struct_3(Struct_1(vec4<f32>(-462f, 930f, 2129f, -1060f), vec2<i32>(8069i, 16220i), vec2<bool>(false, true)), 536f, 0u), Struct_3(Struct_1(vec4<f32>(-1000f, -1582f, 600f, 681f), vec2<i32>(33424i, 963i), vec2<bool>(false, true)), -1036f, 1u), Struct_3(Struct_1(vec4<f32>(1336f, -1205f, 747f, -255f), vec2<i32>(-33628i, -31839i), vec2<bool>(false, true)), 1168f, 14238u), Struct_3(Struct_1(vec4<f32>(1220f, -215f, -431f, -149f), vec2<i32>(i32(-2147483648), 30171i), vec2<bool>(true, true)), 631f, 14859u), Struct_3(Struct_1(vec4<f32>(763f, -2034f, 378f, 298f), vec2<i32>(-1i, -1i), vec2<bool>(true, false)), 567f, 4294967295u), Struct_3(Struct_1(vec4<f32>(791f, -459f, -962f, 1109f), vec2<i32>(1i, 11365i), vec2<bool>(false, false)), 632f, 4294967295u), Struct_3(Struct_1(vec4<f32>(-296f, -2096f, 1000f, 339f), vec2<i32>(0i, -8328i), vec2<bool>(true, true)), -635f, 0u), Struct_3(Struct_1(vec4<f32>(-919f, 107f, 1165f, 2273f), vec2<i32>(-69948i, 64533i), vec2<bool>(true, false)), 796f, 51342u), Struct_3(Struct_1(vec4<f32>(288f, -1000f, 674f, -493f), vec2<i32>(1i, 40857i), vec2<bool>(false, false)), 130f, 0u), Struct_3(Struct_1(vec4<f32>(-293f, -1286f, -760f, 406f), vec2<i32>(7917i, 0i), vec2<bool>(true, false)), -1226f, 50660u), Struct_3(Struct_1(vec4<f32>(-981f, 1116f, -502f, 1283f), vec2<i32>(-18260i, i32(-2147483648)), vec2<bool>(false, false)), -427f, 3752u), Struct_3(Struct_1(vec4<f32>(-956f, -1525f, 779f, 1885f), vec2<i32>(0i, 26745i), vec2<bool>(true, false)), -1732f, 1u), Struct_3(Struct_1(vec4<f32>(-1000f, -279f, 727f, -483f), vec2<i32>(1i, 0i), vec2<bool>(false, false)), -981f, 22830u));

var<private> global1: f32 = -1076f;

var<private> global2: array<i32, 32>;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: vec2<u32>) -> bool {
    var var_0 = arg_0;
    var var_1 = global0[_wgslsmith_index_u32(55257u, 18u)];
    var var_2 = global0[_wgslsmith_index_u32(~(~11005u), 18u)];
    global3 = select(vec4<bool>(true, arg_2.a.c.x, !(countOneBits(-12847i) < countOneBits(var_0.b)), arg_0.a.c.x), vec4<bool>(all(vec3<bool>(false, global3.x, !arg_2.a.c.x)), arg_2.a.c.x, true, true), vec4<bool>(any(select(select(vec4<bool>(arg_0.a.c.x, var_0.a.c.x, false, true), vec4<bool>(false, var_0.a.c.x, var_1.a.c.x, false), global3.x), vec4<bool>(global3.x, false, var_0.a.c.x, true), all(vec3<bool>(arg_2.a.c.x, var_0.a.c.x, false)))), false, false, false));
    var_2 = arg_2;
    return !all(vec3<bool>(!all(vec4<bool>(var_2.a.c.x, false, true, true)), _wgslsmith_f_op_f32(arg_0.a.a.x * var_1.b) < arg_2.b, !(!global3.x)));
}

fn func_2() -> i32 {
    global3 = !vec4<bool>(true, false, global3.x, func_3(Struct_2(Struct_1(vec4<f32>(-877f, 1854f, -643f, -2187f), u_input.d, global3.xw), u_input.e, vec3<i32>(global2[_wgslsmith_index_u32(5547u, 32u)], u_input.d.x, global2[_wgslsmith_index_u32(u_input.a, 32u)]), u_input.c.x), _wgslsmith_clamp_i32(u_input.d.x, global2[_wgslsmith_index_u32(0u, 32u)], -15810i), Struct_3(Struct_1(vec4<f32>(-802f, -718f, 2914f, -863f), vec2<i32>(43170i, global2[_wgslsmith_index_u32(u_input.a, 32u)]), global3.yz), 540f, 36206u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 73594u), u_input.c.zz)) && global3.x);
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -659f, -573f, 1492f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -177f), 369f, _wgslsmith_f_op_f32(max(323f, -432f)), _wgslsmith_div_f32(-1000f, -233f)))), u_input.b.zz, global3.wz), ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -15619i), u_input.d) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.c.x, 1u), vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 2875u)) % 32u), -u_input.e), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(select(u_input.b, u_input.b, global3.x), abs(vec3<i32>(u_input.b.x, global2[_wgslsmith_index_u32(26609u, 32u)], 1i))), select(-vec3<i32>(2147483647i, -2147483647i, -11476i), select(u_input.b, vec3<i32>(u_input.b.x, -14343i, u_input.d.x), vec3<bool>(false, global3.x, true)), !vec3<bool>(global3.x, global3.x, false)), vec3<i32>(~(-1i), 30860i, global2[_wgslsmith_index_u32(44296u | u_input.c.x, 32u)])), u_input.b), u_input.c.x << (~(~_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u)) % 32u));
    let var_1 = global0[_wgslsmith_index_u32(61975u, 18u)];
    let var_2 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~var_1.c, select(~u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, 3402u), true)), vec3<u32>(~46792u, u_input.c.x, _wgslsmith_mult_u32(~var_1.c, ~0u)));
    let var_3 = var_0.a.c;
    return -var_1.a.b.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + 468f), 1655f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x)) - _wgslsmith_f_op_f32(arg_1.a.x + 630f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x), -500f))), arg_1.a)), u_input.d, global3.zz);
    let var_1 = Struct_2(Struct_1(vec4<f32>(var_0.a.x, -975f, 278f, -1809f), (reverseBits(vec2<i32>(u_input.d.x, global2[_wgslsmith_index_u32(15910u, 32u)])) | var_0.b) >> (reverseBits(u_input.c.yy) % vec2<u32>(32u)), vec2<bool>(var_0.c.x, any(global3.xzw))), -min(-50990i, _wgslsmith_dot_vec3_i32(u_input.b, u_input.b)) & func_2(), vec3<i32>(abs(16317i), min(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 0u, 4294967295u), vec4<u32>(0u, 69458u, 1u, u_input.c.x)), 32u)], firstLeadingBit(2147483647i)) >> (_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), 4294967295u) % 32u), _wgslsmith_mod_i32(min(0i, arg_1.b.x) << (~u_input.c.x % 32u), u_input.d.x)), min(0u, countOneBits(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.c.x, 24981u, u_input.a)), vec3<u32>(u_input.a, 19017u, arg_0) | u_input.c))));
    global3 = select(select(select(!(!vec4<bool>(var_0.c.x, var_0.c.x, arg_1.c.x, arg_1.c.x)), select(vec4<bool>(arg_1.c.x, global3.x, false, var_0.c.x), vec4<bool>(true, var_0.c.x, var_1.a.c.x, arg_1.c.x), true), vec4<bool>(var_1.a.c.x, arg_1.a.x > var_0.a.x, true, var_0.c.x)), vec4<bool>(!(629f > arg_1.a.x), var_1.a.c.x, true && all(global3.zy), 1u > ~var_1.d), select(vec4<bool>(false, true, var_1.a.c.x, var_0.c.x | true), !select(vec4<bool>(false, var_1.a.c.x, false, var_1.a.c.x), vec4<bool>(arg_1.c.x, var_1.a.c.x, false, var_0.c.x), false), select(select(vec4<bool>(false, var_1.a.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, var_1.a.c.x, true, false), true), !vec4<bool>(true, global3.x, var_0.c.x, true), vec4<bool>(arg_1.c.x, true, false, true)))), vec4<bool>((select(4294967295u, u_input.a, global3.x) >= ~var_1.d) | false, func_3(var_1, 50066i >> (firstLeadingBit(4035u) % 32u), Struct_3(Struct_1(var_1.a.a, vec2<i32>(var_1.a.b.x, var_0.b.x), vec2<bool>(var_1.a.c.x, var_0.c.x)), arg_1.a.x, _wgslsmith_mult_u32(var_1.d, u_input.c.x)), ~abs(vec2<u32>(arg_0, u_input.c.x))), _wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.zz | vec2<u32>(71968u, var_1.d)) == ~arg_0, !var_1.a.c.x), !vec4<bool>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(arg_0, u_input.a, var_1.d)) >= _wgslsmith_mod_u32(7519u, var_1.d), arg_1.c.x, func_3(Struct_2(var_0, var_0.b.x, vec3<i32>(u_input.e, arg_1.b.x, 6068i), u_input.a), _wgslsmith_sub_i32(-20666i, u_input.d.x), Struct_3(Struct_1(vec4<f32>(arg_1.a.x, var_0.a.x, var_0.a.x, var_1.a.a.x), arg_1.b, global3.zw), arg_1.a.x, var_1.d), u_input.c.yy), (var_1.d >> (u_input.a % 32u)) == _wgslsmith_mod_u32(1276u, 1u)));
    var var_2 = u_input.a;
    var_2 = firstTrailingBit(~11537u);
    return -323f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_1(83066u, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1005f, -517f, 511f, -1321f) * vec4<f32>(-1273f, -793f, 301f, -575f)), vec2<i32>(-2147483647i, -34639i), vec2<bool>(false, global3.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -656f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a, Struct_1(vec4<f32>(1397f, -1310f, 181f, -262f), vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.c.x, 32u)]), global3.yx))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(962f, -1000f)))), -843f)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1814f, -164f, var_0.x, var_0.x), vec4<f32>(1996f, 1381f, var_0.x, 376f))) - vec4<f32>(930f, var_0.x, var_0.x, -1455f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, var_0.x, -799f, var_0.x)))))), reverseBits(countOneBits(vec2<i32>(countOneBits(33074i), -1250i))), global3.yy);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2043f, 1474f, -658f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 911f, -1000f, var_0.x)))), var_1.a)), vec2<i32>(-1i >> (~u_input.c.x % 32u), countOneBits(-57729i)), select(vec2<bool>(var_1.c.x, global3.x), !select(vec2<bool>(true, var_1.c.x), vec2<bool>(true, false), var_1.c), false)), u_input.e, max(min(select(u_input.b, vec3<i32>(u_input.b.x, var_1.b.x, 19395i), vec3<bool>(false, var_1.c.x, true)), u_input.b), u_input.b) ^ -abs(u_input.b), ~u_input.c.x);
    let var_3 = vec3<u32>(~abs(~4294967295u), var_2.d, var_2.d);
    var var_4 = global0[_wgslsmith_index_u32(u_input.c.x, 18u)];
    global1 = _wgslsmith_div_f32(675f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-699f - var_2.a.a.x), _wgslsmith_f_op_f32(-255f - 385f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_4.b))))))));
    var_2 = Struct_2(var_2.a, _wgslsmith_mod_i32(u_input.d.x, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_2.c, vec3<i32>(global2[_wgslsmith_index_u32(var_4.c, 32u)], u_input.d.x, -34706i)), abs(36994i))), vec3<i32>(-65450i, u_input.e, abs(abs(countOneBits(var_2.a.b.x)))), var_2.d);
    let var_5 = Struct_2(Struct_1(var_1.a, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_4.a.b.x, var_4.a.b.x), var_1.b), ~(var_1.b << (u_input.c.zy % vec2<u32>(32u)))), var_1.c), _wgslsmith_div_i32(i32(-1i) * -21474i, _wgslsmith_sub_i32(18504i, -var_4.a.b.x) | _wgslsmith_sub_i32(select(var_2.a.b.x, 0i, true), 1i)), var_2.c & vec3<i32>(_wgslsmith_clamp_i32(29359i >> (var_2.d % 32u), -30806i, abs(23279i)), -73931i, -(-29299i | u_input.d.x)), _wgslsmith_mod_u32(~min(~var_4.c, ~79693u), firstTrailingBit(select(4294967295u, u_input.c.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstLeadingBit(var_2.a.b.x) ^ ~_wgslsmith_mult_i32(19076i, var_4.a.b.x)));
}

