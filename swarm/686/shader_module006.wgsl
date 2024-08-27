struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    var var_0 = ~u_input.e.wwy;
    var_0 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(40145i, arg_3.a), u_input.d.x, u_input.e.x), abs(u_input.e.xxy) ^ ~vec3<i32>(arg_3.a, 4375i, arg_1.d)) | vec3<i32>(-2147483647i, ~(~var_0.x), _wgslsmith_dot_vec4_i32(firstLeadingBit(~u_input.e), ~u_input.e));
    var var_1 = Struct_2(arg_3, countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.c), ~vec3<u32>(u_input.c, u_input.c, 4294967295u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(7284u, 4294967295u, 0u)))), arg_2.x, Struct_1(1i, vec4<bool>(!(var_0.x == -421i), any(vec4<bool>(true, false, false, false)), true, arg_1.b.x), arg_1.c != all(!arg_1.b), arg_1.d & 1i), Struct_1(_wgslsmith_mult_i32(2147483647i, 0i), select(vec4<bool>(arg_0.x, true, arg_0.x, any(arg_0.wz)), vec4<bool>(true, arg_1.c, var_0.x != var_0.x, !arg_1.b.x), arg_2), arg_0.x, ~u_input.b.x));
    var_1 = Struct_2(Struct_1(abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 0i, var_1.e.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, -38541i, 4435i), u_input.e.yyz, vec3<i32>(u_input.e.x, var_1.e.a, -6773i)))), select(vec4<bool>(false, select(true, arg_2.x, var_1.c), !arg_1.b.x, arg_0.x), vec4<bool>(all(arg_3.b), false | arg_2.x, true, true), var_1.e.b), var_1.a.c, _wgslsmith_div_i32(_wgslsmith_div_i32(firstTrailingBit(var_1.d.d), arg_3.a), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.e.wzx, vec3<i32>(-4312i, 1i, -1i)), countOneBits(-3378i)))), max(_wgslsmith_mult_vec3_u32(var_1.b >> (var_1.b % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(var_1.b.x, u_input.c)), 1u, 0u)), var_1.b), false, var_1.d, Struct_1(arg_1.a << (~var_1.b.x % 32u), arg_1.b, false, ~arg_3.d));
    let var_2 = Struct_3(Struct_2(var_1.d, ~var_1.b, !arg_1.c, var_1.d, var_1.e), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-561f, -915f) - vec2<f32>(-366f, -291f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1936f, -1230f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1521f)) * _wgslsmith_f_op_f32(f32(-1f) * -914f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-369f))))), all(arg_0.wx), arg_1);
    return arg_1.b.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = Struct_3(Struct_2(arg_1, ~firstTrailingBit(countOneBits(vec3<u32>(68574u, u_input.c, u_input.c))), all(vec2<bool>(true && arg_1.c, func_3(arg_1.b, Struct_1(-2147483647i, arg_1.b, arg_0.x, u_input.e.x), arg_1.b, arg_1))), Struct_1(max(u_input.a.x, -1i), !vec4<bool>(false, true, arg_0.x, arg_0.x), arg_0.x, 0i), arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-186f, _wgslsmith_f_op_f32(abs(169f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-345f, 615f) - vec2<f32>(-328f, 352f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-868f, -972f) + vec2<f32>(116f, -1331f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 546f) - 1267f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1217f) + _wgslsmith_f_op_f32(floor(1096f)))), 441f, arg_0.x)), arg_0.x, arg_1);
    let var_1 = Struct_2(Struct_1(_wgslsmith_add_i32(-55749i, ~arg_2 | arg_1.a), vec4<bool>(var_0.d, var_0.e.c, !arg_1.c, var_0.c >= _wgslsmith_f_op_f32(sign(var_0.b.x))), true, _wgslsmith_mod_i32(abs(arg_2), arg_2)), countOneBits(~var_0.a.b << (~(~var_0.a.b) % vec3<u32>(32u))), ~var_0.a.b.x == ~(~(~1u)), Struct_1(-_wgslsmith_sub_i32(arg_1.a, 0i), vec4<bool>(arg_0.x, true || !var_0.e.c, !(!arg_1.c), true), !var_0.e.b.x, 1i), arg_1);
    var_0 = Struct_3(Struct_2(var_0.a.e, vec3<u32>(4294967295u, 37173u, var_0.a.b.x) >> (select(~vec3<u32>(var_0.a.b.x, 29537u, u_input.c), ~vec3<u32>(var_0.a.b.x, 0u, var_0.a.b.x), var_1.c) % vec3<u32>(32u)), any(var_0.e.b.wx), arg_1, Struct_1(u_input.e.x, select(arg_1.b, vec4<bool>(arg_1.c, var_1.a.b.x, true, arg_1.b.x), vec4<bool>(true, arg_0.x, true, arg_0.x)), var_0.b.x >= var_0.b.x, -(~var_0.e.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(ceil(var_0.b.x))) + vec2<f32>(var_0.c, 746f)), -189f, arg_1.b.x || var_0.d, var_1.d);
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(65367u, 4294967295u, 25173u, u_input.c))), vec4<u32>(_wgslsmith_sub_u32(~var_0.a.b.x, ~646u), u_input.c, var_1.b.x, _wgslsmith_add_u32(select(u_input.c, 4294967295u, true), 0u))), 1u);
    let var_3 = vec4<f32>(-1166f, var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -356f), -245f);
    return var_0.a.b.x;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-758f))), -1181f)) * _wgslsmith_div_f32(613f, -260f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - 951f))) * 871f);
    var var_1 = vec3<u32>(~((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.c, u_input.c)) & func_2(vec2<bool>(true, false), Struct_1(u_input.e.x, vec4<bool>(true, var_0, true, true), var_0, -1i), u_input.d.x)) >> ((8709u >> (1u % 32u)) % 32u)), 7123u, abs(u_input.c));
    var var_2 = Struct_1(min(i32(-1i) * -_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, firstTrailingBit(u_input.a.x), ~u_input.e.x), _wgslsmith_mult_vec3_i32(countOneBits(u_input.e.wzw), ~u_input.e.wyy))), vec4<bool>(true, func_3(!select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, var_0, true, false), false), Struct_1(-2147483647i, !vec4<bool>(var_0, var_0, var_0, false), any(vec3<bool>(var_0, true, var_0)), countOneBits(-32368i)), !select(vec4<bool>(var_0, false, false, var_0), vec4<bool>(var_0, var_0, var_0, true), var_0), Struct_1(firstLeadingBit(u_input.e.x), vec4<bool>(false, true, false, true), true, -1i)), func_3(vec4<bool>(var_0, false, var_0, all(vec3<bool>(true, var_0, false))), Struct_1(-2147483647i, !vec4<bool>(var_0, false, true, var_0), var_0, u_input.a.x), select(select(vec4<bool>(false, true, var_0, false), vec4<bool>(false, false, var_0, var_0), vec4<bool>(var_0, var_0, true, var_0)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, var_0, var_0, var_0), var_0), select(vec4<bool>(var_0, var_0, true, true), vec4<bool>(var_0, true, var_0, true), var_0)), Struct_1(-u_input.d.x, !vec4<bool>(var_0, true, true, var_0), true, ~9974i)), func_3(vec4<bool>(!var_0, !var_0, all(vec3<bool>(false, false, var_0)), true), Struct_1(firstTrailingBit(u_input.e.x), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(true, var_0, var_0, false), var_0), var_0, u_input.b.x), vec4<bool>(false, false, func_3(vec4<bool>(var_0, var_0, false, false), Struct_1(-2147483647i, vec4<bool>(true, var_0, true, var_0), false, -5401i), vec4<bool>(true, var_0, var_0, var_0), Struct_1(0i, vec4<bool>(false, false, var_0, var_0), true, 10453i)), true), Struct_1(-7058i, !vec4<bool>(var_0, var_0, false, true), true, 0i))), any(select(!(!vec2<bool>(false, var_0)), !(!vec2<bool>(var_0, false)), select(vec2<bool>(true, var_0), select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), vec2<bool>(var_0, true)), true))), u_input.a.x);
    let var_3 = !var_0;
    var_1 = ~vec3<u32>(1u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(32271u, u_input.c, 1u) << (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u)), vec3<u32>(var_1.x, 4294967295u, ~1u)));
    return Struct_2(Struct_1(_wgslsmith_mod_i32(~var_2.a, _wgslsmith_div_i32(-2147483647i, u_input.a.x) | 1i), select(select(!var_2.b, vec4<bool>(true, false, false, var_3), true), !vec4<bool>(var_2.b.x, false, true, false), var_2.b), true, 1i), abs(_wgslsmith_sub_vec3_u32(firstTrailingBit(firstTrailingBit(vec3<u32>(4294967295u, var_1.x, 37914u))), ~vec3<u32>(26364u, 24002u, var_1.x))), true, Struct_1(_wgslsmith_dot_vec4_i32(-u_input.e >> (_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c, 5201u, u_input.c), vec4<u32>(11628u, u_input.c, var_1.x, var_1.x)) % vec4<u32>(32u)), min(vec4<i32>(-1i, -51585i, 2147483647i, var_2.d), vec4<i32>(var_2.d, var_2.a, u_input.a.x, var_2.d)) & -vec4<i32>(u_input.e.x, u_input.d.x, var_2.d, u_input.b.x)), select(vec4<bool>(true, var_0 != var_3, u_input.c <= var_1.x, var_3), var_2.b, !(!var_3)), true, _wgslsmith_clamp_i32(_wgslsmith_div_i32(min(var_2.d, 1i), 1i & u_input.d.x), _wgslsmith_div_i32(-2147483647i, 2147483647i), -u_input.d.x ^ -1i)), Struct_1(countOneBits(-(~17689i)), vec4<bool>((var_1.x & 27446u) <= 1u, any(select(vec2<bool>(var_3, var_3), var_2.b.wy, false)), !var_3, false), var_0, ~_wgslsmith_mod_i32(-28585i, u_input.b.x)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = -(~(~(-2147483647i)));
    let var_1 = func_1().d;
    var var_2 = func_1();
    let var_3 = func_1();
    let var_4 = var_3;
    return var_4.d.b.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(21386u, ~(~0u));
    var_0 = ~abs(0u);
    let var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(false, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false)), !func_4(Struct_3(func_1(), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(794f, 938f), vec2<f32>(1463f, -764f))), _wgslsmith_f_op_f32(-1931f * 666f), select(true, true, false), func_1().d), 4294967295u, Struct_1(1i, vec4<bool>(false, false, false, false), true, ~u_input.e.x)), vec2<bool>(true, true));
    var var_2 = Struct_1(_wgslsmith_mult_i32(1i, 1i), vec4<bool>(true, true, true, true), var_1.x, firstLeadingBit(u_input.a.x));
    var var_3 = !func_1().d.b.zyz;
    var_3 = var_2.b.wyz;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~func_2(select(var_3.zy, var_3.xz, true), Struct_1(u_input.b.x, vec4<bool>(var_3.x, var_2.b.x, false, var_2.c), var_1.x, u_input.b.x), var_2.d)), vec2<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(68780u, 1u), countOneBits(vec2<u32>(u_input.c, u_input.c)), !vec2<bool>(var_2.b.x, false)), ~(~vec2<u32>(u_input.c, 77455u))), _wgslsmith_clamp_u32(~u_input.c, u_input.c, 3138u << ((u_input.c & u_input.c) % 32u))), _wgslsmith_div_u32(4294967295u, func_1().b.x), max(reverseBits(min(~25751u, _wgslsmith_mult_u32(92365u, u_input.c))), max(_wgslsmith_sub_u32(28841u, u_input.c), u_input.c)), u_input.b);
}

