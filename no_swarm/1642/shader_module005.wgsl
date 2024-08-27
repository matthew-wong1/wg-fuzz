struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = vec3<bool>(any(select(global0.xz, vec2<bool>(global0.x, true), global0.yz)), select(any(vec3<bool>(true, global0.x, global0.x)), any(vec4<bool>(true, any(vec3<bool>(global0.x, false, false)), any(vec4<bool>(global0.x, false, global0.x, global0.x)), true)), true), true);
    var var_0 = all(vec3<bool>(false, reverseBits(_wgslsmith_div_i32(-6635i, arg_0)) < arg_0, any(!select(vec4<bool>(true, false, false, global0.x), vec4<bool>(false, false, false, true), true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(453f, -212f, 758f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2340f, 506f, -258f), vec3<f32>(-455f, -975f, -727f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1098f, -2345f, 671f) - vec3<f32>(672f, 1000f, -1131f))), select(!vec3<bool>(true, global0.x, false), select(vec3<bool>(true, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x)), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1641f, -894f, 526f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-761f, 1536f, -1000f), vec3<f32>(-1753f, -200f, -244f)))))))), vec3<f32>(2387f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 1891f), _wgslsmith_f_op_f32(trunc(-1676f)), select(global0.x, false, global0.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1000f)), 844f)))), 200f)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1016f * -1654f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-712f, var_1.x, global0.x)) + _wgslsmith_f_op_f32(floor(-1342f))), 504f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_1.x))) - var_1.x))));
    var_0 = global0.x;
    return ~(firstTrailingBit(firstTrailingBit(1u)) & (firstLeadingBit(select(1u, 0u, false)) | min(~25461u, 4294967295u)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(1u, 47400u, 4563u, 4294967295u) % vec4<u32>(32u))) << (vec4<u32>(34604u, 1u, 0u, 4294967295u) % vec4<u32>(32u)), abs(vec4<i32>(1i, u_input.a.x, 2147483647i, 14833i)) << (vec4<u32>(66158u, _wgslsmith_sub_u32(61004u, 34320u), func_3(-3263i), 0u) % vec4<u32>(32u)), vec4<i32>(countOneBits(0i) ^ -u_input.a.x, abs(u_input.a.x), _wgslsmith_div_i32(-u_input.a.x, select(1i, -37302i, global0.x)), abs(u_input.a.x) ^ _wgslsmith_div_i32(-5634i, u_input.a.x))));
    var var_1 = Struct_4(-(~vec4<i32>(-1i, -u_input.a.x, var_0.a.x, u_input.a.x << (4294967295u % 32u))));
    var var_2 = var_1.a.x;
    var var_3 = Struct_4(vec4<i32>(_wgslsmith_mult_i32(23i, -4606i), _wgslsmith_clamp_i32(var_1.a.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(-1i, u_input.a.x, 0i, 23981i)), 0i, i32(-1i) * -2147483647i), max(-41881i, 1i) | var_0.a.x), _wgslsmith_sub_i32(min(~(-1i), -50012i), u_input.a.x), -var_0.a.x));
    var_1 = Struct_4(_wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(34369i, u_input.a.x, var_1.a.x, 385i)), abs(var_0.a)), vec4<i32>(_wgslsmith_clamp_i32(countOneBits(var_0.a.x), -2147483647i, 1i), (1703i ^ var_1.a.x) & var_1.a.x, 1i, firstTrailingBit(var_1.a.x))));
    return Struct_1(select(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a.x), vec2<i32>(1i, 12872i) & u_input.a) << (875u % 32u), ~(var_1.a.x << (13886u % 32u)) | abs(var_3.a.x), global0.x), any(vec3<bool>(true, (i32(-1i) * -2147483647i) < (var_3.a.x ^ var_0.a.x), u_input.a.x != 1i)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = global0.xy;
    var var_1 = Struct_4((~vec4<i32>(-1i, arg_1.a, 0i, arg_0) & vec4<i32>(countOneBits(arg_1.a), -u_input.a.x, -1i, arg_0)) & _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0, u_input.a.x, u_input.a.x), vec4<i32>(-6906i, 2147483647i, 0i, arg_1.a)) << (~arg_2 % vec4<u32>(32u)), vec4<i32>(~arg_0, 0i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(arg_1.a, arg_1.a))));
    var var_2 = Struct_2(arg_1, arg_0);
    var_2 = Struct_2(arg_1, reverseBits(arg_0) << (~1u % 32u));
    let var_3 = select(!(!vec4<bool>(true, true, all(vec4<bool>(var_0.x, true, var_2.a.b, false)), global0.x)), vec4<bool>(all(vec2<bool>(var_2.a.b, !var_0.x)), global0.x, false, all(global0.yy)), true);
    return vec4<bool>(true, select(false, arg_1.b, !(35454u <= arg_2.x)), var_3.x, func_2().b);
}

fn func_1() -> vec3<bool> {
    var var_0 = -42102i;
    global0 = !select(!vec3<bool>(true, select(global0.x, global0.x, false), any(global0.yx)), !vec3<bool>(any(vec3<bool>(false, global0.x, true)), true, true), any(func_4(firstTrailingBit(u_input.a.x), func_2(), vec4<u32>(0u, 4294967295u, 0u, 0u))));
    let var_1 = ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(34089u, 1u, 41275u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)) >> (20894u % 32u));
    var_0 = -(~min((i32(-1i) * -89841i) & ~u_input.a.x, func_2().a));
    return func_4(_wgslsmith_add_i32(~(i32(-1i) * -u_input.a.x), ~(-1i)), func_2(), vec4<u32>(1u, ~(~(~var_1)), ~var_1, reverseBits(_wgslsmith_sub_u32(1u, var_1)) ^ _wgslsmith_sub_u32(var_1, _wgslsmith_mult_u32(18659u, var_1)))).yyz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!select(select(func_1(), !vec3<bool>(global0.x, true, global0.x), !vec3<bool>(true, global0.x, true)), func_1(), false & func_2().b));
    let var_0 = Struct_2(func_2(), -abs(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(0i, u_input.a.x, u_input.a.x)), vec3<i32>(-20678i, -2147483647i, u_input.a.x) << (vec3<u32>(46550u, 993u, 62685u) % vec3<u32>(32u)))));
    global0 = func_1();
    var var_1 = vec3<i32>(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, 42500i, u_input.a.x, var_0.b), vec4<i32>(-31607i, 11279i, u_input.a.x, var_0.b), true), vec4<i32>(var_0.b, 2147483647i, 2147483647i, 1i)), var_0.a.a)), _wgslsmith_dot_vec3_i32(~vec3<i32>(min(var_0.a.a, -1i), 1i, var_0.b ^ u_input.a.x), ~((vec3<i32>(0i, -2147483647i, -1i) | vec3<i32>(var_0.b, -19145i, u_input.a.x)) << (~vec3<u32>(1u, 0u, 4294967295u) % vec3<u32>(32u)))), -24890i);
    global0 = vec3<bool>(func_1().x, func_4(min(-u_input.a.x ^ 2147483647i, u_input.a.x), var_0.a, vec4<u32>(abs(~36513u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 4294967295u, 4582u, 0u), vec4<u32>(4294967295u, 103231u, 3642u, 36415u), vec4<bool>(global0.x, global0.x, false, global0.x)), vec4<u32>(1u, 0u, 0u, 1u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 1u)), func_3(~1i))).x, firstLeadingBit(_wgslsmith_sub_i32(var_1.x << (0u % 32u), -1606i)) < max(-_wgslsmith_mult_i32(var_1.x, var_0.a.a), ~var_0.b));
    let var_2 = 0u;
    let var_3 = Struct_4(~select(min(vec4<i32>(u_input.a.x, var_1.x, 17215i, -1i) >> (vec4<u32>(var_2, var_2, var_2, var_2) % vec4<u32>(32u)), -vec4<i32>(1i, 1i, -14254i, -44118i)), ~vec4<i32>(1i, var_0.a.a, var_0.a.a, u_input.a.x), !global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(891f - -1420f), -193f))), -1i & var_0.b);
}

