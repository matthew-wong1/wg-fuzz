struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: i32) -> bool {
    var var_0 = arg_1;
    let var_1 = -1125f;
    global1 = -204f;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(var_1 - arg_0)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-154f + arg_0), global0.x))), 732f, _wgslsmith_f_op_f32(abs(2391f)), arg_0);
    var_0 = u_input.a;
    return !(((_wgslsmith_mult_i32(u_input.a, 49166i) << (min(4294967295u, 0u) % 32u)) > -2147483647i) | false);
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec3<bool>(true, any(vec3<bool>(false, false, true)), any(vec4<bool>(false, false, true, true))))), select(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), func_3(928f, 11988i)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), any(vec3<bool>(true, true, false))), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), true), vec2<bool>(u_input.a >= -1i, all(vec2<bool>(true, true)))), all(!vec2<bool>(global0.x <= 704f, all(vec3<bool>(true, true, true)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-286f + _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(abs(-698f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x + -800f)), _wgslsmith_f_op_f32(max(774f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1785f + -637f), -578f))))), max(~vec3<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, 4901i), 2147483647i, _wgslsmith_div_i32(u_input.a, u_input.a)), vec3<i32>(max(_wgslsmith_sub_i32(1i, 0i), 26893i | u_input.a), 6088i, u_input.a)), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(51575u, 0u, 4294967295u, 99034u), vec4<u32>(34789u, 11483u, 4294967295u, 15166u))), 83472u), abs(min(~31117u, min(75007u, 46098u)))), 4294967295u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1000f)), global0.x)));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * -376f))), _wgslsmith_f_op_f32(1f * -1546f))), var_1.a), _wgslsmith_f_op_f32(-var_1.a));
    let var_3 = var_1.b.x;
    return var_1;
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-166f - arg_0.e), _wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(round(172f)))));
    var var_1 = arg_0.c.x;
    let var_2 = ~vec3<u32>(~4294967295u & arg_0.d, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, 79598u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c.x, 0u, arg_0.d), vec3<u32>(4294967295u, 1u, arg_0.d))), 0u);
    let var_3 = func_2().b;
    return vec2<u32>(abs(var_2.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c.x, 0u, 4294967295u), vec3<u32>(1u, arg_0.d, var_2.x) << (var_2 % vec3<u32>(32u))), ~max(var_2, var_2)), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, var_2.x, arg_0.c.x, 0u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, arg_0.c.x, 520u, 30706u), ~vec4<u32>(22179u, 0u, 118427u, arg_0.c.x)))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_div_vec2_u32(func_4(func_2()), vec2<u32>(147743u, min(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 1u), ~vec3<u32>(28102u, 0u, 9917u)), _wgslsmith_add_u32(0u, 0u))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1499f)) - 851f))))) * _wgslsmith_div_f32(593f, global0.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x + 755f), -340f)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(483f - -1608f));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, global0.x, global0.x, 502f) + vec4<f32>(global0.x, var_1, -1000f, -981f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1233f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-252f * 903f), _wgslsmith_f_op_f32(-var_1))))) + -662f);
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2().c.x >> (abs(104373u) % 32u);
    var var_1 = func_2().c;
    var var_2 = func_2().c.x;
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x)))));
    let var_3 = _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(abs(u_input.a), arg_3.b.x), reverseBits(19156i)), ~u_input.a), ~arg_3.b.x);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global0.x, _wgslsmith_f_op_f32(func_1()), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1069f + _wgslsmith_f_op_f32(1227f - -260f)), _wgslsmith_f_op_f32(min(423f, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1521f, -1570f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1306f * -2108f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_2());
    var var_1 = max(-(~(-_wgslsmith_dot_vec3_i32(var_0.b, vec3<i32>(-2147483647i, 2147483647i, -12372i)))), _wgslsmith_clamp_i32(-31271i, -(-56453i ^ (var_0.b.x >> (1u % 32u))), abs(var_0.b.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_2().a - global0.x), ~(~var_0.b) | abs(var_0.b ^ _wgslsmith_add_vec3_i32(var_0.b, vec3<i32>(u_input.a, 16855i, 33432i))), var_0.c, ~4294967295u, _wgslsmith_f_op_f32(global0.x - 1268f));
    let var_3 = var_2.d;
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1229f - _wgslsmith_f_op_f32(-340f + var_0.e))));
    var_1 = _wgslsmith_sub_i32(1i, i32(-1i) * -30672i);
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(0u, abs(_wgslsmith_div_u32(0u, 1u))));
}

