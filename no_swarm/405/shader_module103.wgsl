struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    return 29260u;
}

fn func_2(arg_0: i32) -> vec4<u32> {
    var var_0 = func_3();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(843f, -450f) * vec2<f32>(-1003f, -503f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(361f, -533f) - vec2<f32>(2230f, -130f)), true))))), vec2<f32>(915f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(206f * 1f))));
    var_0 = 51704u;
    let var_2 = _wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 2147483647i, firstLeadingBit(27683i)), _wgslsmith_sub_vec3_i32(vec3<i32>(-14604i, 0i, 0i), vec3<i32>(arg_0, 2147483647i, arg_0))), select(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(1028i, 4290i, arg_0)), vec3<i32>(abs(arg_0), arg_0, -75700i)), vec3<i32>(_wgslsmith_mod_i32(1i, arg_0), -2147483647i, arg_0), false));
    var_0 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.a, 29850u)), vec4<u32>(u_input.b, 0u, u_input.a, u_input.a)), ~max(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(1236u, u_input.b, u_input.a, u_input.a)) ^ ~vec4<u32>(0u, u_input.b, 1u, u_input.b));
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~u_input.a, firstTrailingBit(u_input.b)), ~(~u_input.a), u_input.a, 1u), ~vec4<u32>(u_input.b, firstTrailingBit(min(0u, u_input.a)), ~1u, ~83630u), _wgslsmith_sub_vec4_u32(~vec4<u32>(firstTrailingBit(8070u), ~u_input.a, ~u_input.a, 4294967295u), vec4<u32>(_wgslsmith_sub_u32(4294967295u | u_input.a, ~u_input.a), 13509u, ~(~u_input.a), u_input.a)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(~(~_wgslsmith_dot_vec3_u32(arg_1.wxz, arg_1.yyy)), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-41276i), i32(-1i) * -1i), vec2<i32>(countOneBits(75068i), 1i)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1278f))), !all(vec2<bool>(false, false))), vec3<bool>(true, any(vec2<bool>(true, true)), select(true, !any(vec3<bool>(false, true, true)), true || any(vec4<bool>(true, false, true, true)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(1086f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1212f, -392f) - _wgslsmith_f_op_f32(abs(-408f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) + 1074f)));
    let var_1 = any(vec4<bool>(var_0.b.x, var_0.b.x, all(var_0.b.yz), true));
    var var_2 = Struct_2(Struct_1(u_input.a, ~(-2147483647i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.c))), _wgslsmith_div_f32(_wgslsmith_div_f32(1246f, _wgslsmith_f_op_f32(sign(455f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f))), var_1), vec3<bool>(all(!var_0.b), (_wgslsmith_div_u32(27678u, 1u) & arg_0.x) > (_wgslsmith_clamp_u32(4294967295u, 4147u, 0u) | (0u >> (var_0.a.a % 32u))), false), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1f)))), _wgslsmith_div_f32(var_0.a.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-525f))))), _wgslsmith_f_op_f32(step(876f, 522f))));
    var_0 = Struct_2(var_0.a, var_0.b, vec3<f32>(var_2.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-617f - -291f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1748f * var_2.a.d)))), -472f));
    let var_3 = !vec2<bool>(!(!var_1), any(!vec2<bool>(true, var_2.b.x)));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.a.d, _wgslsmith_f_op_f32(abs(var_0.a.d)), var_2.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-var_0.c.x))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(~vec2<u32>(1u, u_input.b) & ~vec2<u32>(9677u, u_input.b), _wgslsmith_mod_vec4_u32(func_2(967i), vec4<u32>(22895u, u_input.b, u_input.b, 1u)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-957f, -664f, true)), 897f, _wgslsmith_f_op_f32(sign(-164f)), -397f) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(776f, 1000f, 659f, 745f), vec4<f32>(1724f, -1374f, -1303f, 1407f))), vec4<f32>(1f, 1f, 1f, 1f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1803f) - -856f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(687f, 1410f)) + _wgslsmith_f_op_f32(select(430f, 413f, true)))), _wgslsmith_f_op_f32(trunc(551f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1394f - 967f) + _wgslsmith_div_f32(971f, -464f)))));
    let var_1 = Struct_2(Struct_1(1u, -_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, -5682i, -1i), ~vec3<i32>(24681i, 20267i, -2147483647i)), -310f, var_0.x, true), vec3<bool>(any(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)))), false, !all(vec3<bool>(true, true, true))), vec3<f32>(var_0.x, -202f, _wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = vec3<u32>(1u, var_1.a.a, u_input.a & u_input.b);
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_1.c.x, -1528f, -1192f), vec4<f32>(var_0.x, 589f, var_0.x, var_1.a.c)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c.x, -814f, var_1.c.x, var_1.a.d), vec4<f32>(-1384f, 1202f, -1665f, -1109f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-237f, var_0.x, 1000f, -1618f) - vec4<f32>(var_0.x, -142f, var_1.c.x, -1181f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-487f, var_0.x, var_0.x, 498f) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(923f, var_0.x, -655f, -914f), vec4<f32>(var_1.c.x, 2143f, var_0.x, var_0.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.a.c, var_1.a.d, var_0.x) - vec4<f32>(2265f, -708f, 1806f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1159f, var_1.a.d)), var_1.a.e)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-718f, 1052f, var_0.x, -1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, var_0.x, 776f, -764f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec2<u32>(4294967295u, var_2.x), vec4<u32>(22231u, var_1.a.a, 1u, 1u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -436f, var_1.c.x, var_0.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(357f, 717f, var_0.x, 1367f)))), select(select(vec4<bool>(false, true, var_1.b.x, true), vec4<bool>(var_1.a.e, var_1.a.e, true, var_1.b.x), false), vec4<bool>(false, var_1.a.e, true, false), select(vec4<bool>(var_1.a.e, var_1.b.x, var_1.b.x, true), vec4<bool>(false, true, var_1.a.e, var_1.b.x), vec4<bool>(var_1.b.x, var_1.a.e, var_1.b.x, var_1.a.e))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(var_1.c.x - -630f), var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_1.c.x, -639f), vec4<f32>(var_0.x, -225f, 714f, -761f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -111f, _wgslsmith_f_op_f32(1203f + var_1.c.x)))));
    return Struct_1(~(select(abs(4294967295u), 76368u, var_1.a.e) << (~5624u % 32u)), var_1.a.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_1.c.x)))))), -1000f, true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> StorageBuffer {
    let var_0 = arg_1;
    var var_1 = Struct_2(Struct_1(firstTrailingBit(47423u), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-arg_1.c.x), var_0.b.x), select(!arg_1.b, vec3<bool>(arg_0.e, func_1().e, true), vec3<bool>(false, !arg_0.e, true)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, 1225f))), _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_0.a.a, u_input.a) << (vec2<u32>(arg_0.a, 4294967295u) % vec2<u32>(32u))), vec4<u32>(max(arg_1.a.a, arg_2), func_2(29554i).x, ~10056u, ~arg_1.a.a))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1379f + _wgslsmith_f_op_f32(ceil(-1671f))) + 503f)));
    var var_2 = vec4<u32>(~1u, 1u, ~arg_0.a, ~121204u);
    var_1 = var_0;
    let var_3 = _wgslsmith_mod_i32(max(arg_0.b, ~arg_1.a.b), -2147483647i) & -1i;
    return StorageBuffer(~(~vec4<u32>(select(var_0.a.a, 0u, false), ~4294967295u, 4294967295u, arg_1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(vec2<u32>(u_input.a ^ 41318u, ~u_input.a) << (vec2<u32>(47233u, u_input.a) % vec2<u32>(32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(13083u, 57123u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a, u_input.b))));
    let x = u_input.a;
    s_output = func_5(func_1(), Struct_2(Struct_1(~func_1().a, -2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1577f) - 404f), 513f, all(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, false, false)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), false), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-447f, -1000f, -845f) * vec3<f32>(-659f, -1331f, 108f)))))), ~4294967295u);
}

