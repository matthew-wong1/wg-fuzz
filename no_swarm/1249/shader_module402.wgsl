struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<u32, 8>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(61103u, 4294967295u), 0u, vec4<f32>(-200f, -379f, 167f, -428f));

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, 1280f, _wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -622f))), -1759f));
    var var_1 = !arg_0;
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(global2.b, 8u)], 4552u, global3.a.x, global2.b) | (vec4<u32>(global3.a.x, 23847u, global2.a.x, 0u) ^ vec4<u32>(4294967295u, 0u, global3.a.x, global3.b)), (vec4<u32>(global2.b, 29797u, global2.a.x, global3.b) >> (vec4<u32>(global1[_wgslsmith_index_u32(global3.b, 8u)], 1u, global3.b, global1[_wgslsmith_index_u32(global2.b, 8u)]) % vec4<u32>(32u))) | ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a.x, 8u)], 8u)], 1u, 1u, global3.a.x)), ~(~(~global2.a.x)), arg_0)), 21u)];
    global2 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(~global2.a, global2.a), abs(_wgslsmith_sub_u32(global3.a.x, 0u)) & _wgslsmith_mod_u32(var_2.a.x, _wgslsmith_mult_u32(var_2.b, global2.b))), firstLeadingBit(~_wgslsmith_mod_u32(var_2.a.x >> (global3.b % 32u), 1u)), global2.c);
    let var_3 = global0[_wgslsmith_index_u32(~var_2.a.x, 21u)];
    return Struct_1(var_3.a, abs(global1[_wgslsmith_index_u32(30657u, 8u)]), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.c)), global3.c)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = ~(~_wgslsmith_dot_vec4_u32(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(35873u, global1[_wgslsmith_index_u32(1u, 8u)], global3.b, 3473u), vec4<u32>(global3.a.x, global2.a.x, 24611u, global2.b), vec4<u32>(1u, arg_0.a.x, 1u, 1u)), vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(0u, 8u)], 0u)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(32013u, 25403u, 0u, 1u)), select(vec4<u32>(arg_1.a.x, 52270u, 64888u, global2.a.x), vec4<u32>(global3.a.x, global3.b, global3.b, 1u), true), vec4<u32>(global1[_wgslsmith_index_u32(1u, 8u)], arg_1.a.x, arg_0.b, 20743u) ^ vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 4294967295u, global3.a.x, global2.b))));
    var var_1 = Struct_1(max(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 61866u), max(vec2<u32>(0u, 11655u), global3.a)), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.a.x, arg_1.a.x), vec2<u32>(arg_1.b, 1u)))) ^ firstTrailingBit(global2.a), 73019u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.c))))));
    global1 = array<u32, 8>();
    var var_2 = u_input.a;
    let var_3 = vec2<i32>(~(u_input.a ^ _wgslsmith_sub_i32(-u_input.a, 9296i & u_input.a)), u_input.a);
    return _wgslsmith_div_u32(1u, _wgslsmith_add_u32(arg_0.b, global3.b));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global1 = array<u32, 8>();
    global3 = arg_2;
    let var_0 = min(arg_1 ^ 2147483647i, -2147483647i);
    var var_1 = ~vec2<i32>(-35311i, ~_wgslsmith_mod_i32(u_input.a, var_0 << (global1[_wgslsmith_index_u32(arg_2.b, 8u)] % 32u)));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~func_3(func_2(false), arg_2), global3.b), ~global2.a.x);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-814f, 30952i, global0[_wgslsmith_index_u32(global3.b, 21u)]);
    var var_1 = Struct_1(abs(~(min(vec2<u32>(global3.b, var_0.a.x), vec2<u32>(11527u, global3.a.x)) << (vec2<u32>(global3.b, 1u) % vec2<u32>(32u)))), 4294967295u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(958f + 1478f) + global3.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1044f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(min(var_0.c.x, global3.c.x)))), 1000f));
    let var_2 = _wgslsmith_sub_i32(u_input.a, u_input.a >> ((~(~global3.b) ^ ~var_0.a.x) % 32u));
    let var_3 = abs(vec4<u32>(45340u, 0u, 22099u, 4294967295u));
    global1 = array<u32, 8>();
    global3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-758f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-4423f)) * _wgslsmith_f_op_f32(-global2.c.x)))), var_2, var_0);
    var var_4 = var_2;
    var var_5 = vec3<f32>(_wgslsmith_div_f32(-774f, -554f), 219f, _wgslsmith_f_op_f32(var_1.c.x + -1414f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_1.c.wzy), abs(vec4<i32>(2147483647i, _wgslsmith_add_i32(var_2 | var_2, var_2), var_2, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_2, var_2, var_2, var_2)), max(vec4<i32>(33112i, 0i, var_2, 2147483647i), vec4<i32>(2147483647i, -16221i, var_2, -11200i))))), _wgslsmith_div_vec4_u32(var_3, vec4<u32>(_wgslsmith_div_u32(min(1u, var_1.b), firstTrailingBit(global3.a.x)), ~16409u >> (1u % 32u), _wgslsmith_mod_u32(1u >> (global1[_wgslsmith_index_u32(var_3.x, 8u)] % 32u), 19432u), var_1.a.x)));
}

