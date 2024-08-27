struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    var var_0 = Struct_4(Struct_2(~vec2<u32>(~1u, 1u)), Struct_3(Struct_2(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), u_input.c))), ~(arg_0.e.x ^ reverseBits(~59135u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(872f, -957f, arg_0.a))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.d, 1512f, 684f), vec3<f32>(-1621f, 475f, 167f), vec3<bool>(true, true, false)))))))));
    var_0 = Struct_4(Struct_2(~vec2<u32>(8122u, ~0u)), var_0.b, select(arg_0.b >> (u_input.c.x % 32u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(22455u, 29635u), _wgslsmith_dot_vec2_u32(arg_0.e.zz, vec2<u32>(1u, 1u))), ~arg_0.e.x & _wgslsmith_div_u32(1u, 41020u)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(745f, -151f, arg_0.d), vec3<f32>(1299f, var_0.d.x, var_0.d.x)))) * vec3<f32>(_wgslsmith_div_f32(532f, _wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_div_f32(var_0.d.x, var_0.d.x))));
    var_0 = Struct_4(var_0.b.a, var_0.b, _wgslsmith_mod_u32(68002u, arg_0.b) & ~1u, _wgslsmith_f_op_vec3_f32(var_0.d * var_0.d));
    var var_1 = u_input.a.x;
    let var_2 = var_0.b.a;
    return Struct_4(Struct_2(firstTrailingBit(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.a, vec2<u32>(0u, var_2.a.x), arg_0.e.xx), vec2<u32>(0u, arg_0.e.x)))), Struct_3(Struct_2(min(abs(vec2<u32>(u_input.c.x, var_2.a.x)), var_0.a.a & arg_0.e.yx))), var_2.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), arg_0.d, _wgslsmith_f_op_f32(-725f + 814f))));
}

fn func_3() -> Struct_3 {
    let var_0 = Struct_1(1713f, ~(~u_input.c.x) ^ 40767u, _wgslsmith_div_u32(min(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), u_input.b), u_input.c.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u) << (vec3<u32>(u_input.c.x, u_input.b, u_input.b) % vec3<u32>(32u)), countOneBits(select(vec3<u32>(0u, 3767u, u_input.b), vec3<u32>(u_input.b, 0u, 4294967295u), vec3<bool>(false, true, false)))), 1244f, min(_wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u), u_input.c.x, u_input.b, 22607u), vec4<u32>(u_input.b, 1u, countOneBits(u_input.c.x), ~24597u)), vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 33683u, 7146u), vec3<u32>(u_input.b, 34909u, u_input.c.x)), 44406u, _wgslsmith_dot_vec3_u32(vec3<u32>(79941u, u_input.b, 4294967295u), vec3<u32>(1u, 10494u, u_input.b))) | (~vec4<u32>(9993u, u_input.b, u_input.c.x, 1u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 17909u, u_input.b, u_input.b), vec4<u32>(4294967295u, 1u, 83594u, u_input.b)) % vec4<u32>(32u)))));
    var var_1 = _wgslsmith_dot_vec3_i32(~u_input.a.zwy, u_input.a.xwy) | -1i;
    let var_2 = !all(vec3<bool>(true, true, true));
    var var_3 = ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(var_0.e.xx), (vec2<u32>(u_input.b, 4294967295u) & var_0.e.xw) | _wgslsmith_div_vec2_u32(vec2<u32>(74377u, 13903u), u_input.c)), ~(~var_0.e.zy) ^ (_wgslsmith_add_vec2_u32(var_0.e.zy, u_input.c) >> (_wgslsmith_mult_vec2_u32(var_0.e.ww, u_input.c) % vec2<u32>(32u))));
    var_3 = reverseBits(vec2<u32>(78434u, u_input.b));
    return Struct_3(Struct_2(vec2<u32>(_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_0.b, var_0.e.x))), 4294967295u)));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = vec4<bool>(true, !all(vec2<bool>(true, true)), select(true, false, -1331f >= _wgslsmith_f_op_f32(sign(-124f))), func_3().a.a.x <= ~min(firstLeadingBit(arg_3.a.a.x), 4294967295u));
    var_0 = vec4<bool>(var_0.x, any(var_0.yy), select(var_0.x, all(!(!var_0.xxx)), !(true || (var_0.x && true))), !(!(select(arg_1, 27077u, false) >= arg_3.a.a.x)));
    var var_1 = all(var_0.xx);
    var_0 = vec4<bool>(var_0.x, true, all(vec2<bool>(var_0.x, var_0.x)), false);
    let var_2 = select(select(vec2<bool>(var_0.x, any(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, false, true)))), !vec2<bool>(any(vec4<bool>(true, var_0.x, false, true)), var_0.x), var_0.wy), select(vec2<bool>(true, true), select(var_0.wz, !var_0.ww, true), var_0.x), !vec2<bool>(var_0.x, !(var_0.x && false)));
    return Struct_2(~(~select(vec2<u32>(arg_0.c, 0u) | arg_0.a.a, countOneBits(vec2<u32>(0u, 1u)), !var_0.xy)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2422f, -126f, 160f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1371f, -331f, 995f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1066f, -488f, -2408f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1502f, 1f, -489f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2485f, 1919f, 348f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1088f, 585f, 618f), vec3<f32>(466f, 1166f, 112f), true)))))));
    var var_1 = Struct_3(Struct_2(vec2<u32>(41208u, ~1u)));
    var var_2 = Struct_3(func_4(func_2(Struct_1(_wgslsmith_div_f32(961f, var_0.x), ~0u, arg_0.x, _wgslsmith_f_op_f32(-var_0.x), vec4<u32>(4294967295u, 80568u, 48722u, u_input.c.x))), 18638u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1830f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-286f, 306f, var_0.x, -930f) - vec4<f32>(1257f, var_0.x, 992f, 1897f))))), func_2(Struct_1(783f, 63800u, firstTrailingBit(1u), _wgslsmith_f_op_f32(1000f * var_0.x), vec4<u32>(768u, arg_1.a.x, var_1.a.a.x, arg_0.x))).b));
    var_1 = func_3();
    var_1 = Struct_3(arg_1);
    return _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), var_0.yy);
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = !arg_0.x;
    let var_1 = 4294967295u;
    return Struct_3(Struct_2(func_2(arg_2).b.a.a));
}

fn func_1() -> u32 {
    let var_0 = ~vec2<u32>(0u, 15603u);
    var var_1 = Struct_4(Struct_2(~(~vec2<u32>(39402u, 64986u))), func_6(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, false), vec2<bool>(true, false)), _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(var_0.x, 1u) & var_0), func_4(func_2(Struct_1(1083f, 8997u, 4294967295u, -278f, vec4<u32>(13873u, u_input.c.x, 73074u, 19226u))), 50513u ^ u_input.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1155f, -1720f, 851f), vec4<f32>(-544f, 1000f, 1138f, -1000f), true)), func_3()))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), abs(_wgslsmith_clamp_u32(var_0.x, 37189u, 1u)), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-300f, -878f))), ~vec4<u32>(73931u, var_0.x, 16817u, var_0.x)), ~vec2<u32>(var_0.x | var_0.x, func_3().a.a.x)), 0u << (~func_2(Struct_1(-328f, u_input.b, 117287u, -1092f, vec4<u32>(u_input.c.x, var_0.x, 48509u, u_input.b))).a.a.x % 32u), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(919f - 144f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-618f)), _wgslsmith_div_f32(279f, 697f)), -995f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1234f, 539f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1053f, -676f, 1000f) - vec3<f32>(587f, -570f, -270f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -854f, -127f)))))));
    var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(-148f + _wgslsmith_f_op_f32(-func_2(Struct_1(787f, var_1.b.a.a.x, var_0.x, 1221f, vec4<u32>(u_input.c.x, 35759u, 1u, u_input.c.x))).d.x)), 1u, 1u, 335f, min(_wgslsmith_mult_vec4_u32(min(vec4<u32>(64322u, var_0.x, 4294967295u, var_1.a.a.x), vec4<u32>(42581u, var_1.b.a.a.x, var_0.x, 0u)), ~vec4<u32>(78045u, 30164u, var_1.b.a.a.x, var_1.b.a.a.x)), vec4<u32>(_wgslsmith_mult_u32(var_1.a.a.x, 1u), ~u_input.c.x, 1u, var_0.x))));
    let var_2 = Struct_3(func_3().a);
    var var_3 = countOneBits(~(u_input.a.yz ^ vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(23258i, u_input.a.x, u_input.a.x, -42028i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(~(~(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.c.x) | 28573u)), false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-632f, 887f), vec2<f32>(175f, -1771f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-369f, -2276f)), any(vec3<bool>(true, false, false))))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1051f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-223f - -851f), -354f))), abs(u_input.a.x), Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(func_1(), 1u >> (u_input.b % 32u)), u_input.c)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0.c.x)), var_0.c.x))));
    var_0 = Struct_5(52319u, var_0.b, var_0.c, var_0.d, var_0.e);
    var_0 = Struct_5(func_2(Struct_1(1698f, 93520u, 31849u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(var_0.e.a, var_0.e)).x), select(max(vec4<u32>(6234u, 37904u, 4294967295u, var_0.a), vec4<u32>(14664u, var_0.a, 35606u, 1u)), max(vec4<u32>(u_input.c.x, 8315u, 24291u, var_0.e.a.x), vec4<u32>(24238u, var_0.a, u_input.b, var_0.a)), !vec4<bool>(var_0.b, true, var_0.b, false)))).b.a.a.x, var_0.b, var_0.c, min(28552i, var_0.d), var_0.e);
    var_0 = Struct_5(4294967295u, false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(284f, -476f)) + var_0.c)), -reverseBits(1i), Struct_2(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(21797u, var_0.a, 0u), vec3<u32>(63955u, var_0.a, u_input.b)), 61612u), 1u)));
    var var_2 = -877f;
    var_2 = 458f;
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))));
    var var_3 = _wgslsmith_f_op_f32(-300f - var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-var_0.d, firstTrailingBit(-u_input.a.x)), func_4(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 12796u, ~0u, -696f, select(vec4<u32>(24963u, var_0.e.a.x, u_input.b, u_input.b), vec4<u32>(0u, 19060u, u_input.c.x, var_0.e.a.x), vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)))), countOneBits(var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(232f, 1084f, var_0.c.x, var_0.c.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 1000f) * vec4<f32>(var_0.c.x, 1921f, var_0.c.x, var_0.c.x))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(498f, var_0.c.x, var_0.c.x, -227f)))), func_6(select(!vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, false)), var_0.c, Struct_1(_wgslsmith_f_op_vec2_f32(func_5(u_input.c, var_0.e)).x, var_0.e.a.x >> (4294967295u % 32u), var_0.e.a.x, var_0.c.x, vec4<u32>(4294967295u, var_0.e.a.x, 51u, u_input.b)), ~vec2<u32>(1u, u_input.c.x))).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x) * vec2<f32>(var_0.c.x, var_0.c.x))), var_0.c, vec2<bool>(var_0.c.x != var_0.c.x, true))) + _wgslsmith_f_op_vec2_f32(-var_0.c)), ~_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_0.a, u_input.c.x, 37538u, 4294967295u)), vec4<u32>(39265u, 16854u, ~u_input.b, firstTrailingBit(4294967295u))), u_input.a);
}

