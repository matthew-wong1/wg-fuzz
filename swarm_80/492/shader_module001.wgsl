struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_2(Struct_1(u_input.b, u_input.a, vec4<bool>(true, all(vec4<bool>(true, true, true, true)), !(0u >= arg_0.x), !any(vec4<bool>(true, true, false, true))), 83871u, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(265f, -2197f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1776f, 881f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-333f, -1137f) - vec2<f32>(285f, 970f))), (u_input.a >> (10057u % 32u)) != firstTrailingBit(1i)))), true, countOneBits(reverseBits(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.a, u_input.a))), Struct_1(u_input.b, u_input.a, select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true), false), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true))), u_input.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-123f, 1670f)), _wgslsmith_f_op_f32(sign(-1037f))), -673f)), Struct_1(u_input.b, abs(_wgslsmith_mult_i32(abs(u_input.a), ~u_input.a)), vec4<bool>(true, true, true, true), ((u_input.b >> (19625u % 32u)) ^ select(u_input.b, 4294967295u, true)) | firstTrailingBit(~arg_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1211f, _wgslsmith_f_op_f32(round(328f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-572f, 925f)))));
    var var_1 = ~(~abs(arg_0.x));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.d.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -299f)));
}

fn func_2(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(771f, 671f))), -422f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(910f, -442f)))))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1081f * 448f), _wgslsmith_f_op_f32(1106f + _wgslsmith_f_op_f32(-350f - -444f))))));
    var var_1 = Struct_3(Struct_1(33305u, firstLeadingBit(-_wgslsmith_mult_i32(arg_1, u_input.a)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, arg_0, arg_0, arg_0), select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(true, false, true, false), vec4<bool>(arg_0, true, arg_0, true))), u_input.b, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -401f), 1335f)), Struct_2(Struct_1(1u, u_input.a, !(!vec4<bool>(arg_0, true, true, true)), 4294967295u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0)))), false, ~vec3<i32>(u_input.a, arg_1, _wgslsmith_add_i32(arg_1, 2147483647i)), Struct_1(1u, _wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(1i, 17475i)), select(!vec4<bool>(false, arg_0, true, false), vec4<bool>(true, true, arg_0, arg_0), arg_0), 4294967295u, var_0), Struct_1(u_input.b, arg_1, !(!vec4<bool>(false, arg_0, arg_0, true)), abs(u_input.b) << (~1u % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(127f, var_0.x) * var_0)))), Struct_1(_wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(~u_input.b, u_input.b >> (38997u % 32u))), u_input.a >> (130869u % 32u), !(!(!vec4<bool>(true, arg_0, false, true))), ~u_input.b, vec2<f32>(332f, -218f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x), any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b, u_input.b, u_input.b))) - _wgslsmith_f_op_f32(-var_0.x))), var_0.x), Struct_1(1u, 1i, vec4<bool>(true, arg_0, false, !any(vec3<bool>(true, arg_0, false))), firstLeadingBit(u_input.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-361f, -1000f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 947f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 322f), vec2<f32>(var_0.x, var_0.x)))))));
    var var_2 = ~3448u;
    let var_3 = Struct_3(Struct_1(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.e.a, 1u, 0u), vec3<u32>(12524u, 6318u, 1u), vec3<bool>(false, arg_0, true)), vec3<u32>(17855u, u_input.b, var_1.b.e.d) & vec3<u32>(52683u, 1u, var_1.c.a)), 2147483647i, vec4<bool>(!any(vec3<bool>(arg_0, false, true)), all(!vec3<bool>(var_1.e.c.x, false, true)), false, true), _wgslsmith_dot_vec4_u32(vec4<u32>(min(var_1.b.d.a, 9082u), _wgslsmith_dot_vec3_u32(vec3<u32>(16397u, u_input.b, 42498u), vec3<u32>(0u, u_input.b, 4294967295u)), ~4294967295u, var_1.b.e.d), reverseBits(vec4<u32>(49986u, var_1.b.e.d, 25390u, var_1.a.d))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-605f, 1003f), vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.e * vec2<f32>(var_0.x, -671f)))))), var_1.b, Struct_1(~u_input.b, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(14191i, u_input.a, -2147483647i, 17603i), vec4<i32>(-31770i, u_input.a, -31647i, u_input.a)), _wgslsmith_sub_i32(63670i, 2147483647i)) << (firstTrailingBit(~0u) % 32u), !var_1.b.e.c, abs(select(20852u >> (0u % 32u), 1u, true)), _wgslsmith_f_op_vec2_f32(-var_1.e.e)), _wgslsmith_f_op_f32(-1000f * var_1.b.a.e.x), var_1.a);
    return i32(-1i) * -1i;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = select(arg_1.c.zzx, arg_1.c.yxw, arg_1.c.wwy);
    var var_1 = vec3<u32>(~arg_1.a, max(4294967295u, ~_wgslsmith_mult_u32(~22141u, arg_1.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u) | ~_wgslsmith_sub_vec3_u32(vec3<u32>(52820u, 4294967295u, u_input.b), vec3<u32>(29690u, 97859u, arg_1.a)), ~select(vec3<u32>(1u, 32448u, 1u), ~vec3<u32>(u_input.b, arg_1.a, 1u), false)));
    var_1 = vec3<u32>(var_1.x, 36302u, 1u);
    var var_2 = _wgslsmith_add_vec4_u32(select(_wgslsmith_sub_vec4_u32(~vec4<u32>(114538u, 4294967295u, var_1.x, 67226u), ~vec4<u32>(16580u, arg_1.d, 4294967295u, 0u)), abs(firstTrailingBit(vec4<u32>(29024u, 66534u, 1u, 20265u))), select(vec4<bool>(false, true, false, false), !arg_1.c, true)), firstTrailingBit(vec4<u32>(abs(arg_1.d), max(1u, arg_1.a), _wgslsmith_mod_u32(0u, var_1.x), 68734u))) ^ ~reverseBits(~vec4<u32>(4294967295u, 1u, u_input.b, arg_1.d));
    let var_3 = -2147483647i;
    return Struct_2(Struct_1(_wgslsmith_add_u32(~select(4073u, var_1.x, var_0.x), ~_wgslsmith_div_u32(var_2.x, var_1.x)), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(var_3, arg_2.x, -15913i, 35986i), vec4<i32>(0i, arg_0, var_3, arg_2.x)), arg_1.c, var_2.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.e) * arg_1.e)))), any(arg_1.c.wx), reverseBits(reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-32645i, arg_1.b, -2147483647i), vec3<i32>(arg_0, 47639i, arg_2.x)), vec3<i32>(arg_2.x, arg_0, 1i) & vec3<i32>(-1i, -2147483647i, arg_0)))), Struct_1(firstLeadingBit(var_1.x), ~u_input.a, !arg_1.c, arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.e - arg_1.e))), arg_1);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = abs(vec2<i32>(arg_0, _wgslsmith_dot_vec2_i32(arg_2.b.c.zy, _wgslsmith_add_vec2_i32(arg_2.b.c.zx, -vec2<i32>(4033i, arg_2.c.b)))));
    var_0 = -vec2<i32>(~_wgslsmith_mult_i32(arg_0, 1i) ^ arg_0, u_input.a);
    var var_1 = arg_2.a;
    var var_2 = func_4(_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, ~(-var_0.x)), select(-1i, arg_2.a.b, !arg_2.e.c.x)), arg_2.c, vec2<i32>(-(i32(-1i) * -2147483647i), ~func_2(false, var_0.x)) << (abs(vec2<u32>(2596u, u_input.b)) % vec2<u32>(32u)));
    var_1 = var_2.e;
    return Struct_1(abs(select(55215u, _wgslsmith_mult_u32(var_1.a >> (arg_1 % 32u), 42824u), false)), _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.a)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_2.d.b, arg_0), vec3<i32>(18855i, arg_0, var_0.x)), 13339i, var_0.x >> (var_2.d.a % 32u), arg_0)) & arg_0, var_1.c, 2372u, _wgslsmith_div_vec2_f32(vec2<f32>(-404f, -193f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(min(arg_2.c.e.x, 1347f))) + var_2.e.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(~43428u, -1i, vec4<bool>(true, true, true, true), ~abs(~u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-132f, -511f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-672f, -2052f) - vec2<f32>(537f, -967f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(369f, -995f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(546f, 446f))))), Struct_2(func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), firstTrailingBit(abs(1u)), Struct_3(Struct_1(6058u, -3170i, vec4<bool>(false, false, true, true), u_input.b, vec2<f32>(-411f, 708f)), Struct_2(Struct_1(24194u, u_input.a, vec4<bool>(true, false, false, true), u_input.b, vec2<f32>(-911f, -1074f)), false, vec3<i32>(1i, -2781i, u_input.a), Struct_1(4294967295u, u_input.a, vec4<bool>(true, false, false, true), u_input.b, vec2<f32>(-968f, -1000f)), Struct_1(u_input.b, u_input.a, vec4<bool>(false, true, true, true), 1u, vec2<f32>(1000f, -722f))), Struct_1(u_input.b, 1i, vec4<bool>(true, false, false, true), u_input.b, vec2<f32>(-165f, -613f)), _wgslsmith_f_op_f32(1172f * 219f), Struct_1(0u, u_input.a, vec4<bool>(false, true, false, false), 4294967295u, vec2<f32>(553f, -1130f)))), true, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -33114i, u_input.a), vec3<i32>(-18851i, u_input.a, u_input.a)), vec3<i32>(u_input.a, -31142i, u_input.a)), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 1i), vec3<i32>(u_input.a, u_input.a, u_input.a)), countOneBits(u_input.a))), Struct_1(~(u_input.b << (4294967295u % 32u)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, u_input.a), -u_input.a), vec4<bool>(true, true, false, any(vec4<bool>(true, false, true, false))), 18424u, vec2<f32>(1f, 1f)), Struct_1(~(~u_input.b), u_input.a, func_4(firstTrailingBit(u_input.a), Struct_1(4294967295u, u_input.a, vec4<bool>(false, false, true, true), 0u, vec2<f32>(-1389f, -343f)), firstLeadingBit(vec2<i32>(4022i, -2147483647i))).a.c, abs(min(4294967295u, u_input.b)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1865f, -154f), vec2<f32>(1000f, 1062f))))))), Struct_1(u_input.b, u_input.a, !vec4<bool>(38831u <= u_input.b, false, true, func_1(u_input.a, 34961u, Struct_3(Struct_1(u_input.b, -17549i, vec4<bool>(true, false, true, false), 8334u, vec2<f32>(959f, -915f)), Struct_2(Struct_1(4294967295u, u_input.a, vec4<bool>(false, true, false, false), u_input.b, vec2<f32>(-203f, -980f)), false, vec3<i32>(u_input.a, 6688i, u_input.a), Struct_1(u_input.b, 21949i, vec4<bool>(true, true, false, false), u_input.b, vec2<f32>(433f, 952f)), Struct_1(u_input.b, -1i, vec4<bool>(false, false, true, true), 14149u, vec2<f32>(-268f, 535f))), Struct_1(4294967295u, -2147483647i, vec4<bool>(true, false, true, false), u_input.b, vec2<f32>(-1000f, -332f)), 709f, Struct_1(u_input.b, -2147483647i, vec4<bool>(false, false, true, false), u_input.b, vec2<f32>(243f, -481f)))).c.x), 4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -563f), 973f) * vec2<f32>(_wgslsmith_f_op_f32(462f + -1361f), 619f))), func_4(min(1i, -u_input.a) & u_input.a, func_4(-15444i, func_4(2147483647i, func_4(u_input.a, Struct_1(4294967295u, u_input.a, vec4<bool>(false, false, true, true), 70349u, vec2<f32>(2233f, 791f)), vec2<i32>(u_input.a, u_input.a)).e, firstLeadingBit(vec2<i32>(-10815i, u_input.a))).e, -(~vec2<i32>(-23356i, 23360i))).a, -min(vec2<i32>(1i, -2147483647i), vec2<i32>(u_input.a, 6189i) | vec2<i32>(-23577i, -11160i))).a.e.x, Struct_1(~max(u_input.b, _wgslsmith_mod_u32(u_input.b, 0u)), select(1i, _wgslsmith_clamp_i32(-43774i, func_2(false, 20147i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, -34641i), vec4<i32>(10243i, u_input.a, -9091i, u_input.a))), any(vec3<bool>(false, false, false))), !func_4(2147483647i, Struct_1(u_input.b, -1i, vec4<bool>(true, false, true, false), u_input.b, vec2<f32>(1539f, -585f)), vec2<i32>(u_input.a, u_input.a)).d.c, ~0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1625f, 1267f) * vec2<f32>(-2630f, -826f)))) - vec2<f32>(_wgslsmith_div_f32(-1000f, -1038f), -788f))));
    let var_1 = all(!select(var_0.b.e.c, var_0.c.c, vec4<bool>(true, true, !var_0.e.c.x, false)));
    var var_2 = _wgslsmith_f_op_f32(step(var_0.c.e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.e.x), _wgslsmith_f_op_f32(-func_1(u_input.a, ~var_0.e.d, Struct_3(var_0.b.e, Struct_2(var_0.a, var_1, vec3<i32>(1i, u_input.a, u_input.a), Struct_1(0u, 41936i, var_0.c.c, 10615u, vec2<f32>(var_0.a.e.x, var_0.d)), var_0.c), var_0.a, 848f, var_0.c)).e.x)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.e.x));
    var_0 = Struct_3(var_0.a, Struct_2(var_0.e, !func_1(firstLeadingBit(u_input.a), ~u_input.b, Struct_3(var_0.e, Struct_2(var_0.c, var_0.c.c.x, vec3<i32>(var_0.e.b, 2147483647i, 1i), var_0.b.e, var_0.c), var_0.b.d, var_0.c.e.x, Struct_1(1u, var_0.a.b, vec4<bool>(var_0.b.e.c.x, true, var_0.a.c.x, true), 1u, vec2<f32>(var_0.c.e.x, -227f)))).c.x, (var_0.b.c ^ _wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0.b.c.x, 1i), vec3<i32>(u_input.a, var_0.e.b, 0i))) >> (max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(72599u, u_input.b, 41386u), vec3<u32>(u_input.b, 46241u, var_0.c.a)), ~vec3<u32>(var_0.e.a, 0u, u_input.b)) % vec3<u32>(32u)), func_4(_wgslsmith_add_i32(1i, 1i), Struct_1(13718u, var_0.b.c.x, vec4<bool>(var_1, false, var_0.b.a.c.x, var_0.e.c.x), 4294967295u, vec2<f32>(-1000f, var_3)), (vec2<i32>(-2147483647i, -42038i) << (vec2<u32>(32534u, var_0.c.a) % vec2<u32>(32u))) & firstTrailingBit(var_0.b.c.zz)).e, var_0.b.e), var_0.c, -321f, Struct_1(3103u, u_input.a, func_1(_wgslsmith_clamp_i32(func_2(false, 1i), u_input.a, -1i), ~(u_input.b << (u_input.b % 32u)), Struct_3(func_1(var_0.b.a.b, var_0.b.e.d, Struct_3(Struct_1(25975u, u_input.a, var_0.b.e.c, 20871u, vec2<f32>(1930f, -247f)), var_0.b, Struct_1(u_input.b, 14046i, vec4<bool>(false, false, false, var_1), 0u, vec2<f32>(var_3, -275f)), var_0.c.e.x, Struct_1(47357u, -85220i, var_0.b.e.c, u_input.b, vec2<f32>(var_3, 226f)))), func_4(var_0.e.b, var_0.e, var_0.b.c.yy), var_0.e, _wgslsmith_f_op_f32(-var_3), Struct_1(u_input.b, var_0.b.e.b, var_0.e.c, 4294967295u, var_0.c.e))).c, u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_0.d)), _wgslsmith_f_op_f32(154f + 1046f)))));
    var_2 = var_3;
    var_2 = -423f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, var_0.c.e.x))), _wgslsmith_f_op_f32(max(-1798f, _wgslsmith_f_op_f32(-var_3)))), _wgslsmith_dot_vec2_i32(-var_0.b.c.xz, select(-vec2<i32>(39253i, 6178i) & var_0.b.c.zz, ~vec2<i32>(-1322i, 0i), vec2<bool>(all(var_0.b.a.c.zyw), var_0.c.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3))))));
}

