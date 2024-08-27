struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec4<u32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_2(select(~(~(~vec3<u32>(arg_0, 65291u, arg_0))), vec3<u32>(~(u_input.b ^ u_input.b), ~arg_0, u_input.a), true), 10016u >= _wgslsmith_add_u32(~_wgslsmith_mod_u32(arg_0, arg_0), select(abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(arg_0, 5994u, 47806u)), true)), ~select(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, u_input.b, 1u, u_input.b), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), max(abs(vec4<u32>(5658u, arg_0, 4294967295u, arg_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 15326u, 21689u, 42867u), vec4<u32>(u_input.b, 1u, 33948u, 1u))), vec4<bool>(true, true, any(vec2<bool>(false, false)), true)), _wgslsmith_add_u32(68615u, reverseBits(~arg_0)) > arg_0, reverseBits((vec3<u32>(4294967295u, arg_0, arg_0) | vec3<u32>(arg_0, 15619u, u_input.b)) | (~vec3<u32>(16284u, arg_0, 32123u) & _wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(96922u, u_input.b, u_input.b)))));
    let var_1 = Struct_3(1205f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-243f + -942f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-2194f, -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-272f))))), vec3<i32>(~(-min(-1i, -47951i)), 1i, 1i), _wgslsmith_mod_i32(min(40962i, 0i), firstTrailingBit(1i) >> (~_wgslsmith_clamp_u32(27952u, u_input.b, 4294967295u) % 32u)), var_0);
    var var_2 = 19137i >> (~(~1u) % 32u);
    return vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(select(var_0.a.yx, var_1.e.e.yz, vec2<bool>(var_1.e.b, false)), max(vec2<u32>(1927u, var_0.c.x), vec2<u32>(102454u, 4294967295u))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_1.e.c, vec4<u32>(4294967295u, 13764u, u_input.a, var_0.c.x)), ~vec4<u32>(25385u, u_input.b, 48345u, var_1.e.c.x)), ~(0u >> (var_0.a.x % 32u))), ~(countOneBits(var_1.e.e) >> (var_0.e % vec3<u32>(32u)))), _wgslsmith_dot_vec3_u32(~(~_wgslsmith_div_vec3_u32(var_0.e, var_0.e)), var_0.c.wwx), ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(25691u, var_0.c.x)), var_1.e.a.yz));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec3<u32> {
    global0 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_div_u32(27421u, firstLeadingBit(_wgslsmith_mult_u32(4294967295u, ~u_input.b) | firstLeadingBit(1u)));
    var var_1 = vec2<u32>(~4294967295u, var_0);
    return ~func_3(16761u);
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    return Struct_3(-1305f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-437f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -148f)))), arg_0.zzy >> (select(abs(vec3<u32>(u_input.b, 1u, u_input.b)) | (vec3<u32>(u_input.a, 19041u, u_input.a) ^ vec3<u32>(9880u, u_input.b, u_input.a)), ~vec3<u32>(u_input.b, 4294967295u, u_input.a), vec3<bool>(true, true, true)) % vec3<u32>(32u)), i32(-1i) * -2147483647i, Struct_2((_wgslsmith_mult_vec3_u32(vec3<u32>(52885u, u_input.b, u_input.b), vec3<u32>(4863u, u_input.b, 4294967295u)) & vec3<u32>(4294967295u, u_input.a, 39902u)) << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(6849u, u_input.a, 1u), vec3<u32>(4294967295u, 1u, u_input.b)), ~1u, u_input.a) % vec3<u32>(32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(-1i, arg_0.x, -26231i, 0i))) < -_wgslsmith_dot_vec2_i32(vec2<i32>(35162i, arg_0.x), vec2<i32>(1i, 2147483647i)), ~(~vec4<u32>(u_input.a, 34688u, 1u, 0u)), true, func_2(1i, !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(arg_0.xy, vec2<i32>(arg_0.x, arg_0.x), vec2<bool>(true, true)) ^ (arg_0.xw ^ arg_0.yw))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~firstTrailingBit(-_wgslsmith_sub_i32(13521i, 108163i)), firstLeadingBit(_wgslsmith_mult_i32(firstLeadingBit(7077i), _wgslsmith_dot_vec4_i32(-vec4<i32>(26298i, -22145i, -1i, -14334i), -vec4<i32>(1i, -1i, 23086i, 0i)))));
    var var_1 = func_1(~(~select(vec4<i32>(0i, -32308i, 25933i, -1i), vec4<i32>(-22184i, 2147483647i, -9931i, 0i), true)) << (vec4<u32>(abs(countOneBits(0u)), 0u, u_input.b, u_input.b) % vec4<u32>(32u)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-257f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1.b)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(620f, _wgslsmith_f_op_f32(var_1.b * 155f))))), _wgslsmith_sub_vec3_i32(var_1.c, var_1.c), func_1(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.x, -2147483647i, var_1.d), vec3<i32>(var_1.d, 25598i, 1i)), 47204i, _wgslsmith_add_i32(var_1.c.x, var_1.d), var_1.d), vec4<i32>(0i, 2147483647i, 0i, var_1.d) << (var_1.e.c % vec4<u32>(32u)))).c.x, Struct_2(vec3<u32>(_wgslsmith_add_u32(~4294967295u, ~3956u), 116287u, 1u), var_1.e.b, vec4<u32>(4294967295u, 38144u, 14662u, var_1.e.a.x), !(true | all(vec4<bool>(true, var_1.e.b, var_1.e.b, true))), ~(~(~vec3<u32>(26873u, 14270u, u_input.a)))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-var_1.a), var_1.b, ~select(vec3<i32>(var_1.c.x, min(18116i, 106131i), _wgslsmith_div_i32(var_1.c.x, var_1.c.x)), abs(var_1.c), vec3<bool>(!var_1.e.d, 0i < var_1.c.x, all(vec4<bool>(var_1.e.d, false, false, var_1.e.d)))), _wgslsmith_dot_vec3_i32(min(vec3<i32>(~var_1.c.x, -var_1.d, i32(-1i) * -1i), var_1.c), abs(vec3<i32>(1i, ~var_1.d, _wgslsmith_mod_i32(-30327i, 2147483647i)))), Struct_2(vec3<u32>(40040u, var_1.e.a.x, func_1(vec4<i32>(var_1.c.x, var_1.d, var_1.d, var_1.d)).e.c.x & ~4294967295u), select(true, any(!vec3<bool>(true, false, var_1.e.b)), all(!vec3<bool>(false, false, var_1.e.b))), var_1.e.c, false, ~var_1.e.e));
    global0 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1351f), _wgslsmith_f_op_f32(f32(-1f) * -1399f)));
}

