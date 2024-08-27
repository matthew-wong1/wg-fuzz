struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: i32;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = countOneBits(~select(vec2<u32>(37661u, global2.b), min(select(vec2<u32>(global2.b, global2.b), vec2<u32>(global2.b, 0u), vec2<bool>(false, false)), ~vec2<u32>(global2.b, global2.b)), true));
    global1 = ~u_input.a;
    global2 = Struct_1(-472f, select(global2.b, select(~_wgslsmith_add_u32(var_0.x, 1u), 34009u, true), true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1700f, _wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_f_op_f32(f32(-1f) * -664f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(-global2.a)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(833f + _wgslsmith_f_op_f32(min(global2.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(363f - global2.a)), arg_1.c.x))));
    var var_1 = global2.c.yx;
    global0 = array<vec4<i32>, 18>();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(167f, var_2, true)), _wgslsmith_f_op_f32(-441f * 700f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(213f * var_2), var_0)), var_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-398f, -238f, global2.a, var_1.x) * vec4<f32>(1010f, 823f, -1356f, arg_1.a))))));
    return abs(~((global2.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, global2.b), vec2<u32>(arg_1.b, arg_1.b)) % 32u)) >> (abs(global2.b) % 32u)));
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = vec2<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, -29628i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(13135i, -3554i)), -vec2<i32>(u_input.a, 15329i)) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -84i, -31620i) | vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(0i, u_input.a, u_input.a))));
    let var_1 = vec3<i32>(u_input.a, _wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -19711i, var_0.x, -1i), -global0[_wgslsmith_index_u32(1u, 18u)]), var_0.x), _wgslsmith_clamp_i32(abs(i32(-1i) * -7245i), -8576i, reverseBits(min(-58006i, var_0.x)))), 32589i);
    let var_2 = arg_0;
    return vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(sign(386f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1455f * _wgslsmith_f_op_f32(trunc(var_2.a))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0.a)), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-arg_0.a));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.a)), _wgslsmith_f_op_f32(global2.a + 884f)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.b, 0u), func_2(true, Struct_1(-1112f, global2.b, vec3<f32>(global2.a, global2.a, -1953f)))), _wgslsmith_f_op_vec3_f32(-global2.c))))));
    let var_1 = ~(abs((vec2<u32>(0u, 63728u) >> (vec2<u32>(global2.b, 105475u) % vec2<u32>(32u))) ^ ~vec2<u32>(8582u, 0u)) >> (firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(3647u, 23464u, 52206u), global2.b)) % vec2<u32>(32u)));
    global1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, ~u_input.a, 24234i, -_wgslsmith_sub_i32(u_input.a, u_input.a)), global0[_wgslsmith_index_u32(~0u, 18u)]);
    var var_2 = vec4<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), -1183f <= global2.a, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), _wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(countOneBits(0i), 2147483647i), -u_input.a & _wgslsmith_mult_i32(5483i, u_input.a)) > u_input.a);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(484f))), global2.c.x)), firstTrailingBit(var_1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.c + _wgslsmith_f_op_vec3_f32(global2.c - _wgslsmith_f_op_vec3_f32(-global2.c))) - vec3<f32>(global2.c.x, -482f, var_0.x)));
    return Struct_1(-2660f, 58984u, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(countOneBits(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-u_input.a, firstLeadingBit(-12912i)), ~(81735i << (0u % 32u)))), -2147483647i, -7552i);
    let var_1 = global2.b;
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(global2.a + 1197f), true)), ~global2.b, vec3<f32>(_wgslsmith_f_op_f32(round(global2.c.x)), _wgslsmith_f_op_f32(step(-918f, global2.a)), _wgslsmith_f_op_f32(abs(global2.c.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-401f, global2.c.x, -298f, var_2.c.x))));
    var var_4 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(select(countOneBits(var_0.zx), ~vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, 18239i), vec2<bool>(any(vec3<bool>(true, true, true)), false)), max(select(vec2<i32>(var_0.x, 8974i), _wgslsmith_sub_vec2_i32(vec2<i32>(64628i, var_0.x), var_0.yx), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), -countOneBits(var_0.xz))), -(~(vec2<i32>(var_0.x, var_0.x) ^ var_0.yz)) ^ countOneBits(min(vec2<i32>(-1i, 1i), ~var_0.yz)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, var_4.x, func_2(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-355f)))), global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c)))), var_0, 142i);
}

