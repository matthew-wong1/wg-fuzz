struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = arg_0.b;
    let var_1 = Struct_2(arg_0.a, 599f, !arg_0.c, Struct_1(_wgslsmith_f_op_f32(sign(-1351f)), firstTrailingBit(vec4<u32>(arg_0.d.b.x, 1u, 2092u, arg_0.d.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-426f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -789f)), var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(exp2(arg_0.e.x))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1387f) * -627f)), _wgslsmith_f_op_f32(min(var_1.e.x, _wgslsmith_f_op_f32(floor(-712f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1069f, var_1.e.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0, -651f)), _wgslsmith_f_op_f32(step(1f, -1177f))))));
    var_2 = arg_0.e;
    let var_3 = var_2.x;
    return ~var_1.a;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(~func_3(Struct_2(vec4<i32>(u_input.c.x, u_input.b, -2147483647i, u_input.c.x) ^ vec4<i32>(u_input.c.x, 0i, u_input.b, -58830i), _wgslsmith_f_op_f32(f32(-1f) * -1166f), vec2<bool>(true, true), Struct_1(1244f, vec4<u32>(u_input.d, 70968u, u_input.d, 4479u)), vec4<f32>(-825f, -1188f, -508f, 1964f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(238f * -1581f))), vec2<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(561f, -826f))) + -1558f), vec4<u32>(~u_input.d, firstTrailingBit(u_input.a.x), reverseBits(u_input.d), ~1u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1064f, -187f, _wgslsmith_f_op_f32(-2480f * -273f), -532f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(789f, 598f, -1217f, -275f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(319f, 180f, -306f, 322f) * vec4<f32>(623f, 1823f, -1000f, -352f)))), vec4<f32>(380f, 1794f, -179f, -1335f))));
    var_0 = Struct_2(-vec4<i32>(abs(var_0.a.x), u_input.b, ~_wgslsmith_mult_i32(2147483647i, 1i), u_input.b), -1485f, select(vec2<bool>(true, true), var_0.c, vec2<bool>(!var_0.c.x && var_0.c.x, var_0.c.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.d.a, _wgslsmith_div_f32(-2872f, -377f), select(var_0.c.x, false, true))) * var_0.e.x), firstLeadingBit(var_0.d.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.e, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.a, 1000f, 139f, var_0.d.a), vec4<f32>(1000f, var_0.b, -119f, -1730f))))));
    var var_1 = _wgslsmith_mult_i32(var_0.a.x, -38694i);
    let var_2 = !select(select(var_0.c, var_0.c, !var_0.c.x && true), var_0.c, any(vec2<bool>(all(var_0.c), var_0.c.x)));
    var_0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-805f, var_0.e.x))), var_0.e.x)), !vec2<bool>(var_2.x, _wgslsmith_dot_vec4_u32(var_0.d.b, var_0.d.b) != 45108u), Struct_1(_wgslsmith_f_op_f32(sign(var_0.d.a)), ~(~(var_0.d.b >> (vec4<u32>(39584u, var_0.d.b.x, 1u, var_0.d.b.x) % vec4<u32>(32u))))), vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(select(var_0.e.x, var_0.d.a, var_2.x)), var_0.b));
    return var_0.d;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    var var_0 = Struct_2(arg_2, 1458f, vec2<bool>(true | !any(vec3<bool>(false, true, false)), true), func_2(), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1259f * -542f), _wgslsmith_f_op_f32(f32(-1f) * -224f)), _wgslsmith_f_op_f32(f32(-1f) * -158f)), -135f, 1745f, _wgslsmith_f_op_f32(step(-190f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(598f, 686f)) - _wgslsmith_f_op_f32(sign(-354f)))))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.a), var_0.e.x) <= var_0.d.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2231f), ~vec4<u32>(func_2().b.x, firstTrailingBit(arg_1), 4294967295u, 28409u));
    let var_3 = Struct_2(arg_2, var_0.b, select(var_0.c, !vec2<bool>(true, all(vec2<bool>(true, true))), !vec2<bool>(all(vec4<bool>(false, false, var_0.c.x, var_0.c.x)), all(var_0.c))), var_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-601f, var_2.a, -844f, -139f) + var_0.e), var_0.e)) + var_0.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(842f, var_2.a, var_0.d.a, var_2.a), vec4<f32>(var_0.d.a, -134f, -1000f, -631f)))) + var_0.e)));
    let var_4 = abs(~(~func_3(Struct_2(var_3.a, -236f, var_3.c, Struct_1(137f, var_3.d.b), var_0.e)).x) | arg_0.x);
    return -13443i;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> i32 {
    let var_0 = func_2();
    var var_1 = select(vec4<bool>(true, select(_wgslsmith_f_op_f32(f32(-1f) * -495f) > _wgslsmith_f_op_f32(-var_0.a), true, u_input.d >= ~4294967295u), false, all(!arg_1) == arg_1.x), vec4<bool>(arg_1.x, false, !(var_0.b.x != 379u) | arg_0.x, false | !(!arg_0.x)), vec4<bool>(!arg_0.x & !any(vec2<bool>(arg_0.x, true)), 611f > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-543f * -444f))), arg_1.x, all(select(!vec3<bool>(false, arg_0.x, arg_0.x), select(vec3<bool>(false, arg_1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_0.x, arg_0.x, arg_1.x)), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(false, arg_1.x, false), arg_1.x)))));
    var var_2 = ~var_0.b.x;
    var var_3 = Struct_1(-329f, ~vec4<u32>(countOneBits(_wgslsmith_add_u32(var_0.b.x, 1u)), 1u, var_0.b.x, u_input.a.x));
    var var_4 = vec4<bool>(false, any(vec4<bool>(true, true, _wgslsmith_f_op_f32(exp2(var_0.a)) <= _wgslsmith_div_f32(743f, -527f), false)), !(_wgslsmith_f_op_f32(-arg_2.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a)) + _wgslsmith_f_op_f32(sign(var_3.a)))), !var_1.x);
    return func_1(vec2<i32>(~max(u_input.b, -25385i), min(1i, u_input.c.x)) & u_input.c.xx, _wgslsmith_dot_vec4_u32(vec4<u32>(~(6406u & u_input.a.x), min(_wgslsmith_div_u32(var_3.b.x, var_0.b.x), _wgslsmith_clamp_u32(1u, 71236u, u_input.a.x)), ~1u, var_0.b.x), vec4<u32>(1u, 19915u, 6038u, _wgslsmith_div_u32(~var_3.b.x, var_3.b.x))), vec4<i32>(1i, u_input.b, ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_3.x, 1i, 105739i) ^ vec4<i32>(21589i, arg_3.x, 25405i, 17079i), -vec4<i32>(arg_3.x, arg_3.x, -67595i, 0i))) ^ ~(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_3.x, arg_3.x, -1i), vec4<i32>(26318i, -22148i, 2147483647i, 49049i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_4(vec2<bool>(true, ~u_input.b > func_1(vec2<i32>(u_input.b, 69448i), 1u, vec4<i32>(-18355i, u_input.c.x, -3745i, u_input.c.x))), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1106f * -137f)), 1000f), vec3<i32>(-12679i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.c.x, 28504i, -47223i), reverseBits(u_input.c.x)), -19907i));
    var var_1 = Struct_2(-select(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, u_input.b, u_input.c.x), vec4<i32>(-26449i, -7653i, u_input.b, u_input.b)), abs(vec4<i32>(u_input.c.x, -34883i, u_input.c.x, -2147483647i))), vec4<i32>(1514i << (u_input.a.x % 32u), u_input.c.x | u_input.b, ~u_input.b, ~u_input.c.x), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2643f, -548f) + _wgslsmith_f_op_f32(787f - 1259f)) - _wgslsmith_f_op_f32(f32(-1f) * -1062f)))), select(!vec2<bool>(true, u_input.a.x > 4294967295u), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true && all(vec2<bool>(true, true)))), func_2(), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(323f, -2129f, -146f, 1413f) - vec4<f32>(458f, -1286f, -1840f, -426f)), any(vec3<bool>(true, true, true)))), vec4<f32>(587f, -1405f, -234f, _wgslsmith_div_f32(-285f, 442f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-215f)), _wgslsmith_f_op_f32(step(-349f, -1356f)), _wgslsmith_f_op_f32(1093f + 180f), _wgslsmith_f_op_f32(1000f - -402f))), false)));
    var_1 = Struct_2(-var_1.a, -1923f, var_1.c, func_2(), var_1.e);
    var_0 = -21778i;
    let var_2 = var_1.d;
    var_0 = -(min(abs(u_input.b) & u_input.b, abs(firstLeadingBit(1i))) ^ firstLeadingBit((i32(-1i) * -6783i) >> ((48440u | var_1.d.b.x) % 32u)));
    var_1 = Struct_2(vec4<i32>(-u_input.c.x | _wgslsmith_add_i32(~1i, 1330i), u_input.c.x, 2147483647i, _wgslsmith_dot_vec3_i32(func_3(Struct_2(vec4<i32>(var_1.a.x, -4932i, var_1.a.x, -2147483647i), 278f, vec2<bool>(var_1.c.x, var_1.c.x), var_1.d, var_1.e)).yzw, _wgslsmith_add_vec3_i32(vec3<i32>(8850i, 16005i, -16345i), vec3<i32>(1i, 0i, u_input.b)))), _wgslsmith_f_op_f32(var_2.a - 200f), vec2<bool>(((3633u == var_1.d.b.x) && true) && var_1.c.x, true), func_2(), vec4<f32>(var_2.a, 352f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + 103f), var_2.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-782f, var_2.a)) + 1f), -1955f)));
    let var_3 = Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, u_input.c.x, -var_1.a.x, u_input.c.x), -var_1.a), -630f, var_1.c, func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e.x, var_1.e.x, 1000f, var_1.e.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.e)))) - var_1.e));
    let var_4 = Struct_1(func_2().a, func_2().b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-804f - -1470f), _wgslsmith_f_op_f32(select(1452f, 1896f, var_1.c.x))))), !(_wgslsmith_div_f32(-1132f, 272f) <= var_2.a))), var_4.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.d.a)) - 1144f) - -1510f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -419f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a) - var_1.e.x))));
}

