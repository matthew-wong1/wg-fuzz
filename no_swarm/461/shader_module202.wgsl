struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-39450i, -1i, 1i, 10540i, 14675i, -59173i, i32(-2147483648), -10581i, -48595i, 1i, 57733i, 57959i, 11829i, -1i, 2147483647i, 1i, i32(-2147483648), i32(-2147483648), 2147483647i, 0i, 39868i, -19903i, 41321i, 7583i, -1i, 2147483647i, i32(-2147483648), -9723i);

var<private> global1: array<Struct_2, 20>;

var<private> global2: vec2<u32>;

var<private> global3: array<bool, 32>;

var<private> global4: array<vec3<u32>, 19>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    var var_0 = select(vec2<bool>(all(vec4<bool>(!global3[_wgslsmith_index_u32(global2.x, 32u)], true, 32146u < global2.x, true)), false), vec2<bool>(false, global3[_wgslsmith_index_u32(global2.x, 32u)]), 1u <= _wgslsmith_add_u32(global2.x, _wgslsmith_dot_vec4_u32(min(vec4<u32>(global2.x, 5633u, 21680u, 20514u), vec4<u32>(global2.x, global2.x, 14963u, global2.x)), vec4<u32>(4294967295u, 4294967295u, global2.x, global2.x))));
    var_0 = select(!vec2<bool>(true, !global3[_wgslsmith_index_u32(113261u, 32u)]), !(!(!select(vec2<bool>(true, var_0.x), vec2<bool>(true, true), vec2<bool>(true, false)))), vec2<bool>(true, true));
    var_0 = vec2<bool>(any(select(vec2<bool>(var_0.x, true), vec2<bool>(all(vec3<bool>(true, global3[_wgslsmith_index_u32(global2.x, 32u)], var_0.x)), true), !(var_0.x && global3[_wgslsmith_index_u32(global2.x, 32u)]))), any(vec4<bool>(~34803i >= firstTrailingBit(-26891i), var_0.x, true, select(var_0.x && true, any(vec4<bool>(global3[_wgslsmith_index_u32(global2.x, 32u)], false, global3[_wgslsmith_index_u32(4294967295u, 32u)], var_0.x)), true))));
    let var_1 = u_input.a ^ abs(u_input.a);
    global1 = array<Struct_2, 20>();
    return -(-27778i << (global2.x % 32u));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: i32) -> vec4<u32> {
    var var_0 = select(select(vec2<bool>(false, true), select(!select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(39283u, 32u)]), vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 32u)], true), vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 32u)], global3[_wgslsmith_index_u32(global2.x, 32u)])), !select(vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 32u)], true), vec2<bool>(false, global3[_wgslsmith_index_u32(7639u, 32u)]), vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 32u)], global3[_wgslsmith_index_u32(arg_0.x, 32u)])), global3[_wgslsmith_index_u32(121235u, 32u)]), !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 65388u), vec2<u32>(0u, 9343u) ^ arg_0), 32u)]), !vec2<bool>(all(select(vec2<bool>(global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(arg_0.x, 32u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(arg_0.x, 32u)]), vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 32u)], true))), arg_2 != min(u_input.b.x, global0[_wgslsmith_index_u32(36151u, 28u)])), select(vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), global3[_wgslsmith_index_u32(1u, 32u)])), !(!select(vec2<bool>(false, global3[_wgslsmith_index_u32(arg_0.x, 32u)]), vec2<bool>(global3[_wgslsmith_index_u32(47383u, 32u)], global3[_wgslsmith_index_u32(global2.x, 32u)]), false))));
    global0 = array<i32, 28>();
    var var_1 = Struct_1(!select(select(true | var_0.x, all(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 32u)], false, true)), global3[_wgslsmith_index_u32(global2.x, 32u)]), true, _wgslsmith_f_op_f32(arg_1 * arg_1) < arg_1), _wgslsmith_f_op_f32(abs(-111f)), select(vec3<bool>(!(arg_1 > 1749f), var_0.x, !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0, arg_0), 32u)]), !select(select(vec3<bool>(false, var_0.x, global3[_wgslsmith_index_u32(1u, 32u)]), vec3<bool>(global3[_wgslsmith_index_u32(1u, 32u)], true, true), vec3<bool>(var_0.x, false, false)), vec3<bool>(true, global3[_wgslsmith_index_u32(53148u, 32u)], global3[_wgslsmith_index_u32(arg_0.x, 32u)]), all(vec4<bool>(true, true, true, true))), !vec3<bool>(any(vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x, 32u)], true, false, true)), all(vec4<bool>(var_0.x, global3[_wgslsmith_index_u32(0u, 32u)], var_0.x, var_0.x)), !var_0.x)));
    var var_2 = !var_0.x;
    var var_3 = var_1.a;
    return ~vec4<u32>(min(21104u, ~0u), ~global2.x, global2.x, abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.x), arg_0)));
}

fn func_2() -> vec2<u32> {
    var var_0 = -1000f;
    global0 = array<i32, 28>();
    let var_1 = vec2<bool>(!(!(!(true & global3[_wgslsmith_index_u32(75075u, 32u)]))), true);
    var var_2 = ~func_4(max(vec2<u32>(global2.x, 41178u), ~vec2<u32>(0u, 1u)), _wgslsmith_f_op_f32(-1142f + -935f), func_3(vec2<i32>(-437i, u_input.a.x))) ^ ~_wgslsmith_div_vec4_u32(select(vec4<u32>(global2.x, global2.x, 0u, 1825u), vec4<u32>(global2.x, global2.x, 0u, 1u) ^ vec4<u32>(global2.x, 10476u, global2.x, global2.x), select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(global3[_wgslsmith_index_u32(19901u, 32u)], global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(0u, 32u)], var_1.x), vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(0u, 32u)]))), vec4<u32>(abs(global2.x), global2.x ^ global2.x, abs(1u), global2.x));
    var_2 = vec4<u32>(~var_2.x, var_2.x, firstLeadingBit(0u), ~(~49411u));
    return var_2.zw;
}

fn func_5(arg_0: f32, arg_1: i32) -> Struct_3 {
    var var_0 = arg_0;
    global1 = array<Struct_2, 20>();
    return Struct_3(vec4<bool>(global3[_wgslsmith_index_u32(global2.x, 32u)], any(vec3<bool>(arg_0 > arg_0, false, all(vec4<bool>(false, true, false, true)))), global3[_wgslsmith_index_u32(~(1u | global2.x), 32u)], true), ~vec4<u32>(global2.x, ~(global2.x ^ global2.x), global2.x, select(4097u, global2.x, true) | ~4294967295u));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    let var_0 = global1[_wgslsmith_index_u32(global2.x, 20u)];
    global3 = array<bool, 32>();
    var var_1 = func_5(_wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, ~1i) >> (firstTrailingBit(func_2()) % vec2<u32>(32u)), u_input.a.zy));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 1653f)), _wgslsmith_f_op_f32(trunc(1379f)), _wgslsmith_f_op_f32(f32(-1f) * -1259f), var_0.c));
    let var_3 = ~select(~2147483647i, 0i, (false || (var_2.x == var_2.x)) && func_5(_wgslsmith_f_op_f32(f32(-1f) * -821f), u_input.a.x).a.x);
    return select(var_1.a.wwz, var_0.b.c, !(var_0.a & !(!var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.yyx;
    global3 = array<bool, 32>();
    var var_1 = 212f;
    global0 = array<i32, 28>();
    let var_2 = u_input.a.yxz;
    let var_3 = Struct_1(false, -840f, select(!select(!vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(61679u, 32u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 32u)], false, true), vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 32u)], false, true), false), true), !func_1(-30909i >> (global2.x % 32u)), func_5(_wgslsmith_f_op_f32(-820f - _wgslsmith_f_op_f32(min(-1657f, -550f))), _wgslsmith_sub_i32(-10755i, _wgslsmith_dot_vec3_i32(vec3<i32>(-15197i, u_input.a.x, global0[_wgslsmith_index_u32(global2.x, 28u)]), vec3<i32>(14690i, -63418i, -2147483647i)))).a.x));
    global0 = array<i32, 28>();
    var var_4 = var_0.x;
    var var_5 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b, -762f, -409f, -399f), vec4<f32>(var_3.b, var_3.b, var_3.b, -395f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(847f, 1526f, var_3.b, -1500f) - vec4<f32>(1483f, var_3.b, -871f, 245f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, -1907f, 120f, var_3.b)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), var_3.b, _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~func_4(vec2<u32>(20962u, 99889u), var_5.x, var_0.x).yw, ~_wgslsmith_div_vec2_u32(vec2<u32>(12888u, global2.x), vec2<u32>(52691u, 15516u))), min(~(~vec2<u32>(3728u, global2.x)), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(138217u, global2.x), vec2<u32>(85331u, global2.x))))));
}

