struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-1000f, 1086f, -767f), Struct_1(-724f, -569f, -531f), Struct_1(1996f, -554f, 1044f), Struct_1(-1301f, -2060f, -1519f), Struct_1(-1599f, -480f, -436f), Struct_1(585f, 704f, 761f), Struct_1(-840f, 662f, 1074f), Struct_1(-211f, 450f, -2033f), Struct_1(2056f, -890f, -960f));

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(true, vec3<f32>(-767f, -953f, -1391f), 15586u, -17582i, Struct_1(655f, -692f, -519f)), Struct_4(false, vec3<f32>(-1000f, 118f, 2219f), 18321u, 547i, Struct_1(-1000f, -1141f, -646f)), Struct_4(false, vec3<f32>(-448f, -1258f, 1290f), 18645u, i32(-2147483648), Struct_1(-1682f, -1282f, -781f)), Struct_4(true, vec3<f32>(1337f, -336f, 522f), 12164u, 42757i, Struct_1(-274f, -2352f, 1232f)), Struct_4(false, vec3<f32>(2259f, -743f, -1091f), 34156u, -25028i, Struct_1(-1294f, 1000f, 1844f)), Struct_4(true, vec3<f32>(-1705f, 951f, -1082f), 4294967295u, i32(-2147483648), Struct_1(-101f, 1000f, -168f)), Struct_4(false, vec3<f32>(910f, 215f, 734f), 0u, 2147483647i, Struct_1(-1406f, -1850f, 999f)), Struct_4(false, vec3<f32>(-2003f, -729f, 734f), 0u, -12244i, Struct_1(282f, 2090f, -284f)), Struct_4(true, vec3<f32>(-1000f, -1031f, 891f), 0u, -274i, Struct_1(1044f, 809f, -597f)), Struct_4(false, vec3<f32>(-1342f, -418f, 882f), 0u, 15427i, Struct_1(934f, 922f, 1000f)));

var<private> global2: vec2<bool>;

var<private> global3: vec3<f32> = vec3<f32>(474f, -489f, 831f);

var<private> global4: vec3<f32> = vec3<f32>(565f, -1028f, -634f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = -select(-1i, ~(-1i), true);
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_sub_i32(-2147483647i << ((select(4294967295u, ~4294967295u, false) << ((_wgslsmith_div_u32(52900u, 37363u) ^ _wgslsmith_add_u32(67019u, u_input.a)) % 32u)) % 32u), var_0);
    let var_2 = global0[_wgslsmith_index_u32(u_input.a, 9u)];
    return -494f;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = vec4<u32>(u_input.a, ~firstLeadingBit(u_input.c.x ^ ~u_input.c.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(16618u, abs(8192u), 5166u), ~(~(vec3<u32>(u_input.a, 4294967295u, 1u) | vec3<u32>(u_input.c.x, u_input.a, 4294967295u)))), abs(_wgslsmith_mod_u32(7775u, ~45210u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a >> (u_input.a % 32u), ~21226u, ~u_input.a), countOneBits(firstLeadingBit(vec3<u32>(53923u, 4294967295u, 24709u)))));
    var var_1 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 9u)], u_input.d.yz, global0[_wgslsmith_index_u32(var_0.x, 9u)]), vec2<bool>(!(_wgslsmith_f_op_f32(-global4.x) < 652f), arg_0));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(634f, var_1.a.c.c), _wgslsmith_f_op_f32(func_3()), global3.x);
    var var_3 = !(_wgslsmith_add_i32(12255i, _wgslsmith_mult_i32(1i, var_1.a.b.x)) != ~(-6867i)) == any(!(!var_1.b));
    return var_0.x;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~(~u_input.c.x), 10u)];
    global4 = arg_0.yzz;
    let var_1 = abs(min(~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_0.d, var_0.d, var_0.d), vec4<i32>(-26467i, u_input.b.x, -10063i, var_0.d)) << (vec4<u32>(4294967295u, ~u_input.a, ~154409u, func_2(true)) % vec4<u32>(32u)), vec4<i32>(countOneBits(~0i), ~(-55736i), u_input.b.x, _wgslsmith_add_i32(-16560i, 2147483647i))));
    var var_2 = var_0.e;
    global2 = !select(vec2<bool>(true, all(!vec3<bool>(global2.x, true, false))), !vec2<bool>(global2.x, true), any(select(vec2<bool>(false, global2.x), !vec2<bool>(true, var_0.a), false & global2.x)));
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = ~(~0u);
    let var_2 = Struct_3(Struct_2(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global3.x, -778f, global3.x) - vec4<f32>(-312f, -554f, global4.x, -635f)), vec4<f32>(171f, global3.x, global4.x, -452f))), _wgslsmith_div_vec2_i32(abs(_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -1i))), max(vec2<i32>(-27409i, u_input.b.x), u_input.b)), func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.x, global3.x, 288f, global4.x))))), !select(select(select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(false, true)), select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(false, false)), true & global2.x), select(select(vec2<bool>(false, true), vec2<bool>(global2.x, global2.x), global2.x), select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, true)), vec2<bool>(true, true)), !(!vec2<bool>(global2.x, global2.x))));
    let var_3 = _wgslsmith_div_vec4_u32(~countOneBits(select(vec4<u32>(42924u, u_input.a, 37540u, var_0), vec4<u32>(9385u, var_0, var_0, 27057u), var_2.b.x)), ~abs(vec4<u32>(u_input.a, 1115u, var_0, 4294967295u))) | ~(~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, 0u, var_0), vec4<u32>(64508u, u_input.c.x, u_input.a, u_input.a))));
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.c.c, _wgslsmith_f_op_f32(min(-2049f, -130f)))) - _wgslsmith_f_op_vec2_f32(global4.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.yx))))));
    let var_5 = func_1(vec4<f32>(-1000f, global4.x, _wgslsmith_f_op_f32(-var_4.x), var_4.x));
    var var_6 = var_2.a.a;
    let var_7 = select(vec3<bool>(true, false, !(!(var_2.a.b.x >= var_2.a.b.x))), select(vec3<bool>(global2.x, var_2.b.x, select(global2.x, var_2.b.x || var_2.b.x, true)), !(!select(vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, false, false), vec3<bool>(var_2.b.x, true, true))), !select(!vec3<bool>(false, var_2.b.x, true), vec3<bool>(var_2.b.x, global2.x, true), vec3<bool>(var_2.b.x, var_2.b.x, true))), !all(!vec3<bool>(global2.x, true, false)));
    let var_8 = any(vec2<bool>(true, false));
    let x = u_input.a;
    s_output = StorageBuffer(2246u);
}

