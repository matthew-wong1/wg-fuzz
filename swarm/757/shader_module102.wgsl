struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f + -160f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 887f, -1000f, var_0.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a) - vec4<f32>(923f, 372f, -975f, var_0.a))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-246f, var_0.a, 221f, 1000f)))))));
    let var_2 = vec2<f32>(-449f, var_0.a);
    var var_3 = max(-(~vec3<i32>(-187i, -1i, -1i) << (~vec3<u32>(0u, 4294967295u, u_input.a) % vec3<u32>(32u))), vec3<i32>(1i, 1i, 1i) >> (~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)), max(u_input.a, u_input.a), 0u | u_input.a) % vec3<u32>(32u)));
    var_3 = vec3<i32>(-1i) * -vec3<i32>(-abs(var_3.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(61906i, -30503i), ~(-7016i)), firstLeadingBit(_wgslsmith_dot_vec2_i32(var_3.xz, var_3.xy)));
    return 1u;
}

fn func_2() -> Struct_4 {
    let var_0 = -1i;
    var var_1 = ~vec3<u32>(abs(func_3()), ~4294967295u, ~u_input.a);
    var_1 = firstLeadingBit(select(vec3<u32>(40525u, _wgslsmith_add_u32(u_input.a, 0u), ~var_1.x) ^ max(~vec3<u32>(103756u, 52774u, var_1.x), ~vec3<u32>(var_1.x, var_1.x, 28978u)), ~countOneBits(vec3<u32>(6149u, 28741u, 29972u)), true | (~74179u == var_1.x)));
    var_1 = ~(abs(countOneBits(vec3<u32>(var_1.x, var_1.x, 37632u))) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 25102u, var_1.x) & vec3<u32>(75403u, var_1.x, 0u), vec3<u32>(18235u, 0u, u_input.a), ~vec3<u32>(var_1.x, u_input.a, u_input.a))) << (vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(26565u, var_1.x), var_1.zy), firstTrailingBit(~u_input.a), reverseBits(~u_input.a)) % vec3<u32>(32u));
    var_1 = vec3<u32>(33483u << (_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, u_input.a, 13159u, 4294967295u), vec4<u32>(u_input.a, u_input.a, var_1.x, var_1.x)), vec4<u32>(var_1.x, u_input.a, 4294967295u, 45347u)), u_input.a) % 32u), 38364u, ~_wgslsmith_div_u32(57078u, 1u | ~var_1.x));
    return Struct_4(vec2<i32>(~(~1i), 5503i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1000f, 118f)))))), _wgslsmith_f_op_f32(max(-440f, _wgslsmith_f_op_f32(456f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-208f))))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    var var_0 = func_2();
    var var_1 = ~(~arg_0.x);
    var var_2 = Struct_2(!(any(vec2<bool>(arg_2.a, arg_2.a)) & (arg_2.b < ~arg_2.b)), select(-19711i, -var_0.a.x, all(vec4<bool>(arg_2.a && arg_2.a, false | arg_2.a, !arg_2.a, any(vec2<bool>(arg_2.a, arg_2.a))))));
    var var_3 = ~34959u;
    var_0 = func_2();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2992f)) + 1f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: f32) -> f32 {
    let var_0 = ~vec4<u32>(4294967295u, u_input.a & firstTrailingBit(u_input.a << (0u % 32u)), 0u, 1u);
    var var_1 = func_2();
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(i32(-1i) * -21859i, var_1.a.x, i32(-1i) * -_wgslsmith_dot_vec2_i32(var_1.a, var_1.a)), max(vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(1i, var_1.a.x)), 4452i, countOneBits(var_1.a.x)), ~firstLeadingBit(vec3<i32>(var_1.a.x, var_1.a.x, -2147483647i))), vec3<i32>(~var_1.a.x, _wgslsmith_mod_i32(reverseBits(-var_1.a.x), abs(1i)), abs(max(var_1.a.x, var_1.a.x)) >> (u_input.a % 32u)));
    var var_3 = abs(select(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 57784u, 4294967295u, 1u), vec4<u32>(62217u, 4294967295u, u_input.a, 1805u), vec4<u32>(var_0.x, var_0.x, 20294u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 19566u, arg_2.b, 1u), vec4<u32>(var_0.x, var_0.x, 10851u, arg_2.a.x))), var_0), ~vec4<u32>(select(var_0.x, 31618u, false), _wgslsmith_mult_u32(u_input.a, arg_2.b), arg_2.a.x << (0u % 32u), var_0.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), 26486u >= var_0.x), vec4<bool>(all(vec3<bool>(true, false, true)), true, true, all(vec4<bool>(false, false, false, true))), any(vec4<bool>(false, false, true, false)))));
    var var_4 = true & !all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
    return arg_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(1i >> (~(~40340u | u_input.a) % 32u));
    var_0 = _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_mod_i32(21554i, 1i), 1i, ~0i)) | vec3<i32>(_wgslsmith_add_i32(-11919i, 22052i), -(~(-1i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1569i, -1i, 1669i, 1i), vec4<i32>(2147483647i, 1i, 2147483647i, 13090i), vec4<i32>(-36706i, 1i, -21316i, 368i)), vec4<i32>(-4582i, 43297i, 2771i, 0i))), _wgslsmith_mod_vec3_i32(firstLeadingBit(~(vec3<i32>(-12406i, 0i, -32135i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), ~select(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1691i, 12664i, 1i), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<u32>(u_input.a, 50611u, 4294967295u), Struct_1(871f), Struct_2(true, -2147483647i))) - _wgslsmith_f_op_f32(trunc(1316f))), _wgslsmith_f_op_f32(f32(-1f) * -400f)), vec2<f32>(_wgslsmith_f_op_f32(select(351f, func_2().c, true)), func_2().b), Struct_3(~abs(vec3<u32>(u_input.a, 1u, u_input.a)), u_input.a, ~86213u, vec3<f32>(_wgslsmith_f_op_f32(trunc(-1260f)), 974f, -842f), _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(func_2().b, _wgslsmith_f_op_f32(1609f * _wgslsmith_f_op_f32(max(-856f, -109f)))))), 853f));
    let var_2 = ~4294967295u;
    let var_3 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(4172u, abs(var_2)), vec2<u32>(_wgslsmith_sub_u32(var_2, var_2), var_2)), vec2<u32>(_wgslsmith_div_u32(46582u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 4294967295u, var_2), vec3<u32>(1u, var_2, 1u)) << (var_2 % 32u)), var_2), ~abs(vec2<u32>(16090u, _wgslsmith_sub_u32(u_input.a, var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(min(~(~vec4<u32>(u_input.a, var_3.x, var_3.x, 6033u)), _wgslsmith_mod_vec4_u32(vec4<u32>(112656u, u_input.a, 1u, var_3.x) & vec4<u32>(41124u, 4294967295u, 4294967295u, 0u), vec4<u32>(9898u, 0u, 0u, var_3.x)))), ~0u, -vec3<i32>(1i, 1i, 1i));
}

