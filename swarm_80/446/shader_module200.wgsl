struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(541f, 167f, 114f, -888f), vec4<f32>(2045f, -1791f, -1109f, 337f), vec4<f32>(886f, -700f, -648f, 471f), vec4<f32>(-1049f, 822f, 157f, -1400f), vec4<f32>(-564f, 1000f, 1000f, 236f), vec4<f32>(664f, -706f, -289f, 158f), vec4<f32>(-491f, 1282f, -1138f, 1381f), vec4<f32>(-499f, 579f, -674f, -182f));

var<private> global1: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = Struct_3(u_input.a, vec4<u32>(arg_0, 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(1u, arg_0, 4353u)), ~vec3<u32>(arg_0, arg_0, arg_0)) & arg_0, _wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(~17035u, arg_0 | arg_0))), Struct_1(-vec2<i32>(u_input.b << (4294967295u % 32u), abs(-16111i)), all(vec4<bool>(true, false, true, true)), -22769i, arg_0 >> (~u_input.a % 32u)));
    var var_1 = Struct_4(~select(vec4<i32>(1i, var_0.c.a.x, -1i, 0i ^ var_0.c.c), vec4<i32>(var_0.c.c >> (4294967295u % 32u), var_0.c.a.x, ~u_input.b, 16321i >> (arg_0 % 32u)), vec4<bool>(!var_0.c.b, true, true, all(vec3<bool>(true, true, var_0.c.b)))), Struct_2(~(~(~u_input.a)), var_0.c, ~(-33428i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-670f, _wgslsmith_f_op_f32(min(241f, 644f)))), var_0.c), arg_0, Struct_2(reverseBits(46245u), Struct_1(~firstTrailingBit(var_0.c.a), !all(vec4<bool>(true, var_0.c.b, false, true)), -69348i, ~_wgslsmith_div_u32(var_0.c.d, u_input.a)), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.c.c, -4426i), max(4667i, -20567i)), 0i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f + -488f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-198f)))), var_0.c));
    global0 = array<vec4<f32>, 8>();
    var_0 = Struct_3(u_input.a, vec4<u32>(u_input.a, _wgslsmith_mult_u32(abs(var_0.c.d), ~var_1.d.e.d), _wgslsmith_mult_u32(1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_0.b.x, arg_0, arg_0), vec4<u32>(var_1.b.b.d, var_1.d.b.d, 15668u, arg_0)))), ~(~arg_0)), Struct_1(var_1.a.xw & var_1.d.e.a, false && select(var_1.b.b.b, any(vec4<bool>(true, var_1.b.b.b, var_1.d.e.b, false)), var_0.c.b), abs(7477i), var_0.a));
    var_1 = Struct_4(vec4<i32>(var_1.d.e.c, _wgslsmith_mod_i32(~countOneBits(var_0.c.c), -(i32(-1i) * -19976i)), -35571i, _wgslsmith_dot_vec3_i32(var_1.a.zzz, -_wgslsmith_mult_vec3_i32(var_1.a.yzw, var_1.a.wyy))), Struct_2(62874u, var_0.c, 0i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d.d))), var_1.d.e), 1u, var_1.b);
    return select(select(!vec4<bool>(var_0.c.b, true, select(false, var_1.d.b.b, var_0.c.b), true), vec4<bool>(var_1.b.b.b, true, true, var_1.b.e.b), u_input.b < var_1.d.b.a.x), select(select(select(vec4<bool>(var_0.c.b, true, var_1.d.e.b, var_0.c.b), vec4<bool>(true, var_0.c.b, true, true), var_1.b.e.b), select(!vec4<bool>(var_1.d.e.b, var_1.d.e.b, false, true), !vec4<bool>(var_1.d.b.b, false, false, true), any(vec3<bool>(var_1.d.e.b, var_1.d.e.b, var_0.c.b))), all(!vec4<bool>(var_1.b.b.b, var_1.b.e.b, true, false))), vec4<bool>(!(!var_0.c.b), true, ~u_input.a >= u_input.a, false), select(vec4<bool>(-1i == u_input.b, var_1.b.e.b, all(vec3<bool>(true, var_0.c.b, false)), true), select(select(vec4<bool>(var_1.d.e.b, true, false, true), vec4<bool>(var_0.c.b, var_1.d.e.b, true, true), vec4<bool>(true, var_1.d.b.b, true, var_0.c.b)), !vec4<bool>(var_0.c.b, false, var_0.c.b, true), var_0.c.b), true)), !(true || !all(vec2<bool>(true, var_1.d.b.b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_4) -> bool {
    var var_0 = Struct_3(max(arg_1, ~(~_wgslsmith_mult_u32(arg_2.d.a, 14285u))), min(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_2.c, u_input.a, arg_1, arg_1), vec4<u32>(abs(4294967295u), _wgslsmith_mult_u32(4294967295u, arg_1), ~4294967295u, _wgslsmith_mult_u32(1u, arg_2.c))), _wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_1, 0u, 20104u), vec4<u32>(arg_1, 0u, 33942u, 52341u), vec4<u32>(arg_1, u_input.a, arg_1, 4294967295u)), vec4<u32>(reverseBits(u_input.a), ~arg_1, reverseBits(arg_1), ~arg_2.d.e.d), vec4<u32>(~u_input.a, countOneBits(u_input.a), 1u, abs(26024u)))), arg_2.b.b);
    let var_1 = select(-vec3<i32>(-arg_2.d.b.a.x >> (~0u % 32u), -1i, 12062i), vec3<i32>(select(_wgslsmith_dot_vec4_i32(arg_2.a, vec4<i32>(25001i, -39514i, var_0.c.c, arg_0.x)), -u_input.b, true), arg_2.d.e.a.x, arg_0.x) | arg_0, all(select(vec2<bool>(false, true), vec2<bool>(select(var_0.c.b, arg_2.b.e.b, false), var_0.c.b), select(vec2<bool>(arg_2.d.b.b, var_0.c.b), vec2<bool>(arg_2.b.b.b, false), arg_2.b.b.b))));
    let var_2 = vec2<bool>(var_0.c.b, u_input.b <= (i32(-1i) * -33056i));
    let var_3 = all(select(func_3(_wgslsmith_mod_u32(arg_2.d.a, 4294967295u)), !select(vec4<bool>(arg_2.d.b.b, false, var_2.x, var_2.x), vec4<bool>(arg_2.d.e.b, var_2.x, var_2.x, var_2.x), vec4<bool>(arg_2.d.e.b, var_0.c.b, false, true)), vec4<bool>(!var_2.x, var_0.c.b, true, arg_2.b.d > arg_2.b.d))) || false;
    global1 = var_0.c.a.x;
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_5(-reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-754f, -1675f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(516f, _wgslsmith_f_op_f32(step(-1222f, -875f)))) * -515f));
    let var_1 = 399f;
    var_0 = Struct_5(vec4<i32>(1i, min(-51425i, -select(var_0.a.x, 2147483647i, var_0.b)), ~(-_wgslsmith_div_i32(u_input.b, 45935i)), -2147483647i), true);
    let var_2 = !select(vec3<bool>(var_0.b, !(var_1 <= -1270f), true), select(select(!vec3<bool>(true, var_0.b, false), vec3<bool>(var_0.b, false, true), vec3<bool>(var_0.b, var_0.b, true)), vec3<bool>(all(vec4<bool>(false, true, var_0.b, var_0.b)), all(vec4<bool>(true, var_0.b, var_0.b, var_0.b)), true), !func_2(vec3<i32>(u_input.b, -37403i, u_input.b), u_input.a, Struct_4(var_0.a, Struct_2(u_input.a, Struct_1(var_0.a.zw, var_0.b, 30159i, 2072u), var_0.a.x, var_1, Struct_1(vec2<i32>(-47073i, var_0.a.x), true, -2147483647i, 81071u)), u_input.a, Struct_2(u_input.a, Struct_1(vec2<i32>(u_input.b, var_0.a.x), var_0.b, 65465i, 1u), 26248i, 2075f, Struct_1(vec2<i32>(-1i, 1i), var_0.b, u_input.b, 43523u))))), all(vec4<bool>(var_0.b, var_0.b, any(vec2<bool>(var_0.b, true)), func_2(vec3<i32>(var_0.a.x, 7537i, -23913i), 59387u, Struct_4(var_0.a, Struct_2(u_input.a, Struct_1(var_0.a.wz, true, var_0.a.x, u_input.a), -50276i, var_1, Struct_1(var_0.a.xx, false, var_0.a.x, u_input.a)), u_input.a, Struct_2(4294967295u, Struct_1(vec2<i32>(-2147483647i, -2147483647i), true, 11429i, 83773u), 24544i, -520f, Struct_1(var_0.a.yw, false, var_0.a.x, 1u)))))));
    let var_3 = !(!vec2<bool>(var_2.x, var_0.b));
    return Struct_1(max(vec2<i32>(_wgslsmith_dot_vec3_i32(~var_0.a.xwx, var_0.a.zyx ^ vec3<i32>(-2147483647i, u_input.b, 0i)), _wgslsmith_div_i32(~u_input.b, 1i & var_0.a.x)), var_0.a.zz), var_2.x, u_input.b, countOneBits(~(~u_input.a)) ^ 7461u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 24896i;
    let var_0 = Struct_2(u_input.a, func_1(), _wgslsmith_div_i32(u_input.b, abs(u_input.b)), _wgslsmith_f_op_f32(min(180f, -829f)), func_1());
    var var_1 = !select(vec2<bool>(any(!vec2<bool>(var_0.e.b, true)), true), vec2<bool>(true, !var_0.e.b), var_0.e.b);
    global1 = i32(-1i) * -50821i;
    let var_2 = Struct_5(~(-(-vec4<i32>(u_input.b, var_0.e.a.x, -2147483647i, -5500i) & vec4<i32>(16652i, -49352i, var_0.c, var_0.e.c))), false);
    var var_3 = var_1.x;
    let var_4 = vec2<bool>(var_0.b.b, -989f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -634f), _wgslsmith_f_op_f32(floor(var_0.d)))) - _wgslsmith_f_op_f32(-1469f - -1272f)));
    var var_5 = -_wgslsmith_sub_i32(u_input.b, _wgslsmith_sub_i32(-36944i, var_0.c & -49759i)) ^ 0i;
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(~firstLeadingBit(u_input.a), max(~55243u, 1u >> (var_6.a % 32u)), 4294967295u, 0u), firstTrailingBit(~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, var_0.a, var_6.e.d)))), min(var_2.a.wwz, var_2.a.ywy), var_6.b.a);
}

