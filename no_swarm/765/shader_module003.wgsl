struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 1>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = -vec2<i32>(~0i, 1i);
    return !select(vec2<bool>(arg_1.b.a, !(true & global0.a)), select(!select(vec2<bool>(arg_1.b.a, false), vec2<bool>(false, arg_1.b.a), true), select(select(vec2<bool>(global0.a, false), vec2<bool>(arg_1.b.a, false), vec2<bool>(false, true)), !vec2<bool>(global0.a, arg_1.b.a), vec2<bool>(arg_1.b.a, arg_1.b.a)), true), vec2<bool>(true, false));
}

fn func_3() -> f32 {
    let var_0 = ~((abs(vec3<u32>(16544u, 56287u, global0.c.a)) & ~vec3<u32>(4294967295u, 1u, 0u)) >> (~((vec3<u32>(u_input.c, 44805u, u_input.a) ^ vec3<u32>(global0.c.a, 4294967295u, 49917u)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(u_input.c, global0.b.a, u_input.c)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return 1000f;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: vec4<f32>) -> u32 {
    global1 = array<Struct_3, 1>();
    global1 = array<Struct_3, 1>();
    var var_0 = arg_0;
    let var_1 = Struct_3(any(arg_2), Struct_1(_wgslsmith_clamp_u32((14449u >> (u_input.a % 32u)) >> (countOneBits(29329u) % 32u), abs(arg_0.a), 4294967295u)), global0.b);
    let var_2 = vec2<i32>(-1i, 2456i);
    return firstTrailingBit(~_wgslsmith_dot_vec2_u32(min(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, var_1.b.a), vec2<u32>(1u, 27805u)), vec2<u32>(30963u, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, var_1.b.a), vec2<u32>(var_1.c.a, 101509u)), 66310u | global0.b.a)));
}

fn func_1() -> Struct_1 {
    let var_0 = ~0u;
    let var_1 = select(select(!(!select(vec2<bool>(true, true), vec2<bool>(global0.a, global0.a), vec2<bool>(true, false))), select(!(!vec2<bool>(global0.a, global0.a)), vec2<bool>(true, global0.a && true), -1i >= u_input.b.x), any(select(vec2<bool>(global0.a, global0.a), func_2(-713f, Struct_4(vec4<i32>(u_input.b.x, u_input.b.x, 0i, 0i), Struct_3(global0.a, Struct_1(u_input.a), global0.b), vec2<i32>(0i, u_input.b.x), vec4<f32>(-1382f, 1104f, 1644f, -122f)), vec4<i32>(36124i, 15643i, -33570i, -20316i), vec2<i32>(u_input.b.x, 0i)), vec2<bool>(global0.a, true)))), !(!vec2<bool>(!global0.a, true)), global0.a);
    global1 = array<Struct_3, 1>();
    let var_2 = vec2<u32>(func_4(Struct_1(11165u), var_1.x, vec3<bool>(global0.a, var_1.x, global0.a), vec4<f32>(-1311f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(min(-898f, 383f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -938f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1063f) + 286f))), var_0);
    var var_3 = ~firstLeadingBit(_wgslsmith_clamp_u32(~var_2.x, var_2.x, 1u));
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(!global0.a, func_1(), func_1());
    global0 = global1[_wgslsmith_index_u32(countOneBits(u_input.c), 1u)];
    var var_0 = min(_wgslsmith_mult_u32(1u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.c.a, 54352u), vec3<u32>(global0.c.a, 1u, global0.c.a) | vec3<u32>(80814u, u_input.c, global0.b.a)), ~reverseBits(0u))), ~global0.b.a);
    global1 = array<Struct_3, 1>();
    var_0 = ~u_input.a;
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(17694u, ~((global0.b.a & 1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(24438u, u_input.c), vec2<u32>(46394u, 4256u))), global0.b.a), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(4294967295u, u_input.c, global0.b.a) & min(vec3<u32>(1u, 52433u, global0.c.a), vec3<u32>(u_input.a, 54993u, global0.c.a))), vec3<u32>(0u, ~u_input.a | u_input.c, ~(~1u))));
    var var_2 = var_1.zz;
    var var_3 = (u_input.b.x >> (~1u % 32u)) ^ abs(_wgslsmith_div_i32(u_input.b.x, u_input.b.x) >> (_wgslsmith_mod_u32(51805u | var_1.x, max(var_1.x, u_input.c)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1894f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-374f, _wgslsmith_div_f32(-1000f, 105f))) - _wgslsmith_f_op_f32(step(934f, _wgslsmith_div_f32(1151f, 925f))))));
}

