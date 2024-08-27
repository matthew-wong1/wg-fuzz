struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<bool>) -> u32 {
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = arg_0;
    var var_1 = Struct_3(Struct_1(_wgslsmith_add_vec2_i32(u_input.a, arg_0.a)), var_0);
    var_1 = Struct_3(Struct_1(firstTrailingBit(firstLeadingBit(reverseBits(var_1.b.a)))), Struct_1(vec2<i32>(_wgslsmith_div_i32(~2147483647i, var_1.a.a.x), u_input.b)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, -660f))), vec2<f32>(arg_1, 706f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -379f) + vec2<f32>(arg_1, arg_1))))));
    var var_3 = ~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(-(~vec3<i32>(u_input.c, var_0.a.x, 1i)), abs(~vec3<i32>(2147483647i, 2147483647i, var_0.a.x))), vec3<i32>(-2147483647i, -5709i, _wgslsmith_mult_i32(var_0.a.x, 7728i)));
    return reverseBits(func_3(_wgslsmith_sub_vec4_u32(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 89360u, 4294967295u, 1u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 126988u, 1u)), select(vec4<u32>(16225u, 37624u, 87319u, 11194u), vec4<u32>(57u, 8249u, 50937u, 4294967295u), vec4<bool>(true, false, false, false))), countOneBits(~vec4<u32>(16058u, 4294967295u, 4294967295u, 4294967295u))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))), vec4<bool>(all(vec4<bool>(false, false, true, true)), select(false, false, false), true, any(vec3<bool>(false, false, false))), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false)))));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(1u, 1u, 1u))), 1u) ^ (~(~vec2<u32>(12358u, 4294967295u)) << (select(_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(1u, 97202u), vec2<bool>(any(vec2<bool>(true, false)), false)) % vec2<u32>(32u)));
    return Struct_1(vec2<i32>(arg_1.b.a.x, -12081i));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<i32>) -> vec4<u32> {
    let var_0 = Struct_3(Struct_1(u_input.a), func_4(u_input.b >> (func_2(Struct_1(vec2<i32>(-12138i, -6828i)), -1694f) % 32u), Struct_3(Struct_1(u_input.a), Struct_1(~u_input.a))));
    let var_1 = !arg_0.c.x;
    let var_2 = Struct_4(_wgslsmith_dot_vec2_u32(arg_1.xx, vec2<u32>(arg_1.x, select(~12310u, arg_1.x, var_1))), Struct_1(var_0.a.a), arg_0, func_4(-14688i, Struct_3(func_4(abs(u_input.b), var_0), Struct_1(vec2<i32>(arg_2.x, -1i)))));
    let var_3 = Struct_2(1i ^ arg_2.x, -346f, select(select(arg_0.c, var_2.c.c, !var_2.c.c), vec4<bool>(true, any(select(vec4<bool>(false, true, var_2.c.c.x, var_1), vec4<bool>(false, var_2.c.c.x, true, true), var_1)), !all(arg_0.c.xwx), select(var_2.c.c.x, true, any(var_2.c.c))), (arg_0.b == arg_0.b) && (_wgslsmith_div_i32(-4127i, u_input.c) <= _wgslsmith_add_i32(u_input.b, 5621i))));
    let var_4 = arg_1.x;
    return reverseBits(vec4<u32>(reverseBits(~4294967295u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_2.a, var_4, arg_1.x, 31019u), ~vec4<u32>(1u, 93730u, var_4, arg_1.x)), countOneBits(~vec4<u32>(var_2.a, 4294967295u, 4294967295u, 34399u))), arg_1.x << (4294967295u % 32u), var_4));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> i32 {
    let var_0 = false;
    let var_1 = Struct_4(max(arg_1, func_3(_wgslsmith_clamp_vec4_u32(~vec4<u32>(7906u, arg_1, 22896u, arg_1), firstLeadingBit(vec4<u32>(64193u, arg_1, 4294967295u, 1u)), ~vec4<u32>(20140u, 15252u, arg_1, 6780u)), !vec4<bool>(false, false, var_0, var_0))), arg_0.a, Struct_2(arg_2.b.a.x, arg_3, select(select(!vec4<bool>(false, false, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0), select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, false, var_0, false), vec4<bool>(false, true, var_0, var_0))), !vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, !var_0, var_0, all(vec4<bool>(var_0, var_0, true, var_0))))), func_4(12059i, Struct_3(func_4(firstTrailingBit(u_input.b), Struct_3(arg_0.b, arg_0.b)), arg_0.b)));
    var var_2 = (vec4<u32>(1u, func_2(arg_2.b, _wgslsmith_f_op_f32(max(var_1.c.b, 1271f))), 3290u, 59896u) << ((vec4<u32>(1u, max(var_1.a, 1u), ~0u, ~var_1.a) & abs(select(vec4<u32>(29416u, 17988u, 18208u, arg_1), vec4<u32>(36986u, var_1.a, var_1.a, 0u), var_1.c.c.x))) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(38763u, 0u, 0u, arg_1), vec4<u32>(4294967295u, 1u, var_1.a, var_1.a)), ~vec4<u32>(arg_1, arg_1, arg_1, arg_1)) >> (vec4<u32>(~var_1.a, ~1u, 0u, ~var_1.a) % vec4<u32>(32u)), select(~vec4<u32>(1u, 1u, 56818u, 5971u), ~vec4<u32>(0u, 10477u, arg_1, var_1.a), var_0) | firstLeadingBit(reverseBits(vec4<u32>(26648u, 0u, arg_1, 25891u))));
    var_2 = ~(~vec4<u32>(var_2.x, func_2(func_4(-2147483647i, Struct_3(Struct_1(arg_2.a.a), arg_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -605f)), func_1(Struct_2(arg_0.a.a.x, -1883f, vec4<bool>(var_0, var_0, false, false)), reverseBits(var_2.yxw), _wgslsmith_clamp_vec2_i32(vec2<i32>(19225i, var_1.b.a.x), vec2<i32>(u_input.a.x, var_1.c.a), vec2<i32>(arg_2.a.a.x, var_1.b.a.x))).x, max(var_2.x << (arg_1 % 32u), var_1.a >> (var_2.x % 32u))));
    var_2 = max(abs(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 4294967295u, 4294967295u, var_1.a), vec4<u32>(66182u, var_2.x, var_1.a, arg_1), ~vec4<u32>(arg_1, 4294967295u, var_1.a, var_1.a)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(79660u, 33235u, 35723u, arg_1), vec4<u32>(0u, 37699u, 33133u, var_1.a)), abs(vec4<u32>(69156u, 121957u, arg_1, 10145u))))), reverseBits(vec4<u32>(~(~0u), arg_1, ~func_1(var_1.c, var_2.wxy, u_input.a).x, _wgslsmith_mult_u32(_wgslsmith_add_u32(var_1.a, 13985u), 24704u))));
    return _wgslsmith_div_i32(-44970i, abs(28465i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(Struct_1(vec2<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(32579i, 0i, u_input.b), vec3<i32>(u_input.a.x, -2147483647i, 0i)))), Struct_1(abs(-u_input.a))), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(func_1(Struct_2(-2147483647i, 1000f, vec4<bool>(true, false, true, true)), vec3<u32>(67289u, 4294967295u, 1990u), vec2<i32>(u_input.c, u_input.c)), min(vec4<u32>(68946u, 25909u, 88258u, 69810u), vec4<u32>(40385u, 1u, 0u, 99997u))), vec4<u32>(~(~46748u), ~77845u, 1u, 1u)), Struct_3(func_4(u_input.c, Struct_3(Struct_1(u_input.a), func_4(u_input.a.x, Struct_3(Struct_1(vec2<i32>(u_input.b, 34245i)), Struct_1(vec2<i32>(36667i, -1i)))))), Struct_1(_wgslsmith_mult_vec2_i32(~u_input.a, vec2<i32>(u_input.b, u_input.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-962f + 1817f) + 387f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(170f - -1000f))) * _wgslsmith_f_op_f32(1f * 1f)));
    let var_1 = -503f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1207f * 3448f))))));
    var var_2 = Struct_4(4294967295u, func_4(firstLeadingBit(i32(-1i) * -1i), Struct_3(Struct_1(vec2<i32>(u_input.c, var_0)), Struct_1(u_input.a))), Struct_2(0i, _wgslsmith_f_op_f32(1631f + _wgslsmith_f_op_f32(322f + _wgslsmith_f_op_f32(-973f - -108f))), vec4<bool>(var_1, var_1, var_1, var_1)), func_4(func_4(~1i, Struct_3(Struct_1(u_input.a), Struct_1(u_input.a))).a.x & ~_wgslsmith_div_i32(9776i, 5346i), Struct_3(Struct_1(u_input.a & vec2<i32>(1i, var_0)), func_4(1i, Struct_3(Struct_1(vec2<i32>(u_input.c, u_input.c)), Struct_1(vec2<i32>(-58383i, 1i)))))));
    var_2 = Struct_4(28970u, Struct_1(vec2<i32>(-27111i, u_input.c)), Struct_2(-22348i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_2.c.b)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(644f, -819f, var_1)), _wgslsmith_div_f32(-407f, var_2.c.b))), !vec4<bool>(true, true, true, all(var_2.c.c))), var_2.b);
    var var_3 = _wgslsmith_clamp_vec2_i32(u_input.a, select(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.a, -22931i, var_2.d.a.x, var_2.c.a), vec4<i32>(1i, u_input.a.x, u_input.b, var_2.b.a.x)), 1i), _wgslsmith_add_vec2_i32(-u_input.a, vec2<i32>(var_2.b.a.x, -2147483647i))), vec2<i32>(abs(var_2.d.a.x), ~(-u_input.b)), false), u_input.a | firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -43278i), vec2<i32>(2147483647i, var_2.b.a.x))));
    var_2 = Struct_4(~(~var_2.a), var_2.b, Struct_2(_wgslsmith_sub_i32(~47567i, 1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1512f + -1459f) - _wgslsmith_f_op_f32(401f * var_2.c.b)))), var_2.c.c), Struct_1(vec2<i32>(-(1i | var_2.c.a), 0i)));
    var var_4 = vec3<bool>(true, false, !(!any(vec3<bool>(var_1, false, var_2.c.c.x))) || (any(select(var_2.c.c.zww, vec3<bool>(false, true, true), var_2.c.c.x)) & all(vec2<bool>(true, false))));
    var_3 = ~_wgslsmith_div_vec2_i32(-select(u_input.a, vec2<i32>(2147483647i, var_0), var_2.c.c.x), var_2.b.a) & firstLeadingBit(reverseBits(reverseBits(var_2.b.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1757i), ~21065u, firstTrailingBit(max(-vec4<i32>(var_3.x, 11173i, 1i, -2147483647i), vec4<i32>(-21775i, var_0, u_input.a.x, 0i)) << (countOneBits(vec4<u32>(4294967295u, 0u, 82670u, var_2.a)) % vec4<u32>(32u))));
}

