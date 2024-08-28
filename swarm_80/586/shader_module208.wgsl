struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -386f), -104f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(681f, -622f) + vec2<f32>(414f, 215f))), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1753f)))), max(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, 1i, u_input.b), _wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(2147483647i, 0i, u_input.c.x)))), vec3<i32>(_wgslsmith_dot_vec3_i32(abs(u_input.c), ~u_input.d), _wgslsmith_sub_i32(u_input.c.x, firstTrailingBit(u_input.d.x)), _wgslsmith_add_i32(abs(-15529i), _wgslsmith_mod_i32(u_input.d.x, 0i)))), u_input.a.x);
    var var_1 = u_input.d.x >> (var_0.d % 32u);
    return any(vec3<bool>(true, true, true)) || true;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(397f, -603f) * _wgslsmith_f_op_f32(515f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1749f, -2409f)))))));
    var var_1 = Struct_1(vec2<f32>(-1122f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1194f))) + -134f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 862f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2531f + 793f) + _wgslsmith_f_op_f32(-1203f - 726f))))), vec3<i32>(~countOneBits(u_input.c.x), -38634i, u_input.d.x) << (vec3<u32>(0u, ~u_input.a.x, 1u) % vec3<u32>(32u)), arg_0.x);
    var var_2 = Struct_1(vec2<f32>(864f, var_1.a.x), 667f, abs(countOneBits(abs(vec3<i32>(-57682i, -10381i, u_input.d.x)))), 80493u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(501f, var_2.a.x))), var_2.b, !(!arg_1.x)))) * _wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_f_op_f32(-1132f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b * 675f)))))));
    var var_4 = Struct_1(vec2<f32>(var_3, -941f), var_2.a.x, max(vec3<i32>(u_input.c.x, var_2.c.x, firstLeadingBit(var_1.c.x)), vec3<i32>(min(var_1.c.x << (1u % 32u), -var_1.c.x), _wgslsmith_sub_i32(u_input.d.x, -2147483647i), ~(~0i))), ~arg_0.x);
    return -590f;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2158f, arg_0.a.x) * -421f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) - _wgslsmith_div_f32(-277f, 1267f)))))));
    var_0 = _wgslsmith_f_op_f32(func_4(((~vec2<u32>(arg_0.d, 0u) | ~vec2<u32>(arg_0.d, arg_0.d)) | u_input.a.yy) | vec2<u32>(~firstLeadingBit(51585u), 1u), select(vec3<bool>(~arg_0.d == 1u, func_3() && true, !(-243f == arg_1)), !vec3<bool>(true, any(vec2<bool>(false, true)), true), vec3<bool>(true, true, !(arg_0.b < arg_1)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_div_f32(-1633f, 1618f)))), _wgslsmith_div_f32(403f, 1349f), !(!(-2147483647i >= arg_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(2236f, arg_0.a.x)), _wgslsmith_f_op_f32(arg_0.a.x - arg_1))) - _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_0.b)) + _wgslsmith_f_op_f32(sign(-2413f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(arg_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(arg_1, -1000f, true)), _wgslsmith_f_op_f32(round(-773f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(813f, arg_0.a.x) - _wgslsmith_f_op_vec2_f32(-arg_0.a))))), -276f, _wgslsmith_mult_vec3_i32(-u_input.d, vec3<i32>(~u_input.c.x, -u_input.c.x ^ 16206i, u_input.c.x)), 1u);
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(true, !(!any(vec2<bool>(true, false)))), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true)));
    return -1000f;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> i32 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-961f * 763f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(1909f, 1000f), 610f, vec3<i32>(-1i, -1i, u_input.c.x), arg_0), -1400f)) * _wgslsmith_f_op_f32(f32(-1f) * -255f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(607f - -463f)))), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(0i, 39614i, u_input.d.x)), vec3<i32>(~countOneBits(42045i), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, -53329i, u_input.b, u_input.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 4432i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, -1i))), reverseBits(-1554i))), arg_0);
    var var_1 = select(!select(arg_1.xx, arg_1.yy, vec2<bool>(arg_1.x, true)), vec2<bool>(arg_1.x, true), arg_1.x);
    let var_2 = true;
    var var_3 = !arg_1;
    return -11111i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(23500i, u_input.c.x, 60624i, u_input.c.x), -vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, -2147483647i) >> (vec4<u32>(43633u, u_input.a.x, 51912u, 1u) % vec4<u32>(32u))), u_input.d.x), -func_1(~(~u_input.a.x), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true), true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-481f, -1029f), vec2<f32>(-419f, 841f), vec2<bool>(true, true))) - vec2<f32>(-1000f, 179f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-898f, 1681f)) - _wgslsmith_f_op_f32(min(1000f, 1512f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f * -487f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_f32(trunc(-904f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(-856f, 610f), 1000f, u_input.d, u_input.a.x), 739f)))))), -abs(vec3<i32>(_wgslsmith_add_i32(-20858i, -9025i), firstLeadingBit(26612i), u_input.c.x)), ~(~4294967295u));
    var var_2 = firstLeadingBit(_wgslsmith_mod_i32(-(1i & firstTrailingBit(var_1.c.x)), var_1.c.x ^ _wgslsmith_add_i32(-u_input.d.x, u_input.c.x)));
    var var_3 = vec2<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true)) && (var_1.a.x <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, var_1.b))));
    var_3 = !(!vec2<bool>(true, !any(vec2<bool>(var_3.x, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, reverseBits(-(u_input.d.x << (1u % 32u)) | -1i), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-313f, var_1.a.x, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1329f, 1326f, -2018f)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, -353f, 1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 626f, var_1.b) * vec3<f32>(-1001f, var_1.a.x, 1021f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(937f, var_1.b, 261f)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, -1000f, var_1.a.x), vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))))))), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(var_1.d, var_1.d ^ 9402u, var_1.d), 83008u, 4294967295u), firstTrailingBit(vec4<i32>(-(u_input.d.x ^ u_input.c.x), 2147483647i, select(var_1.c.x, -u_input.d.x, true), abs(var_1.c.x))));
}

