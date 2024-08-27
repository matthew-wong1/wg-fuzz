struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = -172f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(round(1267f))) + _wgslsmith_f_op_f32(min(1152f, 1f)));
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(32398i << (0u % 32u), 1i, _wgslsmith_add_i32(-1i, 1i), 1i), ~firstTrailingBit(~(~vec4<i32>(2147483647i, -69282i, 33697i, 49365i))), -vec4<i32>(1i, 1i, 1i, 1i));
    var_1 = ~reverseBits(vec4<i32>(~var_1.x, -45215i, 1i, _wgslsmith_dot_vec2_i32(var_1.yz, -var_1.xz)));
    let var_2 = Struct_2(!(!vec4<bool>(any(vec3<bool>(true, true, arg_0.x)), all(vec3<bool>(false, arg_0.x, arg_0.x)), true, all(vec4<bool>(var_0, true, arg_0.x, arg_0.x)))), ~(-2147483647i), u_input.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(310f, 1295f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(977f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(600f, -1562f)) + _wgslsmith_f_op_f32(1281f * 426f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-179f, -292f, 802f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(189f, -1000f, -605f))))))), u_input.b);
    var var_3 = Struct_3(_wgslsmith_mult_u32(var_2.c, u_input.b), select(-6032i | ~_wgslsmith_add_i32(var_1.x, var_2.b), _wgslsmith_sub_i32(var_1.x, 2147483647i), true), abs(~(~vec4<i32>(var_2.b, 0i, var_1.x, var_2.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_2.d.x, 1040f)), _wgslsmith_f_op_f32(var_2.d.x + -985f), arg_0.x)) + _wgslsmith_f_op_f32(floor(var_2.d.x)))));
    return _wgslsmith_mod_u32(u_input.b ^ firstTrailingBit(0u), 20058u);
}

fn func_2(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = Struct_3(~firstTrailingBit(~0u >> (func_3(vec2<bool>(true, true)) % 32u)), min(abs(-arg_0) >> (select(_wgslsmith_mult_u32(u_input.b, 45677u), 4294967295u, arg_1 >= 4294967295u) % 32u), max(~(-1i), -1i)), ~vec4<i32>(1i, arg_0, ~(-25424i), max(-11398i, -12628i)) ^ abs(vec4<i32>(arg_0, 52476i, arg_0, -51755i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, u_input.a, u_input.a, arg_1), vec4<u32>(0u, 11490u, 24764u, arg_1)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1485f)))));
    var var_1 = select(reverseBits(-(vec3<i32>(var_0.c.x, arg_0, -78247i) & vec3<i32>(var_0.b, arg_0, -14234i))), vec3<i32>(firstTrailingBit(arg_0), -_wgslsmith_mod_i32(1i, var_0.b), 1i), vec3<bool>(true, true, true));
    let var_2 = var_0.c;
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(~(~82511u), reverseBits(~var_0.a), var_0.a), ~vec3<u32>(1u, ~firstLeadingBit(arg_1), ~firstLeadingBit(0u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = !vec2<bool>(all(vec3<bool>(true, true, true)), !(~14005u <= u_input.a));
    var_0 = !vec2<bool>(all(select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, true, false), vec3<bool>(true, false, false)), var_0.x != false)), var_0.x);
    let var_1 = all(!(!(!select(vec2<bool>(true, false), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x)))));
    var var_2 = !(!select(vec3<bool>(arg_0.x != -301f, var_1, var_0.x), vec3<bool>(true, any(vec2<bool>(true, true)), true), !vec3<bool>(var_0.x, true, var_1)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))))));
    return Struct_4(Struct_1(4294967295u, 40180u, -(~(~vec2<i32>(2147483647i, -1i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))), vec4<f32>(_wgslsmith_f_op_f32(ceil(844f)), _wgslsmith_f_op_f32(min(340f, arg_0.x)), 1000f, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))))), Struct_2(select(select(!vec4<bool>(var_2.x, false, false, false), vec4<bool>(var_1, var_0.x, true, var_1), var_2.x), select(vec4<bool>(false, var_2.x, var_0.x, false), !vec4<bool>(var_0.x, false, true, false), select(vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(var_2.x, var_1, var_2.x, false), vec4<bool>(false, false, true, false))), _wgslsmith_div_f32(-1529f, arg_0.x) <= _wgslsmith_f_op_f32(-1080f - arg_0.x)), _wgslsmith_sub_i32(-1i, min(1i, firstLeadingBit(9909i))), ~(_wgslsmith_mod_u32(arg_1.x, 19752u) >> (0u % 32u)), _wgslsmith_f_op_vec3_f32(round(arg_0.www)), _wgslsmith_sub_u32(u_input.b, u_input.b)), Struct_1(_wgslsmith_div_u32(select(~1u, func_3(var_2.zy), true), arg_1.x), arg_1.x, select(vec2<i32>(-2147483647i, _wgslsmith_sub_i32(-1i, 1i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 10617i, 1i), vec3<i32>(11566i, -40719i, -30568i)), _wgslsmith_mult_i32(0i, 2147483647i)), !any(vec3<bool>(true, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(step(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 576f, -125f, -832f), vec4<f32>(-319f, -1086f, 307f, -1000f), vec4<bool>(true, false, false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1355f, 506f, -1042f, 1950f)))))), vec2<u32>(u_input.b, func_2(0i, ~0u)) >> (min(~vec2<u32>(u_input.a, 0u), vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)));
    let var_1 = Struct_4(var_0.c, var_0.b, Struct_1(~(~var_0.c.a & 9713u), var_0.a.a, select(_wgslsmith_sub_vec2_i32(~var_0.c.c, _wgslsmith_sub_vec2_i32(vec2<i32>(-38323i, 1i), var_0.c.c)), var_0.c.c, true), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(var_0.a.d))))))));
    var var_2 = var_1.a;
    var var_3 = var_0.a;
    let var_4 = var_0.c.c.x;
    return var_1.b;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_4 {
    var var_0 = true;
    var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.d.x, 456f, arg_2)), _wgslsmith_div_f32(arg_1.d.x, arg_1.d.x)), arg_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1122f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.d.x), arg_1.d.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-270f, 177f))), arg_2)))));
    var var_2 = var_1;
    let var_3 = _wgslsmith_add_vec4_i32(reverseBits(select(vec4<i32>(8007i, 0i, arg_0, arg_0), vec4<i32>(arg_0, arg_1.b, arg_0, arg_1.b), arg_1.a.x)) >> ((~vec4<u32>(arg_1.c, arg_1.e, 1u, 45237u) | vec4<u32>(u_input.a, arg_1.e, 0u, u_input.b)) % vec4<u32>(32u)), abs(vec4<i32>(reverseBits(-23405i), arg_0, countOneBits(arg_0), ~28824i))) >> (~(vec4<u32>(20339u >> (arg_3 % 32u), ~u_input.b, select(arg_3, 972u, arg_1.a.x), ~9756u) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(arg_3, arg_3, u_input.a, arg_1.e), vec4<u32>(36681u, 1u, 4770u, arg_3))) % vec4<u32>(32u));
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, arg_1.d.x) * var_1) + var_1), _wgslsmith_f_op_f32(floor(587f)), 745f, arg_1.d.x), ~(~_wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(u_input.a, arg_3)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3, arg_1.e), vec2<u32>(arg_1.e, u_input.b)))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3) -> f32 {
    let var_0 = vec3<u32>(arg_0.a.b, u_input.b, _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b | 21441u, abs(arg_0.c.b)), ~func_1().c), ~(~func_2(-2147483647i, arg_0.c.b))));
    let var_1 = arg_0.b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-600f + var_1.d.x));
    let var_3 = 53165u;
    var var_4 = ~u_input.a;
    return _wgslsmith_f_op_f32(exp2(var_1.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -841f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-647f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-177f, -1537f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1358f)))), -1000f);
    let var_1 = firstLeadingBit(-min(reverseBits(min(vec4<i32>(-13681i, -29485i, -18495i, 21816i), vec4<i32>(-2147483647i, -1i, 2147483647i, 1i))), ~vec4<i32>(1i, 1i, 1i, 1i)));
    let var_2 = var_1;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_6(func_5(2147483647i, func_1(), false, ~3614u), Struct_3(37892u, countOneBits(i32(-1i) * -39058i), vec4<i32>(_wgslsmith_div_i32(-4380i, -17811i), 2147483647i >> (u_input.b % 32u), var_2.x, -var_2.x), -378f))), _wgslsmith_f_op_f32(select(-199f, _wgslsmith_f_op_f32(f32(-1f) * -1606f), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)))), var_0.x);
    var var_3 = _wgslsmith_f_op_f32(var_0.x - -1651f);
    let var_4 = !select(!func_1().a, select(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(518f, -156f, var_0.x, var_0.x) * vec4<f32>(var_0.x, -1104f, -2348f, -704f)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.a))).b.a, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f) >= _wgslsmith_f_op_f32(var_0.x + var_0.x)), !func_5(1i, func_4(vec4<f32>(var_0.x, -405f, 783f, var_0.x), vec2<u32>(92368u, u_input.a)).b, true, ~u_input.b).b.a);
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1073f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), 2087f, true))))));
    var_3 = -448f;
    let var_6 = vec3<bool>(true, true, !func_1().a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(var_0.x, -900f)), abs(vec2<u32>(u_input.a, firstTrailingBit(4294967295u))), func_1().e >> (28994u % 32u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(537f)), _wgslsmith_f_op_f32(var_0.x - var_0.x)))), _wgslsmith_f_op_vec2_f32(abs(var_0.yz)), func_4(vec4<f32>(var_5.x, _wgslsmith_f_op_f32(-var_0.x), 1207f, _wgslsmith_f_op_f32(sign(-495f))), vec2<u32>(u_input.b << (4294967295u % 32u), countOneBits(1u))).b.a.x)), _wgslsmith_add_vec2_i32(var_1.wx, vec2<i32>(_wgslsmith_add_i32(26681i, var_1.x), -var_1.x) | ~_wgslsmith_sub_vec2_i32(var_1.wx, var_1.yy)));
}

