struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(16241u, 40625u), vec2<u32>(35350u, 70229u), vec2<u32>(4294967295u, 0u), vec2<u32>(11889u, 4294967295u), vec2<u32>(1u, 67417u), vec2<u32>(1u, 1u), vec2<u32>(15339u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(12654u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(39731u, 8515u), vec2<u32>(69370u, 1u), vec2<u32>(0u, 27944u), vec2<u32>(19986u, 1u), vec2<u32>(1u, 22186u), vec2<u32>(35970u, 4294967295u));

var<private> global1: array<f32, 2> = array<f32, 2>(-1000f, 1301f);

var<private> global2: array<f32, 8> = array<f32, 8>(1324f, 1173f, 523f, 1181f, -1549f, 1519f, -116f, 437f);

var<private> global3: array<bool, 25> = array<bool, 25>(true, false, true, true, false, true, true, false, true, false, false, false, false, true, false, false, true, true, true, false, false, true, false, true, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> i32 {
    let var_0 = ~vec4<u32>(u_input.b.x, firstTrailingBit(~(~arg_1)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~u_input.b, u_input.b), 1u ^ _wgslsmith_mod_u32(38790u, arg_0.b.b)), ~(~_wgslsmith_div_u32(4294967295u, arg_0.b.b)));
    global1 = array<f32, 2>();
    var var_1 = Struct_3(u_input.a.x ^ u_input.d, arg_0.b, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.a))));
    global3 = array<bool, 25>();
    var var_2 = -1453f;
    return -45606i;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(arg_1.x, 8u)])));
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-37902i, -10337i, 6369i, u_input.a.x) << (vec4<u32>(u_input.b.x, 1u, u_input.b.x, arg_2.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-5733i, 2147483647i, u_input.d, 0i), vec4<i32>(0i, u_input.a.x, 2147483647i, -22094i))), vec4<i32>(1i, ~u_input.d, 21861i, _wgslsmith_mult_i32(9900i, -41094i))) | ~vec4<i32>(21654i, 47746i, 0i, u_input.d), _wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.d, u_input.c, ~u_input.d, ~u_input.d), select(vec4<i32>(-2147483647i, u_input.d, -10238i, -17808i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, -1i, u_input.d, u_input.d), vec4<i32>(u_input.a.x, 10615i, 2147483647i, u_input.c)), arg_0.x), any(vec3<bool>(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(u_input.b.x, 25u)], true))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(-36159i, -1i), _wgslsmith_mult_i32(-1i, 1i)), u_input.d, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a.x, -1i, u_input.d), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), firstLeadingBit(vec3<i32>(u_input.c, u_input.c, -2147483647i))), abs(u_input.d) << (arg_1.x % 32u))), vec4<i32>(-46712i, firstTrailingBit(~u_input.c), _wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, -20296i), -10057i), -u_input.c));
    var var_2 = -583f;
    global0 = array<vec2<u32>, 16>();
    global0 = array<vec2<u32>, 16>();
    return arg_1.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> u32 {
    global2 = array<f32, 8>();
    let var_0 = 4294967295u;
    var var_1 = ~vec2<i32>(4870i, _wgslsmith_add_i32(-29010i, u_input.a.x)) >> (u_input.b.xx % vec2<u32>(32u));
    var_1 = vec2<i32>(_wgslsmith_add_i32(var_1.x, ~var_1.x), _wgslsmith_clamp_i32(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 11551i), u_input.a)), var_1.x, var_1.x) | ~var_1.x);
    var var_2 = Struct_3((func_2(Struct_3(-15794i, Struct_2(global2[_wgslsmith_index_u32(9597u, 8u)], 11417u), global3[_wgslsmith_index_u32(var_0, 25u)], 1068f), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(15297u, 46476u))) & ~firstTrailingBit(-1i)) ^ -53669i, Struct_2(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~4294967295u, func_3(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 25u)], false), vec4<u32>(var_0, u_input.b.x, 0u, 20757u), u_input.b.xz)), 2u)], var_0), any(!vec3<bool>(true, true, any(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 25u)])))), -1689f);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], any(vec4<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(43144u, 25u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 25u)])), true, false, true))));
    var var_1 = !(!select(!select(vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], global3[_wgslsmith_index_u32(0u, 25u)]), false), vec2<bool>(global3[_wgslsmith_index_u32(~u_input.b.x, 25u)], global3[_wgslsmith_index_u32(7927u, 25u)]), vec2<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 25u)], false)), global3[_wgslsmith_index_u32(0u, 25u)])));
    global0 = array<vec2<u32>, 16>();
    let var_2 = _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.b.x, 2u)]));
    global0 = array<vec2<u32>, 16>();
    var var_3 = false;
    var var_4 = ~vec3<u32>(u_input.b.x, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(17089u, 2u)], 1192f), vec3<f32>(-1394f, var_2, global2[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec3<bool>(true, false, true))) * vec3<f32>(var_2, var_2, var_2)), _wgslsmith_f_op_f32(1156f + var_2)), abs(select(_wgslsmith_dot_vec3_u32(vec3<u32>(24358u, u_input.b.x, u_input.b.x), u_input.b), ~0u, var_1.x)));
    let var_5 = !select(vec4<bool>(var_1.x, global3[_wgslsmith_index_u32(var_4.x, 25u)], true, all(select(vec4<bool>(var_1.x, true, global3[_wgslsmith_index_u32(1u, 25u)], true), vec4<bool>(true, var_1.x, global3[_wgslsmith_index_u32(var_4.x, 25u)], global3[_wgslsmith_index_u32(1u, 25u)]), false))), select(vec4<bool>(true, any(vec3<bool>(true, true, var_1.x)), true, var_1.x), select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(global3[_wgslsmith_index_u32(var_4.x, 25u)], false, true, true), select(vec4<bool>(false, var_1.x, true, global3[_wgslsmith_index_u32(1u, 25u)]), vec4<bool>(var_1.x, true, var_1.x, false), global3[_wgslsmith_index_u32(1u, 25u)])), select(!vec4<bool>(false, var_1.x, true, false), select(vec4<bool>(var_1.x, true, true, true), vec4<bool>(global3[_wgslsmith_index_u32(33725u, 25u)], global3[_wgslsmith_index_u32(u_input.b.x, 25u)], var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true)), !vec4<bool>(true, false, false, var_1.x))), vec4<bool>(_wgslsmith_div_f32(var_2, global1[_wgslsmith_index_u32(u_input.b.x, 2u)]) > _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_4.x, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 8u)]), false, any(!vec3<bool>(false, var_1.x, var_1.x)), all(!vec3<bool>(true, true, global3[_wgslsmith_index_u32(var_4.x, 25u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~(~58389u), 2u)])));
}

