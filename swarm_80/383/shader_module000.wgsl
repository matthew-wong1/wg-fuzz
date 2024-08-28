struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> i32 {
    return abs(u_input.a);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    var var_0 = arg_1.b.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)) + 445f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1064f));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(arg_0.b.x)), arg_1.b.x)), 342f, _wgslsmith_f_op_f32(select(-1661f, arg_1.b.x, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b.x - arg_1.b.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_1.b.x, -1101f, _wgslsmith_f_op_f32(-arg_1.b.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, -1000f, -642f) - vec4<f32>(arg_1.b.x, arg_0.b.x, 1104f, arg_1.b.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, arg_1.b.x, arg_0.b.x, arg_0.b.x), vec4<f32>(1650f, 1127f, 1044f, arg_0.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, 824f, -1002f, 435f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, 219f, -2096f) * vec4<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_0.b.x))) - vec4<f32>(arg_0.b.x, -2900f, _wgslsmith_f_op_f32(max(1123f, 2355f)), _wgslsmith_div_f32(arg_1.b.x, 1000f)))), true));
    var_0 = _wgslsmith_div_f32(arg_1.b.x, -1443f);
    return ~(firstTrailingBit(~1u) | 49341u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3.b.x;
    let var_1 = -2099f;
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(3706u, 1u, ~31714u), func_3(arg_0, arg_3, arg_0.a.x, arg_3.a) | ~u_input.c.x), ~(~(~arg_3.a.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b) - arg_3.b), arg_3.b))), min(-((vec4<i32>(arg_3.c.x, u_input.a, arg_0.c.x, arg_3.c.x) ^ arg_3.c) << (~arg_2 % vec4<u32>(32u))), arg_0.c));
    var var_3 = arg_0.b.x;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(max(1418f, _wgslsmith_div_f32(var_1, -419f))))), _wgslsmith_f_op_f32(f32(-1f) * -686f)));
    return Struct_1(firstLeadingBit(var_2.a) ^ ~vec2<u32>(0u, func_3(arg_3, Struct_1(vec2<u32>(arg_0.a.x, arg_2.x), arg_0.b, vec4<i32>(u_input.a, -7027i, 1i, var_2.c.x)), arg_0.a.x, vec2<u32>(var_2.a.x, arg_1))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.b.x, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1488f), _wgslsmith_f_op_f32(607f - -1257f)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, 126f))), _wgslsmith_f_op_vec2_f32(select(arg_3.b, vec2<f32>(arg_0.b.x, 1599f), true))))))), _wgslsmith_mult_vec4_i32(abs(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -1i, var_2.c.x), arg_3.c)), vec4<i32>(_wgslsmith_add_i32(0i, u_input.a) & _wgslsmith_mod_i32(-5907i, -1i), u_input.a, _wgslsmith_div_i32(func_1(), func_1()), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_2.c.x, -1i, 2396i), arg_0.c), -1i))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_sub_u32(0u, ~arg_1.a.x);
    var var_1 = firstTrailingBit(_wgslsmith_add_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.c.x, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c.x, arg_3.c.x), vec2<i32>(u_input.a, 1i)))), _wgslsmith_mod_vec2_i32(arg_0.c.xy, vec2<i32>(9142i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -28139i, arg_0.c.x, 2147483647i), vec4<i32>(2147483647i, arg_0.c.x, 34468i, arg_0.c.x))))));
    var_1 = abs(-(~vec2<i32>(~21812i, _wgslsmith_div_i32(u_input.a, u_input.a))));
    var_1 = func_2(arg_3, ~select(max(_wgslsmith_mult_u32(arg_0.a.x, 27167u), ~var_0), 49692u, false), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a.x << (arg_0.a.x % 32u), 4294967295u, 37435u, firstLeadingBit(var_0)), ~_wgslsmith_div_vec4_u32(vec4<u32>(72315u, arg_3.a.x, arg_0.a.x, 2478u), vec4<u32>(68627u, u_input.b, 6748u, 55998u)))), Struct_1(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(10415u, arg_1.a.x), vec2<u32>(arg_1.a.x, arg_3.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b - arg_0.b) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b - arg_1.b))), (select(arg_3.c, vec4<i32>(1i, arg_3.c.x, arg_1.c.x, -1i), vec4<bool>(arg_2, true, false, false)) | -arg_0.c) ^ _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c.x, -5467i, 1i, -26791i), vec4<i32>(54015i, -1i, 10141i, var_1.x)))).c.xy;
    var var_2 = arg_3.c.x;
    return firstLeadingBit(0i << (_wgslsmith_mod_u32(u_input.c.x, arg_0.a.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~countOneBits(~vec3<i32>(func_1(), u_input.a & -4151i, _wgslsmith_mult_i32(u_input.a, 24090i)));
    var_0 = firstTrailingBit(vec3<i32>(var_0.x, u_input.a, _wgslsmith_mod_i32(var_0.x, 1i) ^ 2147483647i)) ^ countOneBits(vec3<i32>(u_input.a, -17577i, -(~var_0.x)));
    var var_1 = Struct_1(~(_wgslsmith_sub_vec2_u32(u_input.c.xz & u_input.c.yx, vec2<u32>(41173u, u_input.b)) ^ vec2<u32>(u_input.c.x, ~1u)), vec2<f32>(1f, 1f), -(vec4<i32>(-2147483647i, 22274i, -u_input.a, var_0.x) >> (vec4<u32>(88250u, ~u_input.c.x, ~u_input.b, 4585u) % vec4<u32>(32u))));
    let var_2 = ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, func_4(func_2(Struct_1(var_1.a, var_1.b, var_1.c), 31645u, vec4<u32>(u_input.b, var_1.a.x, u_input.c.x, var_1.a.x), Struct_1(u_input.c.xy, var_1.b, vec4<i32>(-2147483647i, -1i, -28418i, var_1.c.x))), Struct_1(u_input.c.zy, var_1.b, vec4<i32>(2147483647i, var_0.x, -2147483647i, var_0.x)), true, func_2(Struct_1(var_1.a, vec2<f32>(var_1.b.x, 1000f), vec4<i32>(1i, u_input.a, var_0.x, -2147483647i)), 90355u, vec4<u32>(1u, var_1.a.x, u_input.b, 25328u), Struct_1(vec2<u32>(u_input.c.x, var_1.a.x), var_1.b, vec4<i32>(u_input.a, var_0.x, var_1.c.x, -2147483647i)))), _wgslsmith_div_i32(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, var_0.x, var_0.x, var_0.x), var_1.c)), _wgslsmith_dot_vec2_i32(var_0.zy, -var_1.c.wy)), vec4<i32>(108945i, _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, u_input.a), -42743i), u_input.a, _wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.x, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, var_0.x, -27531i, var_1.c.x), vec4<i32>(var_0.x, 2147483647i, var_1.c.x, -2147483647i)))));
    var var_3 = func_2(Struct_1(vec2<u32>(abs(var_1.a.x), 0u), _wgslsmith_div_vec2_f32(var_1.b, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(var_1.b))))), var_1.c), 4294967295u, vec4<u32>(_wgslsmith_sub_u32(abs(~var_1.a.x), _wgslsmith_mult_u32(var_1.a.x & var_1.a.x, abs(var_1.a.x))), reverseBits(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(1u, 4952u))), 57680u, u_input.c.x), func_2(Struct_1(vec2<u32>(~u_input.b, countOneBits(64339u)), func_2(func_2(Struct_1(var_1.a, vec2<f32>(-227f, var_1.b.x), vec4<i32>(var_1.c.x, 31506i, var_2.x, 1260i)), 0u, vec4<u32>(var_1.a.x, 48172u, 0u, var_1.a.x), Struct_1(vec2<u32>(u_input.b, 94490u), vec2<f32>(var_1.b.x, var_1.b.x), var_2)), _wgslsmith_add_u32(u_input.c.x, 4471u), ~vec4<u32>(u_input.c.x, 65763u, 21792u, u_input.b), func_2(Struct_1(vec2<u32>(55852u, 9608u), vec2<f32>(934f, var_1.b.x), vec4<i32>(var_0.x, -19799i, -6035i, 2147483647i)), 13491u, vec4<u32>(1u, u_input.b, var_1.a.x, u_input.b), Struct_1(vec2<u32>(1u, var_1.a.x), var_1.b, var_1.c))).b, countOneBits(var_1.c) ^ vec4<i32>(u_input.a, -19652i, -26158i, u_input.a)), u_input.c.x, ~firstTrailingBit(vec4<u32>(51931u, var_1.a.x, 2224u, u_input.c.x)) ^ (~vec4<u32>(24696u, 25791u, 17445u, var_1.a.x) & ~vec4<u32>(9351u, u_input.b, var_1.a.x, 0u)), func_2(func_2(func_2(Struct_1(vec2<u32>(24704u, var_1.a.x), var_1.b, var_1.c), 0u, vec4<u32>(32383u, 1u, 0u, 0u), Struct_1(vec2<u32>(0u, var_1.a.x), vec2<f32>(1000f, -926f), var_1.c)), ~var_1.a.x, vec4<u32>(var_1.a.x, 2489u, u_input.c.x, 4089u) << (vec4<u32>(8118u, 15182u, u_input.b, 32844u) % vec4<u32>(32u)), func_2(Struct_1(vec2<u32>(u_input.b, 5291u), var_1.b, vec4<i32>(-73323i, var_0.x, u_input.a, -1i)), 71837u, vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 57891u), Struct_1(vec2<u32>(var_1.a.x, 48273u), var_1.b, vec4<i32>(0i, 2147483647i, var_0.x, 44404i)))), u_input.c.x, vec4<u32>(func_2(Struct_1(vec2<u32>(u_input.c.x, u_input.b), vec2<f32>(2012f, var_1.b.x), var_1.c), var_1.a.x, vec4<u32>(var_1.a.x, var_1.a.x, 95793u, u_input.c.x), Struct_1(u_input.c.zx, vec2<f32>(var_1.b.x, 326f), vec4<i32>(-5456i, 2628i, -2147483647i, -15625i))).a.x, _wgslsmith_mod_u32(var_1.a.x, 0u), 91459u & var_1.a.x, 17600u | u_input.b), Struct_1(vec2<u32>(4294967295u, u_input.c.x) << (u_input.c.xy % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1263f, -588f))), vec4<i32>(-51591i, u_input.a, 6406i, -35530i)))));
    var var_4 = func_2(func_2(func_2(Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.b.x, -406f))), var_3.c >> (vec4<u32>(51460u, var_3.a.x, var_3.a.x, 1u) % vec4<u32>(32u))), ~(~70070u), vec4<u32>(var_1.a.x, 4294967295u, ~64315u, firstLeadingBit(1u)), Struct_1(vec2<u32>(u_input.c.x, var_3.a.x), vec2<f32>(683f, -1052f), vec4<i32>(-44295i, -53601i, -43230i, var_1.c.x) << (vec4<u32>(13777u, var_3.a.x, u_input.c.x, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_dot_vec2_u32(u_input.c.xz, ~var_3.a), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_3.a.x, 8379u), u_input.c), firstLeadingBit(_wgslsmith_div_u32(29069u, var_1.a.x)), ~(~u_input.c.x), 48650u), func_2(Struct_1(firstTrailingBit(var_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b.x, var_3.b.x)), vec4<i32>(var_1.c.x, var_1.c.x, 1i, var_1.c.x) << (vec4<u32>(24570u, 0u, 4294967295u, var_1.a.x) % vec4<u32>(32u))), 4294967295u, _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(52366u, var_3.a.x, var_3.a.x, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 24920u, u_input.c.x, 3033u), vec4<u32>(68603u, 31979u, 94824u, var_1.a.x))), func_2(func_2(Struct_1(vec2<u32>(79574u, 0u), var_1.b, vec4<i32>(var_3.c.x, var_1.c.x, 29181i, -17390i)), var_1.a.x, vec4<u32>(var_1.a.x, var_3.a.x, var_1.a.x, 4075u), Struct_1(var_1.a, var_3.b, var_3.c)), 0u, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, var_3.a.x, var_1.a.x), vec4<u32>(u_input.b, var_3.a.x, var_3.a.x, u_input.b)), Struct_1(u_input.c.yx, var_3.b, vec4<i32>(var_1.c.x, var_2.x, u_input.a, 2147483647i))))), 55163u, ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(40577u, 1u, var_3.a.x, 0u), vec4<u32>(4294967295u, u_input.b, 6919u, u_input.c.x)) ^ ~vec4<u32>(var_3.a.x, u_input.c.x, var_1.a.x, 33303u)), Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(Struct_1(var_1.a, var_1.b, var_3.c), var_3.a.x, vec4<u32>(var_1.a.x, var_1.a.x, var_1.a.x, var_3.a.x), Struct_1(vec2<u32>(1u, 11679u), var_1.b, var_1.c)).b.x, -560f)), func_2(Struct_1(select(var_3.a, vec2<u32>(var_1.a.x, var_3.a.x), false), _wgslsmith_f_op_vec2_f32(-var_3.b), vec4<i32>(-4473i, -1i, 38298i, 1i)), u_input.c.x, vec4<u32>(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(0u, var_3.a.x, 14769u)), u_input.b, ~0u), func_2(Struct_1(var_1.a, vec2<f32>(-1091f, var_1.b.x), vec4<i32>(u_input.a, -21970i, var_2.x, 45208i)), 1u, ~vec4<u32>(4559u, u_input.c.x, 61766u, 1u), Struct_1(vec2<u32>(u_input.b, 1u), var_1.b, vec4<i32>(var_0.x, var_1.c.x, 1i, 0i)))).c));
    var_0 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-7150i, var_4.c.x), _wgslsmith_div_i32(~(-u_input.a), _wgslsmith_mult_i32(var_4.c.x, 18989i))), ~_wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(var_1.c.x, i32(-1i) * -2147483647i)), -68474i);
    var var_5 = false;
    var_4 = Struct_1(vec2<u32>(1u, 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b.x, -970f))), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(select(1u, func_2(func_2(Struct_1(var_4.a, var_1.b, vec4<i32>(2147483647i, -1i, -23277i, var_2.x)), _wgslsmith_mod_u32(1u, 15509u), vec4<u32>(var_3.a.x, u_input.b, var_4.a.x, 4294967295u) | vec4<u32>(17475u, var_1.a.x, var_4.a.x, 1u), Struct_1(vec2<u32>(var_3.a.x, 4294967295u), var_3.b, vec4<i32>(var_1.c.x, -1i, u_input.a, 2147483647i))), 0u, vec4<u32>(var_3.a.x, func_3(Struct_1(vec2<u32>(var_4.a.x, 1u), vec2<f32>(-373f, -262f), var_3.c), Struct_1(vec2<u32>(5159u, var_1.a.x), vec2<f32>(var_3.b.x, -603f), vec4<i32>(1i, var_4.c.x, 0i, var_2.x)), var_4.a.x, var_1.a), u_input.b, 166419u), func_2(func_2(Struct_1(vec2<u32>(1u, u_input.b), vec2<f32>(var_4.b.x, 173f), vec4<i32>(var_1.c.x, -1i, var_4.c.x, 0i)), 28379u, vec4<u32>(55167u, 4294967295u, u_input.b, 58132u), Struct_1(var_1.a, var_3.b, var_3.c)), 37335u, min(vec4<u32>(var_3.a.x, var_4.a.x, var_4.a.x, var_1.a.x), vec4<u32>(0u, 0u, var_1.a.x, u_input.c.x)), Struct_1(vec2<u32>(u_input.c.x, var_4.a.x), vec2<f32>(var_4.b.x, -165f), vec4<i32>(var_2.x, -2147483647i, -1i, 1i)))).a.x, (abs(var_0.x) == ~var_0.x) != all(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_4.b.x, -758f)) - -207f), -530f)), _wgslsmith_f_op_f32(step(var_3.b.x, 215f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1459f, _wgslsmith_f_op_f32(abs(var_4.b.x))))), -1584f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.b.x))), var_4.b.x);
}

