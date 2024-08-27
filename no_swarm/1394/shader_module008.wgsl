struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-28684i, -1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(abs(u_input.a | global0.x), -(~(-2147483647i))), ~(~4502i)), reverseBits(-9324i));
    var var_1 = ~(-73215i);
    var_1 = max(max(_wgslsmith_sub_i32(0i, abs(arg_1.x) >> (firstTrailingBit(u_input.b) % 32u)), select(-7069i, -(~arg_1.x), true)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.c.x, u_input.a, 654i, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, global0.x, u_input.a, arg_1.x), vec4<i32>(36836i, global0.x, 1i, 1i), vec4<i32>(arg_1.x, 4008i, u_input.c.x, global0.x)), false), vec4<i32>(0i, -global0.x, -arg_1.x, ~(-1i))), _wgslsmith_add_vec4_i32(vec4<i32>(max(-43846i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1.x, global0.x, 29080i), vec4<i32>(1i, 8236i, arg_1.x, global0.x)), _wgslsmith_mult_i32(0i, -17821i), arg_1.x), select(vec4<i32>(-32073i, -25333i, -2147483647i, 32507i), vec4<i32>(0i, -1i, arg_1.x, -24162i), false) ^ abs(vec4<i32>(0i, u_input.a, -32455i, u_input.c.x)))));
    let var_2 = arg_0 && (_wgslsmith_add_i32(-19635i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_1.x, 27814i, -18967i)), -vec3<i32>(global0.x, -21450i, arg_1.x))) <= -41159i);
    var_0 = global0.x;
    return vec4<u32>(1u, ~743u, ~(select(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u)), arg_0) >> (~_wgslsmith_add_u32(u_input.b, u_input.b) % 32u)), _wgslsmith_sub_u32(firstTrailingBit(u_input.b), 37272u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<i32> {
    var var_0 = !arg_0.a;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-arg_0.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, arg_0.c.x, arg_1.x, var_1.c.x), arg_0.c, arg_0.c & vec4<i32>(13353i, 10570i, 0i, arg_0.c.x)) << (func_3(var_1.a && true, var_1.c.zwx >> (vec3<u32>(1u, var_1.d, 1u) % vec3<u32>(32u))) % vec4<u32>(32u))), select(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.c.x, 2147483647i, -2147483647i, -2147483647i), vec4<i32>(43268i, -8285i, -11199i, arg_0.c.x)), _wgslsmith_mult_vec4_i32(arg_0.c, arg_0.c)), vec4<i32>(u_input.a, min(var_1.c.x, -1i), _wgslsmith_add_i32(0i, global0.x), u_input.c.x), select(arg_0.b, select(vec4<bool>(var_1.b.x, true, false, true), var_1.b, true), vec4<bool>(arg_0.a, arg_0.b.x, var_1.b.x, var_1.b.x))) & var_1.c);
    var var_3 = vec2<u32>(u_input.b, ~10780u);
    var var_4 = var_1;
    return arg_0.c.yx;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: u32) -> u32 {
    global0 = ~(_wgslsmith_mod_vec2_i32(-func_2(Struct_1(true, vec4<bool>(true, false, true, true), vec4<i32>(1i, -12794i, u_input.a, arg_1.x), 65017u), arg_1), _wgslsmith_add_vec2_i32(~vec2<i32>(17984i, arg_1.x), vec2<i32>(global0.x, global0.x))) ^ max(vec2<i32>(~u_input.a, _wgslsmith_div_i32(2147483647i, -1i)), vec2<i32>(1i, _wgslsmith_mod_i32(669i, u_input.c.x))));
    let var_0 = Struct_1((arg_2 > countOneBits(_wgslsmith_div_u32(21173u, 3999u))) | (_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, arg_2), u_input.b) < ~func_3(true, vec3<i32>(global0.x, global0.x, u_input.c.x)).x), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), any(vec4<bool>(true, true, true, true))), !vec4<bool>(true, false, true, any(vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true)), ~vec4<i32>(global0.x, arg_1.x, 0i, countOneBits(~0i)), 42158u);
    global0 = arg_1;
    global0 = var_0.c.xy;
    global0 = u_input.c << (~abs(~(~vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u));
    return 0u >> (arg_2 % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_clamp_u32(~countOneBits(3088u >> (u_input.b % 32u)), 1u, u_input.b), u_input.b);
    global0 = vec2<i32>(u_input.c.x, -u_input.a);
    global0 = _wgslsmith_div_vec2_i32(vec2<i32>(45181i, -global0.x), abs(~(vec2<i32>(-1i, u_input.c.x) << (vec2<u32>(56146u, 5424u) % vec2<u32>(32u)))) & abs((u_input.c >> (vec2<u32>(u_input.b, var_0.x) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(20612i, u_input.c.x))));
    let var_1 = vec4<f32>(685f, _wgslsmith_f_op_f32(sign(-1041f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(504f, 468f))), _wgslsmith_f_op_f32(max(-514f, _wgslsmith_f_op_f32(abs(359f))))))), _wgslsmith_f_op_f32(f32(-1f) * -515f));
    var var_2 = ~43923u;
    var_0 = ~(~(abs(vec2<u32>(50881u, u_input.b)) & vec2<u32>(4294967295u, 19394u))) & vec2<u32>(_wgslsmith_add_u32(min(4294967295u, ~var_0.x), 19978u & _wgslsmith_clamp_u32(21461u, var_0.x, 16923u)), ~(~(~9138u)));
    var var_3 = _wgslsmith_f_op_f32(-var_1.x);
    var var_4 = 38792u;
    var var_5 = Struct_1(!(func_1(-491f, ~vec2<i32>(u_input.c.x, -44373i), 1486u) < _wgslsmith_clamp_u32(min(4294967295u, 1u), _wgslsmith_div_u32(u_input.b, u_input.b), ~39474u)), vec4<bool>(false, true & (true || (u_input.b != var_0.x)), false, all(vec4<bool>(true, true, true, true)) && !(global0.x > 14887i)), abs(-(~vec4<i32>(global0.x, -2147483647i, global0.x, -2147483647i) | vec4<i32>(u_input.a, -2147483647i, -45424i, global0.x))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.yyw - vec3<f32>(var_1.x, var_1.x, 930f)), _wgslsmith_f_op_vec3_f32(sign(var_1.wzw))))), var_1.yww), select(-var_5.c.yyz, abs(abs(-var_5.c.xxz)), vec3<bool>(true, all(var_5.b.wz), any(select(var_5.b, vec4<bool>(true, var_5.a, var_5.b.x, var_5.b.x), vec4<bool>(false, var_5.b.x, var_5.a, var_5.b.x))))));
}

