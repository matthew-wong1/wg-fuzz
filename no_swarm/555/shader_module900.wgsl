struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -587f), 119f, 1f) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-221f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-955f * 645f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(758f - -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(820f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(280f, 628f, false)))), _wgslsmith_f_op_f32(sign(-441f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - 1454f), var_0.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.x))))), _wgslsmith_f_op_f32(abs(-104f)))));
    let var_1 = Struct_1(vec3<i32>(u_input.c, i32(-1i) * -arg_0, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, u_input.c, -6359i)), vec3<i32>(countOneBits(-2147483647i), firstLeadingBit(-1i), i32(-1i) * -1313i))), _wgslsmith_mult_i32(arg_0, arg_0) & -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 2095i, u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(19941i, 1i, u_input.c), vec3<i32>(-2147483647i, 1i, arg_0))), -_wgslsmith_dot_vec3_i32((vec3<i32>(u_input.c, -42485i, u_input.c) & vec3<i32>(-3307i, arg_0, 36252i)) ^ vec3<i32>(1i, -13157i, u_input.c), vec3<i32>(_wgslsmith_mult_i32(2147483647i, 0i), u_input.c, i32(-1i) * -2147483647i)));
    let var_2 = min(_wgslsmith_div_vec2_i32(var_1.a.xy, _wgslsmith_add_vec2_i32(select(var_1.a.xz, vec2<i32>(var_1.c, -42109i), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), ~var_1.a.zy >> (~vec2<u32>(0u, 3500u) % vec2<u32>(32u)))), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-var_1.a, vec3<i32>(u_input.c, -1i, 2147483647i) ^ var_1.a), var_1.a.x), u_input.c));
    let var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(~5802i, ~arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-42134i, 14623i, -1i), vec3<i32>(var_2.x, arg_0, u_input.c))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(var_1.a, var_1.a), -var_1.a)), var_2.x, select(arg_0, _wgslsmith_div_i32(var_1.c, arg_0), any(vec2<bool>(true, true)))), select(!vec2<bool>(true, all(vec4<bool>(false, true, false, true))), vec2<bool>(true, (i32(-1i) * -2147483647i) <= (-5984i | arg_0)), any(vec3<bool>(true, true, true))));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    let var_0 = 1f;
    let var_1 = Struct_2(arg_0, select(!select(vec2<bool>(false, false), vec2<bool>(false, true), all(vec4<bool>(true, true, false, false))), select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, false)), true), vec2<bool>(true, true)), arg_1.x >= arg_1.x));
    let var_2 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(var_1.a.a, var_1.a.a), -2147483647i, i32(-1i) * -arg_1.x), var_1.b);
    var var_3 = !select(select(!(!var_2.b), vec2<bool>(true, true), var_1.b.x), vec2<bool>(true, select(all(vec3<bool>(var_2.b.x, var_1.b.x, false)), var_1.b.x, !var_1.b.x)), !select(var_1.b, vec2<bool>(var_1.b.x, var_1.b.x), select(var_1.b, vec2<bool>(false, false), var_2.b.x)));
    var_3 = select(var_2.b, select(!(!var_2.b), var_2.b, vec2<bool>(!var_1.b.x & true, select(true, func_3(43582i), true))), !select(vec2<bool>(!var_2.b.x, true), select(select(vec2<bool>(false, true), vec2<bool>(false, var_2.b.x), var_1.b), select(vec2<bool>(false, var_3.x), vec2<bool>(true, false), false), select(var_1.b, vec2<bool>(true, var_2.b.x), var_2.b)), false));
    return true;
}

fn func_1(arg_0: vec2<u32>) -> vec2<f32> {
    var var_0 = Struct_1(-select(reverseBits(vec3<i32>(u_input.c, u_input.c, 1903i)), ~countOneBits(vec3<i32>(0i, -1i, u_input.c)), vec3<bool>(func_2(Struct_1(vec3<i32>(u_input.c, -2147483647i, -2147483647i), 2147483647i, -1i), vec3<i32>(22600i, -1i, u_input.c)), false, true)), ~(58013i << (~firstLeadingBit(u_input.a) % 32u)), ~_wgslsmith_mod_i32(-countOneBits(u_input.c), ~7016i | u_input.c));
    let var_1 = Struct_1(-(~(~var_0.a)) >> (((vec3<u32>(u_input.b.x, u_input.b.x, u_input.d) | vec3<u32>(4294967295u, arg_0.x, 1u)) >> (vec3<u32>(~u_input.a, arg_0.x >> (arg_0.x % 32u), 32513u) % vec3<u32>(32u))) % vec3<u32>(32u)), reverseBits(~var_0.c), u_input.c);
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(firstLeadingBit(var_0.a), countOneBits(max(var_1.a, var_0.a))), -(~max(var_1.a.x, var_1.b)), -_wgslsmith_div_i32(~var_0.b, 1i)), vec2<bool>(func_2(var_1, ~vec3<i32>(var_0.a.x, -2147483647i, 0i)) && (_wgslsmith_f_op_f32(sign(255f)) <= _wgslsmith_f_op_f32(trunc(-1262f))), !func_2(var_1, -vec3<i32>(u_input.c, u_input.c, var_1.a.x))));
    let var_3 = vec3<bool>(all(!select(select(vec4<bool>(true, true, false, var_2.b.x), vec4<bool>(true, true, var_2.b.x, var_2.b.x), vec4<bool>(false, true, true, var_2.b.x)), !vec4<bool>(var_2.b.x, true, true, var_2.b.x), select(false, true, true))), !any(!select(vec4<bool>(var_2.b.x, var_2.b.x, true, var_2.b.x), vec4<bool>(false, false, var_2.b.x, var_2.b.x), true)), var_2.b.x);
    var_0 = var_2.a;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-960f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-879f - 626f))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.c;
    var var_1 = Struct_2(Struct_1(~(-vec3<i32>(var_0, -2147483647i, -17692i)), -var_0, -u_input.c), vec2<bool>(true, false));
    var var_2 = !func_2(var_1.a, var_1.a.a);
    var_2 = false;
    var_1 = Struct_2(Struct_1(vec3<i32>(var_1.a.c, ~(i32(-1i) * -32301i), _wgslsmith_add_i32(firstTrailingBit(2147483647i), select(-97334i, u_input.c, true))), var_0, 19626i), !var_1.b);
    return Struct_1(~var_1.a.a, -21899i, max(firstLeadingBit(var_1.a.b), 8173i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(countOneBits(min(-(~vec3<i32>(1i, 20668i, u_input.c)), min(-vec3<i32>(-1i, u_input.c, u_input.c), abs(vec3<i32>(u_input.c, 32507i, u_input.c))))), u_input.c, -(u_input.c << (~1u % 32u)));
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(~u_input.a, u_input.a >> (27766u % 32u)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -933f), 1f))));
    var_0 = Struct_1(-var_0.a, 2147483647i, -2520i);
    var var_1 = Struct_2(Struct_1(-select(vec3<i32>(-1i, u_input.c, u_input.c), var_0.a, any(vec2<bool>(true, false))), _wgslsmith_div_i32(_wgslsmith_div_i32(1i, -148i), 42904i), _wgslsmith_dot_vec2_i32(vec2<i32>(~0i, u_input.c), abs(var_0.a.xz))), vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), true));
    let var_2 = -vec3<i32>((u_input.c & var_0.c) << (~1u % 32u), _wgslsmith_dot_vec3_i32(var_1.a.a, vec3<i32>(u_input.c, var_0.b, -12048i)), 1i) ^ vec3<i32>(var_0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(19694i, 17888i, var_0.a.x, -1235i) | select(vec4<i32>(u_input.c, 15933i, 8453i, -30352i), vec4<i32>(-2147483647i, var_0.c, -40977i, u_input.c), vec4<bool>(true, false, var_1.b.x, false)), -(vec4<i32>(-1i, var_1.a.a.x, 7966i, var_1.a.c) | vec4<i32>(var_1.a.c, var_0.c, u_input.c, u_input.c))), _wgslsmith_sub_i32(~0i, -1i) << (~(u_input.b.x ^ u_input.a) % 32u));
    var var_3 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -504f) - vec2<f32>(1913f, -1628f)))))), vec2<bool>(var_1.b.x, !(!var_1.b.x)));
    var_0 = func_4(vec2<f32>(_wgslsmith_div_f32(-155f, _wgslsmith_div_f32(-1663f, _wgslsmith_f_op_f32(round(2444f)))), _wgslsmith_f_op_f32(max(-1274f, _wgslsmith_f_op_f32(min(814f, _wgslsmith_f_op_f32(step(-597f, -171f))))))));
    var var_4 = abs(~_wgslsmith_clamp_vec3_u32(u_input.b.yxy, ~vec3<u32>(u_input.a, u_input.d, 20998u), ~_wgslsmith_mod_vec3_u32(u_input.b.zyw, u_input.b.zzw)));
    let var_5 = Struct_2(Struct_1(-vec3<i32>(1i, countOneBits(15998i), ~1i), firstLeadingBit(abs(abs(0i))), var_0.a.x), select(vec2<bool>(false, true), select(var_3.b, !vec2<bool>(var_1.b.x, var_1.b.x), true), ((var_1.b.x || true) & false) & var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.a);
}

