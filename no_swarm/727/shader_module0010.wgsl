struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_5) -> i32 {
    let var_0 = _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-reverseBits(2147483647i), 1i, -min(arg_3.b.b.x, -21170i), ~arg_3.b.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.b.b.x, arg_3.b.b.x, _wgslsmith_mod_i32(arg_3.b.b.x, 35354i) >> (arg_1 % 32u), ~_wgslsmith_mod_i32(u_input.b, arg_3.b.b.x)), vec4<i32>(-1i) * -(vec4<i32>(arg_3.b.b.x, 1i, -57613i, -1i) >> (vec4<u32>(u_input.d, 0u, arg_1, 1u) % vec4<u32>(32u)))));
    return _wgslsmith_mod_i32(arg_3.b.b.x, _wgslsmith_add_i32(-3466i, -85650i));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(-vec3<i32>(func_3(vec2<bool>(false, false), 4294967295u, Struct_2(161f, vec3<f32>(-1000f, -509f, 360f)), Struct_5(vec3<bool>(true, false, false), Struct_4(854f, vec3<i32>(u_input.c, 106759i, -6247i), vec2<f32>(-245f, 176f), vec3<u32>(u_input.e.x, 4294967295u, u_input.d), Struct_2(-503f, vec3<f32>(162f, -2197f, -904f))), vec4<bool>(true, true, true, false))), u_input.c, abs(43948i)) ^ select(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, u_input.c) | vec3<i32>(-2147483647i, 0i, u_input.b)), (vec3<i32>(0i, u_input.b, -40901i) << (vec3<u32>(u_input.d, u_input.d, 90143u) % vec3<u32>(32u))) << (~vec3<u32>(u_input.a.x, u_input.e.x, u_input.e.x) % vec3<u32>(32u)), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), any(vec4<bool>(true, true, true, true)) && true, ~(vec2<i32>(min(u_input.b, u_input.c), u_input.c) << (~(~u_input.e) % vec2<u32>(32u))), vec4<u32>(51750u, 4294967295u, u_input.a.x, u_input.a.x));
    let var_1 = var_0.a;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-998f * 964f), _wgslsmith_f_op_f32(f32(-1f) * -639f), var_0.b)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1000f, 1250f, var_0.b))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-904f * 969f) - -1225f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1336f * -996f)), _wgslsmith_f_op_f32(-601f - 1026f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(982f, -1390f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 412f, -1148f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(812f, 641f, 670f)))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1759f, _wgslsmith_f_op_f32(403f - 2324f), var_2.b.x) * var_2.b)));
    let var_4 = Struct_2(1069f, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_3.a)), -523f))), 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a))), var_2.a))));
    return Struct_3(var_4);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    var var_0 = -25839i;
    var var_1 = vec2<u32>(~abs(_wgslsmith_sub_u32(24081u, u_input.d)) ^ _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~0u);
    var var_2 = Struct_5(!select(vec3<bool>(all(vec3<bool>(arg_0.x, arg_0.x, false)), true, arg_0.x), !(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), !select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, false, arg_0.x), arg_0.x)), Struct_4(arg_2.a.a, _wgslsmith_div_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 1i, u_input.c), vec3<i32>(-10764i, u_input.c, 2147483647i))), -vec3<i32>(u_input.c, u_input.b, 1i)), _wgslsmith_f_op_vec2_f32(trunc(arg_1)), vec3<u32>(min(_wgslsmith_sub_u32(u_input.d, 47303u), u_input.e.x), 27706u, _wgslsmith_clamp_u32(54192u >> (u_input.a.x % 32u), 1u, max(var_1.x, var_1.x))), arg_2.a), !vec4<bool>(all(!vec2<bool>(arg_0.x, arg_0.x)), false, select(all(arg_0), arg_0.x, !arg_0.x), arg_0.x));
    var_1 = (vec2<u32>(u_input.a.x, 4294967295u) << (~select(var_2.b.d.xx, firstLeadingBit(var_2.b.d.zx), vec2<bool>(arg_0.x, false)) % vec2<u32>(32u))) & select(_wgslsmith_sub_vec2_u32(var_2.b.d.xx, ~u_input.a), select(reverseBits(vec2<u32>(98803u, 18572u)) | u_input.a, _wgslsmith_add_vec2_u32(~vec2<u32>(var_1.x, 1u), abs(vec2<u32>(0u, var_2.b.d.x))), select(!vec2<bool>(var_2.a.x, false), select(arg_0, var_2.c.zy, arg_0), select(var_2.c.wz, vec2<bool>(true, arg_0.x), true))), !arg_0);
    var var_3 = ~(~0i);
    return Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_3.a.b.x)))), vec3<f32>(2734f, arg_2.a.a, 1000f));
}

fn func_1() -> vec2<f32> {
    var var_0 = 208f;
    var_0 = 721f;
    var_0 = -723f;
    var var_1 = func_4(vec2<bool>(all(vec4<bool>(true, any(vec4<bool>(false, false, true, false)), all(vec4<bool>(false, false, true, true)), true)), true), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(946f, -595f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-263f * 686f)))))), func_2(), Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2957f, 558f)), _wgslsmith_f_op_f32(select(-1093f, -199f, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-608f, 1522f, 377f)) * vec3<f32>(-1626f, -615f, 2015f)))));
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(2147483647i, u_input.b) | u_input.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(10442i, u_input.b, -1i, -1i), abs(vec4<i32>(1i, 2147483647i, u_input.b, u_input.b))), _wgslsmith_mod_i32(~u_input.b, u_input.c)), func_3(vec2<bool>(true, any(vec2<bool>(true, true))), _wgslsmith_div_u32(~4666u ^ _wgslsmith_mult_u32(1u, u_input.d), u_input.e.x), func_2().a, Struct_5(vec3<bool>(true, true, true), Struct_4(func_2().a.a, vec3<i32>(0i, u_input.b, -2147483647i) >> (vec3<u32>(u_input.a.x, 0u, u_input.a.x) % vec3<u32>(32u)), vec2<f32>(var_1.b.x, -1565f), ~vec3<u32>(u_input.a.x, 12448u, u_input.e.x), func_2().a), vec4<bool>(any(vec2<bool>(false, false)), true, true, true))), (_wgslsmith_dot_vec4_i32(abs(vec4<i32>(12456i, u_input.b, u_input.c, -1i)), abs(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))) & _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c, 1i)), vec2<i32>(u_input.b, u_input.b))) >> (_wgslsmith_sub_u32(u_input.e.x ^ u_input.d, firstLeadingBit(_wgslsmith_mod_u32(35023u, 27011u))) % 32u), func_3(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(-580f != var_1.a, all(vec2<bool>(true, true)))), u_input.e.x, Struct_2(var_1.b.x, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-903f, var_1.a, var_1.a)))), Struct_5(vec3<bool>(true, true, true), Struct_4(var_1.a, abs(vec3<i32>(u_input.b, -16734i, u_input.b)), var_1.b.xx, ~vec3<u32>(16746u, u_input.a.x, u_input.d), Struct_2(745f, vec3<f32>(638f, var_1.b.x, var_1.a))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false))))));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b.x, 490f)) * _wgslsmith_f_op_f32(-225f - var_1.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a))))), _wgslsmith_f_op_f32(f32(-1f) * -1502f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_div_f32(var_0.x, -1657f)), -1025f), _wgslsmith_f_op_vec2_f32(func_1()).x)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.c, -1i, u_input.b), vec3<i32>(0i, 41777i, -2147483647i)), firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 1i), vec3<i32>(u_input.c, -2147483647i, 1i)))), _wgslsmith_add_vec3_i32(-(~vec3<i32>(u_input.c, -42408i, 25475i)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.c), -vec3<i32>(-1i, u_input.b, u_input.b))), ~select(~vec3<i32>(u_input.b, u_input.c, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(32744i, u_input.b, u_input.b), vec3<i32>(0i, u_input.b, 8218i)), vec3<bool>(true, true, true))), var_0, ~vec3<u32>(~(~41979u), ~37183u, 1073u), Struct_2(var_0.x, vec3<f32>(-391f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), 928f)));
    let var_2 = Struct_4(var_1.c.x, vec3<i32>(select(1i, -20972i, true) ^ func_3(select(vec2<bool>(false, false), vec2<bool>(true, false), true), ~u_input.d, var_1.e, Struct_5(vec3<bool>(true, false, true), Struct_4(1418f, var_1.b, vec2<f32>(var_0.x, -108f), vec3<u32>(u_input.e.x, u_input.a.x, 4294967295u), Struct_2(-408f, vec3<f32>(var_0.x, 818f, -1000f))), vec4<bool>(false, true, false, true))), 37095i, var_1.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_1.c, var_1.c)) + var_1.e.b.xx), vec3<u32>(var_1.d.x, _wgslsmith_mult_u32(40057u, min(select(1u, 35786u, false), 0u)), select(max(4294967295u, 40169u), var_1.d.x, true) & _wgslsmith_mult_u32(var_1.d.x, var_1.d.x)), var_1.e);
    var var_3 = var_2.e;
    var var_4 = min(-37066i, -((_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.x, 1i), var_1.b.yy) ^ (var_1.b.x ^ -18251i)) | u_input.b));
    var var_5 = 37253u;
    var var_6 = !select(vec3<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), false))), vec3<bool>(!all(vec4<bool>(false, false, false, false)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !(var_2.b.x == var_1.b.x)), u_input.d <= min(_wgslsmith_dot_vec3_u32(var_2.d, var_1.d), 18644u));
    let x = u_input.a;
    s_output = StorageBuffer(-1240f, ~(-11323i));
}

