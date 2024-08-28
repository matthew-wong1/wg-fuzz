struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_1 = Struct_3(Struct_2(abs(_wgslsmith_mult_vec2_i32(u_input.c.xz, ~vec2<i32>(u_input.c.x, 2147483647i))), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 1u, 50144u, u_input.b), vec4<u32>(u_input.b, 1u, 22582u, u_input.b), true), vec4<u32>(1586u, u_input.b, 12959u, 31983u)), vec4<u32>(1u, 4294967295u, u_input.b, _wgslsmith_sub_u32(~21047u, 21238u)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(abs(-953f)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -341f)) - var_1.a.d.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -800f), var_1.a.d.x))), var_1.a.d.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-450f)) + var_1.a.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1248f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(144f, 289f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, var_1.a.d.x))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.d.x, -100f, 660f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-777f, var_1.a.d.x, -285f), vec3<f32>(var_1.a.d.x, 401f, var_1.a.d.x)))))));
    return ~(_wgslsmith_mod_u32(0u, 30239u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.b, 7016u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, var_1.a.b), vec4<u32>(1u, 0u, u_input.b, u_input.b)), u_input.b), var_1.a.c.ywz) % 32u));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = firstLeadingBit(vec2<u32>(abs(firstLeadingBit(1u)), u_input.b));
    let var_1 = Struct_2(vec2<i32>(-firstLeadingBit(1i), _wgslsmith_mod_i32(firstLeadingBit(u_input.a.x & 1i), u_input.a.x)), ~var_0.x | _wgslsmith_mult_u32(12551u, var_0.x | arg_1.a.x), min(vec4<u32>(97262u, _wgslsmith_mod_u32(u_input.b, 0u), _wgslsmith_clamp_u32(select(u_input.b, u_input.b, true), func_3(), ~var_0.x), 1u), abs(vec4<u32>(u_input.b, u_input.b, 22912u, arg_1.a.x)) ^ select(vec4<u32>(u_input.b, arg_1.a.x, 1u, var_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(577u, arg_1.a.x, u_input.b, u_input.b), vec4<u32>(17768u, 30930u, var_0.x, var_0.x)), true)), vec2<f32>(-347f, _wgslsmith_f_op_f32(ceil(arg_2.x))));
    var var_2 = var_1;
    var_2 = Struct_2(_wgslsmith_div_vec2_i32(var_1.a & var_1.a, (select(var_2.a, u_input.c.zw, vec2<bool>(false, true)) & ~vec2<i32>(11235i, -2147483647i)) << ((~var_0 & firstTrailingBit(var_2.c.xy)) % vec2<u32>(32u))), ~1u, firstTrailingBit(abs(vec4<u32>(var_1.c.x, 1u, 1u, var_2.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_2.d.x)), _wgslsmith_f_op_f32(567f - _wgslsmith_f_op_f32(arg_2.x + -417f))) - var_1.d));
    var_2 = Struct_2(abs(-(~vec2<i32>(1i, arg_1.b)) & ~var_2.a), var_0.x, ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mod_u32(75481u, var_2.c.x), ~var_2.c.x, var_1.c.x), ~vec4<u32>(1u, arg_1.a.x, 12303u, 13816u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1016f))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(floor(-778f)), var_1.d.x, arg_2.x) + vec4<f32>(160f, _wgslsmith_f_op_f32(f32(-1f) * -1341f), _wgslsmith_f_op_f32(691f * arg_0), -351f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(472f)), -944f, var_2.d.x, _wgslsmith_div_f32(464f, 365f))));
}

fn func_1() -> vec4<f32> {
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1317f, -454f, -418f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(872f, -1657f, 766f, -613f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(351f, -1265f, 502f, 592f))) + _wgslsmith_f_op_vec4_f32(func_2(943f, Struct_1(vec3<u32>(u_input.b, 7185u, 13779u), -2147483647i), vec3<f32>(1212f, -125f, 433f)))), vec4<f32>(1f, 1f, 1f, 1f), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(757f)), -459f, _wgslsmith_f_op_f32(-1340f * -303f), _wgslsmith_f_op_f32(-1865f * -1000f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-818f, 2390f, -1000f, 1460f), vec4<f32>(-1787f, 807f, -864f, -1566f))))), false))));
    let var_1 = Struct_3(Struct_2(u_input.c.zw, 5421u, countOneBits(vec4<u32>(24347u, 15422u, u_input.b, u_input.b)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(67980u, 4294967295u, 4294967295u, u_input.b), select(vec4<u32>(38401u, u_input.b, u_input.b, 19080u), vec4<u32>(1u, 1u, u_input.b, u_input.b), vec4<bool>(true, false, true, true))) % vec4<u32>(32u)), var_0.yy));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.a.d.x)))), var_1.a.d.x, _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(round(var_1.a.d.x)), Struct_1(var_1.a.c.zwy, u_input.a.x), var_0.xyw)).x, 803f)));
    var var_2 = select(!vec2<bool>(~var_1.a.a.x <= _wgslsmith_div_i32(2147483647i, u_input.c.x), all(vec4<bool>(true, true, false, true))), select(vec2<bool>(true, true), !vec2<bool>(all(vec3<bool>(true, true, false)), true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1062f * -1272f))) == _wgslsmith_f_op_f32(floor(var_1.a.d.x)));
    var_2 = vec2<bool>(!any(select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true), var_2.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_vec3_f32(sign(var_0.wwz)), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + _wgslsmith_f_op_f32(-var_1.a.d.x)), 350f);
}

