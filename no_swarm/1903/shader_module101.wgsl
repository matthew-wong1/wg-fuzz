struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: vec4<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -15255i);

var<private> global1: Struct_1;

var<private> global2: vec3<f32> = vec3<f32>(981f, 3201f, 1000f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> f32 {
    var var_0 = -vec4<i32>(select(-_wgslsmith_dot_vec2_i32(arg_0.a.zz, arg_0.a.yz), global1.a.x, !select(false, false, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(-5752i, global1.a.x, ~(-49845i)), vec3<i32>(-u_input.d, global1.a.x, ~0i)), _wgslsmith_clamp_i32(global1.a.x, u_input.d, -_wgslsmith_add_i32(2147483647i, u_input.d)), -10758i);
    let var_1 = (global1.a.x >> ((5894u << (~(global1.d | 1u) % 32u)) % 32u)) >= u_input.d;
    let var_2 = arg_0.d;
    var var_3 = all(vec2<bool>(true, true));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, arg_1.x, -1073f)), vec3<f32>(-435f, global1.b, 1294f))), vec3<f32>(-1328f, -1305f, global1.b)))));
    return _wgslsmith_f_op_f32(floor(-1000f));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(866f, global1.b, global2.x, -551f) + vec4<f32>(global2.x, global1.b, -290f, global1.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-134f, global1.b, global1.b, global1.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -101f, global2.x, 1335f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1306f, global2.x, 1166f)))) * vec4<f32>(global1.b, _wgslsmith_f_op_f32(func_3(Struct_1(global1.a, global2.x, global1.c, u_input.b.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, global1.b, global2.x, global2.x))))), _wgslsmith_f_op_f32(740f * 279f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(901f + global1.b), 167f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-567f, -429f, -987f, -508f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-791f, 615f, global2.x, -243f) - vec4<f32>(-817f, global2.x, global1.b, -947f))))) - vec4<f32>(381f, _wgslsmith_f_op_f32(func_3(Struct_1(arg_0, -578f, u_input.c, 0u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-919f, global1.b, global2.x, -495f))))), _wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(-1522f * _wgslsmith_f_op_f32(f32(-1f) * -775f)))));
    global2 = vec3<f32>(-750f, var_0.x, global2.x);
    var var_1 = Struct_4(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(~34406u, ~4294967295u), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(34870u, 83054u)), u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, 58222u, 42404u) | ~vec4<u32>(global1.c, 21929u, global1.c, u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(54185u, global1.c, 62069u, 85527u), vec4<u32>(1u, global1.c, 26630u, 1u)))), 2062f, vec4<bool>(any(vec4<bool>(true, true, true, true)), select(true, all(vec2<bool>(true, true)), false), true, all(vec4<bool>(true, true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.b, _wgslsmith_f_op_f32(1382f - _wgslsmith_f_op_f32(-568f * var_0.x)))), var_0.x), Struct_1(reverseBits(min(_wgslsmith_clamp_vec3_i32(arg_0, vec3<i32>(-10044i, arg_0.x, -57688i), vec3<i32>(u_input.d, global1.a.x, u_input.d)), ~arg_0)), -1763f, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.c, 35909u), vec2<u32>(76405u, global1.d), u_input.b)), u_input.b), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(global1.d, global1.d, 4294967295u), vec3<u32>(u_input.b.x, global1.d, global1.c), vec3<bool>(true, true, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(10883u, 11609u, u_input.c), vec3<u32>(4294967295u, 0u, 0u)))));
    global1 = var_1.e;
    var_1 = Struct_4(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -607f), select(vec4<bool>(var_1.c.x, var_1.c.x, false, var_1.c.x), var_1.c, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -476f)), Struct_1(_wgslsmith_add_vec3_i32(var_1.e.a << (var_1.a.xyy % vec3<u32>(32u)), ~var_1.e.a) >> (firstLeadingBit(var_1.a.zww) % vec3<u32>(32u)), _wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b)))), ~(_wgslsmith_mod_u32(u_input.b.x, var_1.e.c) | firstLeadingBit(79391u)), ~0u));
    return select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.a.x, var_1.e.a.x), reverseBits(vec3<i32>(global0.x, 27372i, -21692i)) << ((var_1.a.wxz << (vec3<u32>(var_1.a.x, var_1.e.d, 95249u) % vec3<u32>(32u))) % vec3<u32>(32u))), ~(-2147483647i), var_1.c.x) < ~0i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec3<u32>) -> Struct_2 {
    return Struct_2(global1.d);
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(946f - _wgslsmith_f_op_f32(max(global1.b, global2.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1041f, _wgslsmith_f_op_f32(499f + -1289f))))) - global2.x), -522f);
    var var_0 = vec3<bool>(all(vec3<bool>(true, true, true)), true, select(select(true, true, true), false, _wgslsmith_sub_i32(0i, global1.a.x) > 1i));
    var_0 = !select(!(!(!vec3<bool>(false, false, var_0.x))), !select(vec3<bool>(var_0.x, false, var_0.x), !vec3<bool>(var_0.x, var_0.x, true), false), vec3<bool>(true, var_0.x, all(vec4<bool>(false, true, var_0.x, var_0.x))));
    let var_1 = func_4(vec4<i32>(~u_input.d, abs(select(u_input.d, _wgslsmith_mult_i32(u_input.d, 4122i), var_0.x)), global1.a.x, -14607i), select(!vec4<bool>(all(vec3<bool>(true, true, false)), false, !var_0.x, var_0.x), select(!vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, false || var_0.x, var_0.x, true), select(vec4<bool>(true, true, var_0.x, false), select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x)), func_2(vec3<i32>(global0.x, global0.x, 0i)))), vec4<bool>(all(vec2<bool>(var_0.x, var_0.x)), !any(var_0.zy), false, true && all(vec2<bool>(var_0.x, var_0.x)))), ~vec3<u32>(_wgslsmith_div_u32(76866u, u_input.c | 4294967295u), ~0u, ~arg_0.a | firstTrailingBit(0u)));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.b)), 429f, -220f);
    return Struct_3(func_4(vec4<i32>(global1.a.x, global0.x ^ u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(39272i, u_input.d, -55509i), vec3<i32>(global1.a.x, -27453i, global1.a.x)), ~global1.a.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(global1.d, u_input.b.x, 0u, 1116u), vec4<u32>(1u, arg_0.a, var_1.a, var_1.a)) % vec4<u32>(32u)), !(!vec4<bool>(true, false, false, var_0.x)), select(vec3<u32>(16731u, 0u, 43499u), ~vec3<u32>(1u, 44656u, global1.c), var_0.x) ^ vec3<u32>(0u, global1.d >> (4294967295u % 32u), firstLeadingBit(arg_0.a))), Struct_1(abs(~(-vec3<i32>(u_input.a, global0.x, -370i))), -116f, 55022u, arg_0.a), all(vec3<bool>(false, !var_0.x, true)), Struct_1(~min(global1.a, select(global1.a, global1.a, var_0.x)), -1936f, _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 28277u), vec2<u32>(1u, 4294967295u)), _wgslsmith_mod_u32(35436u, max(var_1.a, ~4294967295u))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> vec4<bool> {
    global2 = arg_2;
    let var_0 = func_5(func_4(firstTrailingBit(vec4<i32>(~global0.x, countOneBits(arg_0.x), ~(-12357i), 2511i)), vec4<bool>(true, false, false, select(true, func_2(vec3<i32>(49153i, -54380i, 29967i)), all(vec3<bool>(false, true, false)))), countOneBits(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 1u), 1u, ~0u))));
    var var_1 = ~50513u;
    let var_2 = Struct_4(vec4<u32>(4294967295u, var_0.d.c, ~var_0.b.c, _wgslsmith_add_u32(~2806u, _wgslsmith_sub_u32(~1u, global1.d))), arg_2.x, select(vec4<bool>(true, any(!vec4<bool>(false, false, true, var_0.c)), !any(vec3<bool>(var_0.c, true, false)), all(vec2<bool>(true, var_0.c))), vec4<bool>(any(vec4<bool>(var_0.c, false, false, false)), false, var_0.c, (var_0.c && var_0.c) || var_0.c), !var_0.c), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.x)) * _wgslsmith_div_f32(-1000f, -1603f)), _wgslsmith_f_op_f32(trunc(164f))))), var_0.b);
    var var_3 = ~(~countOneBits(vec3<u32>(u_input.c, 60306u, var_2.e.d)) & var_2.a.yyz);
    return select(var_2.c, select(var_2.c, var_2.c, (max(0u, var_0.b.d) <= (20819u >> (global1.d % 32u))) & var_0.c), !var_2.c.x);
}

fn func_6(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    var var_0 = min(u_input.a | -_wgslsmith_div_i32(~u_input.d, 1i), firstTrailingBit(select(1i, global0.x, true) ^ min(~36661i, firstTrailingBit(u_input.d))));
    global1 = Struct_1(firstTrailingBit(vec3<i32>(~(i32(-1i) * -2147483647i), global0.x, max(func_5(Struct_2(33581u)).d.a.x, 0i))), global1.b, 1u, ~0u);
    let var_1 = func_5(func_4(vec4<i32>(2147483647i, -12358i, global0.x, -2147483647i), select(vec4<bool>(all(vec3<bool>(true, arg_1, arg_1)), false, !arg_2.x, true), vec4<bool>(arg_1, 1u == arg_0.x, !arg_1, !arg_1), arg_2), ~(~vec3<u32>(global1.c, arg_0.x, global1.d))));
    var var_2 = !vec4<bool>(arg_2.x || !arg_1, false, false, arg_1);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(667f, global1.b, 1000f, -866f), vec4<f32>(global1.b, global1.b, global2.x, global2.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1872f, global1.b, -1628f) * vec4<f32>(global1.b, global2.x, var_1.d.b, global2.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, 1248f, -753f) - vec4<f32>(1652f, global2.x, -381f, var_1.d.b)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1446f, 190f, -3279f, -264f), vec4<f32>(103f, -1277f, var_1.b.b, 1000f), arg_1))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(295f, global1.b, 486f, -777f)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, 722f, global2.x, global1.b))))));
    return -483f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(~(~u_input.b), any(!func_1(global1.a.xz, Struct_2(u_input.b.x), vec3<f32>(global2.x, global2.x, global2.x))), vec4<bool>(all(func_1(vec2<i32>(global1.a.x, global1.a.x), Struct_2(10433u), vec3<f32>(354f, 648f, global2.x))), any(vec2<bool>(true, true)), false, false))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.b, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))))) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(1641f, -1000f), global1.b), -893f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, 1f)), _wgslsmith_div_f32(global2.x, -286f)));
    let var_1 = 125233u;
    let var_2 = Struct_4(vec4<u32>(0u, var_1, 2211u, var_1) & ((select(vec4<u32>(1u, 22295u, 0u, 82163u), vec4<u32>(0u, 0u, global1.d, 15632u), vec4<bool>(false, true, false, true)) ^ (vec4<u32>(73662u, 43675u, 42822u, global1.d) & vec4<u32>(38080u, 4294967295u, 0u, u_input.c))) & _wgslsmith_add_vec4_u32(vec4<u32>(var_1, 56965u, 56020u, global1.c), select(vec4<u32>(global1.d, var_1, global1.c, global1.d), vec4<u32>(var_1, 4294967295u, 1u, u_input.c), false))), global2.x, !select(vec4<bool>(false, false, true, all(vec3<bool>(true, false, true))), !func_1(vec2<i32>(0i, global1.a.x), Struct_2(1u), vec3<f32>(global2.x, global1.b, -2687f)), global0.x <= u_input.a), global2.x, Struct_1(_wgslsmith_clamp_vec3_i32(firstLeadingBit(global1.a), select(vec3<i32>(global1.a.x, u_input.a, u_input.a), -global1.a, all(vec3<bool>(true, false, true))), global1.a), _wgslsmith_f_op_f32(-global1.b), func_4(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, -40542i, u_input.d, -60940i), countOneBits(vec4<i32>(u_input.d, 35055i, -33263i, -74556i)), vec4<i32>(u_input.a, global1.a.x, -1i, u_input.a) << (vec4<u32>(u_input.c, 1u, 44342u, var_1) % vec4<u32>(32u))), vec4<bool>(true, all(vec3<bool>(false, false, true)), true, true), ~(~vec3<u32>(global1.d, var_1, 0u))).a, var_1));
    var_0 = _wgslsmith_f_op_f32(floor(-1080f));
    var var_3 = i32(-1i) * -(global0.x & _wgslsmith_add_i32(44525i, global0.x));
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.e.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x - 1590f))) + _wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(max(global2.x, -1404f)))), _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, var_2.d, 564f), vec3<f32>(global1.b, var_2.d, global2.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1342f, -735f, 285f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-595f, -1510f, 1000f))))), vec3<bool>(!any(vec4<bool>(false, var_2.c.x, false, var_2.c.x)), true, any(select(vec3<bool>(var_2.c.x, var_2.c.x, var_2.c.x), vec3<bool>(false, var_2.c.x, false), var_2.c.wzw))))));
    var var_4 = 27896u > _wgslsmith_clamp_u32(~(~(var_1 & global1.d)), global1.c, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-396f)), -675f, var_2.e.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(var_2.e.b * -1341f), var_2.d) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, var_2.b, -784f) + vec3<f32>(918f, global1.b, 545f)))))));
}

