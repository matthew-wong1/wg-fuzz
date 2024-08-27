struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> f32 {
    var var_0 = 7819u;
    var_0 = arg_0;
    var var_1 = Struct_1(max(max(arg_2.a, arg_2.a), _wgslsmith_mult_vec4_i32(-arg_2.a << ((vec4<u32>(4294967295u, global0.x, 53302u, 6064u) >> (vec4<u32>(arg_0, 15160u, 4294967295u, 24832u) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_2.a)), arg_2.b);
    global0 = firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.x, ~1u), ~abs(arg_0)), 38852u, _wgslsmith_add_u32(1u, u_input.c)));
    var_0 = 0u;
    return -1000f;
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_1(~(vec4<i32>(-1i) * -min(vec4<i32>(-45876i, 0i, -2147483647i, 7732i), vec4<i32>(-34872i, -41960i, u_input.b, -2147483647i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(298f, _wgslsmith_f_op_f32(min(-892f, 269f)), 714f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(172f, -286f, 335f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(749f, -583f, 150f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(746f, 617f, 521f) - vec3<f32>(604f, -797f, 943f)))))));
    global0 = countOneBits(arg_0.xyw);
    let var_1 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<i32>(u_input.b, i32(-1i) * -58073i, -u_input.b, u_input.b)), -vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.a, var_0.a), -1i, ~u_input.b, var_0.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-483f, var_0.b.x, _wgslsmith_f_op_f32(sign(1465f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(global0.x, false, var_0)), _wgslsmith_f_op_f32(var_0.b.x * -1534f), _wgslsmith_div_f32(-1572f, var_0.b.x)), var_0.b)));
    global0 = abs(arg_0.yxz);
    var var_2 = Struct_1(select(((var_0.a << (vec4<u32>(132686u, u_input.c, arg_0.x, 34176u) % vec4<u32>(32u))) << (~vec4<u32>(global0.x, global0.x, 35453u, 16794u) % vec4<u32>(32u))) | (vec4<i32>(-1i) * -var_0.a), var_1.a, vec4<bool>(select(true, true, arg_0.x < u_input.a.x), true, any(vec4<bool>(true, true, true, true)), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1184f)), -543f), _wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_f_op_f32(func_3(56426u, true, var_0))) - vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(1809f - var_1.b.x), var_0.b.x)));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(~(~global0.x), 1u, 1u), abs(reverseBits(vec3<u32>(15514u, arg_0.x, u_input.c)))) | _wgslsmith_mult_u32(23909u, ~arg_0.x);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    global0 = vec3<u32>(_wgslsmith_mod_u32(~max(51973u, u_input.a.x), func_2(~vec4<u32>(38807u, 26547u, 11110u, u_input.c))), 1u, _wgslsmith_add_u32(42113u, u_input.c)) | vec3<u32>(firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_mult_u32(262u, u_input.c), 24678u)), firstLeadingBit(~(~global0.x)), 4294967295u);
    global0 = _wgslsmith_div_vec3_u32(vec3<u32>(0u, ~min(_wgslsmith_sub_u32(8297u, global0.x), min(79880u, u_input.c)), u_input.a.x), ~min((vec3<u32>(global0.x, 4294967295u, global0.x) ^ vec3<u32>(u_input.c, 36092u, 4294967295u)) >> (~vec3<u32>(4294967295u, global0.x, 3965u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(22504u, global0.x, 0u), vec3<u32>(30342u, 1u, global0.x)) << (vec3<u32>(u_input.c, 1868u, global0.x) % vec3<u32>(32u))));
    var var_0 = Struct_1(~((vec4<i32>(-1i) * -vec4<i32>(arg_1, 0i, -12385i, arg_0.a.x)) << ((~vec4<u32>(0u, 4294967295u, global0.x, global0.x) >> (~vec4<u32>(0u, 61706u, 0u, 119575u) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(105f, arg_0.b.x, 1333f)))))));
    let var_1 = vec2<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)) * _wgslsmith_div_f32(arg_0.b.x, -470f)) > 2812f), true);
    var var_2 = arg_0;
    return 112503u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(0u, 0u, global0.x)), vec3<u32>(u_input.c, u_input.c, 27842u)), _wgslsmith_mod_u32(~global0.x, ~1u), u_input.c)), vec3<u32>(1u, u_input.c, _wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, u_input.a.x, 25306u, 0u), vec4<u32>(4294967295u, 0u, u_input.c, global0.x)), ~vec4<u32>(1u, 4294967295u, u_input.c, 0u), vec4<bool>(false, true, true, false)), vec4<u32>(~global0.x, func_1(Struct_1(vec4<i32>(41848i, u_input.b, -5909i, 64518i), vec3<f32>(-2333f, -540f, -1467f)), u_input.b, vec4<f32>(829f, 1000f, 503f, -330f)), ~u_input.a.x, _wgslsmith_clamp_u32(23447u, u_input.c, 4294967295u)))), vec3<u32>(~(~_wgslsmith_clamp_u32(11995u, global0.x, global0.x)), 1u, _wgslsmith_sub_u32(u_input.a.x, abs(global0.x)) >> (1u % 32u)));
    let var_0 = select(~global0.x & global0.x, ~0u, true);
    global0 = ~abs(~(~reverseBits(vec3<u32>(0u, 1u, 4294967295u))));
    global0 = vec3<u32>(~(11692u << (var_0 % 32u)), var_0, _wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c, u_input.a.x, global0.x), vec4<u32>(4294967295u, global0.x, 2719u, 4746u)), select(vec4<u32>(95066u, 4294967295u, 1u, u_input.c), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), vec4<u32>(~var_0, u_input.a.x, _wgslsmith_sub_u32(4294967295u, 11650u), firstLeadingBit(var_0))) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, ~u_input.a), abs(vec2<u32>(0u, global0.x))) % 32u));
    global0 = abs(reverseBits(vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_0), 1u | var_0, 4294967295u) | vec3<u32>(~u_input.c, global0.x, ~u_input.c)));
    global0 = vec3<u32>(104751u, ~var_0, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, 96666u, global0.x), vec3<u32>(_wgslsmith_sub_u32(4294967295u, var_0), var_0, _wgslsmith_sub_u32(4294967295u, 25786u))) >> (~vec3<u32>(var_0, var_0, firstLeadingBit(u_input.a.x)) % vec3<u32>(32u)), _wgslsmith_div_f32(1000f, -2454f), reverseBits(u_input.b), _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, ~reverseBits(global0.x)), 0u), vec3<i32>(-8745i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(firstLeadingBit(-28977i), u_input.b, u_input.b << (global0.x % 32u)), -2901i), -_wgslsmith_add_i32(~u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.b))));
}

