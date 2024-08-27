struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 20741i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = true;
    return ~min(~_wgslsmith_dot_vec3_i32(u_input.a, ~u_input.a), _wgslsmith_mult_i32(arg_2.c.x, i32(-1i) * -arg_2.c.x));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> f32 {
    global0 = ~(-countOneBits(abs(u_input.a.x))) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(reverseBits(u_input.a.x), u_input.b, ~u_input.b), -u_input.a);
    global0 = 0i;
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-561f)), 1f, -464f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-172f)), var_0.x)) + var_0.x))) + -534f);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_div_f32(-2575f, -1160f))) - _wgslsmith_f_op_f32(-386f - _wgslsmith_f_op_f32(exp2(var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    return 215f;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> i32 {
    global0 = -49389i;
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.c.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.c.a))), _wgslsmith_f_op_f32(func_3(true, Struct_4(arg_1, arg_1))))), -547f);
    global0 = abs(arg_3.a.x) << (18022u % 32u);
    let var_1 = arg_3;
    var var_2 = arg_3;
    return _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(arg_3.a, var_2.a), ~(~(-9900i)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(-292f, _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, ~3374u, _wgslsmith_add_u32(51347u, 15121u)), ~_wgslsmith_mult_u32(0u, 47875u)) << (1u % 32u), firstLeadingBit(vec2<i32>(-1i, -firstTrailingBit(u_input.b))));
    var var_1 = 215f;
    global0 = func_4(_wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(48865i, u_input.a.x, var_0.c.x, 1i)), ~(vec4<i32>(u_input.b, u_input.b, -2147483647i, 0i) ^ vec4<i32>(u_input.a.x, u_input.a.x, 16907i, u_input.b))) > select(u_input.a.x, func_2(-1013f, var_0.b, Struct_1(-899f, var_0.b, vec2<i32>(var_0.c.x, u_input.b)), any(vec4<bool>(true, false, true, false))), any(vec4<bool>(false, true, false, true))), var_0.b, any(vec2<bool>(select(true, all(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, true, true, false))), true)), Struct_2(vec4<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), ~u_input.b, 25439i, reverseBits(20515i)) << (~select(vec4<u32>(var_0.b, 90815u, 4294967295u, var_0.b), vec4<u32>(78564u, 26536u, var_0.b, var_0.b), false) % vec4<u32>(32u)), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_add_i32(u_input.a.x, select(0i, 38924i, false))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a, var_0.a), var_0.a)), var_0.b, var_0.c), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(step(1078f, var_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(533f, -2438f)), 764f), _wgslsmith_f_op_f32(func_3(2147483647i != u_input.a.x, Struct_4(var_0.b, 4294967295u)))), vec2<u32>(_wgslsmith_add_u32(var_0.b >> (1u % 32u), var_0.b), ~var_0.b)));
    var_1 = -1276f;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-955f, 353f, var_0.a)))))))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-590f, _wgslsmith_f_op_f32(-var_0.a))), var_0.a)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 4294967295u, 55203u, 46758u), vec4<u32>(12854u, var_0.b, var_0.b, var_0.b)), 1u) & (_wgslsmith_mult_u32(31353u, var_0.b) >> (~0u % 32u)), vec2<i32>(_wgslsmith_clamp_i32(-u_input.a.x, ~var_0.c.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_0.c.x, 34627i, u_input.b))), var_0.c.x)));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(1510f * _wgslsmith_f_op_f32(f32(-1f) * -441f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1049f) - -241f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1875f - -638f) * -248f), -1000f))), func_1());
    var var_1 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), var_0.b.b == var_0.b.b), true), select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), vec2<bool>(select(all(vec3<bool>(true, false, false)), false, true), false), vec2<bool>(all(vec2<bool>(true, true)), false)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), false)));
    var var_2 = ~vec4<u32>(countOneBits(max(0u ^ var_0.b.b, _wgslsmith_mult_u32(0u, var_0.b.b))), var_0.b.b, _wgslsmith_div_u32(var_0.b.b, 0u), var_0.b.b);
    var_0 = Struct_3(var_0.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true || var_1.x, Struct_4(var_2.x, 1u))) * _wgslsmith_f_op_f32(-var_0.b.a)), firstTrailingBit(1u), abs(var_0.b.c)));
    let var_3 = u_input.a;
    var_1 = select(vec2<bool>(true, _wgslsmith_f_op_f32(max(var_0.b.a, _wgslsmith_f_op_f32(var_0.b.a + -1498f))) <= var_0.b.a), vec2<bool>(true, ~min(var_0.b.b, 1u) < 95032u), true);
    var_2 = vec4<u32>(var_0.b.b, 0u, ~_wgslsmith_add_u32(0u, var_0.b.b), var_2.x);
    let var_4 = var_0.b.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a.yz, var_0.a.yx))))), -50222i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.a.yz)), vec2<f32>(var_0.a.x, 1530f)), var_0.b.b, vec4<i32>(-7218i, -44920i, _wgslsmith_clamp_i32(-2147483647i, -1i ^ _wgslsmith_mult_i32(1i, var_3.x), var_3.x), -35424i));
}

