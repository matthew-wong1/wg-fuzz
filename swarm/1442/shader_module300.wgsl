struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32) -> u32 {
    var var_0 = select(arg_1.a.yx, arg_1.a.yz, false);
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, arg_2, arg_2) & 1u, ~_wgslsmith_add_u32(arg_2 ^ select(arg_2, 82292u, false), abs(arg_1.c.x ^ arg_2)), reverseBits(5474u ^ ~(~arg_2)));
    let var_2 = firstTrailingBit(~vec4<u32>(~_wgslsmith_mod_u32(arg_2, 0u), u_input.a, arg_2, u_input.a));
    var var_3 = Struct_3(vec4<bool>(var_0.x, arg_1.d.x, !arg_1.d.x, !arg_1.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.b, arg_1.b)), var_2.wy, select(arg_1.a.wyx, select(vec3<bool>(any(arg_1.d), true, false), vec3<bool>(!var_0.x, var_0.x, arg_1.a.x), arg_1.d), vec3<bool>(!any(vec3<bool>(var_0.x, true, false)), arg_1.d.x, var_0.x)), arg_1.e);
    var var_4 = _wgslsmith_f_op_vec4_f32(-var_3.b);
    return var_2.x;
}

fn func_2() -> vec4<i32> {
    var var_0 = ~u_input.a;
    var_0 = ~u_input.a;
    var_0 = ~(func_3(vec4<i32>(46499i, 7762i, 26175i, -19124i) & firstTrailingBit(vec4<i32>(-29334i, -12817i, -21117i, 51178i)), Struct_3(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), vec4<f32>(738f, -1546f, -850f, 1000f), vec2<u32>(1u, 1u), vec3<bool>(true, true, false), Struct_1(u_input.a, vec4<i32>(-8990i, 2147483647i, 0i, 1i))), countOneBits(1u)) ^ 55106u);
    var_0 = _wgslsmith_mult_u32(abs(u_input.a), firstTrailingBit(_wgslsmith_clamp_u32(33629u, ~u_input.a & u_input.a, abs(u_input.a))));
    let var_1 = select(~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, -23732i), _wgslsmith_mult_i32(2147483647i, 0i)), 1i, 2147483647i, _wgslsmith_mult_i32(-7653i, ~(-3811i))), vec4<i32>(-1i) * -(vec4<i32>(-1430i, -19325i, 40503i, -2147483647i) << (abs(vec4<u32>(u_input.a, u_input.a, 57131u, u_input.a)) % vec4<u32>(32u))), any(vec2<bool>(u_input.a >= ~u_input.a, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)))));
    return min(vec4<i32>(3673i, var_1.x, 6047i, max(-33790i, ~var_1.x)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(~var_1.x, -4879i, firstTrailingBit(60720i), reverseBits(var_1.x)), -(~var_1), var_1), -vec4<i32>(~(-20634i), 1i, var_1.x, _wgslsmith_mod_i32(-32300i, ~var_1.x)));
}

fn func_1(arg_0: vec2<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_mod_vec4_i32(abs(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 36729i), vec3<i32>(-1i, -15600i, 2147483647i)) >> (select(u_input.a, 56299u, arg_0.x) % 32u), -71285i, _wgslsmith_mod_i32(i32(-1i) * -1i, -87i), -abs(0i))), -vec4<i32>(-(i32(-1i) * -23994i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(-1i, -5838i, -3469i), vec3<i32>(0i, 2147483647i, -3552i)), vec3<i32>(-2147483647i, -1i, 0i)), 2246i, 1i));
    var_0 = firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(abs(reverseBits(var_0.x)), -2147483647i, -2147483647i, 44628i), select(func_2(), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, var_0.x, var_0.x), vec4<i32>(1i, -72102i, -24934i, var_0.x)), vec4<i32>(var_0.x, 2147483647i, 1i, -2147483647i)), any(arg_0))));
    var var_1 = Struct_3(vec4<bool>(all(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, false, arg_0.x), arg_0.x)), arg_0.x, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1947f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1699f))), _wgslsmith_f_op_f32(f32(-1f) * -173f), 112f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-434f, 232f, _wgslsmith_f_op_f32(sign(574f)), _wgslsmith_f_op_f32(958f - -412f)))), ~(~vec2<u32>(u_input.a, ~u_input.a)), vec3<bool>(!(false & (false && arg_0.x)), true, arg_0.x), Struct_1(14548u, vec4<i32>(_wgslsmith_mult_i32(9254i, _wgslsmith_div_i32(var_0.x, 51257i)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, 2147483647i, var_0.x, var_0.x), vec4<i32>(-1i, 1i, var_0.x, var_0.x)), firstTrailingBit(vec4<i32>(25198i, -3699i, var_0.x, var_0.x))), -var_0.x, -46647i)));
    var_0 = abs(reverseBits(var_1.e.b << (countOneBits(vec4<u32>(var_1.c.x, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))));
    var var_2 = !select(select(!var_1.a.wxw, select(var_1.a.wxy, !var_1.d, var_1.a.zyz), vec3<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(var_1.a.x, var_1.a.x, false, false)), false)), vec3<bool>(arg_0.x, all(select(vec2<bool>(var_1.d.x, true), vec2<bool>(arg_0.x, true), var_1.d.xz)), !select(arg_0.x, true, arg_0.x)), false);
    return var_1.b.ww;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(549f + 482f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(true, false)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1000f), vec2<f32>(var_0.x, 1513f)) * vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 887f), vec2<f32>(-426f, var_0.x)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1479f * var_0.x), -1244f))));
    let var_1 = Struct_2(~52654u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(178f * 1846f)), -897f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-694f, -605f, var_0.x))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, 843f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 172f) * vec3<f32>(var_0.x, -235f, -747f)), vec3<f32>(var_0.x, 1000f, var_0.x)))), vec3<bool>(true, false, false));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.xy) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1139f, -230f), var_1.b.zz)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(false, var_1.c.x))))));
    var_0 = vec2<f32>(_wgslsmith_div_f32(-469f, var_0.x), var_0.x);
    let var_2 = Struct_2(~((13672u << (u_input.a % 32u)) >> (_wgslsmith_add_u32(762u, u_input.a) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) * _wgslsmith_f_op_vec3_f32(sign(var_1.b))), select(select(vec3<bool>(false, true, false), var_1.c, vec3<bool>(all(var_1.c), false, false | var_1.c.x)), select(!select(vec3<bool>(var_1.c.x, false, var_1.c.x), vec3<bool>(false, false, var_1.c.x), var_1.c.x), var_1.c, vec3<bool>(true, all(var_1.c.xy), true && var_1.c.x)), true));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_1.b.x, -1553f, -647f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, 1000f, var_0.x, -1000f) - vec4<f32>(var_1.b.x, -2742f, 1844f, 843f)))))));
    let var_4 = _wgslsmith_f_op_f32(-var_2.b.x);
    var var_5 = _wgslsmith_mult_vec3_u32(min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(45093u, 4294967295u, 1u), vec3<u32>(var_2.a, var_2.a, var_2.a), vec3<u32>(21382u, 4294967295u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a, 38360u, 4294967295u), vec3<u32>(67171u, var_2.a, var_1.a) ^ vec3<u32>(var_1.a, var_2.a, var_1.a))) >> (vec3<u32>(1u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, 20143u, var_2.a, 35928u), vec4<u32>(4294967295u, var_1.a, 57499u, 26176u)), _wgslsmith_mod_vec4_u32(vec4<u32>(65129u, 0u, var_1.a, var_2.a), vec4<u32>(u_input.a, var_1.a, 0u, u_input.a))), 1u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.a, var_2.a, var_1.a) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(var_1.a, 4813u, u_input.a)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, var_1.a, var_2.a), select(vec3<u32>(25814u, 11501u, 59286u), vec3<u32>(7543u, 4294967295u, u_input.a), var_2.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a, var_1.a, var_1.a), ~vec3<u32>(var_1.a, 39826u, var_1.a))) | ~vec3<u32>(50816u, 12858u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 4294967295u, u_input.a, var_2.a), vec4<u32>(1u, 13628u, 1u, 11270u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, 2147483647i), ~reverseBits(var_5.yz), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4 * 1207f), var_3.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_3.x)), _wgslsmith_div_f32(var_1.b.x, 289f))), -771f, _wgslsmith_f_op_f32(f32(-1f) * -1156f)), var_5.x, reverseBits(~var_5.x) ^ abs(~u_input.a));
}

