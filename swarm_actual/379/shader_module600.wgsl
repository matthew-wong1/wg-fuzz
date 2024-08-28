struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(528f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f))));
    var var_1 = 9736i;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.a))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(var_0.a - var_0.a))) + _wgslsmith_f_op_f32(f32(-1f) * -120f))));
    let var_3 = 2147483647i;
    return _wgslsmith_mod_i32(i32(-1i) * -27862i, 2147483647i);
}

fn func_2(arg_0: u32) -> Struct_3 {
    var var_0 = vec4<i32>(u_input.a.x, func_3(), _wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.c.x, -40307i, u_input.b, 2147483647i) | vec4<i32>(30196i, -2147483647i, 2147483647i, u_input.b)), select(-vec4<i32>(u_input.d, 2147483647i, -2147483647i, -16291i), -vec4<i32>(u_input.a.x, -32148i, 1i, 1i), vec4<bool>(true, true, false, true))) & _wgslsmith_mult_i32(-1804i, -_wgslsmith_sub_i32(u_input.a.x, 1i)), abs(1i));
    var var_1 = select(~var_0.wyw, select(vec3<i32>(-var_0.x, u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 0i, u_input.b), vec4<i32>(u_input.a.x, 16672i, 19080i, 1i))) & vec3<i32>(-u_input.d, 1i, ~37579i), _wgslsmith_clamp_vec3_i32(-var_0.yyw, var_0.xxy, var_0.zzw | var_0.xzz) & vec3<i32>(select(-1i, 19679i, true), ~(-2147483647i), _wgslsmith_mult_i32(-1i, u_input.c.x)), vec3<bool>(true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !vec3<bool>(all(vec4<bool>(true, true, true, false)), true, true), vec3<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true)));
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-40972i, 2147483647i, 1i), vec3<i32>(0i, -33953i, var_0.x), false), countOneBits(var_0.wyw))), i32(-1i) * -abs(u_input.b)), u_input.c);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1000f, 439f) * vec3<f32>(-791f, 821f, 526f)), vec3<f32>(-294f, 363f, -785f))) + vec3<f32>(_wgslsmith_f_op_f32(-1442f + _wgslsmith_f_op_f32(f32(-1f) * -641f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1090f - 1000f) * _wgslsmith_f_op_f32(478f + -1231f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-811f)), 1f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-418f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(145f)) * _wgslsmith_f_op_f32(floor(-1611f))), -918f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1820f, 533f, -177f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(848f, 524f, 152f)))))));
    var var_4 = var_3.x;
    return Struct_3(Struct_1(27418u, ~(-var_0.ywx | _wgslsmith_div_vec3_i32(var_0.yyw, vec3<i32>(var_0.x, u_input.b, var_2.x))), _wgslsmith_f_op_vec2_f32(step(var_3.xz, var_3.xy)), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), any(vec3<bool>(true, true, false)), select(select(false, true, false), var_1.x <= 2147483647i, true)), _wgslsmith_mod_u32(arg_0 >> (arg_0 % 32u), 4294967295u) >> ((abs(arg_0) << (select(arg_0, arg_0, false) % 32u)) % 32u)), Struct_2(-214f), Struct_1(_wgslsmith_mod_u32(reverseBits(12355u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, arg_0, arg_0) & vec4<u32>(arg_0, 4294967295u, arg_0, arg_0), vec4<u32>(1u, arg_0, arg_0, 16373u))), var_0.yzy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(var_3.xx)), vec2<f32>(_wgslsmith_f_op_f32(1968f * -1380f), var_3.x))), vec3<bool>(!any(vec4<bool>(true, true, false, true)), false, true), 4294967295u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1075f), _wgslsmith_f_op_f32(sign(var_3.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-765f, 695f, var_3.x, -323f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, -348f, var_3.x, var_3.x), vec4<f32>(var_3.x, var_3.x, var_3.x, 119f), true)))))), Struct_2(_wgslsmith_div_f32(3056f, var_3.x)));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> f32 {
    var var_0 = -(16510i | _wgslsmith_add_i32(abs(_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), -u_input.c.x));
    let var_1 = 2898u;
    var var_2 = func_2(arg_0.c.e);
    var var_3 = (~(~vec2<u32>(1u, 0u) >> (~vec2<u32>(1u, var_1) % vec2<u32>(32u))) | select(_wgslsmith_clamp_vec2_u32(vec2<u32>(37153u, var_2.a.a), vec2<u32>(var_2.a.e, 3899u), vec2<u32>(10645u, var_2.a.e)), vec2<u32>(29945u, var_1), vec2<bool>(arg_0.a.d.x, true))) & vec2<u32>(abs(arg_0.c.e), var_2.a.e);
    let var_4 = vec4<u32>(var_1 & ~func_2(1u ^ var_2.c.a).c.a, 1u, 4294967295u, arg_0.a.e);
    return var_2.a.c.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> f32 {
    let var_0 = Struct_3(func_2(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, arg_0.x, arg_0.x, arg_0.x)), reverseBits(select(vec4<u32>(90802u, 1u, 34199u, 29007u), vec4<u32>(0u, arg_0.x, 1u, arg_0.x), arg_2)))).a, func_2(~arg_0.x).e, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~7839u, arg_0.x << (68882u % 32u), arg_0.x, _wgslsmith_div_u32(arg_0.x, arg_0.x)), ~vec4<u32>(arg_0.x, 46626u, 4294967295u, 54565u) >> (~vec4<u32>(arg_0.x, 13149u, 1u, arg_0.x) % vec4<u32>(32u))), -(~vec3<i32>(0i, -2147483647i, 34918i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a))))), select(!select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, false, arg_2), false), select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, true), true), vec3<bool>(true, false, arg_2), arg_2), ~39875u >= arg_0.x), _wgslsmith_add_u32(arg_0.x, _wgslsmith_mod_u32(30066u, func_2(4294967295u).c.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2431f, 359f, 1295f, -480f), vec4<f32>(arg_1.a, arg_1.a, arg_1.a, 301f)))))), func_2(~(1u & arg_0.x)).b);
    let var_1 = func_2(firstTrailingBit(22605u)).e;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(722f)), _wgslsmith_f_op_f32(2260f + var_0.b.a))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.e.a - 1364f), _wgslsmith_f_op_f32(-arg_1.a)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) - _wgslsmith_div_f32(arg_1.a, -1641f)))));
    var var_3 = var_1;
    var var_4 = func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(16202u, max(23673u, var_0.a.a), 68086u, var_0.a.e) ^ vec4<u32>(~4294967295u, arg_0.x ^ arg_0.x, var_0.c.e >> (61420u % 32u), var_0.a.e), ~abs(vec4<u32>(arg_0.x, arg_0.x, 0u, 4294967295u)))).b;
    return func_2(arg_0.x).b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<u32>(1u, 1u, 1u), Struct_2(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(0u, vec3<i32>(u_input.a.x, 1i, u_input.c.x), vec2<f32>(429f, -586f), vec3<bool>(false, true, false), 11127u), Struct_2(-1698f), Struct_1(53631u, vec3<i32>(u_input.c.x, 4229i, 2147483647i), vec2<f32>(717f, -588f), vec3<bool>(true, true, true), 0u), vec4<f32>(-408f, 315f, -206f, -1540f), Struct_2(-232f)), 4294967295u))), any(func_2(1u).a.d.xz))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1405f, 303f)) * -1290f))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1077f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-140f))));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, 54222i), vec4<i32>(u_input.c.x, 2147483647i, 1i, u_input.c.x)), vec4<i32>(-14239i, 33423i, u_input.c.x, -33391i), vec4<i32>(13315i, 1i, u_input.b, -1i) << (vec4<u32>(62321u, 12729u, 0u, 6452u) % vec4<u32>(32u))), ~vec4<i32>(-1i, 0i, u_input.b, 2147483647i)), vec4<i32>(-49108i, ~19211i, reverseBits(-38537i), 1i)), ~(-u_input.a.x));
    var var_3 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(firstTrailingBit(min(66571u, 18051u)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(39239u, 4294967295u), vec2<u32>(4294967295u, 43978u)))), select(41927u, ~(~78486u), false));
    var_3 = 35731u;
    var_3 = countOneBits(~firstTrailingBit(~(~16878u)));
    var_0 = var_1;
    let var_4 = Struct_1(~1u, _wgslsmith_sub_vec3_i32(~min(~vec3<i32>(2147483647i, var_2.x, 1i), ~vec3<i32>(var_2.x, var_2.x, var_2.x)), firstLeadingBit(~vec3<i32>(1428i, 0i, 68210i))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)), vec2<f32>(1000f, var_1))))), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), func_2(4294967295u).c.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_1)))));
}

