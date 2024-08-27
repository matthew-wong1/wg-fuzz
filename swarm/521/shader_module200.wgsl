struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(u_input.b, Struct_1(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(21595u, 12807u), ~vec2<u32>(arg_0.a, 55441u)), 39167u), _wgslsmith_f_op_vec2_f32(-arg_0.b)));
    var var_1 = arg_0.b.x;
    var var_2 = _wgslsmith_mod_i32(-53484i, _wgslsmith_dot_vec3_i32(min(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-26067i, 49382i, 6238i), vec3<i32>(23497i, -1i, 28559i), vec3<i32>(-21101i, 35527i, 2147483647i)), firstLeadingBit(abs(vec3<i32>(-109056i, -10439i, -2147483647i)))), -vec3<i32>(1i, 1i, 1i)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.b.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, arg_0.b.x)) * 383f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x + _wgslsmith_f_op_f32(-var_0.b.b.x)))));
    var var_3 = Struct_3(_wgslsmith_dot_vec4_i32(max(min(vec4<i32>(-38759i, 46586i, 1i, -23266i), vec4<i32>(-1i, 2147483647i, 2147483647i, -1i)), ~vec4<i32>(-2147483647i, 50155i, 24135i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)) >= _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, 1i), abs(~(-1i))));
    return any(vec4<bool>(var_3.a, false, any(!(!vec4<bool>(var_3.a, false, var_3.a, true))), true));
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = select(vec3<bool>(func_3(Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-114f, 259f)))), false, true && select(true, false, true)), vec3<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f * 442f))) == _wgslsmith_div_f32(582f, _wgslsmith_f_op_f32(f32(-1f) * -206f)), false || (1u >= ~u_input.b), true), vec3<bool>(true, select(any(vec4<bool>(true, true, true, true)), false, !all(vec2<bool>(false, true))), !(!func_3(Struct_1(24642u, vec2<f32>(-1797f, 1685f))))));
    var var_1 = ~_wgslsmith_add_i32(-7005i, select(_wgslsmith_div_i32(2147483647i, -1i << (arg_0 % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(36733i, 0i), vec2<i32>(-2147483647i, 1i)), !var_0.x));
    let var_2 = 15679i;
    var_1 = _wgslsmith_clamp_i32(var_2, ~(~(i32(-1i) * -var_2)), max(~86035i, var_2) << (~_wgslsmith_div_u32(~0u, arg_0 ^ 4799u) % 32u));
    var_1 = min(-19618i ^ var_2, select(-2147483647i, 2147483647i, true));
    return Struct_4(Struct_2(~25298u, Struct_1(~firstTrailingBit(arg_0), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(560f, 475f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-577f, -1533f), vec2<f32>(2343f, 1527f)))))), vec3<i32>(var_2 & ~max(0i, 1i), var_2 & _wgslsmith_mod_i32(firstLeadingBit(14146i), ~0i), ~var_2), Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-245f, 290f), vec2<f32>(-2360f, -1157f))), vec2<f32>(404f, 536f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))))));
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0.b.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.b.x, arg_0.b.b.x, -1144f)));
    var var_2 = 77793u;
    let var_3 = func_2(_wgslsmith_sub_u32(41189u, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 11836u, arg_0.a), vec3<u32>(arg_0.a, u_input.a, 14534u)), 1u, abs(u_input.b))));
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(~1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(8195i, 50251i, 2147483647i), vec3<i32>(29592i, 71009i, 13300i), vec3<bool>(false, false, false)), min(vec3<i32>(-23938i, -716i, -2147483647i), vec3<i32>(1i, 1i, 21599i))), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-268i, -2147483647i), vec2<i32>(1i, -57200i)), func_1(Struct_2(u_input.b, Struct_1(u_input.a, vec2<f32>(-775f, -977f))))), -30815i) ^ ~(~vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(45488i, -40547i, 0i, _wgslsmith_mod_i32(9086i, -1i))), vec4<bool>(select(func_3(func_2(19142u).c), true, false), true, true, true));
    var_0 = ~select(max(-vec4<i32>(12127i, -2147483647i, 0i, var_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-1799i, var_0.x, 1i, var_0.x), vec4<i32>(-59407i, var_0.x, 14739i, -4683i))), max(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0.x, -1i, -1i), vec4<i32>(var_0.x, var_0.x, -2147483647i, 39764i)), reverseBits(vec4<i32>(var_0.x, var_0.x, -1i, 2147483647i))), true) & (~_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_0.x, 2147483647i, var_0.x), firstTrailingBit(vec4<i32>(var_0.x, 1i, var_0.x, 8815i))) | firstLeadingBit(vec4<i32>(func_2(75532u).b.x, -var_0.x, ~var_0.x, _wgslsmith_add_i32(var_0.x, var_0.x))));
    var_0 = vec4<i32>(-1i ^ _wgslsmith_mult_i32(-var_0.x, max(-2147483647i, var_0.x)), var_0.x, -var_0.x ^ var_0.x, _wgslsmith_div_i32(reverseBits(_wgslsmith_div_i32(1i, ~12288i)), ~var_0.x));
    var var_1 = max(-max(countOneBits(-1155i), ~var_0.x), countOneBits(-1i | _wgslsmith_mult_i32(~var_0.x, var_0.x)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-534f - -663f)))) >= -212f);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(841f, 1429f)));
    var var_4 = -45800i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec3<u32>(u_input.a, 70962u, u_input.b) >> (vec3<u32>(u_input.a, 4294967295u, u_input.b) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3)) * _wgslsmith_f_op_f32(f32(-1f) * -807f)), ~(~reverseBits(reverseBits(vec3<u32>(0u, u_input.a, u_input.a)))));
}

