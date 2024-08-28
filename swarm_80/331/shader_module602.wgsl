struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 11248i;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global0 = u_input.e;
    var var_0 = -1087f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1255f + 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-201f, -187f))) * -550f));
    var var_1 = Struct_1(min(select(reverseBits(max(vec4<i32>(27441i, u_input.a.x, 5837i, u_input.a.x), vec4<i32>(-2147483647i, -2147483647i, u_input.e, u_input.e))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.e, -16024i, -7534i, u_input.b.x)), select(vec4<i32>(u_input.a.x, u_input.b.x, 26365i, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, -1i, -1i), true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), any(vec3<bool>(false, true, false)))), vec4<i32>(u_input.a.x, ~select(0i, u_input.e, true), 0i, (-2147483647i << (u_input.d % 32u)) ^ 1i)), vec4<bool>(select(true, all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true)), !any(vec3<bool>(true, true, true)), !select(true, any(vec2<bool>(true, false)), select(false, false, true))), vec4<u32>(0u, 4294967295u, u_input.d ^ u_input.d, ~u_input.c.x), max(firstLeadingBit(u_input.d), reverseBits(_wgslsmith_add_u32(countOneBits(1u), firstLeadingBit(0u)))), select(select(~u_input.d <= (18848u >> (u_input.c.x % 32u)), true, !all(vec2<bool>(false, true))), !all(vec2<bool>(true, true)), !(!any(vec3<bool>(true, false, true)))));
    let var_2 = Struct_1(~_wgslsmith_sub_vec4_i32(var_1.a, _wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(-13910i, var_1.a.x, u_input.e, var_1.a.x)) | max(vec4<i32>(-2147483647i, u_input.e, u_input.a.x, var_1.a.x), vec4<i32>(0i, var_1.a.x, -18264i, u_input.e))), var_1.b, abs(select(~select(vec4<u32>(var_1.c.x, 1u, u_input.d, var_1.c.x), vec4<u32>(4294967295u, var_1.d, 0u, u_input.d), true), u_input.c, var_1.b)), u_input.d, true);
    return !select(select(!var_2.b, var_2.b, !(!vec4<bool>(var_2.e, true, true, false))), vec4<bool>(true, any(vec3<bool>(var_2.b.x, var_2.e, true)), var_2.b.x | true, true), !(var_2.e == (var_2.e & true)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.b, ~vec2<i32>(10729i, 19600i)), u_input.b) << (u_input.d % 32u);
    global0 = 34094i;
    var var_1 = Struct_1(reverseBits(vec4<i32>(_wgslsmith_sub_i32(u_input.e, u_input.a.x >> (27682u % 32u)), 2147483647i, 35118i, 2147483647i)), !(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), func_3(), true)), abs(u_input.c), reverseBits(~(~firstTrailingBit(u_input.c.x))), all(vec2<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(true, true, false, false)) | true)));
    var_1 = Struct_1(-vec4<i32>(_wgslsmith_dot_vec3_i32(~var_1.a.yyw, vec3<i32>(5483i, 22866i, var_1.a.x) | vec3<i32>(-3568i, var_1.a.x, var_1.a.x)), -1i, ~(-2147483647i), ~(u_input.e & -15095i)), select(vec4<bool>(true, all(select(vec2<bool>(var_1.e, true), vec2<bool>(var_1.b.x, false), var_1.b.x)), true, true), var_1.b, true), ~vec4<u32>(~u_input.c.x, 71025u, _wgslsmith_sub_u32(var_1.c.x, var_1.d), ~1u) & (_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.c.x, u_input.c.x, 0u, 4294967295u), firstLeadingBit(u_input.c), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u)) & ~u_input.c), ~var_1.c.x, var_1.e);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 545f))), -182f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2026f * _wgslsmith_f_op_f32(trunc(-860f)))))));
    return Struct_1(vec4<i32>(1i, -(~_wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(-48511i, 2147483647i, 0i, -5421i))), -(~select(-2147483647i, u_input.e, var_1.e)), var_1.a.x), !select(var_1.b, func_3(), vec4<bool>(var_1.b.x, false, all(var_1.b), var_1.e)), var_1.c, 1u, false);
}

fn func_1() -> vec4<i32> {
    var var_0 = func_2();
    var_0 = Struct_1(-var_0.a, var_0.b, vec4<u32>(u_input.c.x, 4294967295u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(abs(21239u), firstTrailingBit(var_0.d), var_0.d), ~0u), _wgslsmith_div_u32(_wgslsmith_mod_u32(28864u, u_input.c.x) | func_2().c.x, _wgslsmith_div_u32(5099u, select(4294967295u, var_0.c.x, var_0.b.x)))), firstTrailingBit(~4294967295u) | _wgslsmith_mult_u32(~(44236u | var_0.d), firstTrailingBit(select(var_0.d, var_0.c.x, true))), true);
    let var_1 = -2147483647i;
    var var_2 = ~_wgslsmith_mult_u32(1u & ~(76376u ^ var_0.c.x), max(firstTrailingBit(u_input.c.x), u_input.c.x & ~1u));
    global0 = var_0.a.x;
    return firstLeadingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(func_2().a), -(vec4<i32>(-13705i, -1i, -59031i, 42827i) >> (u_input.c % vec4<u32>(32u)))), vec4<i32>(func_2().a.x, 1i, var_0.a.x << (min(74230u, var_0.d) % 32u), var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = i32(-1i) * -2147483647i;
    global0 = ~countOneBits(1i);
    var var_0 = vec4<bool>(any(!vec2<bool>(all(vec4<bool>(false, false, true, true)), true)), all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, false, true), true)) && ((any(vec4<bool>(false, false, true, false)) & true) && false), all(vec4<bool>(!any(vec4<bool>(false, false, true, false)), true, true, max(u_input.d, 0u) > _wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.wy))), any(vec4<bool>(true, true, true, true)) | true);
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(26657u, u_input.c.x), u_input.c.x) & firstTrailingBit(23501u), 0u) << (14248u % 32u);
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-countOneBits(vec3<i32>(u_input.a.x, u_input.e, -49540i)), vec3<i32>(u_input.a.x, abs(0i), u_input.b.x)) & select(vec3<i32>(1i, firstTrailingBit(u_input.a.x), _wgslsmith_mult_i32(-1i, u_input.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(50046i, -54151i, 20618i) >> (u_input.c.yxz % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, 2320i), vec3<i32>(16028i, 29822i, 6206i))), var_0.x), (-(vec3<i32>(-53648i, u_input.b.x, u_input.a.x) >> (u_input.c.yxy % vec3<u32>(32u))) >> (~u_input.c.yww % vec3<u32>(32u))) >> (~u_input.c.wyy % vec3<u32>(32u)));
    var var_2 = 0u;
    var var_3 = Struct_1(func_1() & vec4<i32>((u_input.b.x ^ u_input.b.x) >> (u_input.d % 32u), _wgslsmith_dot_vec2_i32(-u_input.b, u_input.a), u_input.e, u_input.a.x), vec4<bool>(!var_0.x, !var_0.x, func_2().b.x, var_0.x), u_input.c, max(u_input.d, u_input.d), -26562i > -func_1().x);
    let var_4 = vec3<u32>(12159u, func_2().d, ~var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, reverseBits(firstTrailingBit(2147483647i))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.b.x), -1i), ~firstTrailingBit(u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1586f + -1911f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(630f * 464f) * 1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1042f * 2969f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(844f, 1566f, -2504f) * vec3<f32>(617f, 1000f, -539f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1129f, 102f, 455f), vec3<f32>(-1000f, 288f, 843f))), vec3<f32>(129f, -1845f, -349f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(1048f)), _wgslsmith_f_op_f32(trunc(-635f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), vec2<f32>(148f, _wgslsmith_f_op_f32(-729f * _wgslsmith_f_op_f32(-292f - -115f))));
}

