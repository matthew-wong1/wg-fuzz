struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    global0 = _wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a), vec4<u32>(0u, 1u, 29795u, u_input.a)), true)), countOneBits(~vec4<u32>(u_input.a, firstTrailingBit(u_input.a), _wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(u_input.a, 25591u))));
    var var_0 = firstTrailingBit(vec3<u32>(~max(u_input.a, _wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a)), ~0u, firstTrailingBit(~(~u_input.a))));
    var var_1 = !select(vec2<bool>(_wgslsmith_mult_u32(var_0.x, u_input.a) == max(var_0.x, 35994u), all(vec2<bool>(true, true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true);
    var var_2 = Struct_3(_wgslsmith_clamp_u32(2935u, countOneBits(var_0.x), ~_wgslsmith_sub_u32(~u_input.a, u_input.a)), ~vec4<u32>(reverseBits(_wgslsmith_mult_u32(u_input.a, var_0.x)), var_0.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(41439u, 27262u, 81783u, 45566u)), vec4<u32>(80470u, u_input.a, var_0.x, 4634u) ^ vec4<u32>(0u, 9351u, 105269u, var_0.x)), var_0.x), true, vec4<f32>(2784f, _wgslsmith_f_op_f32(min(-1490f, 217f)), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -877f)))), u_input.b.x);
    let var_3 = Struct_3(23651u, ~var_2.b, any(vec3<bool>(false, 1u < var_2.b.x, ~44179u <= var_0.x)), var_2.d, _wgslsmith_add_i32(_wgslsmith_add_i32(select(0i, 24170i, var_2.c), var_2.e), ~min(71723i, _wgslsmith_mult_i32(arg_0, -1i))));
    return ~vec4<u32>(_wgslsmith_clamp_u32(firstTrailingBit(~0u), min(firstTrailingBit(4294967295u), ~var_2.b.x), _wgslsmith_add_u32(2975u, _wgslsmith_sub_u32(var_3.a, var_0.x))), 1u, min(1u, var_3.b.x), 0u);
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_3(u_input.a, min(func_3(~u_input.b.x), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)) ^ (func_3(-u_input.b.x) ^ min(reverseBits(vec4<u32>(0u, u_input.a, 72898u, 0u)), vec4<u32>(0u, 30175u, u_input.a, 4294967295u))), all(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1450f, -525f, -195f, 1148f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -771f), -1000f, -693f, -207f))), _wgslsmith_dot_vec2_i32(-u_input.b, u_input.b));
    var var_1 = Struct_1(!(!vec4<bool>(true, true | var_0.c, true, var_0.c)), _wgslsmith_f_op_f32(1013f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - 137f))))), vec3<f32>(var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.x)))), !select(select(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), !vec4<bool>(true, var_0.c, var_0.c, true), true), !vec4<bool>(true, var_0.c, var_0.c, true), true));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.d.x, 1276f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), -566f))), var_0.d.zwx, vec4<bool>(false & var_1.d.x, any(select(vec2<bool>(true, true), vec2<bool>(false, var_1.a.x), select(var_1.d.xx, var_1.a.zx, var_1.d.wx))), var_1.d.x, (var_0.e ^ var_0.e) < ~(~1i)));
    var var_2 = -11828i;
    let var_3 = select(var_1.a.xzw, vec3<bool>(any(var_1.a.xzy), ((-253f <= var_1.c.x) == true) && !var_1.d.x, true), var_1.a.yxx);
    return var_0.d.ywx;
}

fn func_1(arg_0: u32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(923f, 1374f, 801f)) * _wgslsmith_f_op_vec3_f32(func_2())) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-162f, -802f, 2334f)))), vec3<f32>(-1881f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-674f - 1949f), 1856f)), -496f)));
    global0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-452f + var_0.x))))));
    var var_2 = u_input.b.x >= abs(u_input.b.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)), 1000f), _wgslsmith_div_f32(489f, -655f), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_0.x) - _wgslsmith_f_op_f32(round(var_1.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_1.x)), _wgslsmith_f_op_f32(trunc(-1780f)), _wgslsmith_f_op_f32(786f + var_1.x), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(var_0.x))))));
    return firstTrailingBit(_wgslsmith_add_vec2_i32(~(-u_input.b) ^ _wgslsmith_clamp_vec2_i32(u_input.b, _wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -50672i))), u_input.b ^ vec2<i32>(-27489i, u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 7543i);
    var var_1 = _wgslsmith_add_vec2_i32(select(-(abs(u_input.b) ^ reverseBits(vec2<i32>(2147483647i, u_input.b.x))), firstTrailingBit(firstTrailingBit(u_input.b ^ vec2<i32>(u_input.b.x, -5769i))), vec2<bool>(true, true)), func_1(1u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~25510u)) >> (u_input.a % 32u), var_1.x, _wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.a, u_input.a, 4294967295u) | vec3<u32>(u_input.a, u_input.a, 4294967295u)) >> (~vec3<u32>(u_input.a, 0u, 4294967295u) % vec3<u32>(32u)), abs(reverseBits(vec3<u32>(17749u, 1u, 4294967295u))))));
}

