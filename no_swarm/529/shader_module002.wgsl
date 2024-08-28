struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global0: vec4<f32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = Struct_1(vec4<i32>(abs(-34288i), 22891i, _wgslsmith_mod_i32(u_input.b, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 21490i), vec2<i32>(arg_0, arg_0))), u_input.c), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(21273u, u_input.a, 4294967295u), abs(vec3<u32>(u_input.a, u_input.a, u_input.d))), min(vec3<u32>(u_input.d, u_input.a, u_input.a), vec3<u32>(u_input.d, 21028u, u_input.d) >> (vec3<u32>(33019u, u_input.d, u_input.d) % vec3<u32>(32u)))), max(firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.d, 4294967295u), vec3<u32>(u_input.d, 1u, 41200u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(25659u, 31488u, u_input.d), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.d, 4294967295u, 4294967295u)))), vec3<f32>(_wgslsmith_f_op_f32(-922f + arg_1.x), arg_1.x, _wgslsmith_f_op_f32(floor(global0.x))), arg_2);
    var var_1 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -710f) - var_0.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1086f, _wgslsmith_f_op_f32(max(var_0.c.x, global0.x))))), arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), true)) + _wgslsmith_f_op_f32(arg_1.x * -201f)), 1787f));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_mod_i32(~(-u_input.b), select(max(u_input.b, u_input.b), arg_0, !arg_2.x) ^ var_0.a.x), u_input.c);
    var_0 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, max(~arg_0, _wgslsmith_mult_i32(-1i, u_input.b)), (u_input.b & u_input.c) & min(-2147483647i, u_input.c), reverseBits(~arg_0)), var_0.a), 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.www, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.wxx), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 762f, 818f), var_0.c))))), select(arg_2, select(!select(vec4<bool>(false, var_0.d.x, var_0.d.x, false), vec4<bool>(arg_2.x, true, false, true), true), arg_2, !(!var_0.d)), !all(!arg_2)));
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, 1271f, 274f, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1424f, -1965f, -218f, 266f), vec4<f32>(var_0.c.x, -108f, 1000f, arg_1.x))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1299f, 1256f, arg_1.x) - vec4<f32>(-324f, var_0.c.x, 293f, 2021f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, global0.x, 2290f, 836f))))), vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-848f + var_0.c.x), global0.x, _wgslsmith_f_op_f32(-var_0.c.x)))))));
    return var_0.d;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_add_vec4_i32(arg_0.a, arg_0.a), 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1200f, -773f, _wgslsmith_f_op_f32(global0.x * 754f)), var_0.c)) * global0.ywx), select(arg_0.d, func_3(-1i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, -1000f) - arg_0.c.zx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, global0.x)), select(vec2<bool>(arg_2, var_0.d.x), vec2<bool>(arg_0.d.x, true), var_0.d.x))), select(arg_0.d, vec4<bool>(arg_0.d.x, arg_2, arg_2, true), !vec4<bool>(true, var_0.d.x, arg_0.d.x, true))), !select(vec4<bool>(true, arg_2, false, true), select(var_0.d, var_0.d, vec4<bool>(arg_2, arg_2, true, false)), arg_2)));
    let var_2 = arg_0.d.x;
    let var_3 = arg_0;
    let var_4 = arg_0;
    return _wgslsmith_add_u32(~abs(~_wgslsmith_mult_u32(0u, 25790u)), 22786u);
}

fn func_1() -> u32 {
    var var_0 = min(~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.d, 1u, u_input.d), ~vec4<u32>(u_input.d, u_input.a, u_input.d, 41331u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(8386u, u_input.a, 1u, u_input.d), vec4<u32>(92599u, 0u, 1u, 91514u)), vec4<u32>(u_input.a, u_input.a, 1u, 4294967295u))), ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d, 0u), func_2(Struct_1(vec4<i32>(u_input.c, u_input.c, 39099i, u_input.b), u_input.a, global0.zyx, vec4<bool>(false, true, false, false)), u_input.c, false)), 55671u, u_input.d, 1u));
    let var_1 = Struct_1(-_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-14334i, -2518i, -1i, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.b, 1i, -2147483647i), vec4<i32>(u_input.c, -2147483647i, -5316i, u_input.c))), _wgslsmith_div_vec4_i32(vec4<i32>(-22887i, 9913i, u_input.c, u_input.b) >> (vec4<u32>(u_input.d, u_input.d, var_0.x, var_0.x) % vec4<u32>(32u)), vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.b))), 32307u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1000f, global0.x), global0.ywz) * vec3<f32>(global0.x, -941f, global0.x)), _wgslsmith_f_op_vec3_f32(ceil(global0.wzw)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + -174f), 385f))))), !select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, true), func_3(~u_input.b, vec2<f32>(global0.x, global0.x), vec4<bool>(false, false, false, true))));
    let var_2 = var_1;
    return 26204u << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_2.b, ~var_0.x), ~func_2(Struct_1(var_1.a, u_input.d, var_1.c, vec4<bool>(var_1.d.x, var_2.d.x, true, true)), abs(1i), var_2.d.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(-1982f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(global0.x, global0.x)) * -3126f) * 674f), _wgslsmith_f_op_f32(round(-459f)), global0.x);
    var var_0 = Struct_1(-vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.b), func_1(), _wgslsmith_f_op_vec3_f32(global0.zyw - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -992f, 632f)))) + global0.xwx)), vec4<bool>(all(vec4<bool>(global0.x != global0.x, true, any(vec3<bool>(false, false, false)), true)), true, !any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))), true));
    var_0 = Struct_1(var_0.a, u_input.a & 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.c, vec3<f32>(_wgslsmith_f_op_f32(global0.x + -645f), 1f, _wgslsmith_f_op_f32(global0.x * 538f)))), var_0.d);
    var var_1 = _wgslsmith_add_u32(4251u, var_0.b) & select(u_input.d, ~0u, !var_0.d.x);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(min(54788u, var_0.b), _wgslsmith_clamp_u32(0u, ~1u, 0u), ~1u, _wgslsmith_mod_u32(var_0.b, ~4294967295u)), _wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(u_input.a, var_0.b, var_0.b, var_0.b)), vec4<u32>(var_0.b, 20021u, 38345u, 49633u))));
}

