struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: f32) -> f32 {
    var var_0 = Struct_4(!(!vec4<bool>(true && arg_1.x, true, true, false)), 35669u, Struct_1(_wgslsmith_mod_vec4_u32(firstTrailingBit(select(vec4<u32>(1u, 34912u, arg_2.x, 4294967295u), vec4<u32>(u_input.a.x, 2268u, u_input.a.x, arg_2.x), vec4<bool>(arg_1.x, arg_1.x, true, true))), abs(vec4<u32>(u_input.a.x, u_input.a.x, 26850u, 91938u) & vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u)))), _wgslsmith_f_op_f32(-arg_3), Struct_3(_wgslsmith_clamp_vec2_u32(abs(firstTrailingBit(vec2<u32>(arg_2.x, u_input.a.x))), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(53259u, 4294967295u), vec2<u32>(694u, u_input.a.x)), u_input.a.zz), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(arg_2.x, u_input.a.x)))));
    var var_1 = Struct_3(min(_wgslsmith_clamp_vec2_u32(max(firstTrailingBit(vec2<u32>(var_0.e.a.x, 21407u)), vec2<u32>(0u, 16530u)), var_0.c.a.yx, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(var_0.c.a.zy, arg_2), ~arg_2)), firstLeadingBit(~arg_2)));
    var var_2 = Struct_4(select(select(!arg_1, select(arg_1, !vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)), select(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), arg_1, select(var_0.a, arg_1, true))), select(!vec4<bool>(arg_1.x, var_0.a.x, false, var_0.a.x), select(!vec4<bool>(arg_1.x, arg_1.x, var_0.a.x, false), vec4<bool>(false, true, false, var_0.a.x), true), true), select(!(!arg_1), vec4<bool>(0u > arg_2.x, arg_1.x | arg_1.x, true, var_0.a.x), arg_1)), u_input.a.x, Struct_1(vec4<u32>(max(var_0.b >> (1u % 32u), 80071u), 104812u, abs(~arg_2.x), min(arg_2.x, 1603u))), arg_0.x, var_0.e);
    var var_3 = 35746u;
    var var_4 = vec4<u32>(_wgslsmith_mult_u32(~22488u & min(1u, var_2.c.a.x), 0u), var_1.a.x, 1u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(0u, u_input.a.x), arg_2.x, firstTrailingBit(var_2.c.a.x), 1u), var_2.c.a)));
    return 1336f;
}

fn func_4(arg_0: Struct_4) -> vec4<u32> {
    let var_0 = vec2<u32>(1u, reverseBits(firstLeadingBit(_wgslsmith_div_u32(0u, 4294967295u)))) ^ (vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, 4294967295u, 62326u)), abs(1u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e.a.x, 53053u), arg_0.e.a)) << (countOneBits(u_input.a.yy) % vec2<u32>(32u)));
    let var_1 = select(arg_0.a.wyz, vec3<bool>(arg_0.a.x, false, true | !(!arg_0.a.x)), arg_0.a.zzw);
    var var_2 = Struct_2(-vec3<i32>(~_wgslsmith_div_i32(-47598i, -36989i), _wgslsmith_div_i32(1i, ~(-2147483647i)), -1i), arg_0.c, select(var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-756f)))) < arg_0.d, arg_0.a.x));
    var var_3 = Struct_2(var_2.a, arg_0.c, false);
    let var_4 = Struct_3(vec2<u32>(0u, _wgslsmith_clamp_u32(~u_input.a.x, 4294967295u | countOneBits(var_3.b.a.x), select(arg_0.b, var_3.b.a.x, true))));
    return ~vec4<u32>(~(~var_0.x | _wgslsmith_dot_vec2_u32(var_2.b.a.wx, var_2.b.a.yw)), u_input.a.x, 1u, max(~(0u >> (var_2.b.a.x % 32u)), ~59651u));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_add_vec4_u32(func_4(Struct_4(vec4<bool>(true, true, true, true), u_input.a.x >> (24160u % 32u), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(func_3(vec2<f32>(-810f, -1052f), vec4<bool>(true, false, false, false), vec2<u32>(19767u, 0u), 732f)), Struct_3(u_input.a.yy))) >> (vec4<u32>(1u, _wgslsmith_add_u32(u_input.a.x, 18902u), _wgslsmith_mod_u32(61897u | u_input.a.x, 1u << (1u % 32u)), u_input.a.x) % vec4<u32>(32u)), vec4<u32>(0u, 22964u, 65257u, _wgslsmith_dot_vec2_u32(vec2<u32>(min(u_input.a.x, u_input.a.x), countOneBits(39296u)), u_input.a.yy)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-792f - -1425f), _wgslsmith_f_op_f32(min(1984f, 998f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(331f, -1066f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1197f)), _wgslsmith_f_op_f32(-567f * -1256f)), vec2<f32>(1f, 1f), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)))))))));
    return min(u_input.a.x, 1u);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -111f, 452f) + vec3<f32>(-570f, 1001f, arg_1.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1244f, arg_1.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1693f, -675f, arg_1.x) + vec3<f32>(216f, -304f, arg_1.x)))))));
    var_0 = vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(round(-503f)));
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(52319u, func_2(), ~1824u, 41494u)), vec4<u32>(~0u, 1u, countOneBits(u_input.a.x), countOneBits(~1u)), vec4<u32>(u_input.a.x >> (4294967295u % 32u), _wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), ~u_input.a.x), 1u, 1u ^ (u_input.a.x >> (1u % 32u)))) & firstLeadingBit(select(vec4<u32>(~u_input.a.x, u_input.a.x & u_input.a.x, firstTrailingBit(115658u), 12101u), ~abs(vec4<u32>(0u, u_input.a.x, 0u, 4294967295u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(553f, -1711f, _wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = select(var_1, vec4<u32>(firstTrailingBit(u_input.a.x), u_input.a.x, _wgslsmith_sub_u32(~countOneBits(0u), 19187u), u_input.a.x), !((~u_input.b <= arg_0) == (u_input.b == max(-8346i, 0i))));
    return Struct_4(select(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec2<bool>(true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), u_input.a.x != 1u, !(var_1.x == 4294967295u)), !select(true, true, false) && true), ~(~var_2.x), Struct_1(~(~vec4<u32>(var_1.x, 4294967295u, 27507u, var_2.x))), var_0.x, Struct_3(var_2.zz));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_5) -> vec3<bool> {
    var var_0 = ~(~vec2<u32>(49405u, ~0u));
    let var_1 = func_1(24424i, arg_1.yx).c;
    var_0 = ~vec2<u32>(func_4(arg_0).x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.a.x, arg_2.a.b.a.x), u_input.a) ^ (_wgslsmith_div_u32(arg_2.a.b.a.x, arg_0.b) & _wgslsmith_mod_u32(29050u, 1u)));
    var_0 = ~arg_0.e.a;
    var_0 = ~vec2<u32>(abs(~var_1.a.x), select(func_2(), arg_0.c.a.x, false));
    return vec3<bool>(true, any(!(!(!arg_0.a))), !(1i < ((1i ^ u_input.b) | 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(u_input.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1000f, -1244f, true)), _wgslsmith_f_op_f32(-886f * 2777f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(1366f, 866f), vec4<bool>(false, true, true, false), vec2<u32>(u_input.a.x, 11591u), -750f)) * _wgslsmith_f_op_f32(2055f * -1253f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1077f, -1963f, true)) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f - _wgslsmith_f_op_f32(f32(-1f) * -1978f))), -776f), Struct_5(Struct_2(~vec3<i32>(u_input.c, 36982i, -29131i) & min(vec3<i32>(2147483647i, 18752i, u_input.c), vec3<i32>(u_input.b, -33960i, 26354i)), func_1(~u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(259f, -1172f))).c, false)));
    var var_1 = func_1(22360i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-514f, 302f)))))).a.x;
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(256f)) + _wgslsmith_f_op_f32(1364f - -491f))), _wgslsmith_f_op_f32(min(-274f, -1000f)), 1f, 165f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1090f, 1748f, -585f, -231f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1042f, -1000f, -1039f, 701f)), !vec4<bool>(false, true, var_0.x, var_0.x))))));
    var var_3 = var_2;
    var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), var_3.x, 244f, _wgslsmith_f_op_f32(-var_3.x)) - vec4<f32>(_wgslsmith_f_op_f32(var_3.x + -721f), _wgslsmith_f_op_f32(f32(-1f) * -827f), 670f, -1165f)), vec4<f32>(var_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x * 1124f))), _wgslsmith_f_op_f32(max(-615f, _wgslsmith_f_op_f32(-489f * -1357f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), -344f))), !(!select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(true, var_0.x, false, true), vec4<bool>(false, var_0.x, true, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1582f * -1000f), _wgslsmith_f_op_f32(round(-479f)))), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(f32(-1f) * -875f)) + var_2), 1f, u_input.a, max(vec2<u32>(~_wgslsmith_div_u32(94890u, 1u), 4294967295u), u_input.a.zx), vec4<f32>(_wgslsmith_f_op_f32(sign(-154f)), var_3.x, var_2.x, _wgslsmith_f_op_f32(step(var_3.x, var_3.x))));
}

