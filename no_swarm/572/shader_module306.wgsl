struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec2<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_mult_vec4_i32(~min(vec4<i32>(u_input.c, -2147483647i, u_input.e.x, -1i) >> (select(vec4<u32>(4294967295u, arg_1, u_input.d, 58758u), vec4<u32>(4294967295u, u_input.d, 1853u, 4294967295u), true) % vec4<u32>(32u)), -firstLeadingBit(vec4<i32>(u_input.a, 0i, u_input.e.x, u_input.c))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~(vec4<i32>(u_input.e.x, 2147483647i, 57208i, 27023i) ^ vec4<i32>(61842i, 0i, u_input.c, -2147483647i)), vec4<i32>(~1i, max(u_input.e.x, u_input.b.x), countOneBits(u_input.b.x), _wgslsmith_add_i32(10385i, u_input.c))), countOneBits(vec4<i32>(-u_input.a, -18637i ^ u_input.b.x, 23209i, _wgslsmith_clamp_i32(18532i, u_input.a, -31405i)))));
    var var_1 = Struct_1(~(reverseBits(vec3<u32>(3560u, 0u, arg_0)) | vec3<u32>(u_input.d >> (59150u % 32u), min(0u, arg_0), ~4294967295u)));
    var_1 = Struct_1(~(~firstTrailingBit(~var_1.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-203f, arg_2.x, -280f, -1340f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1121f, 1000f, arg_2.x, arg_2.x), vec4<f32>(-880f, 323f, arg_2.x, -585f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -878f))))));
    var var_3 = ~11393u;
    return vec3<u32>(_wgslsmith_clamp_u32(countOneBits(4294967295u), ~var_1.a.x, max(reverseBits(1u), 29649u)), _wgslsmith_div_u32(~0u, max(_wgslsmith_clamp_u32(~31822u, firstLeadingBit(64231u), var_1.a.x ^ 1u), max(~4294967295u, _wgslsmith_dot_vec3_u32(var_1.a, var_1.a)))), abs(73474u));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.d, u_input.d)), func_3(0u, u_input.d, vec2<f32>(-1350f, -575f)) << (reverseBits(vec3<u32>(0u, 1u, 40542u)) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(760u, 84234u, 1u), vec3<u32>(u_input.d, u_input.d, u_input.d), countOneBits(vec3<u32>(u_input.d, 0u, u_input.d)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1168f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-670f)) * _wgslsmith_f_op_f32(-377f + 879f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2833f, 131f) - vec2<f32>(1092f, 1489f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-837f, -970f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-420f, 274f) - vec2<f32>(-989f, -709f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1732f, _wgslsmith_f_op_f32(f32(-1f) * -507f)), 301f)), any(vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), 192f)));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-244f, 1609f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x))));
    var var_1 = func_2();
    let var_2 = func_2();
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = -1130f < _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1056f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-683f))))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(55955u, arg_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 4452u, 0u), vec4<u32>(u_input.d, arg_1.a.x, arg_0.a.x, arg_1.a.x)), _wgslsmith_dot_vec2_u32(arg_1.a.yx, arg_0.a.xz)), ~_wgslsmith_div_vec3_u32(vec3<u32>(54453u, 60967u, 0u), arg_1.a)) | arg_0.a);
    return !select(vec2<bool>(_wgslsmith_clamp_u32(23537u, 0u, 23567u) >= ~arg_0.a.x, true), vec2<bool>(any(vec3<bool>(true, true, false)), all(vec2<bool>(true, true))), select(vec2<bool>(any(vec3<bool>(false, true, true)), true), vec2<bool>(true, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_div_u32(u_input.d ^ 72214u, 1u));
    var_0 = 20947u;
    let var_1 = Struct_1(vec3<u32>(u_input.d, 32217u, max(8533u, 31653u)));
    var var_2 = !func_4(Struct_1(~(~var_1.a)), func_1(abs(reverseBits(u_input.a)), Struct_1(var_1.a), max(u_input.b.xz, -u_input.b.xy)));
    var var_3 = func_1(_wgslsmith_sub_i32(u_input.a, i32(-1i) * -1i), Struct_1(countOneBits(~var_1.a)), -u_input.b.zz);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec2<f32>(_wgslsmith_f_op_f32(-524f - _wgslsmith_f_op_f32(570f * _wgslsmith_f_op_f32(sign(1450f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(430f)) + -1741f), _wgslsmith_f_op_f32(min(1368f, _wgslsmith_f_op_f32(round(-571f)))), any(vec3<bool>(var_2.x, true, true))))), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, 90316u), _wgslsmith_dot_vec2_u32(var_3.a.yx & var_3.a.xz, ~vec2<u32>(u_input.d, var_1.a.x)), ~u_input.d | max(55549u, var_1.a.x)), var_1.a, var_1.a), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1045f)), vec2<f32>(-2185f, -332f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-353f, 106f), vec2<f32>(568f, 1065f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 1230f)))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-744f, -1917f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-993f, -778f) - vec2<f32>(1737f, -374f))))), (_wgslsmith_div_u32(4294967295u, var_3.a.x) >> (4802u % 32u)) <= _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(27207u, 11815u, var_1.a.x), var_1.a), _wgslsmith_dot_vec2_u32(var_3.a.zz, var_3.a.xx)))));
}

