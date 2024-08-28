struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) * _wgslsmith_div_f32(-405f, arg_3.a.x)), _wgslsmith_div_f32(arg_0.x, arg_0.x))) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-291f))));
    let var_1 = var_0.x;
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    var var_2 = arg_1.x;
    return _wgslsmith_mult_u32(select(min(~arg_2.x, ~arg_3.e.x >> ((arg_3.e.x >> (arg_2.x % 32u)) % 32u)), _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(arg_3.e.x, arg_3.e.x), vec2<u32>(2336u, 0u))), ~(vec2<u32>(u_input.a.x, arg_3.e.x) >> (arg_2 % vec2<u32>(32u)))), arg_3.d.a), abs(~_wgslsmith_dot_vec4_u32(~vec4<u32>(2226u, arg_2.x, arg_3.e.x, 1u), vec4<u32>(arg_2.x, 9391u, 0u, 4294967295u) | vec4<u32>(arg_2.x, 27746u, arg_2.x, arg_2.x))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(true, ~u_input.b);
    global0 = array<Struct_2, 5>();
    return var_0;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> i32 {
    global0 = array<Struct_2, 5>();
    let var_0 = arg_1.d;
    global0 = array<Struct_2, 5>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-226f)), _wgslsmith_f_op_f32(step(714f, arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2023f, arg_1.a.x)), _wgslsmith_f_op_f32(max(1720f, 1f))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_div_f32(arg_1.a.x, -742f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1344f + arg_1.a.x)))), -(arg_1.b | 0i), -var_0.b << (u_input.a.x % 32u), arg_1.d, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(78418u, 42u, arg_2), _wgslsmith_dot_vec3_u32(arg_1.e, u_input.a), 45345u), _wgslsmith_sub_vec3_u32(vec3<u32>(43325u, u_input.a.x, 16227u), vec3<u32>(69057u, 4294967295u, arg_1.e.x) >> (u_input.a % vec3<u32>(32u)))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(arg_2, arg_2, 21771u), ~66694u, _wgslsmith_sub_u32(u_input.a.x, 0u)), _wgslsmith_div_vec3_u32(select(arg_1.e, vec3<u32>(arg_1.e.x, 4294967295u, u_input.a.x), false), vec3<u32>(1u, 17357u, arg_2))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 5>();
    var var_0 = func_2(vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(645f, -960f, 382f, -397f) + vec4<f32>(-291f, -449f, -290f, 1252f)), vec4<bool>(true, true, true, true), vec2<u32>(u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(select(18557u, u_input.a.x, false), 5u)]), ~u_input.a.x)));
    var var_1 = Struct_1(true, var_0.b);
    var_1 = Struct_1(var_0.a && (var_1.a && true), -_wgslsmith_sub_i32(var_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, -1i, 1i, var_0.b), _wgslsmith_add_vec4_i32(vec4<i32>(-5535i, u_input.b, var_1.b, var_1.b), vec4<i32>(-38438i, 0i, var_1.b, -24102i)))));
    var var_2 = func_2(_wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1066f, -2520f, 145f, 1000f)), select(vec4<bool>(true, false, false, var_0.a), vec4<bool>(var_0.a, true, false, var_0.a), vec4<bool>(var_0.a, var_1.a, var_1.a, var_0.a)), vec2<u32>(0u, u_input.a.x), Struct_2(vec3<f32>(-2939f, -758f, -1161f), u_input.b, 2147483647i, Struct_1(var_1.a, var_0.b), vec3<u32>(23797u, u_input.a.x, 55342u))), countOneBits(1u))));
    let var_3 = Struct_1(any(!select(!vec3<bool>(true, var_2.a, var_1.a), vec3<bool>(var_0.a, false, var_2.a), vec3<bool>(var_0.a, var_0.a, var_2.a))), _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(2147483647i, -28001i, -13872i, var_0.b)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_2.b), vec2<i32>(var_2.b, var_0.b)), ~var_0.b, min(1i, 48796i), 25132i) ^ vec4<i32>(func_3(vec4<i32>(var_2.b, var_2.b, 2147483647i, -3151i), Struct_2(vec3<f32>(1709f, -354f, -2409f), u_input.b, var_2.b, Struct_1(var_0.a, 48141i), u_input.a), u_input.a.x, u_input.b), var_2.b, var_2.b << (u_input.a.x % 32u), var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-1i), var_0.b);
}

