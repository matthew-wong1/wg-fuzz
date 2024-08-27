struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> u32 {
    var var_0 = u_input.c.x;
    var_0 = u_input.c.x;
    return u_input.a;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = firstLeadingBit(vec4<i32>(~(i32(-1i) * -2147483647i), u_input.c.x, -35542i, _wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(arg_1.a, -1i, arg_2)), ~vec3<i32>(arg_2, -2147483647i, -8249i))));
    var var_1 = arg_1.b.b;
    global0 = vec2<u32>(func_2() >> (select(abs(arg_1.b.e.x ^ global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 1u, 67924u), select(vec3<u32>(4294967295u, 0u, 54038u), vec3<u32>(arg_0.e.x, global0.x, 32455u), vec3<bool>(arg_3.a.c.x, false, true))), any(vec2<bool>(arg_1.b.c.x, arg_0.c.x)) & true) % 32u), _wgslsmith_clamp_u32(arg_0.e.x, 147752u | _wgslsmith_add_u32(min(u_input.a, arg_0.e.x), global0.x), select(arg_0.e.x, 25619u, arg_0.c.x)));
    var var_2 = u_input.b;
    var var_3 = 104511u;
    return !(!select(select(select(vec4<bool>(true, arg_0.c.x, false, false), vec4<bool>(arg_0.c.x, true, arg_0.c.x, false), vec4<bool>(true, arg_3.a.d.x, arg_0.d.x, arg_3.a.c.x)), vec4<bool>(arg_1.b.c.x, false, arg_0.d.x, arg_0.d.x), false), vec4<bool>(u_input.c.x > 22487i, arg_1.b.e.x < global0.x, false, arg_1.b.c.x), !(!vec4<bool>(arg_1.b.d.x, arg_0.c.x, false, arg_3.a.d.x))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> i32 {
    global0 = vec2<u32>(1u, abs(24854u));
    global0 = _wgslsmith_add_vec2_u32(arg_0.e, min(arg_0.e ^ _wgslsmith_clamp_vec2_u32(u_input.b, arg_0.e, ~u_input.b), arg_0.e));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-543f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1284f)))), arg_2)));
    var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1356f * _wgslsmith_f_op_f32(-arg_2)))));
    return 10915i;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3.x, arg_3.x, arg_3.x), vec3<f32>(arg_3.x, -1000f, arg_3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(816f, arg_3.x, -1071f) - vec3<f32>(-1108f, arg_3.x, -208f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1103f, 699f, arg_3.x) - vec3<f32>(arg_3.x, 1364f, arg_3.x))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(-348f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))))));
    let var_2 = vec3<i32>(reverseBits(reverseBits(u_input.c.x)), u_input.c.x >> (~u_input.a % 32u), countOneBits(arg_2.x) >> (0u % 32u));
    var var_3 = ~_wgslsmith_sub_u32(func_2(), global0.x);
    var var_4 = Struct_1(_wgslsmith_div_f32(var_1.x, -1000f), 449f, vec3<bool>(!arg_1, arg_1, ~(~global0.x) <= global0.x), !select(!vec2<bool>(false, arg_1), select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, arg_0)), arg_1), !(!vec2<bool>(arg_0, arg_0))), vec2<u32>(global0.x, ~(~reverseBits(4294967295u))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x * var_0.x), _wgslsmith_f_op_f32(1151f + 1435f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + 1668f))), func_1(Struct_1(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(-var_0.x), vec3<bool>(arg_0, arg_0, false), vec2<bool>(true, true), var_4.e), Struct_3(_wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(arg_2.x, 1i, 1i)), Struct_1(-1043f, var_1.x, vec3<bool>(var_4.d.x, var_4.c.x, arg_1), vec2<bool>(arg_1, true), vec2<u32>(4294967295u, 53658u)), var_0.x), -2147483647i >> (max(global0.x, global0.x) % 32u), Struct_2(Struct_1(-1684f, var_0.x, var_4.c, vec2<bool>(false, true), vec2<u32>(261u, 1u)), u_input.b)).zyw, vec2<bool>(true, false || (global0.x > 1u)), var_4.e), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, all(select(vec4<bool>(true, true, false, all(vec3<bool>(true, false, true))), !func_1(Struct_1(1015f, -1149f, vec3<bool>(true, true, true), vec2<bool>(true, false), u_input.b), Struct_3(1i, Struct_1(365f, -261f, vec3<bool>(true, true, false), vec2<bool>(true, true), u_input.b), 1000f), u_input.c.x, Struct_2(Struct_1(-323f, 299f, vec3<bool>(false, true, true), vec2<bool>(false, false), vec2<u32>(global0.x, 4294967295u)), u_input.b)), false)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(6996i, 8377i, func_3(Struct_1(509f, -1000f, vec3<bool>(true, true, true), vec2<bool>(false, true), u_input.b), false, 1716f, vec4<bool>(true, true, true, false))), vec3<i32>(0i, ~480i, u_input.c.x), select(vec3<i32>(~u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x), 1i), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-9964i, u_input.c.x, u_input.c.x), _wgslsmith_add_vec3_i32(vec3<i32>(-4227i, u_input.c.x, -30383i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), -vec3<i32>(u_input.c.x, u_input.c.x, -26455i)), all(vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(296f, -326f) * vec2<f32>(496f, 200f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1174f, -1292f)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-824f, -971f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-778f, -910f)))))));
    global0 = vec2<u32>(abs(_wgslsmith_div_u32(var_0.a.e.x, global0.x << (var_0.a.e.x % 32u)) >> ((_wgslsmith_clamp_u32(u_input.b.x, global0.x, var_0.a.e.x) << (104604u % 32u)) % 32u)), 8869u);
    global0 = vec2<u32>(_wgslsmith_div_u32(global0.x, 1u), u_input.a);
    let var_1 = func_4(true, var_0.a.c.x, -select(vec3<i32>(abs(u_input.c.x), i32(-1i) * -35612i, 1i), min(vec3<i32>(u_input.c.x, 1i, u_input.c.x), ~vec3<i32>(u_input.c.x, 43251i, 0i)), func_4(u_input.b.x >= 4294967295u, false, vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-449f, -1444f), vec2<f32>(var_0.a.b, 248f)))).a.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1862f, var_0.a.b)))))));
    global0 = ~var_0.b;
    var var_2 = _wgslsmith_f_op_f32(sign(var_0.a.b));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.b)) + 1247f);
    let x = u_input.a;
    s_output = StorageBuffer(~global0.x, max(var_0.a.e, u_input.b), abs(4294967295u) >> (global0.x % 32u), ~select(~(~vec3<i32>(-2147483647i, -1i, u_input.c.x)), -(~vec3<i32>(u_input.c.x, 43867i, u_input.c.x)), !var_0.a.c.x));
}

