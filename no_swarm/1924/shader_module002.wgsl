struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -738f;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> vec2<u32> {
    var var_0 = Struct_1(firstTrailingBit(select(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -9513i), vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(11595i, u_input.a), vec2<i32>(-2147483647i, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 64206i))), vec2<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)), vec2<bool>(true, true))), min(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(u_input.a, 3626i, -7069i, 1i)), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 38096i, -27023i, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, -24631i))) ^ firstLeadingBit(select(vec4<i32>(0i, u_input.a, 4854i, -24952i), vec4<i32>(u_input.a, 35906i, u_input.a, 19264i), true) ^ reverseBits(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a))));
    var var_1 = Struct_1(vec2<i32>(u_input.a, 0i), var_0.b);
    let var_2 = true;
    var var_3 = Struct_1(var_1.b.xx, var_0.b);
    var_1 = Struct_1(~abs(_wgslsmith_clamp_vec2_i32(~var_0.b.zw, vec2<i32>(1i, 1i), vec2<i32>(63012i, 0i))), vec4<i32>(min(var_0.b.x, _wgslsmith_dot_vec3_i32(var_1.b.zwx, vec3<i32>(var_3.b.x, var_0.a.x, u_input.a)) << (arg_0 % 32u)), -5457i, -1728i, 13504i));
    return _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(arg_0, arg_0) | vec2<u32>(0u, 27126u), ~vec2<u32>(0u, arg_0)), vec2<u32>(arg_0, 36078u), abs(firstLeadingBit(vec2<u32>(18102u, 56307u)))), ~(~abs(vec2<u32>(32958u, arg_0)))), ~select(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(25723u, 0u)), countOneBits(vec2<u32>(arg_0, 60258u)), false && var_2) ^ ~firstTrailingBit(vec2<u32>(arg_0, arg_0) << (vec2<u32>(102198u, arg_0) % vec2<u32>(32u))));
}

fn func_2(arg_0: bool, arg_1: u32) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = ~(abs(vec3<i32>(-u_input.a, u_input.a & 0i, u_input.a ^ 46040i)) | vec3<i32>(-2147483647i, -57852i, u_input.a));
    var var_2 = select(~max(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 2094u) ^ vec2<u32>(var_0, arg_1), _wgslsmith_div_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(arg_1, arg_1))), func_3(var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 822f, 466f) + vec3<f32>(-1709f, 639f, -1584f)))), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0, arg_1, var_0)), ~vec3<u32>(arg_1, 33331u, var_0))), select(~vec2<u32>(140u, arg_1), ~vec2<u32>(2689u, 1u), true) << (vec2<u32>(~arg_1, arg_1) % vec2<u32>(32u))), vec2<bool>(arg_0, arg_0));
    let var_3 = 1i;
    let var_4 = arg_0;
    return ~(-(vec4<i32>(2147483647i, var_3, -1i, var_3) | (vec4<i32>(var_3, var_3, var_1.x, var_1.x) | vec4<i32>(u_input.a, 0i, u_input.a, -2147483647i))) | (-(vec4<i32>(29599i, var_1.x, u_input.a, -24160i) & vec4<i32>(2147483647i, var_1.x, -2887i, -45131i)) & -(~vec4<i32>(18266i, u_input.a, -2147483647i, var_3))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(arg_0, vec4<u32>(arg_1.x, 0u, _wgslsmith_dot_vec3_u32(max(arg_1, arg_1), select(arg_1, arg_1, vec3<bool>(false, false, true))), ~0u), func_2(any(vec3<bool>(true, true, true)), 4294967295u), Struct_1(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, -38459i), true), max(arg_0.b, arg_0.b)), -1000f));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.e)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1001f) * _wgslsmith_f_op_f32(var_0.a.e * var_0.a.e)), -1532f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(580f))), _wgslsmith_f_op_f32(min(-383f, -780f)))));
    global0 = _wgslsmith_f_op_f32(var_0.a.e - var_0.a.e);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.e))), var_0.a.e)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.e)))))));
    global0 = var_0.a.e;
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: i32, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_u32(4294967295u, 1u);
    var var_1 = Struct_2(Struct_1(arg_3.xz, abs(arg_0.a.b)), select(~arg_0.b, _wgslsmith_clamp_vec4_u32(~(vec4<u32>(43697u, 1u, 4294967295u, 1u) | vec4<u32>(1u, arg_1.x, 0u, arg_1.x)), select(_wgslsmith_clamp_vec4_u32(arg_1, arg_0.b, arg_0.b), arg_1, any(vec3<bool>(false, true, true))), arg_0.b), _wgslsmith_dot_vec2_i32(max(arg_3.zz, arg_3.zy), vec2<i32>(arg_2, u_input.a)) == arg_3.x), -vec4<i32>(1i, arg_3.x, -1i, -1i), func_1(Struct_1(~arg_3.xx, firstLeadingBit(vec4<i32>(u_input.a, u_input.a, arg_2, u_input.a))), select(~vec3<u32>(arg_0.b.x, 0u, arg_1.x), firstTrailingBit(arg_1.xzy), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), 0u < arg_0.b.x))).a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, -170f), arg_0.e)) * func_1(Struct_1(arg_3.yz, arg_0.c), arg_1.xyw).e))));
    var_0 = arg_0.b.x;
    var var_2 = func_1(func_1(func_1(var_1.a, arg_0.b.yyx).a, ~vec3<u32>(arg_1.x, ~arg_1.x, 31766u | arg_0.b.x)).a, ~_wgslsmith_add_vec3_u32(~vec3<u32>(10781u, 35038u, arg_0.b.x), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.x, 13054u, 8681u), arg_1.xyz)) & vec3<u32>(~abs(65941u), abs(arg_0.b.x) >> (1572u % 32u), arg_0.b.x)).a;
    var_0 = ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.b.x), vec2<u32>(11643u, 1u)) >> (~arg_1.x % 32u)));
    return Struct_3(Struct_2(var_1.d, vec4<u32>(~4294967295u, 18688u, var_1.b.x, max(50471u, ~80677u)), _wgslsmith_div_vec4_i32(-vec4<i32>(var_1.d.b.x, var_1.c.x, arg_0.d.a.x, arg_2), vec4<i32>(0i, -2147483647i, 35372i, var_2.a.x)) & (-arg_0.a.b ^ var_1.d.b), arg_0.d, _wgslsmith_f_op_f32(-arg_0.e)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_f32(min(arg_0.a.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.e - _wgslsmith_f_op_f32(1108f - 357f)))) * 1074f)));
    global0 = 381f;
    global0 = _wgslsmith_f_op_f32(arg_3.a.e * 1940f);
    let var_0 = _wgslsmith_clamp_u32(15766u, ~func_3(_wgslsmith_clamp_u32(4294967295u, 17449u, _wgslsmith_sub_u32(28166u, arg_0.a.b.x)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e, 1000f, arg_3.a.e) - vec3<f32>(arg_1.e, -1192f, 1399f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-683f, arg_1.e, -421f)), true))).x, ~(arg_0.a.b.x ^ ~arg_1.b.x));
    var var_1 = Struct_3(Struct_2(Struct_1(abs(arg_3.a.d.a << (arg_1.b.yw % vec2<u32>(32u))), arg_3.a.d.b), select(~vec4<u32>(2881u, 0u, arg_0.a.b.x, arg_0.a.b.x), _wgslsmith_clamp_vec4_u32(arg_1.b | arg_1.b, arg_3.a.b, vec4<u32>(arg_3.a.b.x, arg_3.a.b.x, arg_0.a.b.x, 4294967295u)), arg_1.e <= -1748f), vec4<i32>(abs(u_input.a), firstLeadingBit(_wgslsmith_dot_vec4_i32(arg_3.a.a.b, arg_1.a.b)), 2147483647i, _wgslsmith_dot_vec3_i32(arg_0.a.d.b.zyw, firstLeadingBit(vec3<i32>(73359i, 1i, arg_0.a.c.x)))), arg_0.a.a, _wgslsmith_f_op_f32(min(-717f, arg_3.a.e))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(892f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.e * _wgslsmith_f_op_f32(787f + arg_3.a.e)) - _wgslsmith_f_op_f32(-arg_0.a.e))), -1233f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(func_1(Struct_1(vec2<i32>(-4536i, -40371i), vec4<i32>(38371i, 2147483647i, u_input.a, u_input.a)), vec3<u32>(46415u, 16597u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), -u_input.a, -vec3<i32>(u_input.a, u_input.a, 24185i)), Struct_2(Struct_1(vec2<i32>(u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, 4701i, 2147483647i)), vec4<u32>(1u, 1u, 1u, 1u), select(vec4<i32>(u_input.a, -46326i, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, true, true)), func_1(Struct_1(vec2<i32>(0i, u_input.a), vec4<i32>(-108071i, 21708i, 26122i, 2147483647i)), vec3<u32>(4294967295u, 16245u, 4294967295u)).a, _wgslsmith_div_f32(-1377f, 248f)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)), func_4(Struct_2(Struct_1(vec2<i32>(u_input.a, -72370i), vec4<i32>(u_input.a, -2147483647i, u_input.a, 0i)), vec4<u32>(23791u, 41579u, 70165u, 1u), vec4<i32>(u_input.a, u_input.a, u_input.a, -21050i), Struct_1(vec2<i32>(u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)), -1431f), vec4<u32>(64365u, 24023u, 1u, 0u), func_2(false, 0u).x, vec3<i32>(2147483647i, -1i, 2147483647i) ^ vec3<i32>(23928i, u_input.a, u_input.a))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(Struct_2(Struct_1(vec2<i32>(u_input.a, -12275i), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)), vec4<u32>(107961u, 0u, 39196u, 36117u), vec4<i32>(3639i, u_input.a, -1i, -1i), Struct_1(vec2<i32>(-42210i, -28134i), vec4<i32>(u_input.a, u_input.a, u_input.a, 2587i)), 531f), vec4<u32>(4294967295u, 36949u, 1u, 8881u), u_input.a, vec3<i32>(u_input.a, u_input.a, u_input.a)).a.e, 847f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1701f, -1000f, false)), _wgslsmith_f_op_f32(min(-173f, -302f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2900f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(Struct_2(Struct_1(vec2<i32>(58465i, u_input.a), vec4<i32>(u_input.a, 0i, 0i, 1i)), vec4<u32>(4294967295u, 1u, 31725u, 63337u), vec4<i32>(u_input.a, -61288i, u_input.a, -2147483647i), Struct_1(vec2<i32>(0i, 8898i), vec4<i32>(u_input.a, 0i, u_input.a, -1i)), 911f), vec4<u32>(4294967295u, 38606u, 32473u, 1u), u_input.a, vec3<i32>(u_input.a, -1i, -1i)).a.e) + _wgslsmith_f_op_f32(sign(-613f)))));
    global0 = -2389f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-142f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(524f, -292f)))), _wgslsmith_clamp_u32(~func_4(func_1(Struct_1(vec2<i32>(-10157i, -40056i), vec4<i32>(u_input.a, -2147483647i, -30444i, u_input.a)), vec3<u32>(30374u, 0u, 4294967295u)), vec4<u32>(26272u, 4294967295u, 4294967295u, 4294967295u), -2147483647i, vec3<i32>(1i, 1i, 1i)).a.b.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(61294u, 22271u) << (1u % 32u), func_4(func_4(Struct_2(Struct_1(vec2<i32>(51819i, -35375i), vec4<i32>(u_input.a, u_input.a, u_input.a, 24188i)), vec4<u32>(112779u, 13722u, 32471u, 28810u), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(vec2<i32>(-476i, 43818i), vec4<i32>(2147483647i, u_input.a, 1i, -2147483647i)), 1533f), vec4<u32>(0u, 45861u, 104778u, 68925u), -25809i, vec3<i32>(u_input.a, -2147483647i, 1i)).a, vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_dot_vec2_i32(vec2<i32>(21356i, u_input.a), vec2<i32>(u_input.a, u_input.a)), -vec3<i32>(29024i, -1i, u_input.a)).a.b.x), _wgslsmith_div_u32(~(~0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(43004u, 36285u), vec2<u32>(11634u, 1u)))));
}

