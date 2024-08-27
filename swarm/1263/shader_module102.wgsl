struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = Struct_5(true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1600f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + arg_1), -891f), -951f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(717f)))) * arg_1)));
    return !select(select(select(select(vec4<bool>(false, var_0.a, false, var_0.a), vec4<bool>(true, arg_3.a.x, true, var_0.a), vec4<bool>(false, false, arg_3.a.x, var_0.a)), select(vec4<bool>(arg_3.a.x, true, true, false), vec4<bool>(false, var_0.a, true, true), vec4<bool>(arg_3.a.x, arg_3.a.x, false, false)), var_0.a | false), select(!vec4<bool>(false, var_0.a, arg_3.a.x, var_0.a), select(vec4<bool>(arg_3.a.x, var_0.a, false, false), vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(arg_3.a.x, arg_3.a.x, false, var_0.a)), vec4<bool>(true, var_0.a, false, true)), select(vec4<bool>(var_0.a, false, true, arg_3.a.x), vec4<bool>(true, true, false, true), false | arg_3.a.x)), vec4<bool>(arg_3.a.x, any(select(arg_3.a, arg_3.a, arg_3.a)), any(select(vec3<bool>(var_0.a, arg_3.a.x, false), vec3<bool>(false, arg_3.a.x, false), arg_3.a.x)), false), !select(vec4<bool>(arg_3.a.x, true, false, true), !vec4<bool>(var_0.a, false, false, arg_3.a.x), arg_0.x <= 19456u));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(289f, arg_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x)), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-387f - 796f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1296f, arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(492f - 739f), -663f)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -427f))))));
    let var_1 = any(vec3<bool>(any(func_3(~vec4<u32>(arg_0, u_input.b.x, arg_0, 85243u), _wgslsmith_f_op_f32(abs(962f)), vec2<f32>(432f, -1160f), Struct_4(vec2<bool>(true, false), vec2<i32>(arg_1, u_input.d.x)))), true, true));
    return func_3(reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.b.x), firstLeadingBit(vec4<u32>(u_input.b.x, 12484u, 128943u, arg_0)), ~vec4<u32>(41160u, arg_0, 1u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(674f + arg_2.x))) * _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(round(arg_2.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yx + var_0.zx)))), Struct_4(func_3(~vec4<u32>(33188u, arg_0, arg_0, 0u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1902f))), vec2<f32>(309f, -1379f), Struct_4(vec2<bool>(true, true), vec2<i32>(arg_1, 1i))).yx, select(u_input.a, _wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, u_input.a.x), ~vec2<i32>(arg_1, 25610i)), vec2<bool>(true, true)))).xz;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    var var_0 = select(arg_3, !vec2<bool>(!select(false, true, arg_1.x), arg_3.x), !arg_2);
    var_0 = select(vec2<bool>(!(!arg_2), all(vec2<bool>(!arg_3.x, arg_3.x || true))), arg_1, vec2<bool>(true, false));
    var_0 = select(select(select(vec2<bool>(true, false), select(vec2<bool>(true, false), !vec2<bool>(arg_3.x, arg_3.x), select(vec2<bool>(false, false), arg_3, var_0.x)), select(func_2(49307u, u_input.a.x, vec2<f32>(arg_0, -645f)), vec2<bool>(false, false), !arg_3)), vec2<bool>(!arg_1.x, true), !(any(vec3<bool>(arg_3.x, arg_1.x, var_0.x)) & any(vec3<bool>(false, false, arg_1.x)))), func_3(reverseBits(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 49932u, u_input.b.x), vec4<u32>(0u, u_input.b.x, u_input.b.x, 51782u)))), arg_0, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_div_f32(-1165f, 748f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1428f, arg_0), vec2<f32>(arg_0, arg_0), arg_3)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 374f) - vec2<f32>(arg_0, 874f))), !(!arg_3))), Struct_4(func_3(vec4<u32>(32918u, 9120u, u_input.b.x, u_input.b.x), _wgslsmith_f_op_f32(step(304f, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, -1282f)), Struct_4(vec2<bool>(var_0.x, true), u_input.d.zx)).yx, ~(-vec2<i32>(u_input.d.x, u_input.a.x)))).yz, !vec2<bool>(true, all(!vec3<bool>(var_0.x, true, true))));
    let var_1 = _wgslsmith_clamp_vec4_u32(reverseBits(abs(vec4<u32>(16548u, u_input.b.x, 50158u, 1u)) | vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(min(u_input.b.x, ~0u), _wgslsmith_sub_u32(27882u, u_input.b.x), 1u, u_input.b.x), ~(~vec4<u32>(1u, 27499u, 0u, 0u)) ^ ((vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(5228u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(80033u, 1u, 1u, 0u)) % vec4<u32>(32u)))) ^ _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(abs(1u), _wgslsmith_mult_u32(0u, 1u), ~u_input.b.x, u_input.b.x)), ~vec4<u32>(~u_input.b.x, ~u_input.b.x, ~4294967295u, 4294967295u));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(1645f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0)), arg_0));
    return ~_wgslsmith_add_u32(var_1.x, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(-502f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1014f * -1196f), _wgslsmith_f_op_f32(-882f * -2233f))), false);
    var_0 = vec2<bool>(false && (~firstTrailingBit(u_input.a.x) >= 32508i), all(vec4<bool>(false, var_0.x == true, any(vec3<bool>(true, true, true)), 0u < ~u_input.b.x)));
    var_0 = !vec2<bool>(var_0.x, true);
    let var_1 = vec3<f32>(-336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(910f, -331f, true)), _wgslsmith_f_op_f32(-811f - 355f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1538f), _wgslsmith_f_op_f32(min(-1408f, -1265f))))) - -799f));
    let var_2 = -reverseBits(u_input.c << (select(u_input.b.x, 31499u, var_0.x) % 32u)) & ~(~77333i);
    let var_3 = Struct_5(!(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 62480u), vec3<u32>(u_input.b.x, 4294967295u, 4294967295u)) <= max(func_1(var_1.x, vec2<bool>(false, true), true, vec2<bool>(false, var_0.x)), u_input.b.x)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2, vec2<u32>(u_input.b.x, 102960u), -1703f, vec4<i32>(countOneBits(-_wgslsmith_add_i32(62135i, u_input.c)), i32(-1i) * -1i, ~firstTrailingBit(u_input.d.x) | 0i, 0i));
}

