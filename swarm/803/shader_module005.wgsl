struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
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

var<private> global0: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    var var_0 = u_input.b.x;
    var_0 = u_input.b.x;
    var_0 = u_input.d.x;
    var_0 = countOneBits(_wgslsmith_clamp_u32(1u, 0u, u_input.e.x));
    var var_1 = ~u_input.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1393f + _wgslsmith_f_op_f32(arg_0 + arg_1)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)) - arg_2.x), _wgslsmith_f_op_f32(trunc(-196f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1423f * -804f), arg_2.x, true))))), arg_2.x, global0.x);
    let var_1 = Struct_1(abs(countOneBits(1u)) | ~(~(~arg_1.a)), _wgslsmith_mod_u32(arg_0.x, ~(~arg_0.x)), any(!vec4<bool>(any(vec2<bool>(arg_1.c, arg_1.e)), true, false, true)), -2147483647i, arg_1.c);
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -355f)), Struct_1(min(~1285u, 48u), ~(arg_0.x | u_input.d.x), var_1.e, 26306i, select(true, true, var_0.x == -1262f)), arg_1, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))), var_1, -u_input.c, 1079f);
    var_2 = Struct_3(var_2.a, var_1, _wgslsmith_add_vec2_i32(select(u_input.c, ~reverseBits(u_input.c), select(vec2<bool>(true, var_1.c), select(vec2<bool>(false, true), vec2<bool>(var_2.b.c, true), var_1.c), vec2<bool>(arg_1.e, true))), var_2.c), -1373f);
    var_2 = Struct_3(Struct_2(global0.x, arg_1, var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), 133f)), _wgslsmith_f_op_f32(-arg_2.x))), Struct_1(abs(u_input.b.x), ~abs(max(var_2.b.a, 0u)), all(vec4<bool>(true, false, false, true)), _wgslsmith_dot_vec2_i32(-(~var_2.c), _wgslsmith_clamp_vec2_i32(var_2.c | vec2<i32>(0i, 7778i), vec2<i32>(0i, -2147483647i), ~var_2.c)), var_2.b.c), vec2<i32>(2147483647i, u_input.c.x), -2275f);
    return arg_1.d;
}

fn func_1() -> vec2<f32> {
    var var_0 = min(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(17417i, min(0i, u_input.c.x)), -func_2(u_input.e.xz, Struct_1(30992u, 74473u, true, -2147483647i, true), vec3<f32>(281f, global0.x, global0.x))), -27918i, 2147483647i | u_input.c.x), _wgslsmith_div_vec3_i32(-countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -3273i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_sub_vec3_i32(select(abs(vec3<i32>(-1i, 39271i, -31452i)), vec3<i32>(u_input.c.x, u_input.c.x, 1i) >> (vec3<u32>(u_input.e.x, u_input.d.x, 15006u) % vec3<u32>(32u)), any(vec3<bool>(false, false, true))), select(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x), min(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(2147483647i, 56944i, 23682i)), true))));
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.c.x, var_0.x, firstTrailingBit(u_input.c.x)), vec4<i32>(28469i, u_input.c.x, u_input.c.x, 1i));
    var_1 = firstLeadingBit(vec4<i32>(var_1.x, _wgslsmith_add_i32(firstLeadingBit(var_1.x ^ u_input.c.x), _wgslsmith_sub_i32(-55527i, var_0.x)), u_input.c.x << (51406u % 32u), firstLeadingBit(var_0.x)));
    let var_2 = ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, u_input.c.x, u_input.c.x, var_1.x) | vec4<i32>(var_0.x, 0i, var_0.x, 6663i), ~vec4<i32>(0i, var_1.x, var_0.x, -2147483647i))) >> (((select(u_input.a & u_input.a, u_input.a, true) | u_input.a) ^ _wgslsmith_mod_vec4_u32(~(~vec4<u32>(19211u, u_input.e.x, u_input.a.x, 58076u)), select(vec4<u32>(u_input.b.x, u_input.e.x, u_input.d.x, u_input.a.x), vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.e.x), true) << ((u_input.a & vec4<u32>(4294967295u, u_input.a.x, u_input.e.x, u_input.e.x)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_3 = var_2.zzx;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-2358f)), -504f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x;
    global0 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = Struct_3(Struct_2(-346f, Struct_1(var_0, ~u_input.d.x, u_input.c.x <= func_2(vec2<u32>(u_input.e.x, 24853u), Struct_1(var_0, u_input.e.x, true, -73805i, true), vec3<f32>(global0.x, global0.x, 1325f)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 35912i, 0i, u_input.c.x), ~vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.c.x)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_1(~u_input.b.x << (~1u % 32u), min(u_input.d.x, _wgslsmith_sub_u32(18146u, 4081u)), true, max(u_input.c.x, 1i), var_0 >= ~var_0), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -507f))), Struct_1(0u, max(countOneBits(u_input.e.x), 24899u), true, i32(-1i) * -(~u_input.c.x), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), all(vec2<bool>(false, false))))), reverseBits(_wgslsmith_clamp_vec2_i32(u_input.c, min(u_input.c, vec2<i32>(26451i, -28744i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, 1i), vec3<i32>(u_input.c.x, -2147483647i, 0i)), u_input.c.x))), 1442f);
    var var_2 = var_1.a.b;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-105f, global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -187f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-934f, var_1.d), vec2<f32>(742f, 200f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))));
    var var_3 = Struct_4(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, 71507u), vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, var_0), var_0), ~abs(u_input.e.zy)), select(~(~(~1u)), var_1.b.a, _wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(23056u, 19930u), 21272u) == 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-391f + _wgslsmith_div_f32(global0.x, 533f))))), var_1.d);
}

