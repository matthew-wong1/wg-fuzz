struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    let var_0 = (_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.a, u_input.b.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 39211u), u_input.b.zy), u_input.a)) ^ vec2<u32>(43949u, ~_wgslsmith_add_u32(4294967295u, u_input.a))) & ~_wgslsmith_add_vec2_u32(~(~u_input.b.xz), reverseBits(u_input.b.yw));
    let var_1 = !(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, false, true), true), vec3<bool>(true, false, all(vec2<bool>(true, false))), false));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f)))))));
}

fn func_2() -> vec2<i32> {
    let var_0 = (abs(_wgslsmith_div_i32(abs(u_input.c.x), -2147483647i)) & ~u_input.c.x) != max(-_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -2147483647i)), 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -412f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-905f * 1f))));
    var var_2 = _wgslsmith_f_op_f32(910f - _wgslsmith_f_op_f32(f32(-1f) * -1837f));
    var var_3 = min(~firstLeadingBit(_wgslsmith_add_i32(u_input.c.x, u_input.c.x) & u_input.c.x), u_input.c.x);
    var_3 = _wgslsmith_add_i32(27763i, ~u_input.c.x);
    return -vec2<i32>(24071i, abs(~u_input.c.x));
}

fn func_1(arg_0: Struct_5) -> Struct_4 {
    let var_0 = 1865f;
    let var_1 = _wgslsmith_dot_vec2_i32(arg_0.b, _wgslsmith_clamp_vec2_i32(firstLeadingBit(abs(vec2<i32>(2147483647i, 28110i))) ^ u_input.c, func_2(), vec2<i32>(u_input.c.x, -18882i >> (u_input.a % 32u))));
    var var_2 = Struct_5(var_0, vec2<i32>(_wgslsmith_add_i32(arg_0.b.x << (_wgslsmith_dot_vec3_u32(u_input.b.zxy, vec3<u32>(u_input.b.x, 0u, u_input.b.x)) % 32u), 1i), var_1), Struct_4(Struct_1(select(arg_0.b & vec2<i32>(-24434i, -1i), vec2<i32>(var_1, var_1), true), arg_0.c.b.b.b, arg_0.c.b.a.c >> (u_input.a % 32u)), Struct_2(arg_0.c.a, Struct_1(arg_0.c.a.a, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 4294967295u), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.b.c.x, var_0, var_0, -836f), _wgslsmith_f_op_vec4_f32(-arg_0.c.b.c))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-923f, var_0, var_0, 128f) - arg_0.c.b.c) * vec4<f32>(1347f, arg_0.a, var_0, arg_0.c.c.x)), _wgslsmith_f_op_vec4_f32(arg_0.c.b.c + vec4<f32>(var_0, 246f, 112f, -2588f)))), vec3<bool>(false, arg_0.c.d.x, arg_0.c.d.x)));
    var_2 = arg_0;
    let var_3 = var_2.c.b;
    return Struct_4(arg_0.c.b.a, Struct_2(arg_0.c.b.b, var_2.c.b.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), 656f, -1280f, _wgslsmith_f_op_f32(-560f - var_3.c.x)) * vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.a)), -1000f, var_2.c.c.x, 756f))), vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.a)), _wgslsmith_f_op_f32(121f + _wgslsmith_f_op_f32(step(247f, 166f))), var_3.c.x, -321f), vec3<bool>(!any(arg_0.c.d.zx), true, true));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = arg_1.a.b;
    let var_1 = !any(func_1(Struct_5(-251f, abs(vec2<i32>(u_input.c.x, -1i)), arg_1)).d);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-func_1(Struct_5(_wgslsmith_f_op_f32(exp2(arg_1.b.c.x)), arg_1.a.a, func_1(Struct_5(arg_1.c.x, u_input.c, Struct_4(Struct_1(u_input.c, 1u, 1u), arg_1.b, vec4<f32>(-436f, -206f, arg_1.c.x, -394f), vec3<bool>(true, false, true)))))).c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.c.x) * arg_1.b.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.b.c.x, _wgslsmith_f_op_f32(-1474f + -1894f))) + _wgslsmith_f_op_f32(ceil(arg_1.b.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-765f + arg_1.b.c.x)))));
    var var_3 = _wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, 28535i) | countOneBits(-69527i), ~(~arg_1.a.a.x), u_input.c.x), vec3<i32>(~(-16021i), abs(u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x >> (55961u % 32u), firstTrailingBit(18269i), _wgslsmith_div_i32(-1i, -4119i), 30315i), -select(vec4<i32>(-23012i, u_input.c.x, arg_1.a.a.x, arg_1.b.a.a.x), vec4<i32>(29935i, 1i, arg_1.b.b.a.x, u_input.c.x), true))));
    let var_4 = abs(vec3<i32>(-26839i, arg_1.b.b.a.x, ~1i));
    return Struct_2(Struct_1(-_wgslsmith_add_vec2_i32(reverseBits(u_input.c), countOneBits(vec2<i32>(var_4.x, u_input.c.x))), _wgslsmith_clamp_u32(reverseBits(1u ^ u_input.a), 42569u, 1u), 53104u), arg_1.a, arg_1.c);
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    let var_0 = Struct_1(~(-vec2<i32>(~2147483647i, i32(-1i) * -53733i)), ~_wgslsmith_dot_vec3_u32(u_input.b.xyx, ~(u_input.b.xzy | u_input.b.xxz)), countOneBits(arg_0.b.b.b));
    let var_1 = vec3<u32>(arg_0.a.b, ~0u, ~select(u_input.b.x, func_1(Struct_5(arg_0.b.c.x, var_0.a, Struct_4(Struct_1(vec2<i32>(-1i, -2314i), arg_0.b.b.b, 1u), Struct_2(Struct_1(vec2<i32>(32155i, arg_0.b.a.a.x), var_0.c, arg_0.b.b.c), Struct_1(arg_0.b.b.a, u_input.a, 4294967295u), vec4<f32>(arg_0.b.c.x, arg_0.c.x, -354f, arg_0.c.x)), arg_0.c, vec3<bool>(false, true, arg_0.d.x)))).a.b, 53630u >= arg_0.a.b));
    var var_2 = arg_0.a;
    var var_3 = -1i;
    var_2 = func_1(Struct_5(arg_0.c.x, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(1i, 1i), -2147483647i), ~func_1(Struct_5(1677f, vec2<i32>(36792i, -27114i), Struct_4(arg_0.b.a, Struct_2(arg_0.a, Struct_1(arg_0.a.a, var_0.c, 0u), arg_0.b.c), vec4<f32>(arg_0.b.c.x, -366f, arg_0.b.c.x, -1078f), vec3<bool>(arg_0.d.x, arg_0.d.x, true)))).a.a), func_1(Struct_5(_wgslsmith_f_op_f32(-arg_0.c.x), ~var_0.a, func_1(Struct_5(-315f, vec2<i32>(arg_0.b.b.a.x, var_2.a.x), arg_0)))))).b.b;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = 1u;
    let var_1 = Struct_2(func_5(Struct_4(Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), ~u_input.a, ~u_input.a), func_4(~u_input.b, func_1(Struct_5(306f, u_input.c, Struct_4(Struct_1(vec2<i32>(-190i, 0i), u_input.a, 39295u), Struct_2(Struct_1(vec2<i32>(-2147483647i, u_input.c.x), u_input.a, 0u), Struct_1(u_input.c, u_input.b.x, 86028u), vec4<f32>(-661f, -1818f, 274f, 785f)), vec4<f32>(541f, -377f, -1213f, 404f), vec3<bool>(false, true, false)))), _wgslsmith_sub_vec4_u32(u_input.b, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -960f), _wgslsmith_f_op_f32(-1000f + -732f), _wgslsmith_f_op_f32(floor(324f)), 1136f), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), func_1(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-116f * -637f)), ~(u_input.c ^ vec2<i32>(u_input.c.x, -627i)), Struct_4(func_1(Struct_5(-2822f, u_input.c, Struct_4(Struct_1(vec2<i32>(1i, u_input.c.x), u_input.a, u_input.a), Struct_2(Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), u_input.a, 4294967295u), Struct_1(u_input.c, 0u, 19102u), vec4<f32>(918f, 521f, -203f, -1096f)), vec4<f32>(-1362f, -640f, 553f, -712f), vec3<bool>(false, true, false)))).b.a, func_4(vec4<u32>(23300u, 12110u, u_input.a, u_input.a), Struct_4(Struct_1(vec2<i32>(-1i, 3216i), 1u, 4294967295u), Struct_2(Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), u_input.b.x, 21127u), Struct_1(u_input.c, 36011u, 4294967295u), vec4<f32>(491f, -1518f, -424f, -1047f)), vec4<f32>(-354f, -158f, 254f, -833f), vec3<bool>(false, true, false)), u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(576f, 1623f, 1288f, -913f)), vec3<bool>(true, true, true)))).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-113f, _wgslsmith_f_op_f32(f32(-1f) * -1481f), -651f, -1727f)) + func_4(~vec4<u32>(u_input.b.x, 0u, u_input.a, u_input.b.x) & (u_input.b << (vec4<u32>(u_input.a, 0u, 54975u, 1u) % vec4<u32>(32u))), Struct_4(Struct_1(u_input.c, u_input.b.x, 8158u), func_1(Struct_5(2039f, vec2<i32>(u_input.c.x, u_input.c.x), Struct_4(Struct_1(vec2<i32>(2147483647i, u_input.c.x), u_input.a, 504u), Struct_2(Struct_1(u_input.c, u_input.a, 4294967295u), Struct_1(vec2<i32>(-2147483647i, -102877i), u_input.b.x, 3759u), vec4<f32>(-1624f, -995f, 512f, -572f)), vec4<f32>(-802f, -636f, -242f, -375f), vec3<bool>(true, false, true)))).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1506f, 444f, 169f, 405f)), func_1(Struct_5(510f, vec2<i32>(u_input.c.x, u_input.c.x), Struct_4(Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), 66769u, 4294967295u), Struct_2(Struct_1(vec2<i32>(-2147483647i, 2147483647i), 0u, 25770u), Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), u_input.b.x, 15426u), vec4<f32>(-1000f, 235f, 829f, 574f)), vec4<f32>(461f, 668f, -638f, -1684f), vec3<bool>(false, false, true)))).d), vec4<u32>(0u, 48425u, 18405u, 1641u) << (firstLeadingBit(vec4<u32>(1u, u_input.b.x, 0u, u_input.a)) % vec4<u32>(32u))).c));
    let var_2 = max(1u >> (0u % 32u), firstTrailingBit(1u));
    var var_3 = var_1.c.x;
    var_3 = var_1.c.x;
    let var_4 = func_1(Struct_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.c.x)), -560f, false)), vec2<i32>(0i, min(2147483647i, u_input.c.x)), func_1(Struct_5(_wgslsmith_f_op_f32(-var_1.c.x), vec2<i32>(-8304i, u_input.c.x), Struct_4(Struct_1(vec2<i32>(u_input.c.x, u_input.c.x), u_input.b.x, 56350u), var_1, vec4<f32>(var_1.c.x, -751f, 1604f, var_1.c.x), vec3<bool>(false, false, false))))));
    var var_5 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), var_1.b.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_4.a.c, var_2, 20110u), u_input.b) % 32u), var_4.b.b.a.x, var_1.a.a.x), vec3<i32>(39962i, _wgslsmith_mult_i32(-var_4.a.a.x, var_1.a.a.x), var_1.a.a.x)), -vec3<i32>(1i, 13474i, ~var_1.a.a.x), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, -2147483647i, countOneBits(-33554i)) & ~(-vec3<i32>(3921i, var_4.a.a.x, 20010i)), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 29892i, var_1.b.a.x), min(vec3<i32>(-2147483647i, -57470i, 1i), vec3<i32>(var_1.a.a.x, u_input.c.x, u_input.c.x)), vec3<i32>(var_4.b.a.a.x, 52312i, var_4.a.a.x) & vec3<i32>(u_input.c.x, u_input.c.x, -35635i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, 23954i, 0i), max(vec3<i32>(2147483647i, u_input.c.x, var_1.b.a.x), vec3<i32>(-2147483647i, var_1.b.a.x, u_input.c.x))), var_4.d.x)));
    let var_6 = false || var_4.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.c.x), select(var_1.b.a ^ max(vec2<i32>(2147483647i, var_5.x), _wgslsmith_mult_vec2_i32(var_4.a.a, vec2<i32>(-1i, var_4.a.a.x))), func_4(~(~vec4<u32>(var_1.a.c, 1u, 4294967295u, var_1.a.c)), Struct_4(Struct_1(vec2<i32>(var_5.x, -1i), u_input.a, 4294967295u), var_1, _wgslsmith_f_op_vec4_f32(-var_4.c), select(var_4.d, vec3<bool>(true, var_6, false), true)), vec4<u32>(min(u_input.a, u_input.a), _wgslsmith_add_u32(u_input.a, var_2), 4294967295u, 37706u)).b.a, select(select(var_4.d.xz, !var_4.d.xy, var_4.d.x || false), !(!vec2<bool>(true, var_4.d.x)), var_4.d.zy)), (vec4<i32>(_wgslsmith_div_i32(2147483647i, 1i), select(var_5.x, u_input.c.x, false), u_input.c.x, -1i) << (u_input.b % vec4<u32>(32u))) | firstLeadingBit(abs(vec4<i32>(u_input.c.x, 2147483647i, 2147483647i, u_input.c.x)) << (vec4<u32>(1u, 4294967295u, var_1.a.b, var_1.b.c) % vec4<u32>(32u))));
}

