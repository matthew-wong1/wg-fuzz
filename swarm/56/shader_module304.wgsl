struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -259f) * _wgslsmith_f_op_f32(282f - 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-580f)), -1563f, _wgslsmith_f_op_f32(max(273f, -216f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(968f, -846f, 1712f) * vec3<f32>(-876f, -1000f, 1508f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2192f, 209f, -1546f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-578f, -1258f, -158f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(484f, 236f, -1277f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(var_0.b.x * -1203f))));
    var var_2 = var_0;
    var var_3 = var_0;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * var_0.a)), var_3.b, var_0.b.xx);
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = vec4<f32>(1f, _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1851f))), _wgslsmith_f_op_f32(-func_2(~28450u >> (~u_input.c % 32u)).b.x), 1152f);
    let var_1 = !(!any(vec2<bool>(true, true))) && select(true, u_input.c <= (u_input.c ^ _wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), any(vec2<bool>(true, false)))));
    var var_2 = -736f;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(883f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * arg_1.c.x))), _wgslsmith_f_op_f32(floor(arg_1.b.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-434f, 1653f)))), -2351f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1333f)), _wgslsmith_f_op_f32(arg_1.a + arg_1.b.x)), _wgslsmith_f_op_f32(-180f - _wgslsmith_f_op_f32(-arg_0.c.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a * -1247f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.c.x - var_0.x))), 979f, _wgslsmith_f_op_f32(select(-290f, arg_1.c.x, true))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-179f, var_0.x, 1064f, 425f))), vec4<f32>(arg_1.a, var_0.x, -2023f, 412f)))), vec4<bool>(true, 1i < _wgslsmith_dot_vec4_i32(-vec4<i32>(19407i, -25714i, u_input.a.x, 1i), vec4<i32>(0i, u_input.b.x, 2010i, -2147483647i)), _wgslsmith_f_op_f32(-arg_1.b.x) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(237f, 1247f)) - _wgslsmith_f_op_f32(-var_0.x)), !all(vec4<bool>(true, true, true, false)) | true)));
    return _wgslsmith_div_u32(u_input.c, ~_wgslsmith_sub_u32(~42647u, _wgslsmith_mod_u32(10329u, u_input.c)) | ~1u);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(70720u ^ u_input.c) & 50004u, u_input.c), abs(func_3(func_2(max(arg_0, 4294967295u)), Struct_1(_wgslsmith_f_op_f32(-1196f * -250f), vec3<f32>(-128f, 326f, 1681f), _wgslsmith_div_vec2_f32(vec2<f32>(815f, 1000f), vec2<f32>(288f, 1321f))))));
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(var_0.x) ^ 25579u, firstTrailingBit(~u_input.c), abs(arg_0), ~_wgslsmith_mult_u32(u_input.c, u_input.c)), vec4<u32>(arg_0, arg_0, 1u, 66201u)) | (~(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 4294967295u, arg_0, 4294967295u), vec4<u32>(0u, u_input.c, 1u, 10277u))) & ~countOneBits(abs(vec4<u32>(arg_0, arg_0, 62907u, 4294967295u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(869f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-698f, -257f) * -479f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-207f, -1110f, false)) + _wgslsmith_div_f32(-305f, -1104f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-993f)), -329f)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(372f, -575f, 1000f, 209f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_3 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, u_input.a.x), -1i), 2147483647i);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<f32>(267f, -110f, 1763f, var_2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 474f, var_2.x, var_2.x)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-245f, var_2.x, -642f, 1000f))))))));
    return -1315f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(1u, -vec4<i32>(-1i, u_input.a.x, u_input.b.x, u_input.b.x))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-907f, -430f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -339f), _wgslsmith_f_op_f32(1530f - _wgslsmith_f_op_f32(floor(-1000f))), 124f)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1681f)) * -233f), _wgslsmith_f_op_f32(ceil(-159f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -582f))) + _wgslsmith_f_op_vec2_f32(select(func_2(u_input.c).c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-373f, -755f) - vec2<f32>(281f, 187f)), true)))));
    let var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~(~33355u), countOneBits(max(0u, 20772u)), u_input.c), _wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), vec4<u32>(68730u, 4294967295u, u_input.c, 4294967295u)), select(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 51172u, 4294967295u), vec4<bool>(true, true, true, false))) << (vec4<u32>(u_input.c << (55359u % 32u), ~4294967295u, max(u_input.c, u_input.c), u_input.c) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(min(func_3(Struct_1(var_0.a, var_0.b, vec2<f32>(var_0.b.x, var_0.c.x)), Struct_1(var_0.a, vec3<f32>(var_0.b.x, var_0.c.x, var_0.a), vec2<f32>(633f, 689f))), var_1), 4294967295u), ~vec2<u32>(firstTrailingBit(var_1), 4294967295u), (_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_1), select(vec2<u32>(46704u, u_input.c), vec2<u32>(23551u, var_1), vec2<bool>(false, true))) << (_wgslsmith_mult_vec2_u32(select(vec2<u32>(40006u, 25185u), vec2<u32>(u_input.c, 1u), false), ~vec2<u32>(0u, 0u)) % vec2<u32>(32u))) | select(reverseBits(vec2<u32>(67878u, 115408u)), ~(~vec2<u32>(6612u, 41142u)), vec2<bool>(true, true)));
    let var_3 = Struct_1(var_0.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.b)), _wgslsmith_f_op_vec3_f32(-var_0.b)), var_0.b.zx);
    let var_4 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_2.x), vec2<u32>(0u, 1063u)), ~(~u_input.c), 5285u), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 24362u), ~vec2<u32>(u_input.c, 42692u)), ~_wgslsmith_div_u32(14449u, var_2.x), 22174u), ~max(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 43041u, u_input.c), vec3<u32>(u_input.c, 60124u, 23439u)), ~vec3<u32>(0u, 1u, var_1))), abs(min(vec3<u32>(reverseBits(5796u), ~var_1, var_1), ~(vec3<u32>(0u, u_input.c, 4294967295u) << (vec3<u32>(4294967295u, var_2.x, var_2.x) % vec3<u32>(32u))))));
    let var_5 = _wgslsmith_mod_vec3_i32(u_input.b, -(~select(vec3<i32>(81791i, -2147483647i, 0i), ~u_input.b, vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4, vec4<f32>(var_3.c.x, _wgslsmith_f_op_f32(-2201f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-180f, 987f, true)), var_3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(250f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a)))), abs(19522i), abs(19942u), ~(var_2.x | u_input.c));
}

