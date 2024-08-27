struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    return ~_wgslsmith_add_u32(66417u, arg_0.e.x) << (_wgslsmith_mod_u32(0u, 723u) % 32u);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> bool {
    var var_0 = 1453f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 117f)), _wgslsmith_f_op_f32(round(1085f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-3073f * 1f), 1f)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -283f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-436f, -2404f) + vec2<f32>(646f, -126f)))), arg_0), Struct_2(all(select(!vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), !vec2<bool>(arg_0, arg_0))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-236f, 133f)))), all(!vec3<bool>(true, false, arg_0))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1801f, 1218f)), _wgslsmith_div_vec2_f32(vec2<f32>(-729f, 331f), vec2<f32>(1547f, -1289f)), vec2<bool>(false, arg_0))))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1939f, 286f), vec2<f32>(863f, -289f), vec2<bool>(false, false))))), !all(vec3<bool>(arg_0, false, arg_0))), vec4<u32>(_wgslsmith_mod_u32(1u, 4294967295u), min(~0u, ~62336u), countOneBits(~11263u), 1u | firstTrailingBit(42601u))));
    var_0 = _wgslsmith_f_op_f32(-var_1.a.a.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-277f, var_1.a.a.x, var_1.b.c.x, var_1.a.a.x) + vec4<f32>(960f, 810f, -714f, 876f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1012f, 254f, -1662f, var_1.b.d.a.x), vec4<f32>(var_1.b.d.a.x, 170f, var_1.a.a.x, -951f)), arg_0 | arg_0))))));
    return any(select(vec4<bool>(any(vec2<bool>(arg_0, false)) && false, false, -442f > _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_1.a.a.x) <= var_2.x), vec4<bool>(true, var_1.b.d.b, all(!vec3<bool>(arg_0, arg_0, var_1.b.d.b)), false), any(vec4<bool>(true, true, arg_0, false))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>) -> u32 {
    var var_0 = ((~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 23848u, u_input.a)) << (vec4<u32>(~6858u, min(31278u, 8235u), func_1(Struct_2(false, Struct_1(vec2<f32>(843f, -1522f), arg_0.x), vec2<f32>(-997f, 1045f), Struct_1(vec2<f32>(1039f, -952f), false), vec4<u32>(76277u, u_input.a, u_input.a, 28473u)), arg_0.x, Struct_1(vec2<f32>(-324f, -1230f), arg_0.x), vec4<f32>(1000f, -1000f, 358f, -666f)), 2328u >> (u_input.a % 32u)) % vec4<u32>(32u))) ^ max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 0u, u_input.a)) << (select(vec4<u32>(u_input.a, 39181u, u_input.a, 0u), vec4<u32>(9324u, u_input.a, u_input.a, 11021u), true) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 28852u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 44659u, u_input.a, 4294967295u)) & ~vec4<u32>(u_input.a, 0u, u_input.a, 84549u))) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(9763u, 1u, 58u, 13278u) ^ abs(vec4<u32>(u_input.a, 38494u, 1u, 67984u)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 106741u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), vec4<u32>(u_input.a, u_input.a, 4294967295u, 54051u)));
    var var_1 = any(!vec3<bool>(true, func_3(!arg_0.x, vec4<u32>(1u, u_input.a, u_input.a, 1u) ^ vec4<u32>(1u, 14559u, var_0.x, 16836u)), !(!arg_0.x)));
    var var_2 = arg_1.x;
    let var_3 = _wgslsmith_div_u32(~u_input.a ^ ~(~_wgslsmith_mult_u32(u_input.a, 4294967295u)), 8413u);
    var var_4 = arg_0;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(select(_wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(22858u, 108208u, u_input.a, 100953u)), vec4<u32>(max(63532u, u_input.a), func_1(Struct_2(false, Struct_1(vec2<f32>(-449f, -1114f), false), vec2<f32>(1000f, -330f), Struct_1(vec2<f32>(1119f, 351f), true), vec4<u32>(4294967295u, u_input.a, 45937u, u_input.a)), false, Struct_1(vec2<f32>(304f, -1150f), true), vec4<f32>(-479f, -721f, 860f, 257f)), ~4294967295u, 0u)), vec4<u32>(1u, _wgslsmith_mod_u32(4294967295u, 4294967295u), 1u, ~51800u) ^ vec4<u32>(u_input.a, ~27446u, ~28350u, abs(4294967295u)), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))), min(select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(1u, u_input.a, 15313u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(85878u, u_input.a, u_input.a, u_input.a), any(vec4<bool>(false, true, false, true))), ~firstTrailingBit(vec4<u32>(1u, u_input.a, u_input.a, u_input.a))) & ~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(64654u, u_input.a, 4294967295u, 0u), vec4<u32>(u_input.a, 20626u, 1u, u_input.a))), ~(~vec4<u32>(~6165u, firstTrailingBit(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 99457u, 1u), vec3<u32>(91321u, 1u, u_input.a)), u_input.a & u_input.a)));
    var_0 = _wgslsmith_clamp_vec4_u32(min(vec4<u32>(~(u_input.a >> (var_0.x % 32u)), func_2(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), vec2<i32>(1i, 1i)), _wgslsmith_sub_u32(~u_input.a, ~21757u), ~0u >> (1u % 32u)), vec4<u32>(var_0.x | var_0.x, _wgslsmith_dot_vec2_u32(var_0.xy, vec2<u32>(u_input.a, u_input.a)), u_input.a, 1u) | _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, var_0.x), vec4<u32>(u_input.a, 0u, 28974u, 36628u)), ~vec4<u32>(var_0.x, var_0.x, 81754u, var_0.x), min(vec4<u32>(var_0.x, u_input.a, u_input.a, 0u), vec4<u32>(80121u, 1u, var_0.x, 59411u)))), select(vec4<u32>(59798u, ~(4294967295u & u_input.a), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.yzw, vec3<u32>(0u, 4810u, var_0.x)), var_0.xyz), 0u), _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(15061u, u_input.a, var_0.x, 0u), vec4<u32>(15017u, 0u, 1u, 4294967295u)), vec4<u32>(u_input.a ^ 68642u, ~0u, var_0.x, abs(u_input.a))), func_3(false, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, var_0.x, 1u), vec4<u32>(1u, var_0.x, var_0.x, 1u)))), ~countOneBits(vec4<u32>(1u, var_0.x, 1u, 4294967295u)) | ~vec4<u32>(u_input.a, u_input.a << (18693u % 32u), 26048u, ~var_0.x));
    var_0 = firstLeadingBit(vec4<u32>(1u, u_input.a, ~firstTrailingBit(u_input.a), ~max(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 27339u, var_0.x), vec3<u32>(4294967295u, var_0.x, var_0.x)))));
    let var_1 = vec2<u32>(var_0.x, ~(3762u >> (1u % 32u)));
    let var_2 = vec4<bool>(all(vec3<bool>(true, true, true)), true, true, !(!(!all(vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1187f)) + -1000f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-291f + 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-119f, _wgslsmith_f_op_f32(-1570f + -1662f))) * _wgslsmith_f_op_f32(f32(-1f) * -313f))));
}

