struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    return 18660u;
}

fn func_3() -> u32 {
    return 0u | reverseBits(func_2(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.a, 1i)), vec2<i32>(-45468i, u_input.a) ^ vec2<i32>(u_input.a, u_input.a)), u_input.a));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(abs(func_2(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(-18479i, u_input.a), u_input.a) >> (min(~19347u, func_3()) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f - 3079f) + _wgslsmith_f_op_f32(f32(-1f) * -2183f)))), 1908f, _wgslsmith_f_op_f32(select(165f, _wgslsmith_f_op_f32(f32(-1f) * -1452f), true))), !(!vec3<bool>(all(vec4<bool>(true, false, false, false)), true, true)), vec4<i32>(abs(u_input.a), u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a, select(0i, 0i, true), ~u_input.a), reverseBits(vec3<i32>(u_input.a, 23650i, u_input.a) << (vec3<u32>(33700u, 66643u, 14374u) % vec3<u32>(32u)))), firstTrailingBit(countOneBits(-4373i)) | ~u_input.a), min(abs(vec3<u32>(4294967295u, ~29937u, ~0u)), ~vec3<u32>(4294967295u, ~39767u, _wgslsmith_add_u32(1u, 0u))));
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, -1802f) * vec3<f32>(357f, var_0.b.x, var_0.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x) * var_0.b)) * var_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_0.b, vec3<f32>(1000f, var_0.b.x, var_0.b.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, 659f, var_0.b.x), var_0.b, var_0.c)))))), !vec3<bool>(firstTrailingBit(var_0.d.x) > u_input.a, false, var_0.c.x), vec4<i32>(~_wgslsmith_clamp_i32(max(var_0.d.x, var_0.d.x), _wgslsmith_div_i32(15821i, u_input.a), _wgslsmith_add_i32(-1i, -11029i)), u_input.a, 2147483647i, u_input.a), ~select(_wgslsmith_sub_vec3_u32(var_0.e, vec3<u32>(4294967295u, var_0.a, var_0.a)), var_0.e | var_0.e, vec3<bool>(true, var_0.c.x, false)) ^ var_0.e);
    var var_2 = var_1.b.x;
    let var_3 = var_0;
    var_1 = var_3;
    return _wgslsmith_mult_i32((~(var_0.d.x << (25783u % 32u)) >> (38113u % 32u)) | _wgslsmith_mod_i32(min(var_3.d.x, abs(var_1.d.x)), abs(-2147483647i)), firstTrailingBit(-_wgslsmith_add_i32(-16527i, var_3.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(634f, 548f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(553f, 628f) * vec2<f32>(-936f, -1000f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-146f, _wgslsmith_div_f32(-267f, 730f)))) - vec2<f32>(847f, 1120f));
    let var_1 = vec4<i32>(func_1(), ~(-2147483647i), -_wgslsmith_div_i32(-2147483647i, 2147483647i), abs(u_input.a));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(19499u, 1u, 4796u, 4987u), vec4<u32>(1u, 4294967295u, 8498u, 17554u))), reverseBits(~37192u), 1u, 1u), abs(vec4<u32>(abs(4294967295u), ~4294967295u, ~72993u, ~20988u))), ~4294967295u, ~(~(1u << (1u % 32u))));
    var var_3 = var_2.x;
    var_3 = ~(~var_2.x);
    var var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(325f + _wgslsmith_f_op_f32(floor(var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), var_1.x);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-1450f - _wgslsmith_f_op_f32(f32(-1f) * -910f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_0.x))))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(var_4.a.xz)))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(abs(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x))), (~vec4<u32>(var_2.x, 29683u, var_2.x, var_2.x) | vec4<u32>(~var_2.x, ~1u, 1u, _wgslsmith_div_u32(1u, var_2.x))) & vec4<u32>(var_2.x, 4294967295u, min(1u, var_2.x & 148602u), var_2.x), var_4.a.x);
}

