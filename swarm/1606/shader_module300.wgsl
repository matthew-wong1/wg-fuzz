struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> i32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -1i, abs(8994i), _wgslsmith_sub_i32(35281i, 0i), 0i), u_input.d)), !select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, true, true, true)))), 4294967295u, Struct_1(u_input.d), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, u_input.c.x, 7431u, u_input.c.x) | select(abs(arg_1), countOneBits(vec4<u32>(u_input.e, 0u, 58743u, 1u)), true), ~firstLeadingBit(arg_1)));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1024f + 880f), _wgslsmith_f_op_f32(f32(-1f) * -1891f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(726f, -1703f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1229f, 577f))))))));
    let var_2 = Struct_3(var_0.a);
    var var_3 = var_2.a;
    let var_4 = Struct_1(u_input.d);
    return ~abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.a.x, 0i, -2884i), var_2.a.a.zyz) | _wgslsmith_sub_i32(0i, -22125i), min(-1i, global0.x)));
}

fn func_2(arg_0: Struct_5) -> Struct_4 {
    global0 = u_input.d.yw;
    global0 = vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(max(~global0.x, -14571i) << (~arg_0.d.x % 32u), global0.x, arg_0.c.x));
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.a);
    global0 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(-(~vec2<i32>(0i, arg_0.c.x)), ~(-abs(u_input.d.ww))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(max(u_input.a, vec2<i32>(26811i, arg_0.e.a.x))), _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, arg_0.e.a.x)), -u_input.d.xx), firstTrailingBit(arg_0.c)));
    global0 = vec2<i32>(-2147483647i, _wgslsmith_mult_i32(func_3(~arg_0.d.x, vec4<u32>(arg_0.d.x, 4294967295u, 0u, 4294967295u)), 33897i) >> (max(abs(4294967295u), ~0u) % 32u));
    return Struct_4(arg_0.d.x);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1729f, -1089f, 2024f))) + vec3<f32>(689f, 805f, -1430f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(336f, -1179f, -1135f), vec3<f32>(1207f, 448f, -1000f))) * vec3<f32>(1173f, -578f, 106f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1470f, -387f, 448f), vec3<f32>(119f, -933f, 1097f), arg_0)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(117f, -1391f, -1000f), vec3<f32>(227f, 234f, -123f), arg_0)))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mod_vec2_i32(~vec2<i32>(3125i, arg_1.a.a.x) & -u_input.d.wz, abs(-vec2<i32>(-2147483647i, u_input.a.x))) << (vec2<u32>(_wgslsmith_mult_u32(u_input.e, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), ~select(arg_2.a, 1u, false)) % vec2<u32>(32u)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(1u, _wgslsmith_mod_u32(arg_2.a, 73526u), 4294967295u)), reverseBits(abs(~u_input.c))), arg_1.a);
    global0 = -u_input.d.xy;
    global0 = _wgslsmith_mult_vec2_i32(select(_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(u_input.d.x & var_0.c.x, countOneBits(arg_1.a.a.x))), arg_1.a.a.yy, false), select(abs(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -54667i), firstTrailingBit(u_input.a))), ~select(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.e.a.x, var_0.c.x), vec2<i32>(2147483647i, -10759i)), u_input.d.wx, any(vec3<bool>(true, arg_0, false))), true));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-117f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x)), -1480f, -133f))), vec4<f32>(var_0.b, _wgslsmith_f_op_f32(1f + 931f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))), true)), _wgslsmith_f_op_f32(946f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(161f + var_0.a.x), var_0.a.x))));
    let var_2 = ~(~(~(~vec3<u32>(var_0.d.x, 13013u, 10085u))));
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_2.xy, firstTrailingBit(vec2<u32>(var_0.d.x, arg_2.a))), ~firstTrailingBit(min(vec2<u32>(1172u, var_2.x), u_input.c.yy)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<bool>) -> f32 {
    let var_0 = u_input.e;
    var var_1 = var_0;
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(func_4(true, Struct_3(Struct_1(vec4<i32>(-890i, global0.x, -2147483647i, 20365i))), func_2(Struct_5(vec3<f32>(625f, 988f, 915f), -608f, vec2<i32>(0i, 1i), u_input.c, Struct_1(u_input.d)))), ~0u), 70382u, var_0), vec3<u32>(80317u, ~firstLeadingBit(u_input.e), func_4(false, Struct_3(Struct_1(u_input.d)), Struct_4(u_input.c.x))));
    let var_3 = ~abs(vec4<i32>(50482i, 1i, _wgslsmith_mult_i32(abs(u_input.a.x), 34597i), abs(2147483647i)));
    var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~(~u_input.e), var_2.x, ~(~15780u), var_2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 26938u, 117383u) ^ ~vec4<u32>(var_0, var_2.x, 14389u, 23351u), firstLeadingBit(~vec4<u32>(39921u, 4294967295u, 74203u, var_0)))), max(vec4<u32>(_wgslsmith_mult_u32(~u_input.e, ~var_0), countOneBits(_wgslsmith_sub_u32(25401u, 1u)), 0u, 0u), ~vec4<u32>(~var_0, 91905u, 4294967295u, u_input.e)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1047f + _wgslsmith_f_op_f32(trunc(1f))))));
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: f32) -> f32 {
    var var_0 = arg_0;
    global0 = ~arg_0.e.a.zx;
    var_0 = arg_0;
    var var_1 = Struct_2(arg_0.e, vec2<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), any(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))), 1u, Struct_1(-(u_input.d >> (~vec4<u32>(0u, u_input.c.x, u_input.c.x, 4294967295u) % vec4<u32>(32u)))), ~_wgslsmith_div_u32(var_0.d.x, ~4294967295u));
    let var_2 = !(!select(var_1.b, !(!var_1.b), var_1.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_5(Struct_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(2254f, -757f, -1718f), vec3<f32>(1279f, 598f, -1000f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-403f, 157f, 197f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(false, true, vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(1510f * -1490f))), u_input.b, ~(~vec3<u32>(11366u, 4294967295u, 34850u)), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, u_input.d.x, -2147483647i), vec4<i32>(u_input.a.x, global0.x, global0.x, -59468i)))), _wgslsmith_clamp_i32(~0i, 34106i, -5221i), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(846f)) * -237f));
    let var_1 = 1i;
    var var_2 = var_0.x <= _wgslsmith_f_op_f32(select(var_0.x, var_0.x, !(u_input.c.x <= _wgslsmith_clamp_u32(71827u, u_input.c.x, 0u))));
    var_2 = all(vec4<bool>(~_wgslsmith_sub_u32(4294967295u, 4294967295u) > ~(~u_input.c.x), (var_0.x == -428f) & true, all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false)), !any(vec4<bool>(true, true, true, true))));
    var var_3 = Struct_3(Struct_1(~u_input.d));
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-133f, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1048f) - _wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(var_0.x, -1147f)))))))));
    let var_5 = ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.c, _wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(u_input.e, 45751u, u_input.e), vec3<u32>(57243u, 4294967295u, u_input.c.x))) | _wgslsmith_sub_vec3_u32(max(vec3<u32>(1u, u_input.c.x, u_input.c.x), u_input.c), vec3<u32>(u_input.c.x, 4294967295u, u_input.e)), ~vec3<u32>(1u, ~1u, 98392u));
    var var_6 = ~1u == ((min(u_input.c.x << (var_5.x % 32u), 16059u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_5.x, u_input.e), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(u_input.e, 37575u, 1u)))) >> (23471u % 32u));
    var_2 = all(select(vec2<bool>(false, true && any(vec3<bool>(false, false, false))), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_5.x, u_input.c.x, 4294967295u, 1u), vec4<u32>(u_input.e, 66701u, var_5.x, 0u)), select(vec4<u32>(var_5.x, var_5.x, 4294967295u, 4294967295u), vec4<u32>(114356u, u_input.c.x, u_input.e, 4294967295u), false)), u_input.e ^ u_input.e, 4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e, 15153u, var_5.x), u_input.c)), ~(~(~vec4<u32>(var_5.x, var_5.x, 31039u, var_5.x)))), vec2<i32>(var_3.a.a.x, _wgslsmith_mod_i32(global0.x, 0i)));
}

