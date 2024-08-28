struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_4,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: vec3<f32>) -> vec3<bool> {
    let var_0 = vec4<bool>(false, false, all(arg_0.d.xy), arg_0.d.x);
    let var_1 = Struct_4(arg_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.c.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.xy), vec2<f32>(-1000f, 1760f), arg_0.c.d.a.x > 2147483647i))))), 0i > abs(_wgslsmith_add_i32(-arg_0.c.d.a.x, 2578i >> (u_input.c % 32u))), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(32950i, u_input.a, 1i), arg_0.a.d.a, arg_0.a.d.a) >> (select(vec3<u32>(u_input.c, 50287u, u_input.c) | vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(u_input.c, 80317u, u_input.d), arg_0.a.c) % vec3<u32>(32u))));
    let var_2 = arg_0.c.d;
    let var_3 = Struct_5(Struct_4(_wgslsmith_div_f32(518f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -894f) - -295f), arg_2.x), arg_0.a.c, Struct_1(vec3<i32>(countOneBits(var_1.d.a.x), 1i, -1i))), arg_0.a.a, Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.x, 1991f))), _wgslsmith_f_op_f32(f32(-1f) * -352f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -619f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(445f + 890f) * arg_0.b)), var_1.c, Struct_1(var_1.d.a)), select(arg_0.d, var_0.yyz, true));
    let var_4 = ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(27139u, u_input.c), vec2<u32>(30662u, 34426u), arg_0.d.x), min(vec2<u32>(u_input.c, u_input.d), vec2<u32>(u_input.d, 0u))), 0u));
    return vec3<bool>(true, abs(arg_1) > var_3.c.d.a.x, var_2.a.x <= (~(~arg_0.a.d.a.x) << (var_4.x % 32u)));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = ~u_input.c >> ((4294967295u >> (~(u_input.c << (~u_input.d % 32u)) % 32u)) % 32u);
    var var_1 = !select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)), true), vec4<bool>(true, true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))), any(vec4<bool>(true, false, true, true)) | all(func_3(Struct_5(Struct_4(arg_0, vec2<f32>(arg_0, arg_0), false, Struct_1(vec3<i32>(-1i, u_input.b, 38669i))), -290f, Struct_4(arg_0, vec2<f32>(-863f, -1156f), false, Struct_1(vec3<i32>(-19001i, 0i, u_input.b))), vec3<bool>(true, false, true)), u_input.a, vec3<f32>(arg_0, -298f, -675f))));
    var_1 = vec4<bool>(var_1.x, _wgslsmith_mod_i32(u_input.b, -1i) != -36080i, var_1.x, !var_1.x);
    let var_2 = ~max(-u_input.a, ~_wgslsmith_add_i32(u_input.a, -1i) & 81104i);
    let var_3 = ~var_0;
    return _wgslsmith_f_op_f32(-1772f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))));
}

fn func_1(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(1163f, 1000f))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(872f)) - _wgslsmith_f_op_f32(400f + -588f)))))));
    var_0 = 282f;
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -28700i, u_input.b) << ((vec3<u32>(155576u, 23012u, u_input.d) >> (vec3<u32>(97545u, u_input.d, u_input.d) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(-vec3<i32>(-14735i, u_input.a, u_input.a), vec3<i32>(-1i, -15975i, u_input.a))), 0i & min(-2147483647i, u_input.a >> (49622u % 32u))), 2147483647i, _wgslsmith_clamp_i32(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -632i), vec2<i32>(-2387i, 6244i))) ^ (0i | select(u_input.b, u_input.a, arg_0.x)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, u_input.b), ~u_input.b), _wgslsmith_mod_i32(_wgslsmith_mult_i32(26859i, 0i), u_input.b), u_input.a), -u_input.a));
    var var_2 = ~max(~vec4<u32>(17680u, _wgslsmith_clamp_u32(4294967295u, u_input.d, 1u), u_input.d, ~u_input.c), select(~(~vec4<u32>(u_input.d, 0u, 1u, 44095u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.c, u_input.d), vec4<u32>(u_input.d, u_input.d, 22656u, u_input.d)), true));
    var var_3 = ~(~vec4<u32>(~(~4294967295u), 69644u, u_input.d, abs(var_2.x)));
    return vec2<f32>(-1283f, 1618f);
}

fn func_4(arg_0: vec2<f32>) -> Struct_5 {
    let var_0 = 28207u;
    let var_1 = arg_0.x;
    var var_2 = Struct_3(vec3<i32>(~(~select(u_input.a, u_input.b, false)), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(0i), u_input.b, _wgslsmith_mod_i32(-2147483647i, u_input.a), -1i), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, -1i, u_input.a, 46380i)), ~vec4<i32>(u_input.a, u_input.b, 0i, -1i))), u_input.a), select(vec3<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), select(vec3<bool>(true, true, true), func_3(Struct_5(Struct_4(arg_0.x, arg_0, true, Struct_1(vec3<i32>(u_input.a, -33728i, u_input.a))), arg_0.x, Struct_4(var_1, arg_0, false, Struct_1(vec3<i32>(u_input.b, -23272i, u_input.a))), vec3<bool>(true, true, false)), firstLeadingBit(u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(135f, arg_0.x, var_1))), true & func_3(Struct_5(Struct_4(arg_0.x, vec2<f32>(arg_0.x, 777f), true, Struct_1(vec3<i32>(u_input.b, 2147483647i, -15707i))), arg_0.x, Struct_4(-106f, arg_0, false, Struct_1(vec3<i32>(u_input.a, u_input.b, 0i))), vec3<bool>(false, true, false)), 2147483647i, vec3<f32>(-1000f, var_1, 2272f)).x), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, var_1, 1f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -781f, 1482f))));
    let var_3 = Struct_1(firstLeadingBit(firstTrailingBit(var_2.a)));
    let var_4 = vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-u_input.a, u_input.a, u_input.a), 1i), var_3.a.x, -firstTrailingBit(i32(-1i) * -13062i), u_input.a);
    return Struct_5(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_1, 2062f))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.c.x, _wgslsmith_f_op_f32(floor(var_1))))), !(!(true && var_2.b.x)), var_3), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(217f)))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -427f) + -702f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.c.zy * vec2<f32>(538f, var_1)) + vec2<f32>(arg_0.x, 477f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(703f, var_2.c.x))), true, var_3), !(!vec3<bool>(true, any(var_2.b), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1218f, -1087f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1247f, -116f) - vec2<f32>(1589f, -607f))))), _wgslsmith_f_op_vec2_f32(func_1(vec3<bool>(u_input.c < u_input.d, false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer((u_input.d | _wgslsmith_add_u32(_wgslsmith_mod_u32(74808u, 31934u), 0u)) >> (4294967295u % 32u), 9192u);
}

