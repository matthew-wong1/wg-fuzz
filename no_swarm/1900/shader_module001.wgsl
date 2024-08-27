struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: f32) -> bool {
    let var_0 = Struct_1(2147483647i, 1u, -664f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1237f) + var_0.c), _wgslsmith_f_op_f32(-895f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, arg_2))))));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(44353u, 135851u, 4294967295u, ~46780u), ~(~(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_clamp_u32(~arg_0.x, var_0.b, ~56140u), _wgslsmith_dot_vec3_u32(~abs(arg_0.wwy), arg_0.wzx), _wgslsmith_div_u32(firstLeadingBit(0u << ((arg_0.x & 17393u) % 32u)), 0u));
    var var_3 = Struct_1(min(u_input.a, _wgslsmith_add_i32(var_0.a, 45911i)), max(arg_0.x, 26088u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c, -260f, true)) - arg_2) + _wgslsmith_f_op_f32(-arg_2)));
    var var_4 = firstTrailingBit(u_input.b);
    return (_wgslsmith_f_op_f32(max(var_3.c, -345f)) > var_3.c) && arg_1;
}

fn func_2(arg_0: vec2<i32>) -> vec2<i32> {
    let var_0 = all(!vec3<bool>(func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 29786u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 39718u)), true, -1955f), true || all(vec2<bool>(true, false)), any(vec2<bool>(true, true))));
    let var_1 = Struct_1(22619i, abs(_wgslsmith_div_u32(countOneBits(44197u), firstLeadingBit(_wgslsmith_sub_u32(4294967295u, u_input.b.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))));
    let var_2 = ~(~max(vec3<i32>(8000i, max(var_1.a, 2147483647i), _wgslsmith_mod_i32(u_input.a, 11069i)), max(max(vec3<i32>(var_1.a, arg_0.x, arg_0.x), vec3<i32>(0i, var_1.a, arg_0.x)), -vec3<i32>(21506i, -12884i, var_1.a))));
    var var_3 = max(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_1.b, var_1.b, u_input.b.x)), ~vec3<u32>(31121u, 21980u, u_input.b.x) & vec3<u32>(var_1.b, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(63323u, var_1.b, 36189u), ~vec3<u32>(61987u, var_1.b, 61866u))), vec3<u32>(1u & ~u_input.b.x, 24606u >> ((u_input.b.x | 1u) % 32u), u_input.b.x)) | ~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~var_1.b, ~25129u), vec3<u32>(abs(var_1.b), 14851u, var_1.b));
    let var_4 = var_1.c;
    return _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a, _wgslsmith_div_i32(u_input.a & 1i, -47273i)), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.a, ~_wgslsmith_add_i32(var_1.a, u_input.a)), reverseBits(~vec2<i32>(var_2.x, 1i)) & _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_1.a), select(var_2.yz, var_2.zx, vec2<bool>(var_0, var_0)))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.c, 284f)))))));
    var var_0 = Struct_1(-(arg_0.a ^ -u_input.a), arg_0.b, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * arg_0.c)))), arg_3)));
    var var_1 = arg_0;
    var var_2 = min(vec4<i32>(~(-38912i), i32(-1i) * -2147483647i, reverseBits(-2147483647i & u_input.a), min(var_1.a, u_input.a)), _wgslsmith_add_vec4_i32(~min(vec4<i32>(-1i, -18207i, var_1.a, arg_0.a), vec4<i32>(61497i, 37829i, var_0.a, arg_2.x)) >> (~reverseBits(vec4<u32>(u_input.b.x, arg_0.b, 56530u, 13617u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -12295i, 37519i, arg_2.x), vec4<i32>(0i, -1i, 18089i, 0i)) ^ func_2(arg_2).x, arg_0.a, arg_2.x, var_1.a)));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = false;
    var var_1 = func_4(arg_1, abs(u_input.b.x), firstLeadingBit(func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-37020i, arg_1.a), vec2<i32>(u_input.a, 2147483647i))) << (u_input.b % vec2<u32>(32u))), all(select(vec4<bool>(false, true, true, any(vec3<bool>(true, arg_2, false))), vec4<bool>(any(vec4<bool>(arg_2, arg_2, var_0, true)), false, var_0, arg_1.c >= arg_1.c), var_0)));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -2351f);
    var var_2 = Struct_1(-u_input.a, ~var_1.b, func_4(Struct_1(~0i, 15058u, _wgslsmith_f_op_f32(func_4(arg_1, 0u, vec2<i32>(-15238i, arg_1.a), false).c - var_1.c)), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(108902u, u_input.b.x, 0u), vec3<u32>(arg_0, 235u, 2105u)), min(firstTrailingBit(vec3<u32>(0u, 100561u, u_input.b.x)), firstLeadingBit(vec3<u32>(1u, 48552u, 64972u)))), func_2(select(~vec2<i32>(43822i, 34042i), vec2<i32>(-23853i, u_input.a), select(vec2<bool>(true, arg_2), vec2<bool>(var_0, arg_2), arg_2))), !var_0).c);
    global0 = 764f;
    return func_4(Struct_1(var_2.a, ~(~43259u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c))))), 29665u, ~vec2<i32>(var_1.a, -_wgslsmith_sub_i32(-1i, -2890i)), false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    var var_0 = true;
    var_0 = arg_2.x;
    var var_1 = arg_1;
    let var_2 = arg_0;
    var_0 = arg_2.x;
    return firstLeadingBit(min(~14539u, _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(1u, arg_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1183f;
    var var_0 = u_input.b.x;
    let var_1 = Struct_1(-15449i, func_5(func_1(48141u, Struct_1(_wgslsmith_add_i32(u_input.a, 35473i), select(u_input.b.x, 45201u, true), -450f), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), Struct_1(func_2(vec2<i32>(u_input.a, u_input.a)).x >> (~0u % 32u), ~19857u, _wgslsmith_f_op_f32(-376f * _wgslsmith_f_op_f32(round(-1467f)))), vec2<bool>(true, true)), _wgslsmith_f_op_f32(round(1f)));
    var var_2 = -717f;
    var var_3 = func_1(4294967295u, var_1, max(firstTrailingBit(func_5(Struct_1(55924i, u_input.b.x, var_1.c), Struct_1(var_1.a, 3656u, -1421f), vec2<bool>(false, true))), var_1.b) == 8259u);
    let var_4 = 56084u;
    var var_5 = vec4<i32>(~(~(i32(-1i) * -1i)), ~58346i, func_4(Struct_1(_wgslsmith_mult_i32(-9079i, abs(var_1.a)), _wgslsmith_div_u32(~18102u, var_4), 1344f), _wgslsmith_add_u32(~(~54851u), 39744u), _wgslsmith_add_vec2_i32(select(vec2<i32>(var_1.a, 2656i) & vec2<i32>(0i, 46619i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-6194i, -7311i), vec2<i32>(-24265i, u_input.a), vec2<i32>(-2147483647i, -2417i)), any(vec2<bool>(true, true))), -vec2<i32>(var_1.a, 38610i) ^ vec2<i32>(1i, 15054i)), true).a, firstLeadingBit(func_1(59993u, func_4(func_4(Struct_1(var_1.a, u_input.b.x, var_1.c), var_4, vec2<i32>(var_3.a, -35355i), false), _wgslsmith_mult_u32(var_3.b, 0u), vec2<i32>(1i, 1i), false), _wgslsmith_f_op_f32(round(-156f)) <= var_1.c).a));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b);
}

