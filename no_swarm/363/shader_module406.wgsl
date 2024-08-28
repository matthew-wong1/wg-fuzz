struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = Struct_2(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(arg_0, 0u, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_0, 1u, arg_0, 0u), vec4<u32>(u_input.a, 0u, arg_0, 37910u), vec4<bool>(true, true, true, false)), vec4<u32>(20147u, 43443u, 0u, u_input.a)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(11320u, u_input.a, 0u, 0u), vec4<u32>(u_input.a, arg_0, arg_0, u_input.a))));
    var var_1 = var_0;
    var_1 = var_0;
    var_1 = Struct_2(_wgslsmith_div_vec4_u32(abs(firstLeadingBit(var_0.a)), abs(vec4<u32>(arg_0, u_input.a, arg_0, arg_0)) & _wgslsmith_add_vec4_u32(~vec4<u32>(arg_0, 29387u, 99671u, var_0.a.x), ~var_0.a)));
    let var_2 = !select(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), !vec3<bool>(true, all(vec4<bool>(false, false, true, false)), u_input.c.x <= u_input.c.x), -6013i < u_input.d.x);
    return any(!select(!vec4<bool>(true, var_2.x, false, var_2.x), !vec4<bool>(var_2.x, true, var_2.x, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, var_2.x, var_2.x), var_2.x))) & !any(var_2.zz);
}

fn func_2() -> vec2<f32> {
    var var_0 = true;
    var_0 = false;
    var var_1 = Struct_1((_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 72251u), vec2<u32>(0u, 81082u)), 0u) & u_input.a) >> (reverseBits(~abs(1u)) % 32u), all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(u_input.c.x >= u_input.b, true), vec2<bool>(func_3(u_input.a), true))), vec3<i32>(~(_wgslsmith_sub_i32(1i, -4886i) ^ _wgslsmith_sub_i32(u_input.b, 0i)), ~_wgslsmith_sub_i32(~0i, -26141i >> (0u % 32u)), -4520i), ~select(u_input.a, 33391u, any(vec3<bool>(false, true, false))) != countOneBits(~_wgslsmith_mod_u32(63985u, 58215u)), select(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), select(all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), false)), vec2<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, false))), true));
    let var_2 = _wgslsmith_mult_vec3_i32(u_input.d, vec3<i32>(~abs(min(2147483647i, -2147483647i)), 0i, -12066i));
    var_1 = Struct_1(var_1.a, any(vec4<bool>(true, all(!vec4<bool>(var_1.b, var_1.e.x, true, false)), !all(vec4<bool>(var_1.e.x, false, true, false)), true)), vec3<i32>(-38931i, var_1.c.x, var_2.x ^ (1i ^ (var_2.x ^ var_1.c.x))), all(vec3<bool>(!(!var_1.b), true, var_1.d)), !(!vec2<bool>(true, var_1.e.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-595f - 407f), 1538f) - vec2<f32>(1000f, _wgslsmith_f_op_f32(step(453f, 927f)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-381f, 1757f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-328f, 1468f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(656f, -234f) + vec2<f32>(-1894f, 684f)))))));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = vec4<u32>(u_input.a, ~abs(firstLeadingBit(61931u)), 4294967295u & (u_input.a << (u_input.a % 32u)), u_input.a);
    let var_1 = 1i;
    var_0 = firstLeadingBit(~vec4<u32>(firstLeadingBit(var_0.x), _wgslsmith_mult_u32(var_0.x, _wgslsmith_mod_u32(u_input.a, var_0.x)), ~19777u, var_0.x));
    let var_2 = any(vec3<bool>(~firstLeadingBit(62453u) < _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(47741u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, var_0.x)), vec4<u32>(u_input.a, var_0.x, 37749u, 32670u)), any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), true));
    var var_3 = ~(-_wgslsmith_dot_vec3_i32(~u_input.d, ~select(u_input.d, u_input.c, vec3<bool>(var_2, var_2, var_2))));
    return Struct_1(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.x, _wgslsmith_mod_u32(u_input.a, u_input.a)), var_0.x) & 31009u, !all(vec3<bool>(var_2 != true, !var_2, select(false, var_2, var_2))), ~u_input.c, any(select(select(vec3<bool>(false, false, var_2), vec3<bool>(true, var_2, var_2), !vec3<bool>(false, false, var_2)), vec3<bool>(true, true, true), !select(vec3<bool>(false, var_2, false), vec3<bool>(true, var_2, var_2), var_2))), select(!select(!vec2<bool>(var_2, var_2), vec2<bool>(var_2, false), vec2<bool>(true, var_2)), vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, var_2), vec3<bool>(var_2, var_2, var_2))), true), vec2<bool>(true, true)));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) + vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, -228f)));
    var_0 = Struct_1(~var_0.a, !all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, var_0.e.x, true), vec4<bool>(var_0.b, false, false, var_0.d), true), false)), vec3<i32>(0i, -20i, var_0.c.x), false || any(select(select(vec3<bool>(false, true, var_0.d), vec3<bool>(true, true, true), true), vec3<bool>(var_0.e.x, var_0.b, var_0.e.x), false)), var_0.e);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1391f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -866f))))), _wgslsmith_f_op_vec2_f32(func_2()).x, 1f);
    var_0 = func_4(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, var_1.x));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.zz)))).e;
    return Struct_2(min(vec4<u32>(reverseBits(58411u) << (var_0.a % 32u), 1u, ~(~u_input.a), _wgslsmith_clamp_u32(var_0.a, ~u_input.a, ~u_input.a)), vec4<u32>(1u, 1u, var_0.a, func_4(_wgslsmith_f_op_vec2_f32(min(var_1.xx, vec2<f32>(2139f, 416f)))).a)));
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = false;
    var var_1 = select(!select(!(!vec4<bool>(true, var_0, true, var_0)), vec4<bool>(!var_0, any(vec4<bool>(arg_3.d, true, arg_3.d, arg_3.b)), arg_3.e.x, all(vec3<bool>(false, arg_3.d, true))), vec4<bool>(var_0, arg_2.a.x <= 0u, arg_3.e.x, -315i < arg_3.c.x)), !vec4<bool>(all(vec4<bool>(false, arg_3.d, var_0, true)), ~33694u < arg_2.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, arg_3.c.x, arg_3.c.x, -2147483647i), vec4<i32>(1i, u_input.d.x, u_input.c.x, 37974i)) >= select(arg_3.c.x, arg_3.c.x, arg_3.b), true), all(!(!select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(true, var_0, arg_3.b, arg_3.d), var_0))));
    var var_2 = !select(vec2<bool>(true, arg_3.e.x), !arg_3.e, select(vec2<bool>(any(vec4<bool>(arg_3.b, true, true, true)), true), vec2<bool>(!var_0, arg_0.x < arg_0.x), true));
    var var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, 2147483647i, -1508i, 29087i), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, arg_3.c.x, -2775i, 1i), vec4<i32>(18463i, 0i, arg_3.c.x, 0i), vec4<i32>(u_input.d.x, -50743i, u_input.b, 27798i))) & (vec4<i32>(-1i) * -(~vec4<i32>(13905i, -26721i, 0i, u_input.d.x))), ~reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -50800i, 6514i, 1i), vec4<i32>(-1i, 11236i, -1i, u_input.d.x), vec4<i32>(arg_3.c.x, u_input.d.x, 33052i, u_input.c.x)) & (vec4<i32>(-418i, 9047i, u_input.d.x, arg_3.c.x) ^ vec4<i32>(-12980i, arg_3.c.x, 2147483647i, 1i))));
    var_2 = select(vec2<bool>(all(vec2<bool>(true, !var_1.x)), !func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(145f, -1785f) - vec2<f32>(1000f, -198f))).e.x), vec2<bool>(any(vec2<bool>(true, true)), var_0), !(true && func_3(0u)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.yy;
    let var_1 = func_5(~_wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, ~u_input.a, _wgslsmith_add_u32(0u, u_input.a), 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 51237u) | vec4<u32>(4294967295u, 8498u, 0u, 82864u)), ~firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, u_input.a))), func_1(), Struct_1(u_input.a, any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), -u_input.d, any(vec2<bool>(true, true)), select(vec2<bool>(true, all(vec2<bool>(false, true))), vec2<bool>(true, true), true)));
    var var_2 = abs(reverseBits(~vec4<i32>(var_0.x, -2147483647i, u_input.c.x, var_0.x))) << (~var_1.a % vec4<u32>(32u));
    let var_3 = func_5(var_1.a ^ var_1.a, ~reverseBits(_wgslsmith_div_u32(~1u, ~43675u)), var_1, func_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1084f), 325f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(582f, -2385f), _wgslsmith_f_op_f32(f32(-1f) * -737f))))));
    var_2 = -(_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -10093i, reverseBits(var_2.x), 1i, u_input.b ^ u_input.d.x), _wgslsmith_mod_vec4_i32(max(vec4<i32>(-68144i, 1i, var_2.x, var_2.x), vec4<i32>(var_0.x, 5942i, var_2.x, var_0.x)), vec4<i32>(u_input.c.x, var_2.x, -18083i, var_2.x) << (var_1.a % vec4<u32>(32u)))) ^ -(~vec4<i32>(var_0.x, var_0.x, 8282i, 1i)));
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(548f, 234f)), _wgslsmith_f_op_vec2_f32(func_2()).x))));
    var_4 = -670f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_clamp_i32((u_input.c.x & 62113i) | u_input.b, var_0.x | _wgslsmith_clamp_i32(-1i, -2147483647i, var_2.x), -4884i), _wgslsmith_sub_i32(~(~4298i), max(-var_2.x, ~(-2147483647i))), var_0.x), _wgslsmith_add_vec4_i32(firstLeadingBit(-min(vec4<i32>(var_0.x, var_2.x, 2147483647i, 1i), vec4<i32>(u_input.d.x, 2147483647i, 40404i, -1i))), max(select(min(vec4<i32>(u_input.c.x, 0i, var_2.x, var_0.x), vec4<i32>(var_0.x, var_0.x, var_2.x, -27370i)), vec4<i32>(var_2.x, 1i, var_2.x, 0i), true), ~vec4<i32>(6029i, var_2.x, 1i, var_2.x))), -1000f, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-349f - -1665f) + -1361f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1195f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1073f, 1249f, -117f) + vec3<f32>(-1039f, 1490f, 709f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(469f, 338f, 769f), vec3<f32>(124f, -898f, 317f))), vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-398f, 875f, 543f), vec3<f32>(1000f, -923f, -711f)))), vec3<bool>(true, true, true))))), func_1().a);
}

