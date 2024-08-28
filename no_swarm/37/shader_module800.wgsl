struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 31> = array<u32, 31>(4294967295u, 34393u, 31322u, 0u, 36397u, 1u, 14593u, 9895u, 1u, 7053u, 1u, 0u, 34433u, 8163u, 12812u, 31472u, 36352u, 578u, 22316u, 1u, 0u, 5827u, 4294967295u, 0u, 4294967295u, 37847u, 4294967295u, 28343u, 1u, 0u, 117812u);

var<private> global2: Struct_1 = Struct_1(1438f, 4294967295u);

var<private> global3: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(723f, 1509f, 266f, -1000f), vec4<f32>(741f, 886f, 1000f, -1743f), vec4<f32>(283f, -589f, -879f, 524f), vec4<f32>(1000f, -1353f, -1826f, 1000f), vec4<f32>(-1937f, -631f, -1965f, 1318f), vec4<f32>(391f, 1166f, -402f, 202f), vec4<f32>(1554f, 546f, -242f, -179f), vec4<f32>(301f, 1172f, -1020f, -521f), vec4<f32>(-603f, 370f, -171f, -1000f), vec4<f32>(-655f, -230f, 638f, -379f), vec4<f32>(1366f, 241f, 1614f, -455f), vec4<f32>(-394f, 946f, -1551f, -381f), vec4<f32>(1274f, -376f, -463f, 766f), vec4<f32>(-817f, 661f, 1000f, 846f), vec4<f32>(-912f, 120f, -374f, 747f), vec4<f32>(1731f, 674f, 894f, 526f), vec4<f32>(657f, -958f, -1000f, 342f), vec4<f32>(-580f, 1898f, 1571f, -575f));

var<private> global4: array<i32, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: i32) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -947f) + global2.a)), ~global1[_wgslsmith_index_u32(global2.b, 31u)]);
    global0 = !(~arg_2 > (_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_2, arg_0), _wgslsmith_div_i32(11744i, u_input.a)) & (global4[_wgslsmith_index_u32(firstLeadingBit(66218u), 14u)] << (global2.b % 32u))));
    var var_1 = !select(select(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, true, true), select(arg_1, arg_1, true)), vec3<bool>(false, true, false)), vec3<bool>(arg_1, !all(vec4<bool>(arg_1, arg_1, arg_1, false)), all(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), arg_1))), true);
    var var_2 = var_0;
    var_2 = var_0;
    return _wgslsmith_mod_vec4_i32(vec4<i32>(~17040i, 1i, ~28546i, -1i), _wgslsmith_sub_vec4_i32(~select(vec4<i32>(0i, global4[_wgslsmith_index_u32(var_0.b, 14u)], -2147483647i, 86792i), vec4<i32>(global4[_wgslsmith_index_u32(39930u, 14u)], arg_2, arg_0, -8886i) ^ vec4<i32>(arg_0, arg_2, global4[_wgslsmith_index_u32(var_2.b, 14u)], arg_2), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), (_wgslsmith_sub_vec4_i32(vec4<i32>(30906i, global4[_wgslsmith_index_u32(1u, 14u)], arg_2, arg_0), vec4<i32>(22363i, global4[_wgslsmith_index_u32(4294967295u, 14u)], -1i, 2147483647i)) | abs(vec4<i32>(u_input.a, u_input.c.x, arg_2, 76691i))) | (vec4<i32>(-9055i, u_input.c.x, 1i, global4[_wgslsmith_index_u32(0u, 14u)]) | abs(vec4<i32>(-1i, 13171i, -69887i, 2147483647i)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: vec3<i32>) -> bool {
    global2 = arg_0.c;
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(global2.b, 1u), _wgslsmith_mult_u32(global2.b, 63054u)), firstLeadingBit(~arg_0.c.b)), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(43005u, 106744u, global2.b, global1[_wgslsmith_index_u32(global2.b, 31u)]) | vec4<u32>(global2.b, 4294967295u, 1735u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4934u, 31u)], 31u)]), vec4<u32>(71206u, 25825u, 0u, arg_2), vec4<bool>(true, arg_0.e.x, arg_0.e.x, true)), ~(~vec4<u32>(global1[_wgslsmith_index_u32(arg_2, 31u)], 0u, global2.b, 1u)))), 14u)];
    var var_1 = ~reverseBits(_wgslsmith_div_vec4_i32(firstTrailingBit(arg_1), vec4<i32>(-26481i, i32(-1i) * -35388i, ~arg_1.x, _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(4294967295u, 14u)], 1i))));
    let var_2 = arg_0.a.x;
    var var_3 = Struct_3(u_input.b.x, arg_3, Struct_2(arg_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-arg_3.x, -arg_0.b, _wgslsmith_clamp_i32(u_input.d.x, 2928i, 15302i)), reverseBits(select(arg_3, arg_1.yyw, true))), arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1278f)) * -276f) - _wgslsmith_f_op_f32(step(1243f, -715f))), !(!vec3<bool>(true, arg_0.e.x, false))), Struct_2(vec3<bool>(true, false, _wgslsmith_add_i32(arg_0.b, 0i) == firstTrailingBit(-40917i)), ~((var_1.x & u_input.a) | 1i), arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-215f * arg_0.d))) * _wgslsmith_f_op_f32(-1084f + arg_0.c.a)), arg_0.a), select(~(-25242i), arg_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.c.a), global2.a)) >= arg_0.d));
    return var_3.c.e.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = vec4<bool>(arg_0.b != _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(global2.b, 31u)] << (29608u % 32u), ~(~arg_0.b)), func_4(Struct_2(vec3<bool>(true, any(vec3<bool>(true, false, true)), true), -_wgslsmith_dot_vec3_i32(vec3<i32>(-28560i, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.b, 31u)], 14u)], u_input.a), vec3<i32>(-2147483647i, 10536i, -42281i)), Struct_1(_wgslsmith_f_op_f32(global2.a - arg_1), ~104009u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-844f, 1807f))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), any(vec3<bool>(false, true, false)))), func_3(1i, true, ~u_input.c.x), ~arg_0.b, select(vec3<i32>(~u_input.d.x, u_input.c.x, abs(1i)), vec3<i32>(max(global4[_wgslsmith_index_u32(global2.b, 14u)], -2147483647i), _wgslsmith_clamp_i32(27137i, global4[_wgslsmith_index_u32(global2.b, 14u)], -2147483647i), -global4[_wgslsmith_index_u32(0u, 14u)]), vec3<bool>(all(vec4<bool>(false, true, true, false)), true, true))), true, true);
    global2 = arg_0;
    global2 = Struct_1(arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(~(~53731u), _wgslsmith_sub_u32(~99118u, reverseBits(global1[_wgslsmith_index_u32(0u, 31u)])), 1u, firstLeadingBit(reverseBits(arg_0.b))), ~select(~vec4<u32>(arg_0.b, 4294967295u, 38593u, 1u), vec4<u32>(arg_0.b, global1[_wgslsmith_index_u32(25544u, 31u)], global2.b, 21707u), !var_0.x)));
    global3 = array<vec4<f32>, 18>();
    global1 = array<u32, 31>();
    return -(~_wgslsmith_add_i32(min(0i, min(u_input.b.x, u_input.b.x)), ~(~(-1i))));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1820f * arg_0), _wgslsmith_f_op_f32(exp2(arg_1.c.d)), any(vec2<bool>(arg_1.d.e.x, arg_1.d.a.x)))))));
    let var_1 = -vec4<i32>(_wgslsmith_add_i32(-1i, 61046i), u_input.a, abs(countOneBits(arg_1.d.b)), _wgslsmith_mod_i32(abs(4240i) >> (reverseBits(global1[_wgslsmith_index_u32(0u, 31u)]) % 32u), -7611i));
    global3 = array<vec4<f32>, 18>();
    let var_2 = arg_1.d.a.zz;
    var var_3 = _wgslsmith_f_op_f32(ceil(218f));
    return arg_1.d.c;
}

fn func_1() -> bool {
    global1 = array<u32, 31>();
    global2 = Struct_1(global2.a, ~(~(global1[_wgslsmith_index_u32(18849u, 31u)] | ~global2.b)));
    global2 = func_5(global2.a, Struct_3(_wgslsmith_clamp_i32(~(-45068i), _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.b, 31u)], 14u)], -1i), u_input.b.x) | min(_wgslsmith_add_i32(-6708i, global4[_wgslsmith_index_u32(6190u, 14u)]), func_2(Struct_1(global2.a, 4294967295u), -922f)), vec3<i32>(i32(-1i) * -24575i, u_input.c.x, ~select(-16259i, global4[_wgslsmith_index_u32(25734u, 14u)], false)), Struct_2(vec3<bool>(false, false, true), _wgslsmith_add_i32(global4[_wgslsmith_index_u32(46307u, 14u)] & -1i, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 110381u), 14u)]), Struct_1(_wgslsmith_f_op_f32(-global2.a), 24667u), _wgslsmith_f_op_f32(sign(-2782f)), vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, true), _wgslsmith_clamp_i32(1i, -global4[_wgslsmith_index_u32(global2.b, 14u)], 2147483647i), Struct_1(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(38800u, 31u)], 0u, 1u), vec3<u32>(global2.b, global2.b, 81698u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.a))), vec3<bool>(false, true, true)), _wgslsmith_add_i32(global4[_wgslsmith_index_u32(4294967295u, 14u)] & func_3(-14370i, false, u_input.a).x, max(_wgslsmith_mult_i32(-1i, global4[_wgslsmith_index_u32(6777u, 14u)]), -1i << (global1[_wgslsmith_index_u32(1u, 31u)] % 32u)))));
    global1 = array<u32, 31>();
    let var_0 = any(select(vec2<bool>(true, false), vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 1u), vec3<u32>(global2.b, 122235u, 18012u)) != abs(56354u), false), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    return all(select(vec3<bool>(true, _wgslsmith_f_op_f32(global2.a - global2.a) < global2.a, true), !(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, true), false)), select(vec3<bool>(var_0 == false, true, false), select(vec3<bool>(var_0, var_0, var_0), !vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, var_0, false)), !vec3<bool>(true, var_0, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<bool>(false, !func_1(), func_4(Struct_2(vec3<bool>(true, false, false), _wgslsmith_add_i32(u_input.a, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 14u)]), Struct_1(global2.a, global2.b), _wgslsmith_f_op_f32(-global2.a), vec3<bool>(true, true, true)), vec4<i32>(2147483647i, -1i, _wgslsmith_sub_i32(u_input.a, u_input.b.x), 0i), _wgslsmith_dot_vec3_u32(vec3<u32>(51062u, global1[_wgslsmith_index_u32(9749u, 31u)], 76887u), vec3<u32>(52553u, global2.b, global1[_wgslsmith_index_u32(1u, 31u)]) ^ vec3<u32>(4294967295u, global2.b, 1u)), firstTrailingBit(select(vec3<i32>(42815i, 0i, -1i), vec3<i32>(u_input.b.x, u_input.a, global4[_wgslsmith_index_u32(13777u, 14u)]), vec3<bool>(true, false, true))))), 10938i, Struct_1(global2.a, global1[_wgslsmith_index_u32(1u, 31u)]), global2.a, vec3<bool>(_wgslsmith_f_op_f32(floor(1611f)) > global2.a, select(true, !(global2.a < global2.a), any(vec3<bool>(true, true, true))), false));
    var var_1 = vec4<bool>(true, var_0.e.x, true, var_0.d == _wgslsmith_f_op_f32(sign(global2.a)));
    var var_2 = var_0.d;
    global2 = Struct_1(global2.a, _wgslsmith_add_u32(var_0.c.b, 0u));
    let var_3 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, global4[_wgslsmith_index_u32(41642u, 14u)], u_input.b.x), firstTrailingBit(vec4<i32>(u_input.d.x, u_input.a, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 31u)], 14u)], global4[_wgslsmith_index_u32(4294967295u, 14u)]))) >> (firstTrailingBit(vec4<u32>(30858u, 4294967295u, 4294967295u, global2.b) << (vec4<u32>(var_0.c.b, 1u, 0u, var_0.c.b) % vec4<u32>(32u))) % vec4<u32>(32u)), -(~vec4<i32>(84842i, 47389i, var_0.b, 20849i)) | vec4<i32>(1i, -1i, ~(-8717i), 2147483647i));
    var var_4 = ~vec4<u32>(1u >> (~4294967295u % 32u), ~15322u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.b, 0u), 31u)], countOneBits(4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(40976u, 4294967295u, 1u) & vec3<u32>(53195u, 0u, global2.b), vec3<u32>(global2.b, global1[_wgslsmith_index_u32(80697u, 31u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.b, 31u)], 31u)]))) ^ (select(firstTrailingBit(firstTrailingBit(vec4<u32>(35259u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13285u, 31u)], 31u)], var_0.c.b, global1[_wgslsmith_index_u32(global2.b, 31u)]))), ~(vec4<u32>(global2.b, var_0.c.b, 13328u, global2.b) ^ vec4<u32>(1u, var_0.c.b, 14667u, global1[_wgslsmith_index_u32(var_0.c.b, 31u)])), global4[_wgslsmith_index_u32(39105u, 14u)] >= 14590i) | reverseBits(vec4<u32>(var_0.c.b | 52790u, 4294967295u, ~var_0.c.b, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(var_0.c.b, 31u)], global2.b))));
    var var_5 = ~(~vec2<u32>(1u, ~var_0.c.b));
    var var_6 = _wgslsmith_div_vec4_u32(max(~(vec4<u32>(4294967295u, global2.b, 1u, var_0.c.b) | vec4<u32>(7627u, 18653u, global1[_wgslsmith_index_u32(30148u, 31u)], var_5.x)), reverseBits(vec4<u32>(1u, var_5.x, 64157u, 1u) ^ vec4<u32>(var_4.x, var_5.x, var_4.x, 71888u))) >> ((vec4<u32>(0u << (1u % 32u), ~12950u, _wgslsmith_dot_vec3_u32(vec3<u32>(86311u, 4294967295u, 10688u), var_4.wwz), _wgslsmith_sub_u32(var_0.c.b, var_5.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_5.x, 0u, var_0.c.b), abs(vec4<u32>(global2.b, 1u, 1u, 1u))) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(abs(~(vec4<u32>(global1[_wgslsmith_index_u32(28144u, 31u)], global2.b, var_0.c.b, 19470u) >> (vec4<u32>(global2.b, global2.b, var_5.x, var_4.x) % vec4<u32>(32u))))));
    global1 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<i32>(2147483647i, firstTrailingBit(-var_3.x), -_wgslsmith_clamp_i32(_wgslsmith_div_i32(-1i, var_0.b), 1i, u_input.a)), ~select(var_6.x, 1u, true));
}

