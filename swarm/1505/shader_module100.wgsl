struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(-45944i), vec2<i32>(0i, -2438i));

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(59369i), Struct_1(3307i), Struct_1(-18464i), Struct_1(6070i), Struct_1(-1i), Struct_1(-5766i), Struct_1(-16560i), Struct_1(-1i), Struct_1(-66395i), Struct_1(34939i), Struct_1(-10205i), Struct_1(2147483647i), Struct_1(1i), Struct_1(1i), Struct_1(8308i), Struct_1(-53499i), Struct_1(i32(-2147483648)), Struct_1(-26513i), Struct_1(31698i), Struct_1(-31106i), Struct_1(0i), Struct_1(-1i));

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec2<bool>(false, true), vec3<u32>(0u, 10742u, 1u), Struct_1(i32(-2147483648))), Struct_2(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec2<bool>(false, true), vec3<u32>(4294967295u, 17672u, 1u), Struct_1(15266i)), Struct_2(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec2<bool>(true, false), vec3<u32>(72u, 0u, 0u), Struct_1(0i)), Struct_2(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec2<bool>(true, false), vec3<u32>(4294967295u, 18106u, 1u), Struct_1(5725i)), Struct_2(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec2<bool>(false, false), vec3<u32>(1u, 0u, 44868u), Struct_1(-106446i)), Struct_2(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec2<bool>(false, true), vec3<u32>(0u, 58275u, 1u), Struct_1(18112i)), Struct_2(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec2<bool>(true, false), vec3<u32>(1u, 0u, 55016u), Struct_1(i32(-2147483648))), Struct_2(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 40135u), Struct_1(-35953i)), Struct_2(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec2<bool>(false, true), vec3<u32>(54112u, 53976u, 23949u), Struct_1(2147483647i)), Struct_2(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 23997u), Struct_1(0i)));

var<private> global3: u32;

var<private> global4: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(2147483647i), Struct_1(-3021i), Struct_1(-43133i), Struct_1(i32(-2147483648)), Struct_1(-10446i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(-1i), Struct_1(16236i), Struct_1(54406i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(16897i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    var var_0 = ~(-vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.e, u_input.c.x), u_input.b, global0.b.x ^ -1i), abs(global0.a.a), -(global0.a.a & u_input.c.x), 2147483647i));
    var_0 = vec4<i32>(1i << (u_input.d % 32u), global0.b.x, _wgslsmith_div_i32(~_wgslsmith_mult_i32(-24720i, var_0.x), firstTrailingBit(u_input.b)), global0.a.a);
    let var_1 = 503f;
    let var_2 = vec4<u32>(~countOneBits(u_input.d | 5322u) | 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~(4294967295u | u_input.d), 23506u, ~u_input.d), ~(vec4<u32>(4294967295u, 0u, u_input.d, 1u) & (vec4<u32>(u_input.d, u_input.d, 40910u, 4294967295u) >> (vec4<u32>(u_input.d, u_input.d, 1u, 1u) % vec4<u32>(32u))))), firstLeadingBit(select(_wgslsmith_dot_vec3_u32(vec3<u32>(38707u, 22747u, u_input.d), vec3<u32>(u_input.d, 36904u, u_input.d)), u_input.d ^ 41799u, any(vec3<bool>(true, false, arg_0)))) >> (u_input.d % 32u), 0u);
    var_0 = abs(-vec4<i32>(i32(-1i) * -37524i, u_input.e, _wgslsmith_div_i32(global0.b.x, ~0i), select(-global0.a.a, global0.a.a, true)));
    return global0.b.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> vec2<u32> {
    var var_0 = Struct_4(!all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-827f, _wgslsmith_f_op_f32(select(1241f, -1756f, false)), -762f, _wgslsmith_f_op_f32(1000f * 331f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-123f, -206f, -1275f, -198f))) - vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, -1057f)), -534f, _wgslsmith_f_op_f32(max(-1000f, -188f)), -2112f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-859f, 1553f, -1085f) - vec3<f32>(406f, -2230f, 1157f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1259f, -1160f, 833f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(488f, -494f, 645f) - vec3<f32>(803f, 477f, -1000f))), false)), vec3<f32>(_wgslsmith_f_op_f32(-659f * 1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2410f))), -473f), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)))));
    let var_1 = firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(countOneBits(vec4<u32>(u_input.d, 18055u, u_input.d, 4294967295u))), select(vec4<u32>(u_input.d, u_input.d, 1u, 8199u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 1u, 4294967295u, 4294967295u), vec4<u32>(48817u, 4294967295u, u_input.d, u_input.d)), select(vec4<bool>(true, var_0.d, true, false), vec4<bool>(false, var_0.d, false, var_0.d), vec4<bool>(var_0.a, true, false, var_0.d)))), (_wgslsmith_sub_u32(48554u, u_input.d) ^ u_input.d) << (_wgslsmith_div_u32(_wgslsmith_mult_u32(52284u, 1u), _wgslsmith_div_u32(u_input.d, u_input.d)) % 32u), u_input.d));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-854f, var_0.b.x)), var_0.b.x)), false)) - _wgslsmith_f_op_f32(f32(-1f) * -521f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(3308f, _wgslsmith_f_op_f32(round(318f)))), _wgslsmith_f_op_f32(floor(var_0.b.x)));
    global3 = _wgslsmith_dot_vec2_u32(var_1.xx, _wgslsmith_clamp_vec2_u32(~var_1.xx, var_1.zz, var_1.zy));
    let var_3 = var_1.yz;
    return var_3;
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> vec4<f32> {
    let var_0 = Struct_3(arg_0.a, vec2<i32>(18753i, firstLeadingBit(~1i | arg_1)));
    global2 = array<Struct_2, 10>();
    var var_1 = func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(-44192i, 10374i, -12925i, u_input.c.x) | vec4<i32>(arg_0.a.a, -21759i, var_0.b.x, arg_1)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(1i, arg_0.a.a, global0.b.x, global0.b.x) & vec4<i32>(u_input.b, u_input.e, arg_0.b.x, 2147483647i), ~vec4<i32>(-1i, 2147483647i, var_0.b.x, u_input.a), u_input.d < u_input.d), ~vec4<i32>(arg_0.b.x, var_0.b.x, -2147483647i, global0.b.x) ^ ~vec4<i32>(arg_0.a.a, arg_0.a.a, u_input.c.x, -12954i))), ~min(func_3(true, vec4<f32>(-1699f, -516f, 1947f, -1303f), true) ^ select(arg_0.b.x, 2147483647i, false), ~arg_0.b.x));
    let var_2 = vec4<bool>(true, any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true, false);
    global1 = array<Struct_1, 22>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(1398f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-648f, -177f, var_2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-140f * -846f))), -167f, -2046f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-682f, -617f, 280f, -1033f) + vec4<f32>(-2750f, -2259f, 1008f, -498f)))) - vec4<f32>(_wgslsmith_f_op_f32(min(-134f, 235f)), _wgslsmith_f_op_f32(-1201f * -1000f), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(floor(820f)))))));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = ~vec4<u32>(~(~u_input.d >> (u_input.d % 32u)), ~(countOneBits(arg_0.x) << (1u % 32u)), _wgslsmith_clamp_u32(88603u, ~firstLeadingBit(1u), u_input.d), ~_wgslsmith_mod_u32(u_input.d, 4294967295u));
    var var_1 = Struct_4(1i > u_input.e, _wgslsmith_f_op_vec4_f32(func_2(Struct_3(Struct_1(_wgslsmith_add_i32(-15421i, global0.b.x)), -u_input.c.yz), -1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-371f, 556f, _wgslsmith_div_f32(1000f, _wgslsmith_div_f32(-1365f, 923f)))), !(global0.a.a > (global0.b.x & u_input.e)) | (true && all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true))));
    let var_2 = vec3<u32>(~arg_0.x, arg_0.x, _wgslsmith_sub_u32(reverseBits(347u), ~(~_wgslsmith_mult_u32(89552u, u_input.d))));
    var var_3 = ~u_input.d;
    global3 = ~abs(~1u);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~4294967295u, _wgslsmith_mult_u32(1u, select(6173u, ~u_input.d, true) | u_input.d), func_1(vec3<u32>(u_input.d, ~57017u, max(0u, 61561u))) >> ((_wgslsmith_mult_u32(~29968u, _wgslsmith_mult_u32(4294967295u, u_input.d)) | 1u) % 32u));
    var_0 = select(min(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 0u, 0u), vec3<u32>(var_0.x, var_0.x, 0u))), countOneBits(~(~vec3<u32>(var_0.x, 18u, u_input.d)))), ~max(abs(vec3<u32>(1u, 13573u, var_0.x)), vec3<u32>(39382u >> (u_input.d % 32u), _wgslsmith_div_u32(var_0.x, 32673u), ~u_input.d)), !vec3<bool>(any(vec4<bool>(true, true, true, false)), true, true));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1706f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-948f, 1670f) + 1681f))) - -1692f), 773f));
    let var_2 = Struct_3(Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(~u_input.c.x, countOneBits(global0.b.x)), u_input.e)), vec2<i32>(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, global0.a.a)), vec2<i32>(select(global0.b.x, -10699i, false), 1i))));
    let var_3 = all(select(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), select(true, true, false)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true)), vec4<bool>(true, all(vec3<bool>(true, true, true)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false)), true), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), vec4<bool>(false, false, true, true), select(true, false, false) || true)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1401f))) + var_1);
    var var_5 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1718f, -993f, var_1)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1, 232f, var_1), vec3<f32>(var_1, -1000f, var_1))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(944f, -1654f, -1524f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-540f, var_1, 364f))), var_3)))), vec3<f32>(var_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1225f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * 1519f)))), _wgslsmith_f_op_f32(sign(var_1)))));
    let var_6 = var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(var_5.x, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(max(-601f, var_5.x)))), var_5.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1)))));
}

