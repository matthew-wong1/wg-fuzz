struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<u32>(4294967295u, 5673u), vec2<u32>(1u, 15159u)), Struct_1(vec2<u32>(16155u, 29551u), vec2<u32>(32293u, 0u)), Struct_1(vec2<u32>(31664u, 19450u), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(1u, 21507u), vec2<u32>(74743u, 0u)), Struct_1(vec2<u32>(3227u, 4294967295u), vec2<u32>(4294967295u, 35330u)), Struct_1(vec2<u32>(0u, 0u), vec2<u32>(0u, 1u)));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<u32>(0u, 120965u), vec2<u32>(29139u, 1u)), Struct_1(vec2<u32>(4263u, 34986u), vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(26573u, 72530u), vec2<u32>(40410u, 69781u)), Struct_1(vec2<u32>(0u, 852u), vec2<u32>(12536u, 4294967295u)), Struct_1(vec2<u32>(8360u, 0u), vec2<u32>(0u, 38591u)), Struct_1(vec2<u32>(72110u, 1u), vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(41850u, 31417u), vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(1u, 1u), vec2<u32>(14915u, 4294967295u)), Struct_1(vec2<u32>(10718u, 1u), vec2<u32>(22625u, 0u)));

var<private> global2: array<vec2<i32>, 30>;

var<private> global3: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(~vec2<u32>(u_input.c.x, countOneBits(u_input.b.x)), u_input.d.yx);
    let var_1 = global0[_wgslsmith_index_u32(var_0.b.x, 6u)];
    var var_2 = -851f;
    var var_3 = !(~_wgslsmith_div_u32(~28457u, ~61158u) != u_input.d.x);
    global2 = array<vec2<i32>, 30>();
    return ~(~(var_1.a.x ^ select(0u, 42912u, any(vec4<bool>(false, false, false, true)))));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: bool, arg_3: bool) -> bool {
    var var_0 = u_input.d.zz;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(447f)))))))));
    var var_2 = all(!vec3<bool>(arg_1, arg_0.x, !(1u < var_0.x)));
    let var_3 = global0[_wgslsmith_index_u32(func_3() >> (~0u % 32u), 6u)];
    let var_4 = global1[_wgslsmith_index_u32(var_3.b.x, 9u)];
    return any(select(select(select(select(vec3<bool>(arg_3, arg_0.x, true), vec3<bool>(arg_3, arg_2, arg_3), arg_2), vec3<bool>(false, arg_0.x, arg_2), 0i != u_input.e), !select(vec3<bool>(false, true, arg_0.x), vec3<bool>(true, arg_1, false), arg_1), !arg_2), vec3<bool>(arg_0.x, arg_3, any(!vec4<bool>(arg_0.x, arg_3, true, true))), select(select(!vec3<bool>(true, arg_2, true), !vec3<bool>(false, arg_1, arg_3), true), select(!vec3<bool>(arg_1, false, false), vec3<bool>(true, arg_0.x, arg_3), vec3<bool>(false, arg_2, arg_2)), vec3<bool>(true, true, true))));
}

fn func_1() -> f32 {
    let var_0 = select(vec2<bool>(func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(all(vec4<bool>(true, true, false, true)), select(true, false, true), select(true, false, false)), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), true), vec2<bool>(true, true), true);
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, -36298i), reverseBits(_wgslsmith_add_i32(~(~u_input.e), _wgslsmith_mult_i32(u_input.e, u_input.a ^ u_input.e))), u_input.a);
    var var_2 = global0[_wgslsmith_index_u32(u_input.d.x, 6u)];
    let var_3 = _wgslsmith_add_vec2_u32(firstTrailingBit(~u_input.d.xy), ~var_2.b);
    global0 = array<Struct_1, 6>();
    return _wgslsmith_f_op_f32(sign(2656f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(0u, u_input.d.x, ~4294967295u), select(0u, _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(u_input.c.x, u_input.d.x), 4294967295u), true), min(14388u, ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x)), 25099u), _wgslsmith_add_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(10584u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.c.x, 4294967295u, u_input.c.x))), vec4<u32>(_wgslsmith_add_u32(~4294967295u, u_input.c.x ^ 4102u), ~u_input.c.x, min(_wgslsmith_add_u32(u_input.d.x, 6119u), ~u_input.d.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 12638u, 85909u, u_input.c.x), select(vec4<u32>(0u, u_input.d.x, 0u, 1u), vec4<u32>(0u, 0u, u_input.c.x, 28179u), vec4<bool>(false, true, true, false))))));
    var var_1 = !vec2<bool>((true || (var_0.x > u_input.b.x)) != (all(vec3<bool>(false, true, true)) && true), !select(any(vec4<bool>(true, true, true, false)), true, select(false, false, true)));
    global3 = var_1.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -343f) - _wgslsmith_f_op_f32(step(1232f, 207f)))), -1169f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-154f)), _wgslsmith_f_op_f32(ceil(-256f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(func_1())));
    global0 = array<Struct_1, 6>();
    var var_3 = global1[_wgslsmith_index_u32(0u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

