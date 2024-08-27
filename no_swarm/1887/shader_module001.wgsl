struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<i32>, 21>();
    global0 = array<vec3<i32>, 21>();
    let var_0 = Struct_3(Struct_2(Struct_1(vec4<i32>(0i, _wgslsmith_clamp_i32(2147483647i, 15318i, u_input.b), u_input.b, u_input.b)), Struct_1(vec4<i32>(firstTrailingBit(19932i), i32(-1i) * -35228i, ~(-41032i), countOneBits(-13319i))), Struct_1(abs(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b)) & vec4<i32>(-78833i, -102680i, u_input.b, 41745i)), ~(~32861u), Struct_1(firstTrailingBit(-vec4<i32>(-2147483647i, u_input.b, -17274i, -2147483647i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(360f, -391f))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-2226f)), _wgslsmith_f_op_f32(trunc(328f))))));
    global0 = array<vec3<i32>, 21>();
    let var_1 = _wgslsmith_mult_i32(34947i, -1i);
    return var_0.a.a;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<bool>) -> vec2<f32> {
    global0 = array<vec3<i32>, 21>();
    let var_0 = !arg_2.x == arg_2.x;
    var var_1 = _wgslsmith_mod_vec2_i32(~vec2<i32>(arg_0, 0i) << (~u_input.a.zy % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(countOneBits(firstTrailingBit(vec2<i32>(42390i, u_input.b))), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-2147483647i, u_input.b)), firstTrailingBit(vec2<i32>(arg_0, 2147483647i)) | ~vec2<i32>(-2147483647i, arg_0))));
    var_1 = vec2<i32>(-1i, ~(~28339i));
    var var_2 = Struct_2(func_2(), Struct_1(vec4<i32>(~(var_1.x >> (0u % 32u)), max(u_input.b, var_1.x), -_wgslsmith_add_i32(var_1.x, 0i), abs(_wgslsmith_add_i32(-20635i, -15273i)))), func_2(), _wgslsmith_add_u32(1u & min(4294967295u, u_input.a.x), select(1u, _wgslsmith_mod_u32(u_input.a.x, arg_1), true)) << (u_input.a.x % 32u), func_2());
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-336f, -862f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(956f, 938f) - vec2<f32>(-563f, -702f))))))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))));
    global0 = array<vec3<i32>, 21>();
    var var_1 = Struct_3(Struct_2(Struct_1(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(841i, -1i, u_input.b, 0i), vec4<i32>(u_input.b, -1i, -9613i, 1i), vec4<i32>(u_input.b, -30192i, 19987i, u_input.b)), max(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec4<i32>(1i, -55300i, 2147483647i, -26824i)), true)), Struct_1(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec4<bool>(false, false, true, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 0i, 0i, u_input.b), vec4<i32>(0i, u_input.b, u_input.b, 45736i)))), Struct_1(vec4<i32>(1i, 1i, 1i, 1i) ^ vec4<i32>(u_input.b, u_input.b, -25424i, -1i)), _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_div_u32(0u, 1u)), arg_0.x), func_2()), _wgslsmith_f_op_vec2_f32(func_3(u_input.b << (u_input.a.x % 32u), ~(arg_0.x | ~4294967295u), vec4<bool>(true, true, true, !any(vec4<bool>(false, false, true, true))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(1402i, ~_wgslsmith_div_u32(var_1.a.d, 1u), select(vec4<bool>(true, true, true, any(vec4<bool>(false, true, false, false))), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)))).x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(936f + -417f)), _wgslsmith_f_op_f32(var_1.b.x - -1138f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(1177f, 1487f)) * -1151f), var_1.b.x)));
    var_0 = var_1.b.x;
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    global0 = array<vec3<i32>, 21>();
    var var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(-(1i ^ -arg_1.a.a.a.x), abs(9121i)), -2147483647i);
    var var_1 = ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, arg_1.a.d, arg_1.a.d, u_input.a.x), vec4<u32>(u_input.a.x, arg_1.a.d, 4294967295u, 4294967295u)))) & abs(1u);
    var var_2 = countOneBits(~u_input.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-887f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.x))), -780f, -990f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(2109f, 820f, true)), arg_1.b.x, _wgslsmith_f_op_f32(arg_1.b.x * -367f), _wgslsmith_f_op_f32(abs(783f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 1000f, -1205f, arg_1.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.x, 1000f, 747f, 817f), vec4<f32>(arg_1.b.x, 843f, arg_1.b.x, arg_1.b.x), vec4<bool>(false, false, false, false))))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b.x, _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x), arg_1.b.x, _wgslsmith_div_f32(401f, arg_1.b.x)))), select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(!(-897f != arg_1.b.x), any(vec4<bool>(true, true, false, false)), true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var var_1 = Struct_2(func_4(Struct_2(func_1(u_input.a >> (u_input.a % vec3<u32>(32u))), Struct_1(reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, -1i))), func_1(vec3<u32>(4294967295u, 1u, u_input.a.x)), 73272u, Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.b, -69795i) & vec4<i32>(38688i, 0i, u_input.b, u_input.b))), Struct_3(Struct_2(func_1(u_input.a), Struct_1(vec4<i32>(14049i, u_input.b, u_input.b, u_input.b)), Struct_1(vec4<i32>(52809i, u_input.b, u_input.b, u_input.b)), ~u_input.a.x, Struct_1(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-533f, -925f)))))), Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -1i, u_input.b), vec4<i32>(u_input.b, 0i, 42847i, u_input.b)), vec4<i32>(-2147483647i, -14711i, -52306i, -1i)), min(-23160i & u_input.b, abs(44854i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, 39180i), vec3<i32>(u_input.b, -20202i, u_input.b)) ^ -2147483647i, min(-u_input.b, -82827i & u_input.b))), Struct_1(countOneBits(vec4<i32>(_wgslsmith_sub_i32(u_input.b, -2147483647i), _wgslsmith_add_i32(u_input.b, -1i), -2147483647i, 0i | u_input.b))), _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, min(37134u, ~u_input.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(15707u, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 0u)), vec4<u32>(u_input.a.x, u_input.a.x, abs(u_input.a.x), _wgslsmith_add_u32(u_input.a.x, u_input.a.x)))), func_2());
    var var_2 = vec3<u32>(u_input.a.x, _wgslsmith_div_u32(min(_wgslsmith_sub_u32(var_1.d, ~25475u), 1u), _wgslsmith_dot_vec2_u32(~(vec2<u32>(30829u, var_1.d) | vec2<u32>(4294967295u, 4802u)), u_input.a.yx)), ~u_input.a.x);
    var var_3 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(51967u, 1u), var_1.d, ~21141u, 0u >> (var_1.d % 32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, 1u) ^ vec4<u32>(var_1.d, 11451u, 4294967295u, u_input.a.x), vec4<u32>(u_input.a.x, 7577u, u_input.a.x, var_2.x) | vec4<u32>(4294967295u, var_1.d, 36888u, 0u))), max(~var_1.d, firstTrailingBit(var_2.x)) << (u_input.a.x % 32u)), _wgslsmith_mult_u32(~var_1.d, 59456u), ~var_1.d);
    var_3 = 50798u;
    var_1 = Struct_2(func_4(Struct_2(func_1(reverseBits(u_input.a)), Struct_1(~vec4<i32>(29483i, var_1.c.a.x, -32379i, 2147483647i)), Struct_1(var_1.e.a), ~1u, Struct_1(var_1.b.a)), Struct_3(Struct_2(Struct_1(var_1.b.a), func_1(vec3<u32>(42027u, 11879u, var_2.x)), var_1.e, _wgslsmith_clamp_u32(24467u, 0u, var_2.x), func_1(u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-635f, 2188f)) + vec2<f32>(-1357f, -212f)))), Struct_1(~(-vec4<i32>(var_1.b.a.x, u_input.b, u_input.b, 2147483647i)) ^ vec4<i32>(u_input.b, -23390i, _wgslsmith_mult_i32(1i, var_1.e.a.x), 5845i)), var_1.c, 0u, Struct_1(vec4<i32>(-1i) * -var_1.c.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1525f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1589f, -289f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2303f), _wgslsmith_f_op_f32(abs(-1773f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_3(func_4(Struct_2(Struct_1(vec4<i32>(-3032i, -1i, u_input.b, u_input.b)), var_1.e, Struct_1(var_1.a.a), 22655u, Struct_1(var_1.b.a)), Struct_3(Struct_2(Struct_1(var_1.b.a), var_1.e, Struct_1(var_1.a.a), u_input.a.x, Struct_1(vec4<i32>(var_1.c.a.x, u_input.b, 2147483647i, var_1.e.a.x))), vec2<f32>(104f, -767f))).a.x, u_input.a.x, vec4<bool>(any(vec3<bool>(false, true, false)), true, true, false))).x)));
}

