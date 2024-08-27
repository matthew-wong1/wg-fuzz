struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_5(vec2<u32>(u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 0u, 53916u, 1u), abs(vec4<u32>(0u, 37492u, 0u, 4294967295u))), ~0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(428f * -1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(max(arg_1, arg_0))))), !(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true), true)));
    var_0 = Struct_5(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, var_0.a.x), vec3<u32>(4294967295u, var_0.a.x, arg_2)), ~1u), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-883f, 873f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1503f, _wgslsmith_f_op_f32(-1420f * arg_0))))))), var_0.c);
    var var_1 = 18689u;
    let var_2 = 1u << (u_input.a % 32u);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(f32(-1f) * -619f)))))), var_0.b, true));
    return Struct_1(vec2<bool>(var_0.c.x, false), vec2<u32>(max(var_2 | _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 0u, var_0.a.x, 4294967295u), vec4<u32>(13457u, arg_2, u_input.a, 4294967295u)), var_0.a.x), 50126u));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = (~u_input.a < 4294967295u) & (!(abs(arg_2) > (i32(-1i) * -47959i)) | false);
    let var_1 = _wgslsmith_div_vec3_u32(countOneBits(abs(select(vec3<u32>(28140u, 14165u, 82621u), firstTrailingBit(vec3<u32>(u_input.a, arg_0.a.x, u_input.a)), arg_0.c.x))), vec3<u32>(16223u, ~countOneBits(arg_0.a.x), countOneBits(func_2(-480f, _wgslsmith_f_op_f32(1074f - arg_0.b), ~0u).b.x)));
    let var_2 = 73408u;
    return func_2(409f, _wgslsmith_f_op_f32(-998f - _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(u_input.a, arg_0.a.x))), var_1.xx & arg_0.a));
}

fn func_4(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = !(!select(vec4<bool>(!arg_0.e.a.x, all(vec4<bool>(arg_0.c.a.x, arg_0.a.a.x, arg_0.e.a.x, false)), true, arg_0.a.a.x), vec4<bool>(arg_0.e.a.x & true, !arg_0.e.a.x, func_3(Struct_5(arg_0.e.b, arg_0.d, vec4<bool>(false, false, false, true)), arg_0.e.a.x, -1i, 1474f).a.x, arg_0.a.a.x), !vec4<bool>(false, arg_0.c.a.x, arg_0.c.a.x, true)));
    var var_1 = ((_wgslsmith_clamp_i32(967i, 1i, 38034i) ^ 26683i) << (_wgslsmith_mod_u32(31963u, min(func_3(Struct_5(vec2<u32>(arg_0.c.b.x, u_input.a), arg_0.d, var_0), var_0.x, -11938i, 1000f).b.x, _wgslsmith_clamp_u32(u_input.a, arg_0.b.x, 1u))) % 32u)) > min(0i, ~max(-2147483647i, 1i));
    var var_2 = u_input.a;
    var var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(547f, _wgslsmith_f_op_f32(arg_0.d - 1000f), -140f, -556f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(-arg_0.d), -105f, _wgslsmith_f_op_f32(294f + -401f))))));
    return _wgslsmith_sub_vec3_u32(select(select(abs(arg_0.b), var_3.b, !vec3<bool>(true, var_3.a.a.x, false)), vec3<u32>(select(~1u, var_3.e.b.x, 29101u < arg_0.a.b.x), 4294967295u, 5301u), var_0.x), select(~vec3<u32>(abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.a.b.x, 3473u, 4294967295u), vec4<u32>(4294967295u, u_input.a, 0u, u_input.a)), var_3.e.b.x), min(vec3<u32>(arg_0.a.b.x & var_3.a.b.x, _wgslsmith_mod_u32(arg_0.c.b.x, var_3.b.x), _wgslsmith_sub_u32(39859u, u_input.a)), var_3.b), var_0.wyy));
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> bool {
    var var_0 = Struct_2(arg_1.a, _wgslsmith_mult_vec3_u32(vec3<u32>(max(u_input.a, ~0u), reverseBits(arg_1.a.b.x) | arg_1.a.b.x, 1u), ~vec3<u32>(_wgslsmith_mult_u32(62948u, u_input.a), u_input.a >> (0u % 32u), arg_1.a.b.x)), arg_1.a, _wgslsmith_f_op_f32(-arg_0), Struct_1(arg_1.a.a, vec2<u32>(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.a.b.x, arg_1.a.b.x, 3032u), vec4<u32>(arg_1.a.b.x, u_input.a, 31258u, 8801u)))));
    var_0 = Struct_2(func_2(1183f, _wgslsmith_f_op_f32(step(160f, -1180f)), arg_1.a.b.x), _wgslsmith_mult_vec3_u32(func_4(Struct_2(func_2(-381f, -1570f, 50970u), vec3<u32>(38683u, 44868u, 70048u), Struct_1(vec2<bool>(false, var_0.c.a.x), arg_1.a.b), _wgslsmith_f_op_f32(f32(-1f) * -711f), func_3(Struct_5(var_0.e.b, var_0.d, vec4<bool>(true, false, false, false)), var_0.c.a.x, -1i, var_0.d))), ~reverseBits(~vec3<u32>(arg_1.a.b.x, arg_1.a.b.x, 5968u))), var_0.a, -1425f, func_2(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d + -603f), _wgslsmith_f_op_f32(810f + 1786f))), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_1.a.b.x, var_0.e.b.x), func_2(arg_0, -1342f, 1u).b.x), ~var_0.e.b.x)));
    var_0 = Struct_2(func_3(Struct_5(min(var_0.c.b, var_0.a.b) ^ vec2<u32>(var_0.a.b.x, 69818u), _wgslsmith_f_op_f32(f32(-1f) * -1370f), vec4<bool>(false, true, all(vec4<bool>(arg_1.a.a.x, var_0.e.a.x, var_0.a.a.x, false)), true)), !var_0.a.a.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(33880i, 59179i, -1i), vec3<i32>(2147483647i, -2147483647i, -2147483647i)), 398f), max(vec3<u32>(_wgslsmith_mod_u32(20650u, reverseBits(u_input.a)), ~var_0.e.b.x, abs(min(u_input.a, 1u))), var_0.b), func_3(Struct_5(_wgslsmith_mod_vec2_u32(var_0.c.b, arg_1.a.b ^ arg_1.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, var_0.d))), !(!vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, var_0.a.a.x, true))), true, select(2147483647i, -14421i, !var_0.e.a.x) ^ _wgslsmith_mult_i32(~(-4398i), ~8041i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, 1239f, false))), -111f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d - var_0.d) - _wgslsmith_f_op_f32(-var_0.d))), func_2(_wgslsmith_div_f32(352f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1774f, 1000f)))), var_0.d, reverseBits(abs(1u))));
    let var_1 = vec3<bool>(true && all(!select(vec3<bool>(false, true, false), vec3<bool>(arg_1.a.a.x, var_0.e.a.x, false), false)), all(vec3<bool>(all(!vec2<bool>(arg_1.a.a.x, arg_1.a.a.x)), !(!arg_1.a.a.x), arg_1.a.a.x)), var_0.e.a.x);
    let var_2 = true;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(vec3<i32>(-1i) * -(~vec3<i32>(2781i, -1i, -89120i)));
    let var_1 = Struct_5(select(countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 70694u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 43784u)), u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.a) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), min(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(4455u, u_input.a), vec2<u32>(70119u, u_input.a)))), vec2<bool>(true, true)), 787f, select(select(vec4<bool>(u_input.a < u_input.a, true, func_1(623f, Struct_4(Struct_1(vec2<bool>(false, false), vec2<u32>(43036u, 4294967295u)))), all(vec3<bool>(true, true, true))), vec4<bool>(false, true, true, true), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)))), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, false), -7229i == var_0.x), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), true), true && all(vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec4<i32>(_wgslsmith_sub_i32(38298i, ~abs(var_0.x)), var_0.x, firstLeadingBit(-30744i), ~select(1i, reverseBits(var_0.x), false | var_1.c.x)), var_1.a.x, var_1.a);
}

