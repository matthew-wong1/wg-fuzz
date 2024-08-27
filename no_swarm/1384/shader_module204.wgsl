struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(4294967295u, 49982u, 4953u, 1u, 0u, 0u, 4132u, 4294967295u, 2387u, 46049u, 18182u, 4294967295u, 26426u, 0u, 4294967295u, 32271u, 64968u, 45382u, 36246u, 1u, 93562u, 1u, 4294967295u, 32095u, 1260u);

var<private> global1: i32;

var<private> global2: f32 = 1514f;

var<private> global3: array<u32, 5>;

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(all(vec2<bool>(!any(vec3<bool>(false, arg_0.a, true)), true)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(17278u, 36251u, 23318u, 1u) | vec4<u32>(14596u, 0u, global3[_wgslsmith_index_u32(26314u, 5u)], 1u), select(vec4<u32>(0u, arg_0.b, 56482u, 18959u), vec4<u32>(0u, 1u, global3[_wgslsmith_index_u32(4294967295u, 5u)], 4294967295u), vec4<bool>(arg_1.x, arg_1.x, false, false))), ~vec4<u32>(52202u, 4294967295u, arg_0.b, 4294967295u)));
    var var_1 = firstTrailingBit(~(~(~countOneBits(vec4<i32>(2147483647i, 2147483647i, u_input.d.x, -2147483647i)))));
    let var_2 = arg_0;
    let var_3 = Struct_1(arg_0.a, ~(~20979u << (firstTrailingBit(1u) % 32u)));
    global3 = array<u32, 5>();
    return !(!select(vec3<bool>(true, true, true), vec3<bool>(var_2.a, var_3.a, var_0.a), vec3<bool>(true, true, all(arg_1))));
}

fn func_2() -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(abs(0u), 22u)];
    var var_1 = firstTrailingBit(~_wgslsmith_clamp_i32(~(-11222i | u_input.b.x), -20130i, u_input.b.x));
    let var_2 = select(func_3(global4[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(0u, 5u)], 22u)], !select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, var_0.a)), select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, true), false), vec2<bool>(var_0.a, var_0.a)), global4[_wgslsmith_index_u32(118440u, 22u)]), !(!(!vec3<bool>(true, var_0.a, var_0.a))), !vec3<bool>(var_0.a, var_0.a, !(var_0.a || true)));
    var var_3 = true;
    global4 = array<Struct_1, 22>();
    return 4294967295u;
}

fn func_1() -> Struct_1 {
    let var_0 = ~vec2<u32>(~func_2(), 9354u);
    var var_1 = func_3(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~1u), 25u)], 22u)], vec2<bool>(all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), false)), true), global4[_wgslsmith_index_u32(~(~(~107602u)), 22u)]).yz;
    var var_2 = global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(u_input.c.x, 5u)], global3[_wgslsmith_index_u32(1u, 5u)]), 25u)], _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.c.x) & _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, u_input.c.x), vec3<u32>(50644u, var_0.x, global0[_wgslsmith_index_u32(23418u, 25u)])), vec3<u32>(firstLeadingBit(var_0.x), var_0.x, _wgslsmith_clamp_u32(59716u, global3[_wgslsmith_index_u32(55785u, 5u)], 68255u)))), 22u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(173f, 550f)) - 329f)), -1430f, -1680f));
    var var_4 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15103u, 25u)], 25u)], var_0.x, global0[_wgslsmith_index_u32(12108u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)]), min(vec4<u32>(0u, global3[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(var_2.b, 25u)], u_input.c.x), vec4<u32>(var_0.x, 26672u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 5u)], 89547u))), min(global0[_wgslsmith_index_u32(4294967295u, 25u)] & 16879u, reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_2.b, 5u)], 25u)], 25u)])), u_input.c.x) | _wgslsmith_sub_vec3_u32(vec3<u32>(~24303u, var_2.b ^ 4294967295u, ~global3[_wgslsmith_index_u32(123651u, 5u)]), ~firstLeadingBit(vec3<u32>(1u, u_input.c.x, 11441u))), vec3<u32>(1u, 7778u, max(_wgslsmith_dot_vec2_u32(var_0, ~u_input.c), global3[_wgslsmith_index_u32(abs(1u), 5u)])));
    return global4[_wgslsmith_index_u32(7164u ^ global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 92647u), 5u)], var_2.b), 25u)], 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = 53729i;
    global3 = array<u32, 5>();
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(~var_0.b >> (global3[_wgslsmith_index_u32(max(40296u, u_input.c.x), 5u)] % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, global0[_wgslsmith_index_u32(var_0.b, 25u)], 4294967295u, 0u), vec4<u32>(794u, global0[_wgslsmith_index_u32(var_0.b, 25u)], global3[_wgslsmith_index_u32(62263u, 5u)], var_0.b))), reverseBits(23277u), abs(global3[_wgslsmith_index_u32(abs(~_wgslsmith_mod_u32(var_0.b, global0[_wgslsmith_index_u32(var_0.b, 25u)])), 5u)])), 22u)];
    let var_3 = Struct_1((abs(func_1().b) >= firstLeadingBit(abs(var_2.b))) | !var_2.a, ~1u);
    let var_4 = ~_wgslsmith_add_u32(func_1().b, u_input.c.x);
    global0 = array<u32, 25>();
    let var_5 = !(!select(select(!var_2.a, true & var_0.a, true), func_3(var_0, vec2<bool>(true, var_2.a), var_0).x, !var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(-286f, _wgslsmith_clamp_i32(max(-12013i ^ min(u_input.b.x, -2147483647i), _wgslsmith_sub_i32(6892i, _wgslsmith_clamp_i32(u_input.d.x, 0i, -1i))), ~u_input.a, ~(~0i)), vec4<i32>(1i, firstLeadingBit(u_input.a), u_input.b.x, u_input.b.x), 53101u, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-203f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-2784f)), -1292f)) * -1742f), -219f));
}

