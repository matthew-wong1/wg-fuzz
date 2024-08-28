struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-11992i, i32(-2147483648)), vec2<i32>(58789i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(16711i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -21553i), vec2<i32>(29092i, -1i), vec2<i32>(3279i, 22320i), vec2<i32>(0i, -1i), vec2<i32>(30098i, 30265i), vec2<i32>(-14199i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(-11274i, 32077i), vec2<i32>(0i, 26947i), vec2<i32>(2147483647i, -1i), vec2<i32>(40472i, -30966i), vec2<i32>(62393i, 20896i), vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-28170i, 0i));

var<private> global1: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-257f)));
    global0 = array<vec2<i32>, 20>();
    var var_2 = arg_0;
    var var_3 = vec2<i32>(-(~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-14707i, -18710i), u_input.a.zw))), -1i);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a, -556f)))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2179f)))), vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, 19948u), ~_wgslsmith_add_u32(~84175u, 4294967295u ^ arg_0), _wgslsmith_clamp_u32(u_input.b.x << (u_input.c.x % 32u), ~18228u, firstLeadingBit(1u))), _wgslsmith_f_op_vec3_f32(-arg_1.a), !any(select(select(arg_3.xz, arg_3.yy, vec2<bool>(false, false)), vec2<bool>(arg_3.x, arg_3.x), select(vec2<bool>(true, arg_3.x), vec2<bool>(arg_3.x, false), arg_3.yx))));
    let var_1 = Struct_1(arg_2, var_0.b, arg_1.a, !all(!(!vec4<bool>(arg_3.x, var_0.d, false, true))));
    var var_2 = var_1.b;
    var_0 = Struct_1(var_0.a, vec3<u32>(~4294967295u, _wgslsmith_mod_u32(var_1.b.x, var_2.x), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.yy ^ vec2<u32>(var_0.b.x, 1u), vec2<u32>(1u, var_0.b.x), var_1.b.zx), _wgslsmith_add_vec2_u32(~var_0.b.yz, ~var_0.b.xz))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-272f - 122f), _wgslsmith_f_op_f32(floor(var_0.a)), arg_1.a.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.b, arg_1.a.x, -1440f)))))), var_0.d);
    var_2 = ~var_0.b | vec3<u32>(~4294967295u, max(var_1.b.x, u_input.c.x), arg_0);
    return _wgslsmith_f_op_f32(exp2(var_0.a));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> vec3<f32> {
    let var_0 = Struct_2(vec3<f32>(605f, _wgslsmith_f_op_f32(f32(-1f) * -485f), _wgslsmith_f_op_f32(func_3(u_input.c.x, func_2(Struct_1(-607f, vec3<u32>(29704u, 14528u, 0u), vec3<f32>(553f, 1252f, 233f), arg_0), Struct_2(vec3<f32>(-1403f, 1237f, 1611f), -180f)), 159f, !vec3<bool>(true, arg_0, false)))), _wgslsmith_f_op_f32(305f * 1327f));
    global1 = array<vec3<bool>, 15>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - -1000f) + var_0.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1515f + 939f) - 1f))), max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x | u_input.b.x, ~4294967295u, 4294967295u >> (0u % 32u)), ~vec3<u32>(u_input.b.x, 1382u, 4294967295u)), vec3<u32>(u_input.e, u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 20916u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.e, u_input.e, u_input.e), vec4<u32>(u_input.e, 1u, u_input.b.x, u_input.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1218f, 1908f, var_0.b) * _wgslsmith_f_op_vec3_f32(floor(var_0.a))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b, 772f, 651f))))) * _wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(var_0.a)))))), select(true, all(vec2<bool>(arg_0, true)), arg_0));
    let var_2 = abs(-vec4<i32>(-select(0i, u_input.a.x, false), max(1i, 86174i), _wgslsmith_mult_i32(arg_1.x, arg_1.x) >> (var_1.b.x % 32u), reverseBits(min(0i, u_input.a.x))));
    var var_3 = var_0;
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.b, 2002f)), var_3.a)), vec3<f32>(var_3.b, 544f, _wgslsmith_f_op_f32(-var_3.a.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    global1 = array<vec3<bool>, 15>();
    let var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(true, true)) && (arg_1 < 22522i), arg_1 == -59057i), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d)), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-987f + 797f) + _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, true))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1304f)), 1f), any(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(u_input.b.x), ~u_input.e), 15u)]), true, any(!vec3<bool>(arg_0.d, arg_0.d, false))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), !(!vec2<bool>(arg_0.d, arg_0.d)))));
    var var_1 = vec4<i32>(u_input.a.x | ~_wgslsmith_mult_i32(abs(arg_1), arg_1), _wgslsmith_add_i32(_wgslsmith_div_i32(~(-arg_1), _wgslsmith_clamp_i32(u_input.a.x, ~1i, ~41569i)), -5269i), -48850i, firstTrailingBit(select(arg_1, arg_1, arg_0.d)));
    global0 = array<vec2<i32>, 20>();
    var_1 = ~(u_input.a >> (~(~vec4<u32>(8517u, 23020u, u_input.c.x, arg_3.x)) % vec4<u32>(32u)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(201f, arg_0.a, arg_2.a.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_2.b, -861f)))) + arg_2.a), _wgslsmith_f_op_f32(-arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(317f - -137f))), ~u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(true, global0[_wgslsmith_index_u32(abs(u_input.c.x), 20u)]))), !select(all(vec3<bool>(false, true, false)), all(vec3<bool>(false, true, true)), true)), u_input.a.x, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-865f, -1416f, -2149f) * _wgslsmith_div_vec3_f32(vec3<f32>(-1565f, 145f, -1000f), vec3<f32>(-1619f, -143f, -1048f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(975f, -797f, -1754f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-2783f, -1000f, -508f), vec3<f32>(-2281f, -1058f, -218f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(235f - 166f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1148f)) + _wgslsmith_f_op_f32(abs(-242f))))), u_input.b.zy);
    var var_1 = u_input.a & max(u_input.a, u_input.a);
    var_0 = func_2(Struct_1(func_4(Struct_1(-638f, ~vec3<u32>(1u, 48503u, u_input.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -259f, -171f)), true), ~(-u_input.d), func_2(Struct_1(var_0.a.x, vec3<u32>(3553u, u_input.b.x, u_input.c.x), vec3<f32>(1325f, var_0.a.x, 662f), true), func_4(Struct_1(-1000f, vec3<u32>(u_input.b.x, 13439u, u_input.c.x), vec3<f32>(var_0.a.x, var_0.a.x, 1000f), true), var_1.x, Struct_2(var_0.a, -679f), u_input.b.yx)), u_input.b.zy).a.x, max(u_input.b, firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 64263u, 10476u), u_input.c))), vec3<f32>(var_0.a.x, -352f, 110f), select(all(vec2<bool>(true, false)), true, false)), Struct_2(var_0.a, func_2(Struct_1(_wgslsmith_f_op_f32(-var_0.a.x), vec3<u32>(66715u, u_input.e, u_input.b.x), _wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_0.a.x, -1000f, var_0.a.x)), false), Struct_2(vec3<f32>(1136f, 2082f, -549f), var_0.a.x)).b));
    var var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(f32(-1f) * -270f)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(18690u, u_input.b.x, u_input.c.x), vec3<u32>(u_input.b.x, 6207u, 21u)), ~0u, u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_4(Struct_1(-1559f, u_input.b, vec3<f32>(var_0.b, -653f, var_0.b), true), 2440i, Struct_2(vec3<f32>(var_0.b, var_0.b, -403f), -373f), vec2<u32>(u_input.e, 0u)).a)), all(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)))), Struct_2(_wgslsmith_f_op_vec3_f32(func_1(!(u_input.b.x < u_input.b.x), select(firstLeadingBit(u_input.a.ww), var_1.zw, all(vec2<bool>(false, false))))), var_0.b));
    var_1 = (abs(~_wgslsmith_mult_vec4_i32(u_input.a, u_input.a)) << (vec4<u32>(u_input.c.x, u_input.e, u_input.c.x, ~u_input.c.x | u_input.e) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, abs(-1i), 1i, _wgslsmith_clamp_i32(var_1.x, var_1.x, var_1.x)) << (reverseBits(vec4<u32>(u_input.c.x, 0u, 4294967295u, 34819u)) % vec4<u32>(32u)), reverseBits(abs(vec4<i32>(var_1.x, var_1.x, var_1.x, -64646i)) | u_input.a));
    var var_3 = ~vec3<u32>(reverseBits(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(27026u, u_input.c.x, 0u))), _wgslsmith_mult_u32(max(u_input.e, min(17435u, 4294967295u)), u_input.b.x), 1u);
    let var_4 = global1[_wgslsmith_index_u32(74974u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(var_1.x, 1i, var_0.a.x <= var_0.b), min(_wgslsmith_sub_vec2_i32(-var_1.yy, ~(-u_input.a.xz)), vec2<i32>(u_input.d, 2147483647i) >> (~var_3.xx % vec2<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x + var_2.a.x), _wgslsmith_div_f32(var_0.a.x, 590f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -183f)))));
}

