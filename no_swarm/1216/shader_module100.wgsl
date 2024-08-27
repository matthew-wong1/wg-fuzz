struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(true, -874f), Struct_1(true, 637f));

var<private> global1: array<u32, 7> = array<u32, 7>(0u, 2689u, 44081u, 74215u, 129438u, 18181u, 1u);

var<private> global2: u32 = 4294967295u;

var<private> global3: array<bool, 11>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    return global0[_wgslsmith_index_u32(_wgslsmith_mult_u32((9021u & u_input.c) & 0u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(27127u, 7u)], u_input.c, global1[_wgslsmith_index_u32(19286u, 7u)], 4294967295u)), (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 1u, 12595u, 2014u) | vec4<u32>(0u, global1[_wgslsmith_index_u32(1u, 7u)], 0u, 46646u)) >> (firstTrailingBit(vec4<u32>(54650u, 78263u, u_input.d.x, 0u)) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.d.x, 0u, global1[_wgslsmith_index_u32(44674u, 7u)], u_input.d.x)) ^ vec4<u32>(7358u, 1438u, 0u, abs(u_input.a)))), 2u)];
}

fn func_3(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = vec4<bool>(true, !global3[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 7u)], 25627u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 7u)], 7u)])), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(u_input.c, u_input.a), 7u)], 7u)])), 11u)], func_1(vec3<bool>(!(global3[_wgslsmith_index_u32(68837u, 11u)] && true), func_1(vec3<bool>(global3[_wgslsmith_index_u32(1u, 11u)], false, true)).a, true)).a, !(!(global3[_wgslsmith_index_u32(select(u_input.d.x, u_input.d.x, global3[_wgslsmith_index_u32(30938u, 11u)]), 11u)] | false)));
    var var_1 = ~(-2147483647i);
    global0 = array<Struct_1, 2>();
    global2 = _wgslsmith_div_u32(98u, 4294967295u);
    global3 = array<bool, 11>();
    return Struct_1(func_1(!select(var_0.ywy, var_0.wxx, vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 11u)], var_0.x, global3[_wgslsmith_index_u32(62741u, 11u)]))).b > 2462f, _wgslsmith_f_op_f32(-func_1(var_0.wyy).b));
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    global3 = array<bool, 11>();
    let var_0 = func_3(~_wgslsmith_sub_vec3_i32(~(vec3<i32>(arg_0.a, -2147483647i, -422i) << (vec3<u32>(1u, 20226u, 9780u) % vec3<u32>(32u))), -_wgslsmith_add_vec3_i32(u_input.e, vec3<i32>(6730i, -2147483647i, arg_0.a))));
    let var_1 = _wgslsmith_add_vec2_i32(u_input.e.xx, -select(vec2<i32>(u_input.b.x, u_input.e.x ^ arg_0.a), u_input.e.yx, !global3[_wgslsmith_index_u32(0u, 11u)]));
    var var_2 = var_0.a && any(!vec4<bool>(var_0.a, true, true, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(51286u, u_input.d.x), 11u)]));
    var var_3 = Struct_2(~_wgslsmith_sub_i32(-9740i, var_1.x), func_1(select(!(!vec3<bool>(var_0.a, arg_0.b.a, var_0.a)), !select(vec3<bool>(var_0.a, true, true), vec3<bool>(true, false, false), false), vec3<bool>(arg_0.b.a != false, all(vec2<bool>(true, false)), true))));
    return vec3<bool>(var_0.a, !(!(true | all(vec2<bool>(false, false)))), _wgslsmith_div_f32(arg_0.b.b, var_0.b) == _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0.b.b, var_0.b)))));
}

fn func_4(arg_0: vec3<bool>) -> StorageBuffer {
    let var_0 = ~_wgslsmith_clamp_u32(max(~(~u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(32228u, u_input.c), 7u)]), ~_wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(u_input.d.x, global1[_wgslsmith_index_u32(u_input.d.x, 7u)])), u_input.c);
    let var_1 = global0[_wgslsmith_index_u32(u_input.a & 0u, 2u)];
    let var_2 = vec2<i32>(min(-_wgslsmith_add_i32(~31538i, _wgslsmith_mult_i32(u_input.b.x, 2147483647i)), abs(_wgslsmith_div_i32(firstTrailingBit(-60544i), abs(u_input.e.x)))), 1i);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b, var_1.b, var_1.b, var_1.b), vec4<f32>(var_1.b, var_1.b, -1057f, -1067f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1855f, var_1.b, -1815f, 585f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 771f, var_1.b, -243f) * vec4<f32>(1200f, -143f, var_1.b, -1155f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1836f, -423f, var_1.b, 1777f) * vec4<f32>(var_1.b, 1130f, var_1.b, var_1.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 1000f, 608f, -480f) - vec4<f32>(502f, 1556f, 1104f, 1463f)), !global3[_wgslsmith_index_u32(47330u, 11u)])), vec4<f32>(-1304f, var_1.b, _wgslsmith_f_op_f32(exp2(var_1.b)), -2182f), _wgslsmith_clamp_i32(var_2.x, u_input.e.x, -2147483647i) <= 32510i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!vec3<bool>(all(!vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.a, 11u)])), global3[_wgslsmith_index_u32(u_input.d.x, 11u)], true));
    global3 = array<bool, 11>();
    let var_1 = Struct_2(_wgslsmith_div_i32(42915i, _wgslsmith_clamp_i32(-23983i, -abs(0i), _wgslsmith_mod_i32(i32(-1i) * -14142i, _wgslsmith_add_i32(u_input.e.x, 2147483647i)))), Struct_1(u_input.e.x < _wgslsmith_add_i32(8423i, u_input.e.x), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, 673f) + _wgslsmith_f_op_f32(max(1206f, -1000f))))));
    global3 = array<bool, 11>();
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(16469u, 1u >> (~(~global1[_wgslsmith_index_u32(u_input.d.x, 7u)]) % 32u)), 7u)];
    global1 = array<u32, 7>();
    let x = u_input.a;
    s_output = func_4(!vec3<bool>(true, var_1.b.a, all(func_2(var_1))));
}

