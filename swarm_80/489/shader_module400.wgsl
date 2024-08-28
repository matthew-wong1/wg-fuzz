struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(4294967295u, 39779u, 118268u, 59386u), vec4<u32>(40198u, 56366u, 26687u, 1u), vec4<u32>(21161u, 51159u, 4294967295u, 45631u), vec4<u32>(4294967295u, 18400u, 15842u, 4294967295u), vec4<u32>(4294967295u, 0u, 25306u, 4294967295u), vec4<u32>(18323u, 65913u, 1261u, 49512u), vec4<u32>(66552u, 4294967295u, 18397u, 19022u), vec4<u32>(45388u, 4294967295u, 0u, 0u), vec4<u32>(1u, 0u, 1u, 17342u), vec4<u32>(74082u, 11573u, 10496u, 53698u), vec4<u32>(101479u, 8109u, 43824u, 2549u), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(1u, 31868u, 103028u, 50525u), vec4<u32>(21488u, 4294967295u, 1u, 1u), vec4<u32>(6744u, 0u, 4294967295u, 4294967295u), vec4<u32>(63833u, 1u, 0u, 7154u), vec4<u32>(17028u, 1u, 1u, 65115u), vec4<u32>(3252u, 21084u, 0u, 34595u));

var<private> global1: array<vec2<f32>, 22>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(1598f);
    global0 = array<vec4<u32>, 18>();
    global1 = array<vec2<f32>, 22>();
    let var_1 = 48205u;
    let var_2 = Struct_1(-2289f);
    return 3086i;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -313f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(step(arg_2.a, arg_2.a))))), 795f);
    let var_1 = arg_2;
    let var_2 = func_3();
    global1 = array<vec2<f32>, 22>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(floor(-1962f)));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), var_1.a));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = 8409u;
    var var_1 = arg_1.a;
    var var_2 = arg_1;
    let var_3 = vec4<f32>(func_2(select(vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), all(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true)), -_wgslsmith_dot_vec3_i32(u_input.c | u_input.c, vec3<i32>(15625i, u_input.a.x, u_input.d)), func_2(vec3<bool>(true, select(false, false, false), all(vec2<bool>(true, false))), firstLeadingBit(~29650i), Struct_1(var_2.a), vec4<u32>(u_input.b.x, 37470u, 4294967295u, 43751u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 4294967295u), global0[_wgslsmith_index_u32(23996u, 18u)])), vec4<u32>(_wgslsmith_add_u32(49478u, u_input.b.x), ~(~19906u), 10903u, ~u_input.b.x)).a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.a + arg_1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.a, arg_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -1362f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(min(356f, 1734f)))))) + _wgslsmith_f_op_f32(f32(-1f) * -153f)), -618f);
    var var_4 = 0u;
    return _wgslsmith_dot_vec4_i32(firstTrailingBit(abs(firstTrailingBit(vec4<i32>(arg_0, arg_0, -5623i, arg_0)))), select(vec4<i32>(-17161i, func_3(), u_input.a.x, u_input.d), abs(firstTrailingBit(vec4<i32>(-24991i, u_input.d, -32121i, -7907i))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), true))) | ~(~(-2147483647i));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = vec2<bool>((~u_input.d == func_4(firstTrailingBit(0i), func_2(vec3<bool>(true, false, false), u_input.a.x, arg_0, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))) || false, true);
    var var_1 = select(!(!select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x), select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), true), false)), vec4<bool>(all(select(!vec3<bool>(true, false, var_0.x), !vec3<bool>(false, var_0.x, false), vec3<bool>(true, var_0.x, true))), var_0.x, !any(vec2<bool>(false, var_0.x)), var_0.x), !vec4<bool>(var_0.x, true, _wgslsmith_sub_i32(4788i, -16987i) <= u_input.a.x, var_0.x));
    var var_2 = ~(~global0[_wgslsmith_index_u32(4294967295u, 18u)] & _wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(~(~20797u), 18u)], firstLeadingBit(vec4<u32>(32423u, 42714u, u_input.b.x, 4294967295u) & vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x))));
    let var_3 = func_2(var_1.xwy, 2147483647i, Struct_1(arg_1), min(_wgslsmith_div_vec4_u32(abs(abs(global0[_wgslsmith_index_u32(3854u, 18u)])), reverseBits(vec4<u32>(1u, var_2.x, 33452u, 1u))), max(~abs(global0[_wgslsmith_index_u32(0u, 18u)]), _wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2.zwy, var_2.xzw), 18u)], _wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(7951u, 18u)], global0[_wgslsmith_index_u32(var_2.x, 18u)])))));
    var var_4 = countOneBits(u_input.a.x >> (firstTrailingBit(~1u) % 32u));
    return all(select(select(!select(vec4<bool>(var_1.x, var_0.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false), var_1.x), !(!vec4<bool>(var_1.x, true, true, var_0.x)), !select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(false, false, var_1.x, var_1.x))), !(!(!vec4<bool>(false, var_1.x, true, var_1.x))), any(vec2<bool>(!var_1.x, var_0.x || false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(true, any(vec2<bool>(false, true)), true, all(vec2<bool>(func_1(Struct_1(-1099f), -318f), true))));
    let var_1 = vec2<bool>(all(vec2<bool>((u_input.b.x ^ 5915u) < _wgslsmith_clamp_u32(0u, 56933u, 20217u), true)), true);
    global1 = array<vec2<f32>, 22>();
    global1 = array<vec2<f32>, 22>();
    global1 = array<vec2<f32>, 22>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -888f)));
    global1 = array<vec2<f32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(8886u, u_input.b.x), firstTrailingBit(~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), ~firstTrailingBit(u_input.b.x)), vec4<f32>(1630f, _wgslsmith_f_op_f32(sign(var_2.a)), var_2.a, var_2.a));
}

