struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = vec3<i32>(i32(-1i) * -(i32(-1i) * -14476i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(0i, -2147483647i, 2147483647i), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-7250i, -7978i), vec2<i32>(55999i, -2147483647i)), max(-1i, -1573i)) << (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 26184u, 46883u, 0u), vec4<u32>(arg_2.a.x, 0u, arg_0, u_input.c.x))) % vec4<u32>(32u)), ~vec4<i32>(i32(-1i) * -1i, reverseBits(4045i), ~0i, -1i)), countOneBits((0i >> (arg_1.a.x % 32u)) | 1i) | -1i);
    var var_1 = arg_2;
    var_1 = arg_1;
    var_1 = arg_2;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-755f + _wgslsmith_f_op_f32(f32(-1f) * -133f)), 1216f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1043f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1274f), _wgslsmith_f_op_f32(f32(-1f) * -1443f)) * vec2<f32>(_wgslsmith_f_op_f32(-1275f - 1213f), _wgslsmith_div_f32(-341f, -370f))) - vec2<f32>(_wgslsmith_f_op_f32(972f - -705f), 912f)));
    return ~(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~arg_1.a, arg_2.a), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 13528u, arg_0), vec3<u32>(1u, 1u, 4294967295u))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = abs(firstLeadingBit(arg_1.a.x)) != _wgslsmith_add_u32(4294967295u ^ ~func_3(85141u, Struct_1(arg_0.a, false), Struct_1(vec3<u32>(847u, 0u, 90943u), true)), ~4654u);
    let var_1 = any(select(select(vec2<bool>(true, true), vec2<bool>(arg_1.a.x > arg_1.a.x, !arg_1.b), vec2<bool>(arg_0.b, arg_0.b)), !(!select(vec2<bool>(false, true), vec2<bool>(true, arg_0.b), true)), vec2<bool>(false, arg_1.b)));
    let var_2 = arg_1;
    global0 = u_input.c.x;
    var var_3 = -firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(abs(52461i), _wgslsmith_mult_i32(1i, 27685i), ~(-26161i)), i32(-1i) * -14573i));
    return _wgslsmith_div_f32(-870f, _wgslsmith_div_f32(1606f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1939f, -1002f) * 1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(135f, -393f)), -1386f))))));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(u_input.c.yyx, !(_wgslsmith_f_op_f32(1000f * 389f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))));
    var var_1 = Struct_1(~var_0.a, any(select(select(vec2<bool>(var_0.b, arg_3.b), !vec2<bool>(arg_3.b, arg_3.b), true), vec2<bool>(false, true), var_0.b & false)));
    var_1 = Struct_1(arg_3.a, arg_3.b);
    var_1 = arg_3;
    var var_2 = ~_wgslsmith_dot_vec3_u32(select(u_input.a.wyz, arg_3.a, !(!arg_3.b)), arg_3.a | abs(abs(arg_3.a)));
    return arg_3;
}

fn func_1() -> vec3<bool> {
    let var_0 = func_4(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -45321i), _wgslsmith_mult_vec2_i32(vec2<i32>(-18384i, 64708i), ~vec2<i32>(-38437i, 0i)) >> (vec2<u32>(u_input.a.x & u_input.b.x, _wgslsmith_sub_u32(u_input.a.x, 6429u)) % vec2<u32>(32u))), ~min(u_input.c.xxx, ~select(u_input.c.yyy, u_input.a.www, vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, 249f), _wgslsmith_f_op_f32(func_2(Struct_1(u_input.c.wzw, false), Struct_1(u_input.a.zyy, false))), true)), true))), Struct_1(vec3<u32>(76959u ^ _wgslsmith_add_u32(u_input.d, u_input.d), u_input.c.x, max(u_input.a.x, 0u)), !(!any(vec4<bool>(false, false, false, true)))));
    var var_1 = vec3<bool>(_wgslsmith_div_i32(-31327i, -25881i) == _wgslsmith_sub_i32(select(1i, 2147483647i, !var_0.b), -(1i << (var_0.a.x % 32u))), !var_0.b, !var_0.b);
    var var_2 = -371f;
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1596f, -1073f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-747f + 557f))), _wgslsmith_f_op_f32(floor(506f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1070f - -175f)))) + vec3<f32>(-296f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -721f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1395f) - -1402f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1039f)) * _wgslsmith_f_op_f32(func_2(func_4(-2147483647i, vec3<u32>(1u, var_0.a.x, u_input.b.x), 855f, var_0), func_4(1i, vec3<u32>(var_0.a.x, 31211u, 34925u), 1000f, Struct_1(u_input.c.zwy, false)))))));
    return vec3<bool>(false, var_1.x, var_3);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>) -> f32 {
    global0 = u_input.d & _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a.x, u_input.b.x)), _wgslsmith_add_vec2_u32(u_input.b, _wgslsmith_mult_vec2_u32(vec2<u32>(72671u, 21780u), u_input.b)));
    return _wgslsmith_f_op_f32(sign(571f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(785f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(127f)), -797f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-717f, -1229f) - 1368f), _wgslsmith_f_op_f32(func_5(func_1(), vec3<i32>(-3413i, -62508i, 19313i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-392f - 1155f)))), any(select(func_1(), vec3<bool>(true, true, true), all(vec3<bool>(false, false, false)))))));
    var var_1 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(max(~86597u, 4294967295u), _wgslsmith_dot_vec2_u32(u_input.c.wz, _wgslsmith_div_vec2_u32(u_input.a.zx, u_input.c.wz)), u_input.d), u_input.a.yzx), func_4(abs(1i), vec3<u32>(func_4(605i, u_input.a.yww, -105f, Struct_1(vec3<u32>(u_input.d, u_input.a.x, u_input.b.x), true)).a.x, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(13685u, 0u, u_input.a.x), vec3<u32>(30133u, u_input.a.x, 0u))), _wgslsmith_f_op_f32(-1093f - var_0.x), func_4(1i, ~vec3<u32>(2667u, u_input.a.x, 1u), var_0.x, func_4(1i, vec3<u32>(u_input.b.x, 1u, 4294967295u), -656f, Struct_1(vec3<u32>(0u, 696u, 40974u), false)))).b && (_wgslsmith_f_op_f32(-var_0.x) > var_0.x));
    var_1 = Struct_1(vec3<u32>(var_1.a.x, _wgslsmith_mod_u32(~var_1.a.x, var_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(u_input.c.x), u_input.a.x, ~24686u, firstLeadingBit(u_input.b.x)), _wgslsmith_clamp_vec4_u32(u_input.a & u_input.c, u_input.c, u_input.a << (vec4<u32>(var_1.a.x, u_input.c.x, var_1.a.x, var_1.a.x) % vec4<u32>(32u))))), (_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -6376i)), ~vec4<i32>(-1i, -14966i, -29611i, 0i)) >= 1i) && true);
    var var_2 = vec2<i32>(-1i, _wgslsmith_mod_i32(-21638i, 1i));
    global0 = abs(28235u);
    let var_3 = false;
    let var_4 = 231f;
    global0 = u_input.a.x;
    var var_5 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(44318i, var_2.x, var_2.x, var_2.x), vec4<i32>(-3579i, var_2.x, 13037i, ~var_2.x)), 15317i >> (var_1.a.x % 32u), -40321i, -39217i), -vec4<i32>(min(var_2.x, -1i), var_2.x, 1i, ~min(var_2.x, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(-1079f, select(~(firstTrailingBit(u_input.d) >> ((var_1.a.x >> (1u % 32u)) % 32u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(countOneBits(var_1.a.x), ~9379u), reverseBits(var_1.a.x)), false), 360f, ~abs(var_1.a));
}

