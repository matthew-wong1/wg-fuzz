struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(vec3<i32>(1i, 22416i, -19457i), Struct_1(vec4<bool>(false, true, true, false), false), -35059i, Struct_1(vec4<bool>(true, true, true, false), true), Struct_1(vec4<bool>(false, true, true, false), false)), Struct_3(vec3<i32>(-12448i, 0i, 1i), Struct_1(vec4<bool>(false, false, false, true), true), i32(-2147483648), Struct_1(vec4<bool>(false, false, false, true), false), Struct_1(vec4<bool>(false, true, false, false), true)), Struct_3(vec3<i32>(-15359i, -1648i, -28635i), Struct_1(vec4<bool>(true, true, false, false), true), 4868i, Struct_1(vec4<bool>(true, true, true, true), true), Struct_1(vec4<bool>(false, false, true, false), false)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> vec4<bool> {
    var var_0 = !(!(~u_input.c > _wgslsmith_mod_u32(~u_input.c, abs(u_input.c))));
    var_0 = all(vec3<bool>(select(select(any(vec2<bool>(arg_1.x, arg_0)), !arg_0, true), true, !(!arg_0)), all(select(vec4<bool>(true, arg_0, arg_0, true), vec4<bool>(false, false, arg_0, false), vec4<bool>(true, true, arg_1.x, arg_1.x))) | (u_input.c > ~13359u), arg_0));
    var var_1 = Struct_1(!vec4<bool>(false, arg_0, true, all(select(vec4<bool>(false, true, arg_1.x, false), vec4<bool>(false, true, false, false), arg_1.x))), !select(any(vec4<bool>(arg_0, arg_1.x, true, true)), all(select(vec4<bool>(arg_0, arg_1.x, arg_0, arg_0), vec4<bool>(false, true, arg_0, arg_0), arg_0)), any(select(vec4<bool>(true, false, arg_0, true), vec4<bool>(arg_1.x, false, false, arg_1.x), false))));
    let var_2 = u_input.a;
    let var_3 = abs(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 58097u & u_input.c), firstLeadingBit(~vec2<u32>(4294967295u, u_input.c)))));
    return vec4<bool>(arg_1.x, all(vec4<bool>(!any(var_1.a.zzy), all(!var_1.a.xzx), !(!arg_0), _wgslsmith_f_op_f32(ceil(-634f)) > _wgslsmith_f_op_f32(f32(-1f) * -1323f))), any(!vec4<bool>(arg_0, arg_1.x, true, arg_1.x)) && !(!all(var_1.a.xxw)), arg_0);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_4) -> f32 {
    global0 = array<Struct_3, 3>();
    var var_0 = _wgslsmith_div_vec4_i32(~(-vec4<i32>(_wgslsmith_div_i32(arg_3.b.x, arg_3.b.x), -arg_0.b.x, 0i, countOneBits(2147483647i))), vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(arg_3.b.x), i32(-1i) * -u_input.b), 1i, arg_0.b.x, -_wgslsmith_div_i32(_wgslsmith_sub_i32(-25283i, 7682i), -1i)));
    global0 = array<Struct_3, 3>();
    let var_1 = arg_2.x;
    let var_2 = arg_3.b;
    return _wgslsmith_f_op_f32(abs(-430f));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(335f + -775f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1648f, var_0.x));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2510f, 1000f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -872f) * vec2<f32>(-1498f, var_0.x))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(Struct_4(firstLeadingBit(vec4<u32>(4294967295u, u_input.c, 106050u, u_input.c)), ~vec4<i32>(u_input.b, 2147483647i, arg_0, -1i), reverseBits(vec2<i32>(-1i, -2147483647i))), func_3(false, vec2<bool>(true, true)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), false), true), Struct_4(~vec4<u32>(4294967295u, 4294967295u, 0u, 71247u), firstTrailingBit(vec4<i32>(u_input.a, 1i, u_input.b, -6078i)), vec2<i32>(0i, -1i)))))));
    var var_2 = _wgslsmith_dot_vec4_u32(countOneBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.c, u_input.c, u_input.c), vec4<u32>(4294967295u, 1u, 1u, u_input.c)) & ~(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u) >> (vec4<u32>(4294967295u, u_input.c, 1u, u_input.c) % vec4<u32>(32u)))), vec4<u32>(u_input.c, 1u, ~_wgslsmith_mult_u32(u_input.c | 1u, _wgslsmith_mult_u32(46201u, 1u)), ~1u));
    return any(!vec2<bool>(all(vec4<bool>(true, false, true, false)) & func_3(false, vec2<bool>(false, false)).x, true));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1130f, -524f, -532f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, -1081f, 933f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2291f, -170f, 1897f), vec3<f32>(134f, 1000f, -672f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(990f, 212f, 485f))))), select(arg_0.a.a.xwz, vec3<bool>(false, any(arg_0.a.a), false), !select(arg_0.a.a.wzx, vec3<bool>(arg_0.a.b, arg_0.a.a.x, true), arg_0.a.a.xwz))))));
    let var_1 = select(true, !(!arg_0.a.b), true) && all(arg_0.a.a.xxx);
    global0 = array<Struct_3, 3>();
    let var_2 = abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~abs(u_input.c), firstTrailingBit(min(arg_1, u_input.c))), _wgslsmith_add_vec3_u32(min(countOneBits(vec3<u32>(4294967295u, 30284u, 43143u)), vec3<u32>(u_input.c, arg_1, 8964u) | vec3<u32>(u_input.c, u_input.c, u_input.c)), ~abs(vec3<u32>(arg_1, arg_1, 4294967295u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1, 3062u, u_input.c), _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.c, 10909u, u_input.c), vec3<u32>(40605u, arg_1, 8979u), vec3<bool>(arg_2, arg_0.a.a.x, false)), vec3<u32>(59491u, 25289u, 0u)))));
    let var_3 = arg_0.b;
    return Struct_4(vec4<u32>(4294967295u >> (~(u_input.c ^ arg_1) % 32u), ~reverseBits(~64130u), u_input.c, select(50u, select(_wgslsmith_clamp_u32(1u, 54842u, arg_1), var_2.x, true), arg_2)), vec4<i32>(-(~(-1i)) & firstLeadingBit(arg_0.b), 79824i, select(u_input.b, -1i, var_1), -arg_0.b), ~firstLeadingBit(select(vec2<i32>(var_3, var_3), vec2<i32>(var_3, u_input.a), true) >> (reverseBits(var_2.xz) % vec2<u32>(32u))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = func_5(arg_0, _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, ~u_input.c, 1u >> (u_input.c % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(22782u, u_input.c, u_input.c, 10579u), vec4<u32>(u_input.c, 8359u, 1u, 72513u))), abs(~u_input.c)), func_2(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.b, 17674i) >> (countOneBits(16342u) % 32u), arg_0.b & ~(-16319i))));
    global0 = array<Struct_3, 3>();
    var var_1 = ~countOneBits(~_wgslsmith_div_vec4_u32(var_0.a, var_0.a)) >> ((var_0.a | (~(~var_0.a) & vec4<u32>(~u_input.c, ~u_input.c, 12953u, 16401u))) % vec4<u32>(32u));
    var var_2 = arg_0.a.a.zzy;
    var var_3 = -317f;
    return Struct_1(!arg_0.a.a, ~firstLeadingBit(_wgslsmith_dot_vec2_u32(var_0.a.zy, vec2<u32>(79245u, 46598u))) <= ~_wgslsmith_div_u32(var_0.a.x | 0u, 13225u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(Struct_2(Struct_1(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false), true), ~u_input.b & ~1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(839f)))))), i32(-1i) * -35912i);
    let var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(var_0.b, 2147483647i, var_0.b, u_input.b)), vec4<i32>(_wgslsmith_clamp_i32(u_input.a, 2147483647i, -6775i), ~var_0.b, -27627i, var_0.b)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 79046i) ^ vec2<i32>(u_input.b, -2147483647i), min(vec2<i32>(u_input.a, u_input.b), vec2<i32>(-1i, u_input.b)) & vec2<i32>(-2147483647i, 11713i))) >> (vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(4294967295u, 0u)) ^ ~27710u, 49153u), 50941u) % vec2<u32>(32u));
    global0 = array<Struct_3, 3>();
    let var_2 = _wgslsmith_mult_i32(u_input.a, u_input.b);
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    var_0 = Struct_2(Struct_1(var_0.a.a, var_0.a.b), _wgslsmith_mult_i32(-min(abs(-36123i), ~0i), 0i));
    global0 = array<Struct_3, 3>();
    let var_3 = global0[_wgslsmith_index_u32(u_input.c, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -544f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1032f), -3590f)), _wgslsmith_div_f32(578f, 191f)), countOneBits(var_0.b << (0u % 32u)), 1022u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(555f)))) * _wgslsmith_f_op_f32(sign(1f))))));
}

