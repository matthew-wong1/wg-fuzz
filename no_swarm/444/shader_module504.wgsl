struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = !vec3<bool>(arg_0, arg_0 && (any(vec2<bool>(false, true)) & arg_0), true);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(131f, -677f, -465f) + vec3<f32>(923f, 392f, 1143f))))), u_input.a.x, vec4<u32>(firstLeadingBit(reverseBits(53322u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 47504u), vec2<u32>(65870u, 4294967295u)), abs(~1u), 1u) ^ ~(~vec4<u32>(0u, 1u, 1325u, 84360u)));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, var_1.a.x, var_1.a.x))))), u_input.b.x, ~vec4<u32>(4294967295u, var_1.c.x, min(1u, reverseBits(var_1.c.x)), 4511u));
    var var_2 = Struct_2(vec3<f32>(1774f, var_1.a.x, -1216f), min(vec4<i32>(i32(-1i) * -16994i, -firstLeadingBit(-2147483647i), u_input.b.x, _wgslsmith_mult_i32(1i, var_1.b | var_1.b)), vec4<i32>(-1i) * -vec4<i32>(59047i, var_1.b, -9836i, 2147483647i)), !select(var_0.yz, !(!vec2<bool>(false, var_0.x)), arg_0));
    var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)))), vec4<i32>(abs(min(-1i, 3089i)), min(max(var_2.b.x, var_2.b.x), 46581i), -var_2.b.x, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-11551i, 39961i, 1988i), vec3<i32>(-120191i, var_2.b.x, -9253i)))) ^ vec4<i32>(reverseBits(_wgslsmith_dot_vec4_i32(var_2.b, vec4<i32>(u_input.a.x, var_1.b, var_1.b, -2147483647i))), -var_2.b.x, -1i, -_wgslsmith_div_i32(30791i, var_1.b)), !var_2.c);
    return var_1.c.x ^ select(~(~0u), 1u, var_2.a.x <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1370f))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-266f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1069f), _wgslsmith_div_f32(-1747f, 988f))));
    let var_1 = min(~func_3(false), _wgslsmith_add_u32(_wgslsmith_sub_u32(abs(23412u), firstTrailingBit(~1u)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(62474u, 32502u), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 11391u), vec2<u32>(1u, 4294967295u))), reverseBits(abs(vec2<u32>(14383u, 1u))))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(931f, -645f, true)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1053f, -199f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(269f, 891f, 107f)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))))), ~firstLeadingBit(vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, u_input.a.x) >> (vec4<u32>(var_1, var_1, 56613u, 37205u) % vec4<u32>(32u))), vec2<bool>(select(false, any(vec4<bool>(true, false, true, true)), all(vec3<bool>(true, false, false))), false)));
    let var_3 = Struct_4(1519f, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_2.b.a.x)), -242f, var_2.b.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, -1i, var_2.b.b.x, -var_2.b.b.x), _wgslsmith_mod_vec4_i32(var_2.b.b, -var_2.b.b)), var_2.b.c));
    var_2 = var_3;
    return _wgslsmith_f_op_f32(f32(-1f) * -2195f);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> f32 {
    var var_0 = min(vec2<u32>(max(~25868u, 1u), 15695u), vec2<u32>(1u, 1u)) & ~(~vec2<u32>(firstTrailingBit(12883u), 3652u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f)))));
    var var_2 = arg_1.www;
    let var_3 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -197f, _wgslsmith_f_op_f32(f32(-1f) * -1146f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x) - vec3<f32>(553f, 855f, -860f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(208f, var_1.a.x, var_1.a.x) + vec3<f32>(499f, -1194f, -165f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -1143f, -355f))))), 56682i, vec4<u32>(var_0.x, var_0.x, var_0.x, _wgslsmith_sub_u32(max(var_0.x, 33780u), _wgslsmith_add_u32(~var_0.x, ~var_0.x))));
    var_2 = !arg_1.wyx;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1033f), 1952f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -961f), -220f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1423f)), _wgslsmith_f_op_f32(func_1(u_input.a.x, vec4<bool>(true, true, false, true)))) * _wgslsmith_div_f32(432f, _wgslsmith_f_op_f32(296f - 247f)))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-14994i, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-17115i, 44823i, -2147483647i, u_input.b.x), vec4<i32>(1i, 1i, 494i, 2147483647i)), 1i), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -52055i, 1i, u_input.a.x), vec4<i32>(u_input.a.x, -5467i, 33518i, u_input.a.x), vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, -31298i)))), abs(countOneBits(countOneBits(vec4<i32>(-23223i, 79854i, u_input.b.x, 2818i))))), vec2<bool>(all(vec3<bool>(true, true, any(vec2<bool>(false, true)))), true));
    var var_1 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1297f) - var_0.a.x) - var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-487f))))), Struct_2(var_0.a, vec4<i32>(var_0.b.x, _wgslsmith_sub_i32(var_0.b.x, u_input.a.x), -(u_input.a.x | u_input.b.x), -6903i), !var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~60197u), ~(~28990u)), ~_wgslsmith_div_u32(firstTrailingBit(countOneBits(44160u)), 4294967295u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f), var_0.a.x) * _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-174f - var_0.a.x))), _wgslsmith_div_f32(2719f, _wgslsmith_f_op_f32(func_2()))), vec3<i32>(~var_0.b.x, ~abs(45800i), -52483i), firstTrailingBit(var_0.b));
}

