struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f - -409f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-724f + -571f))), _wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_div_f32(1f, 1f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2357f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(696f, -1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-217f, 107f), 352f)))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, _wgslsmith_clamp_i32(-33650i, -1i, u_input.a.x) <= _wgslsmith_dot_vec2_i32(vec2<i32>(-9554i, u_input.a.x), u_input.a.yy)), true)));
    var var_1 = Struct_1(vec2<u32>(select(_wgslsmith_clamp_u32(1u, ~1u, _wgslsmith_mult_u32(0u, 98831u)), 18918u, true), ~(~0u) << (firstTrailingBit(~1u) % 32u)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 801f))), !select(vec4<bool>(true, true, var_1.a.x >= 4294967295u, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))));
    let var_3 = u_input.a.x;
    return vec4<u32>(_wgslsmith_clamp_u32(var_1.a.x, 15649u, ~select(~var_1.a.x, var_1.a.x, var_2.a >= var_2.a)), abs(16551u), select(17129u, var_1.a.x, all(vec3<bool>(var_2.a <= 472f, any(var_2.b.xz), !var_2.b.x))), ~38710u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(42451u, 27966u, 0u, 0u), vec4<u32>(0u, 1u, 0u, 4294967295u)), 1u), 4294967295u));
    let var_1 = u_input.a.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~func_3(), vec4<u32>(_wgslsmith_sub_u32(4294967295u, var_0.a.x), var_0.a.x, ~47672u, 4294967295u)), max(max(min(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 4294967295u), vec4<u32>(var_0.a.x, 0u, 4294967295u, var_0.a.x)), vec4<u32>(4294967295u, 0u, var_0.a.x, 1u)), vec4<u32>(_wgslsmith_clamp_u32(var_0.a.x, 4696u, var_0.a.x), countOneBits(var_0.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 0u), vec2<u32>(var_0.a.x, var_0.a.x)), func_3().x))) % 32u);
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(506f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(580f + -287f))))) + 420f);
    let var_4 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(min(21092u, var_2.a.x), ~0u), vec2<u32>(48964u, countOneBits(4294967295u))) | ~reverseBits(max(vec2<u32>(var_2.a.x, var_0.a.x), var_2.a)));
    return var_4;
}

fn func_1() -> vec4<f32> {
    let var_0 = func_2(firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x >> (23371u % 32u), 1i), _wgslsmith_mod_i32(1i, -16210i) & u_input.a.x)));
    var var_1 = Struct_2(2132f, !(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)))));
    let var_2 = 0u;
    var var_3 = Struct_2(var_1.a, vec4<bool>(!any(select(vec3<bool>(true, true, var_1.b.x), var_1.b.wzw, var_1.b.x)), true, true, all(vec3<bool>(!var_1.b.x, var_1.b.x & false, u_input.a.x > 34283i))));
    let var_4 = -50466i;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-132f * _wgslsmith_f_op_f32(var_3.a - var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a)) * _wgslsmith_f_op_f32(sign(409f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, -733f) + var_1.a), var_1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(350f * var_1.a) + _wgslsmith_f_op_f32(floor(var_1.a))), -412f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1205f, -406f, 101f, 839f) - _wgslsmith_f_op_vec4_f32(func_1())), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(768f, -1697f, -286f, 1061f), vec4<f32>(942f, 1052f, -1175f, -541f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -896f, 1000f, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -852f, var_0.x, var_0.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 332f), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(func_1()).x, var_0.x, _wgslsmith_div_f32(-958f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-324f, var_0.x))))));
    let var_1 = 1u;
    let var_2 = func_2(u_input.a.x);
    let var_3 = func_2(u_input.a.x);
    let var_4 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(85494u, _wgslsmith_div_u32(var_3.a.x, var_2.a.x), var_3.a.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1, var_3.a.x, var_1), select(vec3<u32>(4294967295u, var_2.a.x, 0u), vec3<u32>(var_3.a.x, 13474u, 4294967295u), false))), ~(_wgslsmith_sub_u32(var_1, var_2.a.x) & 1u)));
    var var_5 = vec4<bool>(true, all(vec2<bool>(!any(vec3<bool>(true, true, true)), all(vec4<bool>(true, true, false, false)))), true, (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))) == _wgslsmith_div_f32(1564f, _wgslsmith_f_op_f32(-var_0.x))) != (true || !any(vec4<bool>(true, true, false, false))));
    var_5 = !(!(!select(select(vec4<bool>(var_5.x, true, var_5.x, false), vec4<bool>(var_5.x, false, false, true), vec4<bool>(var_5.x, true, true, false)), !vec4<bool>(var_5.x, true, var_5.x, false), !vec4<bool>(var_5.x, false, var_5.x, var_5.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 193f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, -1805f, var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), var_0.x, _wgslsmith_f_op_f32(min(var_0.x, -1735f)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-705f, var_0.x, var_0.x, -942f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(228f, 1109f), vec2<f32>(var_0.x, var_0.x)), vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-var_0.xz)), var_0.x, _wgslsmith_clamp_vec4_i32(select(-vec4<i32>(-9848i, u_input.a.x, 39690i, -25003i) << (~vec4<u32>(var_3.a.x, 4294967295u, var_1, 4294967295u) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-14625i, u_input.a.x, 32632i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 29716i, 2147483647i))), select(!vec4<bool>(true, var_5.x, false, var_5.x), !vec4<bool>(var_5.x, var_5.x, var_5.x, true), select(vec4<bool>(false, var_5.x, var_5.x, var_5.x), vec4<bool>(true, var_5.x, var_5.x, false), vec4<bool>(false, true, true, false)))), select(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), min(vec4<i32>(u_input.a.x, u_input.a.x, 16381i, 0i), vec4<i32>(97205i, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(-186i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, -2147483647i, -26622i, u_input.a.x)), select(!vec4<bool>(var_5.x, true, var_5.x, true), select(vec4<bool>(var_5.x, var_5.x, true, var_5.x), vec4<bool>(true, var_5.x, false, false), var_5.x), select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_5.x, var_5.x, var_5.x), vec4<bool>(var_5.x, false, false, true)))), select(vec4<i32>(abs(u_input.a.x), u_input.a.x, u_input.a.x << (58185u % 32u), firstLeadingBit(u_input.a.x)), min(-vec4<i32>(u_input.a.x, u_input.a.x, 33150i, u_input.a.x), vec4<i32>(-1i, 3934i, u_input.a.x, -13438i)), !(var_5.x || var_5.x))));
}

