struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> f32 {
    var var_0 = max(-1i, _wgslsmith_sub_i32(36i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, arg_0.d.b), -vec3<i32>(u_input.d, u_input.d, arg_0.d.b)))) >> ((_wgslsmith_add_u32(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, u_input.a.x, u_input.b.x, u_input.a.x), ~u_input.b)) << (0u % 32u)) % 32u);
    var var_1 = Struct_5(4294967295u, min(~(vec3<i32>(u_input.d, arg_0.d.b, -1i) & -vec3<i32>(-23639i, arg_0.d.b, arg_0.d.b)), -(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.d.b, u_input.c.x, arg_0.d.b), vec3<i32>(0i, arg_0.a, -2147483647i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(47506u, 73652u, u_input.a.x)) % vec3<u32>(32u)))), arg_0.c.x);
    var var_2 = Struct_1(-13597i, _wgslsmith_f_op_f32(-arg_0.c.x), any(select(!vec4<bool>(true, true, arg_0.d.a, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.d.a, arg_0.b), vec4<bool>(false, true, arg_0.b, false))) | false, -684f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -208f) + _wgslsmith_f_op_f32(354f * var_1.c))))));
    var_0 = -1i;
    let var_3 = Struct_5(min(max(u_input.a.x & 0u, ~82620u), 4294967295u), abs(select(abs(var_1.b | vec3<i32>(-2147483647i, var_2.a, 0i)), vec3<i32>(1i, arg_0.d.b, 0i), var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - 342f));
    return _wgslsmith_f_op_f32(-var_1.c);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    return Struct_1(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_clamp_i32(arg_0.b, u_input.c.x, 2147483647i), !arg_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1482f, -1046f, 438f, 1000f) - vec4<f32>(-878f, 750f, -832f, -1056f)), arg_0), u_input.b.zx)) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-276f + 1470f)))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1819f * 105f))) * _wgslsmith_f_op_f32(func_3(Struct_3(u_input.c.x, false, _wgslsmith_f_op_vec4_f32(vec4<f32>(1175f, -478f, 313f, 1363f) + vec4<f32>(-1202f, -1003f, -1694f, 880f)), Struct_2(true, 2147483647i)), vec2<u32>(u_input.b.x, countOneBits(u_input.b.x))))), _wgslsmith_f_op_f32(364f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1483f - _wgslsmith_f_op_f32(trunc(2299f))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = Struct_1(u_input.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - -1562f)), _wgslsmith_f_op_f32(func_3(Struct_3(37375i, arg_3.b, vec4<f32>(-1243f, 107f, -555f, arg_3.c.x), Struct_2(arg_3.b, 1880i)), vec2<u32>(u_input.a.x, arg_2))))))), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(945f))), arg_0.c.x);
    var var_1 = arg_3.d;
    var var_2 = _wgslsmith_f_op_vec4_f32(arg_0.c - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c)));
    var_0 = arg_1;
    var var_3 = -(arg_1.a << (u_input.b.x % 32u)) & (-1i >> (u_input.a.x % 32u));
    return vec4<bool>(false, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_3.a, -1i, arg_0.a) >> (vec4<u32>(1u, u_input.b.x, 4294967295u, 8368u) % vec4<u32>(32u)), vec4<i32>(arg_1.a, arg_1.a, var_1.b, arg_1.a)), 19317i) < 1i, !var_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1152f)) + _wgslsmith_div_f32(981f, var_0.b)))) == -405f);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_5) -> u32 {
    var var_0 = false;
    var var_1 = -(~reverseBits(-vec4<i32>(arg_3.b.x, -40174i, arg_3.b.x, u_input.c.x)) | (min(vec4<i32>(arg_1.a, 0i, u_input.d, arg_1.a), vec4<i32>(u_input.c.x, arg_3.b.x, -39366i, u_input.c.x)) ^ ~_wgslsmith_mod_vec4_i32(vec4<i32>(-27591i, arg_1.a, -1i, -5222i), vec4<i32>(2147483647i, -19774i, arg_3.b.x, arg_1.a))));
    var var_2 = Struct_4(Struct_2(arg_1.c, arg_1.a), Struct_1(min(arg_1.a, reverseBits(_wgslsmith_div_i32(arg_3.b.x, var_1.x))), arg_3.c, true, _wgslsmith_f_op_f32(trunc(288f)), 1f), Struct_3(~u_input.d, any(arg_0.zy), vec4<f32>(-230f, arg_3.c, -320f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1272f, arg_3.c), -1711f))), Struct_2(arg_1.c, firstLeadingBit(firstLeadingBit(1i)))), arg_3.a, arg_1);
    var var_3 = vec2<i32>(~var_2.c.a & 0i, -abs(arg_3.b.x));
    var_3 = reverseBits(-_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, arg_1.a), ~vec2<i32>(var_1.x, 0i)), vec2<i32>(-1i) * -vec2<i32>(2147483647i, -38586i), _wgslsmith_mult_vec2_i32(arg_3.b.xy, vec2<i32>(-7668i, 10754i))));
    return _wgslsmith_dot_vec2_u32(u_input.b.xz & abs(~(vec2<u32>(4294967295u, u_input.b.x) | vec2<u32>(var_2.d, arg_2.x))), arg_2.yy);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(func_5(func_4(Struct_3(1i, false, vec4<f32>(-533f, -1309f, 1134f, 2192f), Struct_2(false, u_input.c.x)), func_2(Struct_2(false, 2147483647i)), u_input.a.x, Struct_3(-58703i, false, vec4<f32>(-1110f, 1034f, 643f, -1000f), Struct_2(true, -2147483647i))), Struct_1(u_input.c.x, _wgslsmith_f_op_f32(func_3(Struct_3(u_input.c.x, false, vec4<f32>(326f, -670f, 138f, 367f), Struct_2(true, u_input.c.x)), u_input.b.zy)), true, 1538f, _wgslsmith_f_op_f32(-307f - 236f)), abs(select(vec3<u32>(4294967295u, 46553u, u_input.b.x), u_input.a, vec3<bool>(true, false, true))), Struct_5(~11285u, -vec3<i32>(u_input.c.x, u_input.c.x, u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -1690f))), 310u), vec2<u32>(1u, ~3128u));
    var var_1 = func_2(Struct_2(func_4(Struct_3(func_2(Struct_2(true, 0i)).a, false, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(215f, -225f, -626f, -1337f))), Struct_2(false, u_input.d)), func_2(Struct_2(true, -30503i)), u_input.a.x, Struct_3(-6949i, true, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(330f, -137f, 478f, -1345f), vec4<f32>(-208f, -581f, 1926f, 974f))), Struct_2(false, 765i))).x, ~(-710i)));
    var_1 = func_2(Struct_2(any(!vec4<bool>(true, var_1.c, var_1.c, var_1.c)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -2147483647i, 37512i, u_input.d), firstTrailingBit(-vec4<i32>(-6326i, u_input.d, u_input.d, var_1.a)))));
    var_1 = Struct_1(select(var_1.a, _wgslsmith_clamp_i32(abs(0i), _wgslsmith_sub_i32(var_1.a ^ -1i, _wgslsmith_mult_i32(u_input.d, u_input.d)), u_input.c.x), false), _wgslsmith_f_op_f32(743f - -1388f), (any(func_4(Struct_3(var_1.a, var_1.c, vec4<f32>(var_1.d, 111f, 120f, -802f), Struct_2(false, 1i)), Struct_1(2147483647i, var_1.d, true, var_1.b, var_1.b), 0u, Struct_3(var_1.a, var_1.c, vec4<f32>(-1475f, var_1.b, -574f, var_1.b), Struct_2(var_1.c, 0i)))) & var_1.c) && var_1.c, var_1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f * 602f)) - -418f));
    var_1 = func_2(Struct_2(func_4(Struct_3(-356i, any(vec2<bool>(true, var_1.c)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.e, var_1.d, 159f, var_1.b))), Struct_2(var_1.c, u_input.d)), Struct_1(-13236i, func_2(Struct_2(false, 0i)).e, var_1.c, _wgslsmith_f_op_f32(func_3(Struct_3(25979i, var_1.c, vec4<f32>(-1597f, 1209f, var_1.b, 2255f), Struct_2(var_1.c, -1i)), vec2<u32>(u_input.b.x, var_0))), var_1.b), min(0u & var_0, ~12637u), Struct_3(~u_input.c.x, true, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.e, var_1.d, -335f, -170f))), Struct_2(var_1.c, var_1.a))).x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_1.a, -34295i, -25818i), 5034i), var_1.a)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(countOneBits(18068u) & _wgslsmith_dot_vec4_u32(u_input.b, ~(u_input.b ^ u_input.b)), 38360u, 4294967295u);
    let var_1 = vec3<bool>(any(vec4<bool>(true, true, true, true)), true, select(true, true, func_1()));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1428f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-542f)))));
    var var_3 = Struct_2(all(var_1.yz) == all(!vec2<bool>(var_1.x, false)), 1i);
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2, 138f))), var_2))));
    var var_5 = var_4.zz;
    var var_6 = Struct_3(abs(var_3.b), var_1.x, vec4<f32>(_wgslsmith_f_op_f32(var_2 + 1244f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(-1i, var_1.x, vec4<f32>(-100f, var_5.x, var_5.x, var_4.x), Struct_2(var_3.a, -38867i)), ~var_0.xz))), -1153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_4.x)))), Struct_2(!(_wgslsmith_div_f32(-860f, 1905f) < var_5.x), u_input.c.x));
    var var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(max(-vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.c.x), -1606i | var_6.d.b, -28821i), min(vec3<i32>(func_2(var_6.d).a, var_6.d.b, var_3.b | u_input.d), vec3<i32>(~var_3.b, var_3.b, _wgslsmith_sub_i32(-2147483647i, u_input.c.x)))), -(~abs(~vec3<i32>(var_6.d.b, var_6.d.b, 65074i))));
}

