struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: f32,
    e: u32,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec3<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1096f, 2674f, 1009f, -622f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(620f, -789f, -1272f, 1477f))), vec4<f32>(_wgslsmith_div_f32(-462f, -161f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-705f - 1300f), -696f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-954f, _wgslsmith_f_op_f32(sign(-1576f)), -608f, -134f) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-285f, -694f, -455f, -1504f), vec4<f32>(-1486f, 831f, -1211f, 960f)), vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_1 = vec3<u32>(34637u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, firstLeadingBit(1u), ~u_input.a, ~u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a) ^ (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 22870u, 1u, 16257u) % vec4<u32>(32u))))), _wgslsmith_mult_u32(1u, ~(~29147u)));
    var var_2 = !(all(!(!vec2<bool>(arg_0.x, arg_0.x))) & true);
    var var_3 = _wgslsmith_sub_u32(48162u, u_input.a);
    let var_4 = countOneBits(var_1.x);
    return vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(floor(var_0.a.x)));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, false), vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0, 297f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 978f, -169f), vec3<f32>(-1913f, -2272f, arg_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(arg_0, 434f, arg_0)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(743f)), _wgslsmith_f_op_f32(trunc(arg_0)), arg_0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 516f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1856f, var_0.x, 359f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, true), vec3<i32>(-1i, 2147483647i, 2147483647i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -1723f) * vec3<f32>(569f, var_0.x, -615f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, arg_0))), vec3<f32>(var_0.x, var_0.x, arg_0)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 180f) + vec3<f32>(-1000f, -395f, arg_0)))), vec3<bool>(true, arg_1 < 1u, true)))));
    var var_1 = max(76601u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(u_input.a, u_input.a))));
    let var_2 = vec3<u32>(u_input.a, _wgslsmith_mult_u32(firstTrailingBit(arg_1) ^ ~(~1u), _wgslsmith_div_u32(arg_1, 0u)), max(0u, min(u_input.a, ~(~arg_1))));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(arg_0 * var_0.x), -2217f) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(1298f)), _wgslsmith_f_op_f32(trunc(-1326f)))))));
    return Struct_2(vec4<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1609f)))), _wgslsmith_f_op_f32(f32(-1f) * -1224f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(arg_0 * var_0.x), arg_0 >= -919f)))));
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.a;
    let var_1 = func_2(-1327f, u_input.a);
    let var_2 = var_1.a.x;
    var var_3 = Struct_1(!(u_input.a >= u_input.a) || false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_2, -156f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.zxy)))));
    let var_4 = _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-9156i, _wgslsmith_mod_i32(0i, -1i), 1i, _wgslsmith_add_i32(5848i, -2147483647i)) ^ (~vec4<i32>(-25208i, 0i, -2147483647i, -28925i) << (select(vec4<u32>(u_input.a, 4294967295u, 57608u, u_input.a), vec4<u32>(u_input.a, u_input.a, 71207u, 76644u), false) % vec4<u32>(32u)))), vec4<i32>(reverseBits(abs(~(-10810i))), ~1i, -(11432i ^ (709i << (u_input.a % 32u))), ~_wgslsmith_sub_i32(-1i, ~(-41836i))));
    return Struct_3(Struct_1(all(select(vec2<bool>(var_3.a, true), select(vec2<bool>(var_3.a, var_3.a), vec2<bool>(var_3.a, var_3.a), vec2<bool>(true, var_3.a)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(func_2(var_3.b.x, 4294967295u).a.zww, _wgslsmith_f_op_vec3_f32(var_3.b * vec3<f32>(var_2, -1000f, -786f)))) - vec3<f32>(var_3.b.x, var_1.a.x, 1f))), ~(~0u) ^ max(0u, firstLeadingBit(~u_input.a)), u_input.a <= u_input.a, vec3<u32>(_wgslsmith_mod_u32(u_input.a, abs(~17109u)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 51513u, 13175u, 88269u), vec4<u32>(u_input.a, 0u, 10464u, u_input.a)), u_input.a, u_input.a | u_input.a), _wgslsmith_mult_u32(u_input.a, abs(_wgslsmith_add_u32(u_input.a, 1u)))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(all(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(var_0.a.a, var_0.c), var_0.c)), true, var_0.a.a)), _wgslsmith_f_op_vec3_f32(select(var_0.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(2366f, 1481f, -1103f), vec3<f32>(261f, var_0.a.b.x, var_0.a.b.x)), _wgslsmith_f_op_vec3_f32(var_0.a.b - var_0.a.b), !vec3<bool>(true, true, var_0.a.a)))), select(vec3<bool>(var_0.c, var_0.a.a, var_0.a.a), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(false, var_0.c, false)), vec3<bool>(true, false, var_0.a.a), vec3<bool>(var_0.c, false, var_0.a.a))))));
    var_1 = func_1().a;
    var var_2 = func_1().a;
    var var_3 = ~firstTrailingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(-63217i, -86310i, -6628i), vec3<i32>(4692i, -1i, -21416i)) << (vec3<u32>(_wgslsmith_sub_u32(u_input.a, 4294967295u), ~var_0.d.x, var_0.b) % vec3<u32>(32u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_1.b.x, 326f, var_1.b.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, 1674f, var_0.a.b.x, var_2.b.x) + vec4<f32>(-580f, -927f, 1673f, var_2.b.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(161f, var_1.b.x, var_1.b.x, -1199f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, var_2.b.x, var_0.a.b.x, var_2.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, var_0.a.b.x, -593f, 1041f)))))));
    var_2 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.b, ~0u, u_input.a), -267f, select(-var_3.x, reverseBits(16745i) | (-var_3.x & select(2147483647i, var_3.x, var_0.a.a)), false), -887f, var_0.d.x);
}

