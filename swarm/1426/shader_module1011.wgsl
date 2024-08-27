struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<f32>) -> vec4<f32> {
    let var_0 = select(firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, arg_1, 43117u, arg_1), vec4<u32>(arg_1, 1u, 4294967295u, 19030u)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1, 16364u, 33531u, 0u), ~vec4<u32>(arg_1, arg_1, 14226u, 1u)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_1, ~arg_1, abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(60940u, arg_1))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(57910u, 0u, arg_1, arg_1), firstTrailingBit(vec4<u32>(arg_1, 1574u, 52430u, arg_1)))), !(!(!all(vec4<bool>(true, true, true, true)))));
    var var_1 = reverseBits(vec2<u32>(_wgslsmith_mod_u32(select(~3641u, ~4731u, any(vec4<bool>(false, true, true, false))), firstLeadingBit(~var_0.x)), 36680u));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.x, 888f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(309f + 1254f), -1000f), false)) != arg_2.x, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), true), true), arg_2, Struct_1(select(vec3<i32>(1i, -arg_0.x, arg_0.x), min(vec3<i32>(arg_0.x, 0i, -13228i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, arg_0.x, u_input.a), vec3<i32>(arg_0.x, arg_0.x, -2147483647i))), vec3<bool>(true, true, true)), vec3<bool>(!any(vec2<bool>(false, false)), true, true)));
    let var_3 = 425f;
    return _wgslsmith_f_op_vec4_f32(ceil(arg_2));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> u32 {
    return ~(~1u);
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_4(func_4(_wgslsmith_div_i32(-(u_input.b >> (66578u % 32u)), ~1i), Struct_2(arg_0, !vec3<bool>(arg_0, true, arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(2147483647i, 36237i, -21385i), 4294967295u, vec4<f32>(-421f, 426f, -414f, 936f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-828f, -232f, 608f, 1005f)))), Struct_1(~u_input.c, select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, false, arg_0), false)))));
    let var_1 = u_input.c;
    var var_2 = Struct_5(Struct_2(false, vec3<bool>(arg_0, true || arg_0, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-864f, 115f, -773f, -643f)), _wgslsmith_div_vec4_f32(vec4<f32>(2188f, -2843f, -1765f, 1281f), vec4<f32>(-407f, -1728f, 1451f, -1681f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 493f, 1788f, -1077f)) - vec4<f32>(-114f, 2462f, 1044f, 757f)), any(vec2<bool>(true, true)))), Struct_1(vec3<i32>(1i, u_input.b, 35974i), vec3<bool>(arg_0, any(vec4<bool>(arg_0, true, false, arg_0)), all(vec2<bool>(arg_0, arg_0))))), select(!select(select(vec4<bool>(true, true, false, arg_0), vec4<bool>(arg_0, false, false, false), vec4<bool>(arg_0, true, false, false)), !vec4<bool>(arg_0, arg_0, true, arg_0), true), !(!vec4<bool>(false, arg_0, arg_0, true)), !(!vec4<bool>(arg_0, false, arg_0, true))), Struct_3(vec4<bool>(true, true, any(vec3<bool>(arg_0, false, arg_0)), arg_0), _wgslsmith_f_op_f32(ceil(-1000f)), ~var_0.a, vec4<i32>(~_wgslsmith_clamp_i32(var_1.x, u_input.b, -1i), ~(~(-1i)), (-1i >> (var_0.a % 32u)) & 1i, ~0i)));
    var_2 = Struct_5(var_2.a, !select(!select(vec4<bool>(true, arg_0, arg_0, true), var_2.c.a, vec4<bool>(var_2.b.x, arg_0, var_2.a.d.b.x, arg_0)), vec4<bool>(any(vec3<bool>(var_2.b.x, false, arg_0)), var_2.c.a.x, true, true), select(select(var_2.b, var_2.b, true), select(var_2.c.a, var_2.c.a, true), all(vec3<bool>(true, true, arg_0)))), var_2.c);
    var var_3 = select(firstTrailingBit(var_1.yy), var_1.xz, vec2<bool>(!var_2.b.x, true)) >> (vec2<u32>(~(_wgslsmith_add_u32(var_0.a, 57191u) & ~var_2.c.c), _wgslsmith_mult_u32(~var_2.c.c, 4294967295u) & ~75964u) % vec2<u32>(32u));
    return Struct_3(select(select(!vec4<bool>(var_2.b.x, arg_0, false, true), !(!vec4<bool>(var_2.a.a, false, arg_0, arg_0)), select(!var_2.b, select(var_2.b, var_2.c.a, var_2.c.a), select(vec4<bool>(arg_0, var_2.a.a, true, var_2.c.a.x), var_2.c.a, true))), vec4<bool>((var_1.x == 0i) && all(var_2.b.xzz), _wgslsmith_f_op_f32(var_2.c.b + var_2.a.c.x) == -453f, max(var_2.c.c, 1u) != 1u, true), !var_2.c.a), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(var_1, _wgslsmith_mult_u32(var_0.a, 18863u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1451f, var_2.c.b, 926f, -448f) - vec4<f32>(849f, var_2.a.c.x, var_2.c.b, var_2.c.b))))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.c.x - -205f))), 18151u, max(~_wgslsmith_add_vec4_i32(var_2.c.d, vec4<i32>(1i, -37627i, -1i, -11109i)) << (~countOneBits(vec4<u32>(11896u, var_0.a, var_2.c.c, var_0.a)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(abs(var_2.c.d & var_2.c.d), var_2.c.d)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_3) -> u32 {
    let var_0 = func_2(true);
    let var_1 = ~countOneBits(~min(vec3<u32>(60844u, var_0.c, arg_1.c.c), vec3<u32>(1u, arg_2.c, 115569u)));
    var var_2 = Struct_4(var_1.x);
    var var_3 = arg_1.c;
    var var_4 = vec4<bool>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_2.d.ywz, vec3<i32>(arg_0.d.a.x, -3274i, var_3.d.x)), _wgslsmith_sub_i32(var_0.d.x & arg_2.d.x, arg_1.c.d.x)) > _wgslsmith_add_i32(~(var_0.d.x | 0i), ~_wgslsmith_sub_i32(-1i, arg_2.d.x)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.b))))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1.a.c.x)))), all(vec3<bool>(any(vec4<bool>(false, var_0.a.x, false, var_0.a.x)), var_0.b >= _wgslsmith_f_op_f32(sign(793f)), !arg_2.a.x)));
    return ~select(_wgslsmith_sub_u32(~var_0.c, ~func_4(46577i, arg_0)), ~1u, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(countOneBits(~71940u) << (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstTrailingBit(26427u), ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(39672u, 4294967295u, 24888u, 4294967295u), vec4<u32>(13602u, 6627u, 1946u, 33615u))), _wgslsmith_add_u32(42447u, _wgslsmith_dot_vec2_u32(vec2<u32>(54004u, 0u), vec2<u32>(1u, 28110u)))) % 32u), ~83375u, 0u, 62195u);
    let var_1 = true;
    var_0 = select(~(~(~vec4<u32>(var_0.x, 59973u, 4294967295u, 35705u))), ~select(~vec4<u32>(4294967295u, var_0.x, 4294967295u, var_0.x), vec4<u32>(4294967295u, 54793u, 4294967295u, 4294967295u), vec4<bool>(var_1, false, true, var_1)), false) ^ vec4<u32>(~(~abs(var_0.x)), var_0.x, 4294967295u, var_0.x);
    var_0 = (vec4<u32>(~(~var_0.x), _wgslsmith_add_u32(var_0.x, func_1(Struct_2(var_1, vec3<bool>(true, var_1, var_1), vec4<f32>(103f, -203f, 517f, -384f), Struct_1(u_input.c, vec3<bool>(var_1, var_1, var_1))), Struct_5(Struct_2(var_1, vec3<bool>(var_1, false, false), vec4<f32>(1874f, -1599f, -1350f, 503f), Struct_1(u_input.c, vec3<bool>(true, var_1, false))), vec4<bool>(var_1, false, var_1, var_1), Struct_3(vec4<bool>(var_1, var_1, var_1, var_1), -690f, 1u, vec4<i32>(-15361i, 0i, u_input.a, u_input.b))), Struct_3(vec4<bool>(var_1, var_1, var_1, var_1), -792f, 4294967295u, vec4<i32>(19587i, u_input.b, -4407i, u_input.c.x)))), _wgslsmith_add_u32(var_0.x, 63676u) >> (71295u % 32u), var_0.x) >> (~firstTrailingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, 8311u)) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 21767u, 1u, 4294967295u), vec4<u32>(1u, 29346u, 12556u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<u32>(36308u, var_0.x, var_0.x, var_0.x)), ~countOneBits(max(vec4<u32>(0u, var_0.x, 10721u, 36388u), vec4<u32>(var_0.x, 80110u, 31892u, 1u))));
    let var_2 = Struct_2(var_1, !vec3<bool>(true, true, any(!vec4<bool>(var_1, false, var_1, var_1))), vec4<f32>(func_2(var_1).b, _wgslsmith_f_op_f32(f32(-1f) * -247f), 1978f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(465f, -456f) - _wgslsmith_f_op_f32(194f * -500f)) + 135f)), Struct_1(vec3<i32>(firstLeadingBit(~0i), 31242i, 12605i), !(!(!vec3<bool>(var_1, var_1, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-1413f)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1466f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_2.c.x), -523f), func_2(all(var_2.b.zy)).d.yww, max(vec3<i32>(-1i) * -(~u_input.c), vec3<i32>(var_2.d.a.x, -2147483647i, func_2(false & var_1).d.x)));
}

