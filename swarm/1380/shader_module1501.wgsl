struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    var var_0 = arg_0;
    let var_1 = ~(vec4<i32>(-1i) * -(-vec4<i32>(-1i, -4361i, -28371i, -4014i) & countOneBits(vec4<i32>(-1i, arg_0.b, 6437i, arg_0.b))));
    var var_2 = -arg_0.b;
    var var_3 = countOneBits(vec3<u32>(arg_0.a, _wgslsmith_div_u32(1u, _wgslsmith_div_u32(36527u, 9226u)), _wgslsmith_mult_u32(1u, 4294967295u)) ^ ~vec3<u32>(~25754u, _wgslsmith_dot_vec4_u32(arg_0.c, var_0.c), arg_0.c.x));
    let var_4 = var_1;
    return arg_0.a;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: u32) -> i32 {
    let var_0 = -4715i;
    let var_1 = Struct_2(~(~(_wgslsmith_mod_u32(18524u, arg_3) | func_3(Struct_2(arg_0.a, var_0, vec4<u32>(arg_0.a, arg_0.a, 0u, arg_3), 219f), vec3<u32>(arg_0.a, u_input.a, arg_0.a)))), _wgslsmith_mod_i32(~(~_wgslsmith_mod_i32(arg_0.b.x, var_0)), -var_0), min(vec4<u32>(arg_0.a, ~1u, func_3(Struct_2(4294967295u, arg_0.b.x, vec4<u32>(arg_0.a, arg_3, arg_3, u_input.a), arg_0.c), ~vec3<u32>(arg_0.a, arg_0.a, arg_0.a)), 95277u), ~vec4<u32>(max(arg_3, 9417u), 1u, 1u << (arg_0.a % 32u), arg_0.a)), -796f);
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    let var_2 = vec4<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(var_1.c, max(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.a, var_1.a, arg_0.a), vec4<u32>(arg_3, 14612u, 1u, arg_0.a)), vec4<u32>(10688u, 12937u, 4294967295u, 12014u) | var_1.c)), 27u)], _wgslsmith_f_op_f32(select(arg_1, -993f, var_1.a > abs(23237u))), var_1.d, arg_1);
    return arg_0.b.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var var_0 = -min(min(~vec4<i32>(-5862i, arg_1.b.x, -1i, -2147483647i), arg_1.b) & firstTrailingBit(vec4<i32>(1i, -34961i, -40994i, arg_1.b.x)), vec4<i32>(arg_1.b.x, i32(-1i) * -arg_1.b.x, arg_1.b.x, 13107i));
    global0 = array<f32, 27>();
    var var_1 = Struct_1(_wgslsmith_mod_u32(~arg_0.x, _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(max(1u, 28293u), ~34870u, _wgslsmith_dot_vec3_u32(arg_0.wxw, arg_0.zyy), 82365u))), vec4<i32>(var_0.x, arg_1.b.x, ~arg_1.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b.x, arg_1.b.x, var_0.x, -32149i), vec4<i32>(0i, var_0.x, 1i, -13747i))) & vec4<i32>(-var_0.x, ~_wgslsmith_mult_i32(var_0.x, var_0.x), -select(-34440i, 0i, false), abs(~arg_1.b.x)), -806f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1470u, 27u)] + var_1.c) - var_1.c) < 260f;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = ~firstTrailingBit(45477u);
    global0 = array<f32, 27>();
    var_0 = reverseBits(~1u);
    let var_1 = 24642u;
    let var_2 = func_4(~arg_0.c, Struct_1(countOneBits(4294967295u), vec4<i32>(47264i, arg_2.x, func_2(Struct_1(1759u, arg_2, arg_0.d), -623f, select(vec2<bool>(false, false), vec2<bool>(true, false), true), ~u_input.a), _wgslsmith_mult_i32(-arg_3.b.x, -489i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1526f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(489f)) - _wgslsmith_f_op_f32(arg_0.d + arg_3.c)))));
    return select(select(!select(vec3<bool>(true, var_2, var_2), vec3<bool>(true, true, var_2), select(vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, var_2, var_2), var_2)), select(!select(vec3<bool>(true, false, false), vec3<bool>(var_2, false, var_2), true), vec3<bool>(any(vec2<bool>(var_2, false)), global0[_wgslsmith_index_u32(u_input.a, 27u)] <= 2467f, var_2), true), true), !vec3<bool>(var_2, any(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, false, false), false)), var_2), select(select(select(!vec3<bool>(false, false, var_2), select(vec3<bool>(false, var_2, true), vec3<bool>(false, true, true), vec3<bool>(var_2, var_2, var_2)), !vec3<bool>(true, false, var_2)), select(select(vec3<bool>(var_2, true, var_2), vec3<bool>(false, var_2, true), true), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, var_2, true), var_2), !vec3<bool>(var_2, true, var_2)), select(true, all(vec4<bool>(var_2, true, false, var_2)), true)), vec3<bool>(var_2, any(vec2<bool>(true, true)), true), var_2));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 27>();
    global0 = array<f32, 27>();
    var var_0 = countOneBits(reverseBits(select(min(vec3<u32>(u_input.a, 0u, 9736u), vec3<u32>(62371u, u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, 42835u) | vec3<u32>(48753u, u_input.a, u_input.a), func_1(Struct_2(u_input.a, -44489i, vec4<u32>(u_input.a, u_input.a, 43005u, 0u), 1368f), 1i, vec4<i32>(1i, 32849i, -1i, 0i), Struct_1(4294967295u, vec4<i32>(-43804i, -1i, -1i, -18155i), global0[_wgslsmith_index_u32(94362u, 27u)]))))) & ~abs(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(1u, 4294967295u, 31711u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 43611u), vec3<u32>(u_input.a, 73926u, 1u))));
    var var_1 = Struct_2(min(_wgslsmith_sub_u32(max(var_0.x >> (33281u % 32u), 9525u), _wgslsmith_sub_u32(11690u, abs(var_0.x))), u_input.a & 13191u), -1i, vec4<u32>(u_input.a | 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(35875u, 1u, var_0.x), firstTrailingBit(vec3<u32>(0u, 0u, u_input.a))), _wgslsmith_add_u32(38059u, var_0.x), ~60914u), _wgslsmith_f_op_f32(2177f * global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(9196u, 45881u), vec2<u32>(u_input.a, u_input.a))), 27u)]));
    var var_2 = _wgslsmith_sub_vec2_i32(abs(-vec2<i32>(var_1.b, var_1.b)), _wgslsmith_mult_vec2_i32(-(vec2<i32>(-24832i, var_1.b) & max(vec2<i32>(-2147483647i, var_1.b), vec2<i32>(var_1.b, var_1.b))), -vec2<i32>(var_1.b, ~var_1.b)));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(489f + _wgslsmith_f_op_f32(select(var_1.d, _wgslsmith_f_op_f32(-var_1.d), false)))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.c.zzy, var_1.c.yzz), 27u)])));
    global0 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_0.x, var_0.x, max(min(~var_1.c.x, u_input.a >> (u_input.a % 32u)), var_1.a), var_0.x), vec2<i32>(var_1.b, -526i), var_1.c, vec3<i32>(-min(var_1.b, 2147483647i), _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b, var_1.b, var_1.b), vec3<i32>(var_1.b, -44593i, var_2.x)), -abs(vec3<i32>(22091i, var_1.b, 2147483647i))), 1i), vec4<i32>(func_2(Struct_1(var_0.x | 0u, vec4<i32>(var_1.b, var_1.b, 77748i, var_2.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), 27u)]), 1347f, select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), func_1(Struct_2(var_1.c.x, var_1.b, var_1.c, -1247f), -32034i, vec4<i32>(2147483647i, -56858i, var_1.b, var_1.b), Struct_1(var_0.x, vec4<i32>(var_2.x, -54463i, 1i, var_2.x), 372f)).zy, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), var_0.x >> (u_input.a % 32u)), abs(abs(min(1i, 0i))), firstLeadingBit(select(-var_1.b, -39100i, any(vec4<bool>(false, true, true, true)))), -1i));
}

