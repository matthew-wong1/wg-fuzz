struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(96201u, _wgslsmith_div_u32(25854u, 72508u), select(arg_1, u_input.c, true)), vec3<u32>(_wgslsmith_sub_u32(arg_1, 0u), 1u, abs(arg_2.x))), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(5521u, u_input.c, 68886u, arg_1), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 1u, arg_1, arg_1), vec4<u32>(97873u, arg_2.x, 1u, arg_2.x))), select(1u, ~arg_1, false))));
    let var_1 = Struct_4(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(select(max(vec2<i32>(2147483647i, 0i), vec2<i32>(u_input.b, -28638i)), abs(vec2<i32>(-2147483647i, u_input.b)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), true)), vec2<i32>(u_input.b << (u_input.a % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -43399i, 21598i), vec4<i32>(u_input.b, u_input.b, -24548i, u_input.b)))), ~(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)))), ~(~(~arg_2.wx)), -36891i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f)))))), 0i);
    var_0 = Struct_1(~(1u ^ _wgslsmith_mult_u32(var_1.b.x, _wgslsmith_dot_vec3_u32(arg_2.wzw, vec3<u32>(arg_1, 31216u, 0u)))));
    let var_2 = max(~(vec2<u32>(0u, u_input.a) << (~(~vec2<u32>(4294967295u, var_0.a)) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_0.a) >> (vec2<u32>(var_0.a, 1u) % vec2<u32>(32u)), ~min(vec2<u32>(var_0.a, 39146u), vec2<u32>(var_1.b.x, 28564u))));
    var var_3 = vec4<i32>(_wgslsmith_mod_i32(~select(_wgslsmith_div_i32(var_1.e, 61847i), u_input.b, true), 11559i), min((-8959i & (var_1.a.x >> (7336u % 32u))) & var_1.a.x, abs(16977i)), abs(firstTrailingBit(countOneBits(33607i))), ~(-27796i));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(176f * -1000f), _wgslsmith_f_op_f32(floor(-2047f)))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.d))), _wgslsmith_f_op_f32(-1584f * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d - -406f) + -1008f))), !all(vec2<bool>(true, true))));
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = firstLeadingBit(arg_0);
    var var_1 = 10901u;
    var var_2 = -arg_0;
    let var_3 = select(vec3<bool>(true, select(true, true, true), true), vec3<bool>(false, true, true), true);
    var_0 = ~_wgslsmith_clamp_i32(15274i, arg_0, u_input.b);
    return Struct_4(vec2<i32>(select(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -46217i, 0i), vec3<i32>(-12572i, u_input.b, u_input.b)), ~0i, all(var_3)), u_input.b), _wgslsmith_sub_vec2_u32(~countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.d, 0u), vec2<u32>(6621u, 75561u))), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 28455u), vec2<u32>(4294967295u, u_input.a)))), _wgslsmith_div_i32(u_input.b, firstTrailingBit((u_input.b | arg_0) ^ abs(arg_0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(true, u_input.d, vec4<u32>(u_input.a, 11874u, u_input.c, 1u))), _wgslsmith_f_op_f32(sign(1235f))))))), ~2147483647i);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> i32 {
    let var_0 = func_2(reverseBits(-2147483647i));
    let var_1 = ~86986u;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1176f, var_0.d)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d, 2465f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2576f, var_0.d)), vec2<bool>(false, arg_1.x)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(round(-1132f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, 1248f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1593f)), _wgslsmith_f_op_f32(var_0.d * var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(960f * 793f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1850f, 182f))))));
    let var_3 = Struct_2(arg_1.xz, Struct_1(30123u));
    return u_input.b;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = vec4<i32>(-reverseBits(-_wgslsmith_add_i32(arg_0.e, 20838i)), -73211i, 1i << (arg_2 % 32u), ~func_1(17190u, vec4<bool>(true, true, false, true)));
    let var_1 = arg_0.d > _wgslsmith_f_op_f32(-157f - _wgslsmith_f_op_f32(round(arg_0.d)));
    let var_2 = Struct_3(Struct_2(vec2<bool>(_wgslsmith_f_op_f32(-1000f + arg_0.d) > -346f, any(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(var_1, false, var_1), vec3<bool>(false, var_1, true)))), Struct_1(1u)), Struct_1(~u_input.a), Struct_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.b.x, arg_2), _wgslsmith_div_u32(arg_2, 0u)), 88160u)));
    let var_3 = vec4<u32>(arg_2, u_input.a, 17359u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, arg_2, 1u), vec3<u32>(1u, 0u, var_2.b.a)) ^ ~var_2.b.a));
    var var_4 = arg_0.b;
    return var_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.d, firstTrailingBit(~(~4294967295u)), u_input.a, ~u_input.c);
    var_0 = _wgslsmith_mult_vec4_u32(min(vec4<u32>(var_0.x, u_input.c, u_input.d, ~4294967295u), _wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.d)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(334u, 4294967295u, 4294967295u, var_0.x), ~vec4<u32>(var_0.x, var_0.x, 8969u, var_0.x), select(vec4<u32>(36966u, 26331u, u_input.c, 37229u), vec4<u32>(var_0.x, 27454u, u_input.c, 1u), vec4<bool>(true, false, false, false))), abs(reverseBits(vec4<u32>(0u, 13440u, 79420u, 1u))))), ~abs(~vec4<u32>(6032u, var_0.x, 29760u, var_0.x)) ^ vec4<u32>(4294967295u, ~(~var_0.x), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 26456u, 4294967295u), vec4<u32>(1u, 4511u, u_input.c, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(54765u, 19467u, u_input.c, u_input.d), vec4<u32>(0u, 4294967295u, 4294967295u, 71394u))), ~4294967295u));
    var var_1 = func_4(Struct_4(vec2<i32>(-13318i, _wgslsmith_mult_i32(u_input.b, _wgslsmith_div_i32(u_input.b, -2147483647i))), ~vec2<u32>(~var_0.x, var_0.x), func_1(~min(u_input.c, u_input.a), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(704f, 1719f)) - _wgslsmith_f_op_f32(1584f * 252f))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 46151i << (u_input.d % 32u), ~u_input.b, u_input.b), ~abs(vec4<i32>(-1i, 1i, 45747i, -31165i)))), true, 0u, !((reverseBits(var_0.x) < min(var_0.x, u_input.c)) & true));
    var_0 = (_wgslsmith_mod_vec4_u32(vec4<u32>(145022u, ~var_0.x, 23762u << (var_1.a % 32u), 1u), vec4<u32>(6004u >> (var_1.a % 32u), 1u, var_1.a, abs(var_0.x))) << (~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_1.a, 4294967295u, 1u), vec4<u32>(var_0.x, 54077u, 4294967295u, 1u)), ~vec4<u32>(1u, var_0.x, 15641u, var_1.a)) % vec4<u32>(32u))) << (firstLeadingBit(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(var_0.x, 4294967295u, u_input.d, u_input.d)) >> (vec4<u32>(var_1.a, var_1.a, var_0.x, u_input.d) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(1u, var_1.a, var_1.a, var_1.a)) << ((vec4<u32>(var_0.x, u_input.c, var_1.a, 28328u) ^ vec4<u32>(var_1.a, var_0.x, 75925u, var_1.a)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-171f, -2429f, true))) - -714f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1624f, 1694f) + 1f), 821f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1256f))));
    let var_3 = abs((max(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b), vec4<i32>(u_input.b, 20148i, 1i, 27477i)), ~vec4<i32>(u_input.b, -38017i, u_input.b, -1i)) & ~max(vec4<i32>(2147483647i, 19315i, 0i, u_input.b), vec4<i32>(-8618i, u_input.b, u_input.b, u_input.b))) ^ countOneBits(reverseBits(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b))));
    var var_4 = _wgslsmith_mult_vec3_i32(vec3<i32>(func_2(~410i << (var_0.x % 32u)).c, firstTrailingBit(_wgslsmith_sub_i32(var_3.x, 49269i)), select(1i, 40597i, true)), vec3<i32>(1i, var_3.x, ~(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1480f + func_2(-1i).d) + _wgslsmith_f_op_f32(f32(-1f) * -759f)));
}

