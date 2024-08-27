struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec2<u32> {
    let var_0 = Struct_1(45263u, 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -144f), vec4<bool>(true, true, true, true), ~u_input.a);
    return ~firstLeadingBit(~firstTrailingBit(abs(vec2<u32>(u_input.a, 0u))));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_div_vec2_u32(min(_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)), func_3(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, 4294967295u)))), firstLeadingBit(vec2<u32>(firstTrailingBit(u_input.a), min(0u, 0u)))), vec2<u32>(_wgslsmith_add_u32(0u, ~reverseBits(u_input.a)), 7819u));
    var var_1 = Struct_2(~(firstLeadingBit(vec2<i32>(2147483647i, u_input.b.x) << (vec2<u32>(0u, var_0.x) % vec2<u32>(32u))) << (~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0.x), vec2<u32>(u_input.a, var_0.x), vec2<u32>(4294967295u, var_0.x)) % vec2<u32>(32u))), Struct_1(countOneBits(~(~var_0.x)), u_input.a, -1490f, vec4<bool>(true, true, true, true), 51853u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-350f, -1043f, 1535f, -206f), vec4<f32>(172f, -425f, 1480f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(923f, -734f, -672f, -760f))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(135f, 1041f, -181f, 2335f)))))), -vec2<i32>(1i, min(1i, reverseBits(arg_0))));
    var var_2 = ~((firstLeadingBit(reverseBits(vec2<u32>(4294967295u, var_1.b.e))) ^ vec2<u32>(~18016u, ~1448u)) ^ reverseBits(vec2<u32>(~4294967295u, 66667u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(var_1.c.ww));
    var_2 = vec2<u32>(20642u, var_0.x);
    return ~var_1.b.e;
}

fn func_1() -> i32 {
    let var_0 = vec4<u32>(1u, 1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, u_input.a), vec3<u32>(u_input.a, 26746u, 4294967295u)), 1u, func_2(u_input.b.x << (11399u % 32u)), firstTrailingBit(~4294967295u)), select(~(~vec4<u32>(1u, u_input.a, 1u, 5685u)), ~abs(vec4<u32>(u_input.a, 90540u, u_input.a, 1u)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true)))));
    let var_1 = select(vec2<u32>(63657u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(func_3(76538u).x, firstTrailingBit(var_0.x)), var_0.xw), vec2<bool>(u_input.c.x <= _wgslsmith_add_i32(_wgslsmith_clamp_i32(314i, u_input.b.x, -2147483647i), -56530i), true));
    var var_2 = Struct_1(var_0.x, _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(max(_wgslsmith_dot_vec4_u32(var_0, vec4<u32>(u_input.a, u_input.a, var_0.x, var_0.x)), 45178u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.x) | var_1, abs(var_0.zy)))), _wgslsmith_f_op_f32(f32(-1f) * -1818f), select(vec4<bool>(true, all(vec3<bool>(true, true, true)), false, true), select(vec4<bool>(true, all(vec4<bool>(true, false, true, false)), true, true), vec4<bool>(select(false, true, false), true, false, true), false), !select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), 12422i > u_input.c.x)), ~(78725u | _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_1, var_1), ~vec2<u32>(0u, var_0.x))));
    var var_3 = Struct_2(vec2<i32>(u_input.b.x | (i32(-1i) * -15448i), _wgslsmith_clamp_i32(0i, ~abs(u_input.c.x), ~6045i)), Struct_1(firstTrailingBit(~_wgslsmith_clamp_u32(var_1.x, 1u, var_0.x)), _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(var_1.x, var_2.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.c))))), vec4<bool>(true, var_2.d.x, true, any(select(var_2.d, vec4<bool>(false, var_2.d.x, false, var_2.d.x), var_2.d.x))), ~var_0.x << (var_0.x % 32u)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(599f))), var_2.c, var_2.c), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1465f, _wgslsmith_f_op_f32(ceil(var_2.c)), 1f, _wgslsmith_f_op_f32(449f - var_2.c))))), ~abs(min(vec2<i32>(u_input.c.x, u_input.b.x) ^ vec2<i32>(-53674i, u_input.c.x), u_input.c)));
    var var_4 = u_input.b;
    return ~(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_sub_vec2_i32(reverseBits(u_input.b.xy), vec2<i32>(func_1(), 0i)), Struct_1(_wgslsmith_div_u32(~8918u, 42058u), 1u, -1424f, !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_mult_u32(~abs(55802u), 0u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(960f, 1237f, -1680f, -1334f) + vec4<f32>(178f, -361f, 410f, 114f)))), vec4<f32>(-2144f, -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -137f), -1589f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f))))), vec2<i32>(firstLeadingBit(~_wgslsmith_clamp_i32(1i, 0i, u_input.c.x)), func_1()));
    let var_1 = 61169u;
    var var_2 = ~(~(~((vec4<u32>(u_input.a, 30901u, 0u, u_input.a) & vec4<u32>(79567u, 0u, var_0.b.e, 0u)) << (select(vec4<u32>(var_0.b.a, var_0.b.e, 4294967295u, u_input.a), vec4<u32>(u_input.a, 0u, 41655u, var_0.b.a), vec4<bool>(var_0.b.d.x, true, var_0.b.d.x, var_0.b.d.x)) % vec4<u32>(32u)))));
    let var_3 = u_input.a;
    var_0 = Struct_2(u_input.b.xz, var_0.b, vec4<f32>(-491f, 140f, -529f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-339f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-802f + 1000f), _wgslsmith_div_f32(var_0.c.x, -778f))))), u_input.c);
    var_2 = abs(vec4<u32>(_wgslsmith_div_u32(1u, ~_wgslsmith_mult_u32(var_3, 4294967295u)), ~u_input.a >> (1u % 32u), _wgslsmith_add_u32(var_0.b.a, 0u), ~(~(~var_1))));
    var var_4 = 321f;
    var var_5 = Struct_2(_wgslsmith_sub_vec2_i32(abs(u_input.b.zx), u_input.c), var_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1266f, _wgslsmith_f_op_f32(select(var_0.c.x, _wgslsmith_f_op_f32(exp2(var_0.b.c)), !var_0.b.d.x)), _wgslsmith_f_op_f32(select(var_0.b.c, var_0.b.c, true)), var_0.b.c) * _wgslsmith_f_op_vec4_f32(-var_0.c)), var_0.d);
    let var_6 = Struct_2(vec2<i32>(var_5.a.x, -13357i), var_5.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(-1393f, var_0.c.x, 963f, var_0.c.x)) - vec4<f32>(1809f, var_0.c.x, 171f, var_5.c.x)))), vec2<i32>(4032i, 33462i));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wy);
}

