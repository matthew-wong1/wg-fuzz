struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: array<Struct_3, 25>;

var<private> global2: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global3: array<i32, 6> = array<i32, 6>(34500i, 1i, 0i, 2147483647i, -1i, 2147483647i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_2.b.yy))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_2.b.xz * vec2<f32>(arg_3.x, arg_2.b.x))))))));
    var var_1 = _wgslsmith_div_i32(u_input.d, global3[_wgslsmith_index_u32(1u, 6u)]);
    var var_2 = arg_2;
    let var_3 = !vec2<bool>(!arg_1, arg_0.x == arg_0.x);
    let var_4 = global1[_wgslsmith_index_u32(~(~countOneBits(_wgslsmith_dot_vec3_u32(select(vec3<u32>(14149u, arg_0.x, 44001u), vec3<u32>(arg_0.x, arg_0.x, 32062u), vec3<bool>(false, arg_1, var_3.x)), abs(vec3<u32>(1u, 1u, 4294967295u))))), 25u)];
    return ~_wgslsmith_sub_i32(u_input.a.x, u_input.d);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: f32) -> Struct_2 {
    let var_0 = ~31368u;
    global2 = array<vec2<bool>, 29>();
    let var_1 = select(global2[_wgslsmith_index_u32(u_input.b, 29u)], vec2<bool>((~u_input.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(39184i, arg_0.b.x, u_input.d, global3[_wgslsmith_index_u32(arg_1, 6u)]), vec4<i32>(6381i, -1i, global3[_wgslsmith_index_u32(4294967295u, 6u)], global3[_wgslsmith_index_u32(40282u, 6u)]))) != countOneBits(abs(1i)), true), select(vec2<bool>(true, false), global2[_wgslsmith_index_u32(~select(_wgslsmith_mod_u32(u_input.c.x, 1u), _wgslsmith_add_u32(arg_1, 4294967295u), true), 29u)], !(any(vec4<bool>(true, false, true, arg_2)) || !arg_2)));
    global2 = array<vec2<bool>, 29>();
    let var_2 = u_input.c;
    return Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, _wgslsmith_div_i32(-1i, global3[_wgslsmith_index_u32(u_input.b, 6u)])), vec3<i32>(global3[_wgslsmith_index_u32(~var_2.x, 6u)] & u_input.d, func_3(_wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(var_0, 22102u)), arg_2, Struct_2(-7199i, vec3<f32>(855f, -216f, arg_0.c), -64899i), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 4u)]), reverseBits(~arg_0.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1349f, _wgslsmith_f_op_f32(-512f - 521f), -1623f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, -1176f, -751f), vec3<f32>(827f, -1498f, -227f)), vec3<f32>(arg_3, arg_0.a, 1542f)))))), -18351i);
}

fn func_1(arg_0: bool, arg_1: f32) -> Struct_2 {
    return func_2(Struct_1(474f, vec2<i32>(_wgslsmith_div_i32(18243i, u_input.a.x), global3[_wgslsmith_index_u32(1u, 6u)]), -1978f, -u_input.a.x), u_input.b, arg_0, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1101f));
    let var_1 = _wgslsmith_div_vec2_u32(~u_input.c, _wgslsmith_mult_vec2_u32(~abs(vec2<u32>(60703u, u_input.c.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.c.x), u_input.c) >> (_wgslsmith_add_vec2_u32(abs(u_input.c), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, u_input.b), u_input.c)) % vec2<u32>(32u))));
    global0 = array<vec4<f32>, 4>();
    var var_2 = u_input.a.yy;
    global2 = array<vec2<bool>, 29>();
    var_2 = vec2<i32>(-1i) * -abs(u_input.a.yz);
    var var_3 = Struct_3(select(vec4<bool>(var_0.c != -19590i, false, any(vec4<bool>(true, true, false, true)), all(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(global2[_wgslsmith_index_u32(var_1.x, 29u)]), var_0.b.x >= var_0.b.x, true), vec4<bool>(false, true, true, true)), !(var_1.x == (53715u << (u_input.c.x % 32u)))));
    let var_4 = func_1(!var_3.a.x, _wgslsmith_f_op_f32(-var_0.b.x)).b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(true, var_0.b.x).c, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_4.x)), -270f))), _wgslsmith_f_op_f32(min(-977f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-526f + -1000f), var_3.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-903f)))))));
}

