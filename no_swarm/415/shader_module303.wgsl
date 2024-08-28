struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(28814u, 4294967295u, 50078u, 28938u);

var<private> global1: Struct_5;

var<private> global2: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(506f, -161f, -371f), vec3<f32>(-1521f, -1316f, -755f), vec3<f32>(-927f, 391f, -1344f), vec3<f32>(-374f, 273f, 1419f), vec3<f32>(-1000f, -383f, -621f), vec3<f32>(1869f, 839f, -1825f), vec3<f32>(1883f, 738f, -1415f), vec3<f32>(-1220f, 1200f, 868f), vec3<f32>(-560f, 530f, 2560f), vec3<f32>(-233f, 905f, 897f), vec3<f32>(222f, -1000f, -1785f), vec3<f32>(300f, 313f, -239f), vec3<f32>(505f, -573f, -1000f), vec3<f32>(-1000f, 1514f, -455f), vec3<f32>(-284f, -490f, 535f), vec3<f32>(267f, 261f, 118f), vec3<f32>(-988f, 883f, -1431f), vec3<f32>(211f, -1506f, 1004f), vec3<f32>(369f, -523f, -543f), vec3<f32>(-1659f, 1492f, 1000f), vec3<f32>(-172f, -252f, -165f), vec3<f32>(-407f, 1430f, -809f), vec3<f32>(848f, -1197f, -111f), vec3<f32>(1000f, -530f, -1392f), vec3<f32>(-1000f, -658f, 406f), vec3<f32>(-304f, 632f, 343f), vec3<f32>(910f, -1000f, -912f), vec3<f32>(-567f, 575f, -470f), vec3<f32>(-833f, -191f, 303f), vec3<f32>(364f, -950f, -1000f));

var<private> global3: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(Struct_2(vec3<f32>(-663f, -1135f, 1662f), vec4<bool>(false, false, true, true)), vec3<u32>(35053u, 226u, 57574u)), Struct_3(Struct_2(vec3<f32>(1345f, -1000f, 1622f), vec4<bool>(true, false, false, false)), vec3<u32>(2895u, 49975u, 27432u)), Struct_3(Struct_2(vec3<f32>(-230f, -442f, -715f), vec4<bool>(true, false, false, false)), vec3<u32>(4294967295u, 1u, 76917u)), Struct_3(Struct_2(vec3<f32>(-604f, -491f, 1162f), vec4<bool>(false, true, true, true)), vec3<u32>(4294967295u, 0u, 1u)), Struct_3(Struct_2(vec3<f32>(1000f, -211f, 840f), vec4<bool>(true, true, false, true)), vec3<u32>(57938u, 4363u, 4294967295u)), Struct_3(Struct_2(vec3<f32>(400f, -668f, 172f), vec4<bool>(false, true, true, true)), vec3<u32>(0u, 43177u, 4294967295u)), Struct_3(Struct_2(vec3<f32>(-451f, 188f, -593f), vec4<bool>(true, false, true, false)), vec3<u32>(0u, 105068u, 0u)), Struct_3(Struct_2(vec3<f32>(-1000f, 162f, 1303f), vec4<bool>(false, false, false, true)), vec3<u32>(47016u, 0u, 16558u)), Struct_3(Struct_2(vec3<f32>(-117f, 338f, -1349f), vec4<bool>(false, false, true, false)), vec3<u32>(64343u, 1u, 0u)), Struct_3(Struct_2(vec3<f32>(-840f, -859f, -812f), vec4<bool>(false, false, false, true)), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_3(Struct_2(vec3<f32>(-272f, -202f, -2277f), vec4<bool>(false, false, true, false)), vec3<u32>(2423u, 77454u, 0u)));

var<private> global4: i32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-1175f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -534f) + 1f)));
    global3 = array<Struct_3, 11>();
    return !select(select(vec4<bool>(true, any(vec2<bool>(false, true)), any(vec4<bool>(false, false, false, false)), true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), false), !all(vec3<bool>(true, false, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true))));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec2<i32> {
    global3 = array<Struct_3, 11>();
    let var_0 = Struct_1(all(select(func_3(), vec4<bool>(all(vec2<bool>(true, true)), true, all(vec2<bool>(false, true)), true), vec4<bool>(-41428i != global1.a.x, true, arg_0 > arg_0, false))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-497f, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(f32(-1f) * -369f))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(798f - 1608f), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -192f))), false)), global1.a.x ^ arg_1);
    global1 = Struct_5(_wgslsmith_div_vec2_i32((-global1.a | vec2<i32>(global1.a.x, 1i)) << ((~vec2<u32>(global1.d, 4294967295u) >> (~vec2<u32>(17319u, 71967u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(-46640i, ~global1.a.x)), select(vec3<u32>(1u, 11217u, 11863u), ~vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, global1.d), global1.b.x << (global1.b.x % 32u), u_input.b.x), vec3<bool>(u_input.d.x < firstLeadingBit(global0.x), true, false)), -44292i, u_input.c.x & _wgslsmith_add_u32(~global1.b.x, u_input.c.x));
    let var_1 = select(-global1.a, reverseBits(global1.a) | -(~(-vec2<i32>(var_0.c, -2147483647i))), var_0.a);
    let var_2 = false;
    return ~var_1;
}

fn func_1() -> bool {
    var var_0 = Struct_5(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(570f)))), -1i), (vec3<u32>(_wgslsmith_dot_vec2_u32(global1.b.yy, vec2<u32>(1u, 76287u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, 71244u), u_input.b.yww), 4294967295u) << ((u_input.a | ~global1.b) % vec3<u32>(32u))) << (abs(u_input.b.xzx | u_input.d) % vec3<u32>(32u)), select(select(0i, -9265i, -global1.a.x >= 22968i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1.c, global1.a.x, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.c, global1.a.x, global1.a.x, global1.a.x) | vec4<i32>(19156i, 13771i, 22747i, 0i), vec4<i32>(global1.c, global1.c, global1.a.x, -2147483647i) ^ vec4<i32>(global1.a.x, global1.c, 0i, -2147483647i))), !((u_input.d.x > 1u) && (967u != global0.x))), ~global1.d);
    var var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = Struct_4(Struct_1(any(vec4<bool>(true, true, true, true)), vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_f_op_f32(f32(-1f) * -672f)), global1.a.x));
    var var_3 = global3[_wgslsmith_index_u32(~10969u, 11u)];
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(516f, _wgslsmith_f_op_f32(select(var_2.a.b.x, _wgslsmith_f_op_f32(-var_3.a.a.x), var_2.a.a))))) * var_3.a.a.x);
    return var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 30u)], vec4<bool>(true, true, select(true, ~global0.x != ~4294967295u, func_1()), true));
    var var_1 = Struct_1(true, vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -151f)))), 607f), global1.c >> (global0.x % 32u));
    let var_2 = abs(abs(u_input.b.yy));
    global4 = _wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.c, -2147483647i), ~(-var_1.c | 191i));
    var var_3 = ~(-24024i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.c, var_1.c), -global1.a), vec2<i32>(firstTrailingBit(50647i), _wgslsmith_add_i32(-2147483647i, var_1.c))), reverseBits(_wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(global1.c, 2147483647i)))), vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-574f, _wgslsmith_f_op_f32(var_0.a.x * 1384f))) + var_1.b.x), 1f), vec2<u32>(var_2.x, select(global0.x, global1.b.x, !var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.a))));
}

