struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-648f), Struct_1(-484f), Struct_1(-1000f), Struct_1(-482f), Struct_1(-1000f), Struct_1(-1936f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2) -> f32 {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_0 = global0[_wgslsmith_index_u32(1u & _wgslsmith_mult_u32(~u_input.b, ~(~(~u_input.b))), 6u)];
    global0 = array<Struct_1, 6>();
    return 1f;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_0 = Struct_2(~arg_0.x, reverseBits(vec2<i32>(arg_0.x, arg_0.x)));
    var_0 = Struct_2(-(-var_0.a << (u_input.b % 32u)), arg_0.wy);
    return abs(~_wgslsmith_sub_u32(u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 2837u), vec3<u32>(u_input.b, u_input.b, 4294967295u) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -4429i;
    var_0 = u_input.a;
    var_0 = _wgslsmith_add_i32(u_input.a, ~u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_0.x, arg_1.a, _wgslsmith_f_op_f32(func_2(Struct_2(-11069i, vec2<i32>(2147483647i, u_input.a))))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a, 795f, arg_0.x, arg_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-652f, arg_1.a, -2279f, -638f) - vec4<f32>(arg_0.x, arg_0.x, arg_1.a, arg_0.x)))))));
    global0 = array<Struct_1, 6>();
    return global0[_wgslsmith_index_u32(~abs(func_3(select(~vec4<i32>(u_input.a, 19957i, 31469i, -35172i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(u_input.a, -1i, -1i, u_input.a)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, 42150u), 6u)], vec3<bool>(true, true, true))), 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(618f, -1358f, 1046f), vec3<f32>(-752f, -2129f, 1565f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-389f, -552f, -362f))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2457f)) - _wgslsmith_div_f32(-2420f, 321f)), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-548f + -972f), _wgslsmith_f_op_f32(f32(-1f) * -672f)))), global0[_wgslsmith_index_u32(u_input.b, 6u)]);
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 6u)];
    var var_2 = vec4<bool>(all(select(vec3<bool>(any(vec4<bool>(true, false, true, true)), true, var_0.a != 1419f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), true, !(true | all(select(vec2<bool>(false, false), vec2<bool>(false, false), false))), false && !any(vec3<bool>(true, true, true)));
    var var_3 = Struct_2(firstLeadingBit(-4189i), vec2<i32>(35160i >> (_wgslsmith_mod_u32(9854u, u_input.b) % 32u), -1i));
    var var_4 = any(!select(!vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(all(vec2<bool>(false, true)), var_2.x, true, any(var_2.yz)), vec4<bool>(!var_2.x, true, var_2.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(u_input.b, _wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(37723u, u_input.b, 16996u))), u_input.b), countOneBits(_wgslsmith_div_u32(max(4294967295u, u_input.b) << (abs(23398u) % 32u), _wgslsmith_add_u32(~36783u, _wgslsmith_div_u32(u_input.b, 47278u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-273f, 1663f, 1123f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(781f, var_1.a, var_0.a)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, var_1.a))))) + vec3<f32>(var_1.a, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(step(var_1.a, 436f))), _wgslsmith_div_f32(var_1.a, _wgslsmith_div_f32(-725f, var_1.a)))), min(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, 2147483647i), vec3<i32>(12836i, -10152i, u_input.a)), -32749i, select(-2147483647i, ~1i, false), var_3.b.x), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, -2147483647i, var_3.b.x) << (vec4<u32>(27658u, u_input.b, 4294967295u, 0u) % vec4<u32>(32u))) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(17963u, 4294967295u, u_input.b, u_input.b), vec4<u32>(0u, 1u, 27640u, 23850u)) % vec4<u32>(32u))));
}

