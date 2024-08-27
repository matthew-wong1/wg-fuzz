struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(-687f, -885f, 2712f), vec3<f32>(182f, 268f, -1067f), vec3<f32>(776f, -257f, -1509f), vec3<f32>(-802f, 389f, 895f), vec3<f32>(388f, 552f, 1307f), vec3<f32>(-482f, -806f, -979f), vec3<f32>(352f, 1688f, -958f), vec3<f32>(1747f, -578f, -704f), vec3<f32>(727f, -353f, 1592f), vec3<f32>(-1019f, -527f, -667f), vec3<f32>(609f, 775f, -301f), vec3<f32>(1031f, 407f, -1396f), vec3<f32>(-186f, 833f, 997f), vec3<f32>(-574f, -1000f, 1000f), vec3<f32>(626f, -786f, 652f), vec3<f32>(560f, -607f, 615f), vec3<f32>(928f, 869f, 571f), vec3<f32>(-1000f, -1606f, -783f), vec3<f32>(476f, 265f, 912f), vec3<f32>(2267f, -732f, 745f), vec3<f32>(1000f, -1000f, 439f), vec3<f32>(308f, 705f, 912f), vec3<f32>(891f, 672f, 377f), vec3<f32>(-1516f, -944f, 813f), vec3<f32>(-624f, -1197f, 738f), vec3<f32>(-1069f, -1223f, 1000f), vec3<f32>(1115f, 493f, -621f), vec3<f32>(-1000f, 1077f, 826f), vec3<f32>(-1349f, 1047f, 1086f), vec3<f32>(-243f, 591f, -118f), vec3<f32>(531f, 466f, -604f));

var<private> global3: array<bool, 9> = array<bool, 9>(true, true, true, false, false, true, false, false, true);

var<private> global4: array<u32, 5> = array<u32, 5>(0u, 1u, 26909u, 18828u, 23781u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> bool {
    global0 = array<vec2<i32>, 21>();
    let var_0 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, reverseBits(u_input.a.x)), 0u), 5u)], u_input.a.x, false, Struct_1(vec3<bool>(false, !any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 9u)], global1.x, global1.x, false)), all(vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 9u)], global1.x, global1.x)) & !global1.x), -152f, ~vec3<u32>(4294967295u, 4294967295u, max(u_input.a.x, global4[_wgslsmith_index_u32(u_input.a.x, 5u)]))), Struct_1(!vec3<bool>(global3[_wgslsmith_index_u32(countOneBits(1u), 9u)], select(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 5u)], 5u)], 9u)], false, global3[_wgslsmith_index_u32(4294967295u, 9u)]), true), -322f, vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(40607u, 5u)], global4[_wgslsmith_index_u32(u_input.a.x, 5u)], global4[_wgslsmith_index_u32(244u, 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]), vec4<u32>(0u, global4[_wgslsmith_index_u32(7715u, 5u)], 1u, global4[_wgslsmith_index_u32(u_input.a.x, 5u)])), _wgslsmith_div_u32(u_input.a.x, 0u) & 0u, u_input.a.x)));
    global3 = array<bool, 9>();
    var var_1 = var_0.d;
    var var_2 = u_input.c;
    return true;
}

fn func_3(arg_0: vec3<bool>) -> bool {
    var var_0 = 1047f;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-542f, -1993f, 194f, -697f)))));
    let var_2 = var_1.x;
    var var_3 = ~(~u_input.a);
    var_0 = _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), true));
    return var_1.x == -564f;
}

fn func_1() -> i32 {
    var var_0 = Struct_3(!select(select(select(vec4<bool>(true, true, global1.x, true), vec4<bool>(true, true, global1.x, true), vec4<bool>(false, global1.x, false, global1.x)), !vec4<bool>(true, true, true, global1.x), false), select(select(vec4<bool>(global1.x, true, true, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47243u, 5u)], 9u)]), vec4<bool>(false, true, true, false), global1.x), select(vec4<bool>(global1.x, global1.x, global3[_wgslsmith_index_u32(1217u, 9u)], false), vec4<bool>(true, true, global1.x, true), global1.x), global3[_wgslsmith_index_u32(35652u, 9u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(~29062u, 9u)], true, false || global1.x)), Struct_2(~42513u, u_input.a.x, global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(~0u, u_input.a.x), 9u)], Struct_1(select(global1.xzy, vec3<bool>(global1.x, false, global1.x), func_2()), _wgslsmith_f_op_f32(floor(-105f)), countOneBits(u_input.a)), Struct_1(select(!vec3<bool>(false, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(58670u, 5u)], 5u)], 9u)], global3[_wgslsmith_index_u32(1u, 9u)]), !vec3<bool>(false, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 5u)], 9u)], false), u_input.b.x >= u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-462f, 1898f)), ~(~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(14549u, 5u)], 5u)], global4[_wgslsmith_index_u32(u_input.a.x, 5u)])))));
    global3 = array<bool, 9>();
    let var_1 = vec3<bool>(!(!global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a.x, ~u_input.a.x), 9u)]), !all(select(vec2<bool>(true, true), var_0.a.yw, !var_0.b.e.a.yy)), all(vec2<bool>(func_3(var_0.b.e.a), func_2())) != false);
    let var_2 = -1i;
    var var_3 = ~u_input.a.x;
    return ~var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 64869i;
    let var_1 = func_1();
    global3 = array<bool, 9>();
    global2 = array<vec3<f32>, 31>();
    let var_2 = Struct_2(21896u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(min(~1u, ~1u), 5u)], abs(u_input.a.x ^ 0u)), 0u), all(select(global1.zy, global1.xx, !select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 9u)], false), global1.xx, global1.x))), Struct_1(global1.wyz, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1668f)))))), u_input.a), Struct_1(global1.yyx, -2398f, ~_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(global4[_wgslsmith_index_u32(0u, 5u)], u_input.a.x, global4[_wgslsmith_index_u32(u_input.a.x, 5u)])), select(u_input.a, u_input.a, global3[_wgslsmith_index_u32(1u, 9u)]))));
    var var_3 = var_2.d;
    var var_4 = 1u;
    global1 = select(!vec4<bool>(select(var_2.c, !global1.x, true), _wgslsmith_div_f32(1756f, 784f) < _wgslsmith_f_op_f32(var_3.b + -119f), _wgslsmith_sub_i32(var_1, var_1) >= abs(u_input.b.x), true), select(vec4<bool>(any(var_2.e.a), !(global1.x & var_2.d.a.x), func_2(), true), vec4<bool>(all(var_2.e.a.xz), true, global3[_wgslsmith_index_u32(43653u, 9u)], true || var_3.a.x), true), !(!select(select(vec4<bool>(true, var_3.a.x, true, var_3.a.x), vec4<bool>(global1.x, var_3.a.x, var_2.d.a.x, false), vec4<bool>(global3[_wgslsmith_index_u32(6010u, 9u)], true, global3[_wgslsmith_index_u32(var_2.d.c.x, 9u)], false)), vec4<bool>(true, global1.x, var_3.a.x, var_2.e.a.x), true)));
    var var_5 = select(global1.zwy, global1.xwx, !select(select(select(global1.wyx, var_2.e.a, var_3.a.x), var_2.d.a, vec3<bool>(true, true, true)), select(select(var_2.e.a, vec3<bool>(true, global1.x, false), global1.wxx), !vec3<bool>(var_2.d.a.x, true, var_3.a.x), !global1.x), vec3<bool>(any(var_2.d.a.xx), true || var_3.a.x, !var_2.e.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(72124u, ~var_2.e.c.zz, _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b.x, u_input.c), ~select(vec2<i32>(var_1, var_1), vec2<i32>(-1i, 50289i), var_5.x), u_input.b.xz) & vec2<i32>(_wgslsmith_mod_i32(var_1, 2147483647i ^ u_input.b.x), 2147483647i), -(((vec4<i32>(1i, 1i, -32091i, var_1) & vec4<i32>(var_1, var_1, -61900i, var_1)) >> (~vec4<u32>(var_3.c.x, u_input.a.x, u_input.a.x, 20948u) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a.x, _wgslsmith_add_u32(global4[_wgslsmith_index_u32(var_2.e.c.x, 5u)], 101462u), 0u, var_3.c.x) % vec4<u32>(32u))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(~vec2<u32>(4294967295u, 36438u)), select(var_2.e.c.yx | vec2<u32>(0u, 1647u), _wgslsmith_sub_vec2_u32(vec2<u32>(6503u, 1u), vec2<u32>(21598u, var_2.b)), !global1.ww)), reverseBits(~vec2<u32>(var_3.c.x, 4294967295u))));
}

