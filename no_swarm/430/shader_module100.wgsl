struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(1049f, Struct_1(vec3<i32>(2147483647i, -11210i, 0i), 1541f, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(i32(-2147483648), -49674i, 2147483647i), 1443f, vec3<bool>(true, true, true))), Struct_2(-1000f, Struct_1(vec3<i32>(22021i, -60528i, -55561i), 2198f, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(15687i, 57224i, 5512i), -776f, vec3<bool>(true, false, false))), Struct_2(-1000f, Struct_1(vec3<i32>(i32(-2147483648), 0i, 2147483647i), -1513f, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(1i, 2147483647i, 2147483647i), 105f, vec3<bool>(true, true, false))), Struct_2(237f, Struct_1(vec3<i32>(18264i, 4617i, -26905i), 1881f, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(-23023i, -11337i, 1i), 508f, vec3<bool>(true, true, true))), Struct_2(152f, Struct_1(vec3<i32>(-50486i, -26723i, -76710i), 471f, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(15897i, 1i, -43099i), -203f, vec3<bool>(false, false, true))), Struct_2(-1644f, Struct_1(vec3<i32>(-11280i, 1i, 0i), 1021f, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(1236i, -1i, 2147483647i), -1396f, vec3<bool>(true, false, true))), Struct_2(-343f, Struct_1(vec3<i32>(-10381i, 1i, -15670i), 225f, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(i32(-2147483648), -53793i, i32(-2147483648)), -223f, vec3<bool>(true, false, true))), Struct_2(-191f, Struct_1(vec3<i32>(i32(-2147483648), 27904i, 45769i), -1000f, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(47341i, 1i, i32(-2147483648)), 397f, vec3<bool>(false, true, true))), Struct_2(-138f, Struct_1(vec3<i32>(23353i, -32015i, 0i), -579f, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(1i, 32242i, 1i), -2038f, vec3<bool>(true, true, false))), Struct_2(149f, Struct_1(vec3<i32>(i32(-2147483648), -1i, -55163i), 1189f, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(-30307i, 39971i, 37100i), -729f, vec3<bool>(false, false, false))), Struct_2(-335f, Struct_1(vec3<i32>(18410i, -1i, 2147483647i), -1000f, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 35239i), 1244f, vec3<bool>(false, false, true))), Struct_2(-410f, Struct_1(vec3<i32>(-18085i, -1i, 33122i), -216f, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(-18589i, -1i, i32(-2147483648)), 1789f, vec3<bool>(false, true, true))), Struct_2(-423f, Struct_1(vec3<i32>(-1i, -5785i, i32(-2147483648)), 573f, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 1i), -762f, vec3<bool>(false, false, true))), Struct_2(1750f, Struct_1(vec3<i32>(26356i, 8439i, i32(-2147483648)), -1043f, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(54850i, 91772i, 1i), 651f, vec3<bool>(false, false, false))), Struct_2(638f, Struct_1(vec3<i32>(2147483647i, -14828i, 6411i), -448f, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(-22313i, i32(-2147483648), -1i), -222f, vec3<bool>(false, false, true))), Struct_2(328f, Struct_1(vec3<i32>(-1i, -58932i, 2147483647i), 1300f, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(17452i, -14138i, 2147483647i), 595f, vec3<bool>(false, true, false))), Struct_2(-727f, Struct_1(vec3<i32>(2147483647i, 0i, 0i), -1389f, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(3835i, 0i, -59150i), 643f, vec3<bool>(true, false, true))), Struct_2(-215f, Struct_1(vec3<i32>(1i, -21118i, 1i), -215f, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(-25848i, 2147483647i, -35713i), 1863f, vec3<bool>(true, true, false))), Struct_2(-317f, Struct_1(vec3<i32>(1i, -1i, 0i), -902f, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(1i, -8200i, 33478i), 278f, vec3<bool>(false, false, true))), Struct_2(2333f, Struct_1(vec3<i32>(0i, 0i, 6032i), -2344f, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(-42566i, 1i, -21049i), 180f, vec3<bool>(false, true, false))), Struct_2(-328f, Struct_1(vec3<i32>(1i, 0i, 1i), 1479f, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(56736i, -47844i, i32(-2147483648)), 617f, vec3<bool>(false, false, true))), Struct_2(-441f, Struct_1(vec3<i32>(-30002i, 58957i, 50074i), -1000f, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(-1i, 7903i, 1i), 1828f, vec3<bool>(true, true, false))), Struct_2(121f, Struct_1(vec3<i32>(-6625i, 498i, 0i), -1062f, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(2147483647i, 4654i, 0i), 1878f, vec3<bool>(false, false, false))), Struct_2(-1001f, Struct_1(vec3<i32>(1i, i32(-2147483648), -3665i), -930f, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(15386i, i32(-2147483648), -16997i), -1000f, vec3<bool>(true, false, true))), Struct_2(-1178f, Struct_1(vec3<i32>(-28178i, 1096i, 1i), -1130f, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 2147483647i), 920f, vec3<bool>(false, true, true))), Struct_2(1764f, Struct_1(vec3<i32>(2147483647i, -18233i, -21903i), 977f, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(-1i, -1i, 61178i), -208f, vec3<bool>(true, true, false))), Struct_2(-143f, Struct_1(vec3<i32>(1i, -3i, 0i), 689f, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(1i, -96340i, -64565i), 179f, vec3<bool>(true, false, false))), Struct_2(1783f, Struct_1(vec3<i32>(17356i, 0i, 4364i), 2058f, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(2147483647i, -26232i, 0i), -1730f, vec3<bool>(false, true, true))), Struct_2(-219f, Struct_1(vec3<i32>(-1i, 15351i, -12630i), 225f, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(42451i, i32(-2147483648), -13335i), -2161f, vec3<bool>(true, true, false))), Struct_2(-1597f, Struct_1(vec3<i32>(0i, 2147483647i, -16952i), 1771f, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(10039i, 0i, -13021i), -990f, vec3<bool>(true, false, false))));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global0 = Struct_1(min(vec3<i32>(1i, ~_wgslsmith_sub_i32(0i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, global0.a.x, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -16218i, arg_0.x), vec4<i32>(43430i, arg_0.x, arg_0.x, -1i)))), reverseBits(firstTrailingBit(vec3<i32>(global0.a.x, arg_0.x, 1836i) >> (vec3<u32>(u_input.a.x, u_input.a.x, 11726u) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(abs(global0.b)), select(select(global0.c, select(vec3<bool>(global0.c.x, true, true), select(vec3<bool>(global0.c.x, true, global0.c.x), vec3<bool>(true, false, global0.c.x), false), true), !select(vec3<bool>(true, false, global0.c.x), vec3<bool>(global0.c.x, global0.c.x, false), global0.c.x)), global0.c, select(global0.c, global0.c, any(vec4<bool>(false, false, global0.c.x, false)))));
    global1 = array<Struct_2, 30>();
    global1 = array<Struct_2, 30>();
    let var_0 = Struct_1(global0.a, global0.b, global0.c);
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 30u)];
    return global1[_wgslsmith_index_u32(0u, 30u)];
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: bool) -> vec3<i32> {
    var var_0 = global1[_wgslsmith_index_u32(~82018u, 30u)];
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(abs(861f)), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1740f + 1000f)))), vec3<bool>(arg_2, !arg_1.x, true & arg_2));
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 1u)), (max(u_input.a.x, u_input.a.x) | 34364u) ^ _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~max(0u, 76691u)) & (vec3<u32>(u_input.a.x, u_input.a.x, 9177u) | vec3<u32>(firstLeadingBit(~4294967295u), 4294967295u, 41857u));
    global1 = array<Struct_2, 30>();
    global0 = Struct_1(~_wgslsmith_add_vec3_i32(arg_0.c.a, -(vec3<i32>(var_0.b.a.x, global0.a.x, var_0.b.a.x) ^ vec3<i32>(global0.a.x, 7359i, var_0.b.a.x))), func_2(_wgslsmith_div_vec3_i32(arg_0.c.a, global0.a)).c.b, vec3<bool>(true, true, max(u_input.a.x, u_input.a.x) != 84472u));
    return var_0.c.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = countOneBits(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.a | ~global0.a, arg_0.a), func_3(func_2(vec3<i32>(-1i, global0.a.x, -25103i)), global0.c, arg_0.c.x)));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 31028u, 18973u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 3934u))), countOneBits(vec3<u32>(~u_input.a.x, firstLeadingBit(u_input.a.x), u_input.a.x))), u_input.a.x, ~u_input.a.x, 9119u);
    var var_2 = _wgslsmith_dot_vec3_u32(var_1.zyz, var_1.xxy);
    global1 = array<Struct_2, 30>();
    let var_3 = false;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, 267f, select(vec3<bool>(true, any(select(vec4<bool>(global0.c.x, global0.c.x, true, false), vec4<bool>(global0.c.x, false, global0.c.x, false), vec4<bool>(true, true, global0.c.x, true))), _wgslsmith_f_op_f32(f32(-1f) * -1764f) > global0.b), global0.c, global0.c.x));
    let var_0 = func_1(Struct_1(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(global0.a.x, global0.a.x, global0.a.x)), ~firstTrailingBit(global0.a), -vec3<i32>(global0.a.x, global0.a.x, -18442i) << (vec3<u32>(0u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), 1477f, vec3<bool>(true, !global0.c.x, true)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(global0.a.zz, ~global0.a.xy), -global0.a.zy));
    var var_1 = 60488i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(vec3<i32>(_wgslsmith_sub_i32(-2147483647i, global0.a.x), global0.a.x, global0.a.x)).c.b, var_0.b));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * -1157f), func_1(Struct_1(vec3<i32>(-2147483647i, _wgslsmith_div_i32(1i, global0.a.x), -global0.a.x), _wgslsmith_f_op_f32(-489f + 586f), !func_1(Struct_1(global0.a, -289f, global0.c), vec2<i32>(global0.a.x, var_0.a.x)).c), global0.a.yy ^ _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), firstTrailingBit(vec2<i32>(3029i, -19229i)))), func_1(Struct_1(firstLeadingBit(~vec3<i32>(0i, 24640i, -2147483647i)), 718f, var_0.c), vec2<i32>(-1i, var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-21599i), 1i, abs(-vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 38390i), max(var_0.a.x, var_3.c.a.x), abs(var_3.b.a.x), -44795i)), ~1u);
}

