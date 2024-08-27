struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(-1238f, -209f), vec2<f32>(-1286f, 1000f), vec2<f32>(-974f, 305f), vec2<f32>(378f, -1799f), vec2<f32>(-805f, 540f), vec2<f32>(-1000f, -1291f), vec2<f32>(-1711f, -1308f), vec2<f32>(-427f, 481f), vec2<f32>(1843f, -348f), vec2<f32>(305f, 540f), vec2<f32>(-1065f, -858f), vec2<f32>(1000f, -383f), vec2<f32>(-531f, 2843f), vec2<f32>(-1788f, 1982f), vec2<f32>(1372f, -429f), vec2<f32>(114f, -345f), vec2<f32>(583f, 1398f), vec2<f32>(1462f, 139f), vec2<f32>(1042f, -1726f), vec2<f32>(-322f, 511f), vec2<f32>(-146f, -1162f), vec2<f32>(-1065f, 1647f), vec2<f32>(256f, -700f), vec2<f32>(290f, -545f), vec2<f32>(944f, -741f), vec2<f32>(1090f, 1068f));

var<private> global1: Struct_5 = Struct_5(4294967295u, Struct_4(vec3<f32>(924f, 1000f, 557f), 16311u, -145f));

var<private> global2: Struct_4 = Struct_4(vec3<f32>(537f, -226f, -271f), 83435u, 266f);

var<private> global3: Struct_4;

var<private> global4: Struct_4 = Struct_4(vec3<f32>(1463f, -117f, -601f), 21348u, 484f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + 248f) * _wgslsmith_f_op_f32(global2.a.x + 1994f)), 846f), _wgslsmith_f_op_f32(-1000f * global1.b.a.x))), ~global3.b, global4.b, global1.b.a);
    var_0 = Struct_2(_wgslsmith_f_op_f32(round(-263f)), reverseBits(27460u), max(_wgslsmith_div_u32(u_input.c.x, 1u), ~reverseBits(0u)) >> (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.b, 1u, global4.b, global4.b)), countOneBits(vec4<u32>(global3.b, u_input.c.x, global2.b, var_0.b) & vec4<u32>(10289u, global2.b, 22120u, u_input.c.x))) % 32u), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c - global2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(552f, -1918f) - _wgslsmith_f_op_f32(f32(-1f) * -972f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b.a.x), -2225f)), global2.c, any(vec4<bool>(false, false, true, false))))));
    var var_1 = _wgslsmith_f_op_f32(round(global2.c));
    let var_2 = 20875u;
    let var_3 = Struct_1(u_input.d & abs(u_input.d), all(select(vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))), vec4<bool>(false, true, all(vec4<bool>(false, false, false, true)), true), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))))), false, 1u, select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false), all(vec4<bool>(false, false, false, false)) | true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false)), vec4<bool>(true, true, true, true)), vec4<bool>(!any(vec3<bool>(false, true, false)), !all(vec2<bool>(true, true)), any(vec2<bool>(false, false)) || (global3.b != 34579u), true | (4294967295u >= var_2))));
    return vec4<bool>(false, !(global2.a.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(886f + -997f) + _wgslsmith_f_op_f32(1119f + var_0.d.x))), !all(vec2<bool>(true, true)), true);
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -506f), 0u, global4.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(global3.a, global3.a)), _wgslsmith_f_op_vec3_f32(global3.a + vec3<f32>(global3.a.x, global1.b.a.x, 624f))))))));
    var var_1 = global2.b ^ ~0u;
    var var_2 = Struct_3(1i, ~62953u, Struct_1(-vec4<i32>(u_input.d.x, -1761i & u_input.a.x, _wgslsmith_div_i32(2147483647i, u_input.b.x), -u_input.d.x), 1u == (1u | global4.b), true, 22134u, func_3()));
    var_2 = Struct_3(~firstTrailingBit(-u_input.d.x | u_input.d.x), 67412u & u_input.c.x, var_2.c);
    global3 = global1.b;
    return global1.b;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_4, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) * -219f));
    var var_1 = Struct_3(~(-abs(0i)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(global1.b.b, 11731u, 1u) | 117648u, ~arg_2.b, global2.b, firstTrailingBit(global4.b)), min(~vec4<u32>(1u, arg_2.b, 14079u, u_input.c.x), vec4<u32>(abs(global3.b), global4.b, ~global1.b.b, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.a, global2.b, global2.b), vec4<u32>(23667u, u_input.c.x, 87762u, 21952u))))), Struct_1(u_input.d, true, !all(vec3<bool>(arg_1, arg_1, arg_1)) & select(u_input.d.x < arg_3, arg_1 | false, false), firstTrailingBit(global3.b), !select(select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, true, false, true), false), vec4<bool>(false, false, true, arg_1), true)));
    var var_2 = vec4<f32>(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(func_2(vec3<u32>(0u, 4294967295u, global1.a)).a.x, _wgslsmith_f_op_f32(trunc(global3.c))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.c)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1453f + var_0))), 308f)), global2.c);
    let var_3 = func_3();
    var var_4 = Struct_2(_wgslsmith_f_op_f32(max(var_0, 247f)), ~5576u, ~func_2(vec3<u32>(4294967295u, countOneBits(global4.b), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c))).b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.yxz) + _wgslsmith_f_op_vec3_f32(global2.a - vec3<f32>(arg_0, global1.b.c, global4.c)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(279f, 1511f, global4.a.x) + _wgslsmith_f_op_vec3_f32(floor(global3.a))), _wgslsmith_f_op_vec3_f32(global3.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1432f, -331f, var_2.x))))), !(~arg_3 < _wgslsmith_mod_i32(var_1.c.a.x, arg_3)))));
    return Struct_1(vec4<i32>(_wgslsmith_div_i32(countOneBits(u_input.a.x), 2147483647i), -1i, 2147483647i, _wgslsmith_add_i32(select(arg_3, var_1.c.a.x, any(var_1.c.e.xxz)), -_wgslsmith_add_i32(arg_3, 32380i))), -1510f != _wgslsmith_f_op_f32(-arg_2.a.x), any(!vec4<bool>(var_3.x & arg_1, true, var_1.c.c, !arg_1)), firstTrailingBit(global4.b), !func_3());
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = vec3<u32>(~53871u, ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.b, 65339u), vec2<u32>(65391u, global2.b)))), global1.b.b);
    let var_1 = Struct_5(func_2(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, var_0.x, global2.b), ~u_input.c))).b, global1.b);
    global1 = Struct_5(~global2.b, func_2(var_0));
    global4 = Struct_4(vec3<f32>(-1228f, _wgslsmith_f_op_f32(1069f * 1f), global3.a.x), ~_wgslsmith_add_u32(var_1.a, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.b.a.x - -543f), _wgslsmith_f_op_f32(-var_1.b.c), arg_0.e.x && true)))));
    var var_2 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-592f, -391f)), _wgslsmith_f_op_f32(max(334f, _wgslsmith_div_f32(global1.b.a.x, var_1.b.a.x)))), var_1.b.c)), any(select(select(vec4<bool>(arg_2.x, false, true, arg_0.b), func_3(), vec4<bool>(false, arg_2.x, true, true)), !(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)), !(!arg_0.e))), Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(var_1.b.a, vec3<f32>(global4.a.x, global1.b.a.x, var_1.b.c)))))), var_1.b.b, _wgslsmith_f_op_f32(min(global1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-351f, global1.b.c, true)))))), ~(-(~arg_0.a.x ^ 2147483647i))).d;
    return Struct_1(u_input.d, false, !(_wgslsmith_f_op_f32(var_1.b.a.x - _wgslsmith_f_op_f32(floor(-1217f))) != global3.c), arg_1, vec4<bool>(select(true, _wgslsmith_f_op_f32(f32(-1f) * -1702f) == _wgslsmith_f_op_f32(-736f * global2.a.x), arg_2.x), true, _wgslsmith_mult_u32(arg_1 >> (4294967295u % 32u), global4.b) != var_0.x, arg_2.x));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> vec4<i32> {
    let var_0 = Struct_3(u_input.d.x, ~1u, func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.c)) + _wgslsmith_f_op_f32(global1.b.a.x + 1000f)), true, func_2(vec3<u32>(global2.b, 15834u, 0u)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, 2147483647i), countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, -1i)))), 14670u, func_4(414f, true, func_2(abs(vec3<u32>(0u, global1.b.b, 4294967295u))), u_input.a.x).e));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-707f, 222f)) - -277f) + _wgslsmith_f_op_f32(trunc(arg_1.c))))) - -123f);
    let var_2 = !(!var_0.c.e.zwx);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c)))));
    global2 = Struct_4(vec3<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c)) * _wgslsmith_f_op_f32(round(global1.b.c))))), _wgslsmith_f_op_f32(ceil(234f))), _wgslsmith_div_u32(global1.b.b, max(global4.b, 1u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(func_2(vec3<u32>(global4.b, 0u, 64628u)).c)))));
    return firstLeadingBit(_wgslsmith_div_vec4_i32(var_0.c.a & func_4(func_2(u_input.c).a.x, func_4(global4.c, var_0.c.c, Struct_4(global3.a, var_0.b, 230f), -2147483647i).e.x, global1.b, var_0.c.a.x & u_input.d.x).a, vec4<i32>(~max(u_input.b.x, u_input.d.x), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, var_0.a, u_input.b.x), u_input.d.zyx), select(u_input.d.yxw, vec3<i32>(u_input.b.x, u_input.d.x, var_0.a), var_2)), -(~var_0.a), -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c, -591f, 827f, 300f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c, -572f, global2.a.x, 705f)), vec4<f32>(global1.b.c, global1.b.c, -1919f, 125f), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-2198f, 1615f, -182f, 358f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4.a.x, 1000f, 1000f, global4.a.x), vec4<f32>(-196f, 1000f, global2.c, -986f)))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(global1.b.a.xy, global4.a.zz));
    var_1 = var_0.zx;
    var var_2 = _wgslsmith_mod_vec4_i32(u_input.d, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d & vec4<i32>(-3122i, u_input.b.x, -2147483647i, -24752i), ~vec4<i32>(-2147483647i, u_input.d.x, -50i, u_input.d.x)), firstTrailingBit(u_input.d)) ^ -func_1(all(vec3<bool>(false, false, true)), Struct_4(vec3<f32>(var_0.x, global2.a.x, var_0.x), global3.b, var_1.x)));
    let var_3 = var_2.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global2.a - _wgslsmith_div_vec3_f32(global3.a, vec3<f32>(var_0.x, 166f, 443f))))) * _wgslsmith_f_op_vec3_f32(-global4.a)));
    var var_5 = -(vec3<i32>(-1i) * -(~vec3<i32>(var_2.x, u_input.d.x, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-21911i, u_input.d.x, var_5.x), vec3<i32>(u_input.b.x, var_5.x, var_5.x)) | select(var_2.xww, vec3<i32>(u_input.d.x, 11453i, u_input.d.x), true), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, u_input.d.x, -8125i), u_input.d.yyx, var_2.xwy))), 41677i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, u_input.b.x), _wgslsmith_mod_vec2_i32(vec2<i32>(~var_2.x, 1i), -u_input.b)));
}

