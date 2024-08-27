struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1272f;

var<private> global1: Struct_3 = Struct_3(false, vec4<i32>(-94935i, 25159i, i32(-2147483648), 54854i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = Struct_3(global1.a, vec4<i32>(u_input.d, _wgslsmith_div_i32(28051i, _wgslsmith_dot_vec2_i32(vec2<i32>(-17391i, -1i), vec2<i32>(global1.b.x, global1.b.x))), global1.b.x, _wgslsmith_mult_i32(global1.b.x, 11521i)) & _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-u_input.c, vec4<i32>(-1i, u_input.d, global1.b.x, u_input.d)), vec4<i32>(2147483647i, u_input.c.x >> (1u % 32u), -2147483647i, _wgslsmith_dot_vec2_i32(u_input.c.ww, vec2<i32>(-47315i, global1.b.x)))));
    let var_0 = Struct_2(4294967295u != _wgslsmith_dot_vec3_u32(vec3<u32>(abs(23650u), select(0u, 3165u, true), ~u_input.b), vec3<u32>(~1u, _wgslsmith_mod_u32(u_input.a, 0u), 1u)), -662f, !all(!(!vec2<bool>(global1.a, global1.a))), 1u);
    global1 = Struct_3((u_input.e.x != var_0.d) | true, global1.b);
    let var_1 = var_0;
    var var_2 = Struct_5(var_1.b, vec2<u32>(1u, var_1.d));
    return all(vec2<bool>(!global1.a, !var_0.c)) & all(vec3<bool>(true, var_1.a, any(vec4<bool>(true, true, var_1.a, var_1.a))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: f32, arg_3: i32) -> vec2<bool> {
    return !(!vec2<bool>(func_3(), all(select(vec3<bool>(false, global1.a, global1.a), vec3<bool>(false, true, false), vec3<bool>(global1.a, global1.a, true)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: vec4<i32>) -> i32 {
    global1 = Struct_3(_wgslsmith_f_op_f32(-arg_2) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, 582f)) - _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(ceil(-390f)))), arg_0);
    let var_0 = _wgslsmith_f_op_f32(sign(-998f));
    var var_1 = _wgslsmith_mult_u32(55651u, ~reverseBits(4294967295u));
    var var_2 = !select(select(vec2<bool>(!global1.a, true), vec2<bool>(any(vec4<bool>(global1.a, false, true, false)), global1.a), !func_2(-39550i, vec2<f32>(arg_2, 151f), var_0, arg_3.x)), vec2<bool>(true, true), func_2(~_wgslsmith_add_i32(arg_3.x, u_input.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), 1359f, _wgslsmith_div_i32(~(-49979i), max(0i, global1.b.x))));
    global0 = 516f;
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(true, -vec4<i32>(global1.b.x ^ -2147483647i, global1.b.x, 14626i, countOneBits(-51231i)) ^ vec4<i32>(_wgslsmith_mod_i32(abs(u_input.d), global1.b.x), func_1(-global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1319f), _wgslsmith_f_op_f32(floor(887f)), global1.b), ~20191i, _wgslsmith_add_i32(i32(-1i) * -1283i, firstLeadingBit(2147483647i))));
    global1 = Struct_3(true, abs(global1.b) << (~reverseBits(vec4<u32>(1u, 12458u, 46298u, u_input.b) ^ vec4<u32>(1u, u_input.b, 3488u, 11416u)) % vec4<u32>(32u)));
    global1 = Struct_3(false, vec4<i32>(countOneBits(-(1i << (u_input.b % 32u))), -1i, -2147483647i, ~min(~10707i, _wgslsmith_clamp_i32(24805i, u_input.c.x, u_input.c.x))));
    let var_0 = u_input.b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1216f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-614f)), -360f))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2280f, -652f)) + _wgslsmith_f_op_f32(f32(-1f) * -266f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-682f + -1116f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(231f, _wgslsmith_f_op_f32(min(354f, -848f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32((u_input.e.x << (u_input.b % 32u)) ^ var_0, u_input.e.x), u_input.b, 1u), _wgslsmith_div_u32(reverseBits(_wgslsmith_clamp_u32(abs(37170u), abs(0u), abs(u_input.b))), select(var_0, _wgslsmith_mult_u32(u_input.e.x, firstTrailingBit(1u)), false)));
}

