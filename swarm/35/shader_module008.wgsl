struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, ~0u)), abs(abs(~reverseBits(vec2<u32>(1u, 53808u)))));
    let var_1 = -654f;
    var_0 = ~firstLeadingBit(~u_input.b);
    var_0 = min(reverseBits(~37827u), 48442u);
    let var_2 = _wgslsmith_div_i32(u_input.a, reverseBits(arg_1.x));
    return all(vec4<bool>(true, !(arg_2.x | arg_2.x), true, true != arg_2.x)) != all(!vec2<bool>(37060u <= u_input.b, arg_2.x));
}

fn func_2() -> bool {
    var var_0 = abs(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 0i)), vec3<i32>(u_input.a, 0i, u_input.a)) ^ vec3<i32>(~u_input.a, u_input.a << (49359u % 32u), _wgslsmith_sub_i32(-1i, u_input.a)), -vec3<i32>(~u_input.a, u_input.a, select(u_input.a, u_input.a, true))));
    return !((-18280i << (countOneBits(75521u) % 32u)) >= u_input.a) & !func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1460f, 1308f))), ~(vec4<i32>(u_input.a, 0i, u_input.a, 1i) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec3<bool>(true, true, true));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> f32 {
    var var_0 = Struct_1(u_input.b, u_input.b, _wgslsmith_f_op_f32(trunc(-1587f)), min(max(vec4<u32>(~u_input.c, ~27350u, 1u, 9302u), vec4<u32>(_wgslsmith_sub_u32(u_input.c, 25285u), u_input.b, 9211u, ~1978u)), vec4<u32>(max(0u, u_input.b) | 0u, ~(~1u), 1u, 14120u)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b) >> (_wgslsmith_add_vec4_u32(vec4<u32>(42651u, u_input.b, 1u, 0u), vec4<u32>(u_input.b, 1u, 1u, 4294967295u)) % vec4<u32>(32u))), select(vec4<u32>(~u_input.b, countOneBits(u_input.c), 39808u, ~6333u), vec4<u32>(abs(u_input.b), 1u, u_input.b, ~u_input.b), !(!vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x)))));
    let var_1 = ~_wgslsmith_div_vec3_i32(vec3<i32>(-(6281i & arg_1), u_input.a, 43734i), -abs(vec3<i32>(-1i, arg_1, 28764i) | vec3<i32>(u_input.a, -65104i, -24184i)));
    var var_2 = ~_wgslsmith_mod_u32(~u_input.b, 48764u);
    var var_3 = ~abs(_wgslsmith_sub_vec2_u32(abs(var_0.d.zx), ~vec2<u32>(u_input.c, var_0.d.x)));
    let var_4 = Struct_1(select(4294967295u << (0u % 32u), ~0u, true), _wgslsmith_mult_u32(firstTrailingBit(~var_3.x), 12257u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(651f, -399f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + var_0.c) - -1000f)), firstLeadingBit(~select(~vec4<u32>(u_input.b, 1u, 74604u, var_0.e), vec4<u32>(4294967295u, var_3.x, 1u, 22832u), !arg_0.x)), ~_wgslsmith_add_u32(reverseBits(var_0.a), 1u));
    return var_4.c;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = -(-select(vec2<i32>(4026i, u_input.a) >> (arg_0.zx % vec2<u32>(32u)), ~vec2<i32>(u_input.a, u_input.a), true) ^ vec2<i32>(u_input.a, -1i));
    let var_1 = Struct_1(1u, _wgslsmith_dot_vec3_u32(arg_0, ~arg_0), _wgslsmith_f_op_f32(func_4(vec2<bool>(func_2(), any(vec2<bool>(false, true))), abs(abs(-u_input.a)))), firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, u_input.b, 29962u, u_input.b) | vec4<u32>(arg_0.x, 58669u, 32104u, u_input.c), ~vec4<u32>(38237u, 4294967295u, 23300u, arg_0.x)))), firstLeadingBit(~_wgslsmith_sub_u32(~4294967295u, 0u)));
    let var_2 = vec3<f32>(1009f, var_1.c, _wgslsmith_f_op_f32(func_4(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), ~var_0.x)));
    let var_3 = all(select(vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true | all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true))), !select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    return var_1;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !all(vec2<bool>(true, true));
    let var_1 = -(~(-vec3<i32>(u_input.a, u_input.a, u_input.a)) ^ vec3<i32>(-2880i, 2147483647i, u_input.a));
    var var_2 = -countOneBits(var_1.x);
    var_2 = firstTrailingBit(-2147483647i);
    var_2 = var_1.x >> (2646u % 32u);
    return arg_1;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = firstLeadingBit(~(~_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, u_input.a)), ~vec3<i32>(-2147483647i, u_input.a, 10269i))));
    var var_1 = _wgslsmith_clamp_vec4_i32(firstTrailingBit(-vec4<i32>(_wgslsmith_clamp_i32(u_input.a, var_0.x, u_input.a), ~1i, _wgslsmith_add_i32(-1i, 1i), u_input.a ^ u_input.a)), vec4<i32>(u_input.a, u_input.a, var_0.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, u_input.a, u_input.a, u_input.a), -vec4<i32>(var_0.x, 32135i, 0i, 68579i))), -firstLeadingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(44361i, -15694i, -1i, u_input.a), vec4<i32>(-63701i, 1i, 45197i, 7301i))));
    var_1 = reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-44948i, 0i, u_input.a, -51255i), abs(vec4<i32>(var_1.x, 2147483647i, u_input.a, 31655i))), max(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, var_0.x, -2147483647i, var_1.x), vec4<i32>(u_input.a, var_0.x, 1i, -1i)), -vec4<i32>(var_1.x, 1i, var_1.x, -7956i)))) | countOneBits(~min(vec4<i32>(u_input.a, var_1.x, 20066i, var_1.x), vec4<i32>(var_0.x, -21711i, 11448i, 2147483647i)) ^ ~(-vec4<i32>(var_1.x, var_1.x, -8911i, var_1.x)));
    let var_2 = arg_1;
    let var_3 = vec2<i32>(~(~(~countOneBits(1i))), firstLeadingBit(-2147483647i));
    return StorageBuffer(arg_1.d.zw, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(116f, arg_0.x, -200f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1040f, -665f, 2022f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0.yzz)), vec3<f32>(arg_0.x, arg_1.c, 910f))))), var_0, vec3<u32>(_wgslsmith_dot_vec4_u32(arg_1.d, var_2.d), u_input.c, firstLeadingBit(1u)), ~(~var_2.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 43056u;
    var_0 = min(u_input.b, ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 46572u, u_input.b), vec3<u32>(0u, 0u, 7378u)))));
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-849f, 1166f, -236f, -655f)))))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1941f) - 461f)), func_1(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.c), vec3<u32>(4294967295u, 4294967295u, u_input.c)))));
}

