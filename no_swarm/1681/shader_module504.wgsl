struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = true;
    var var_1 = true;
    var var_2 = 49897u;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(142f + 170f), -497f))));
    var_1 = !(!any(select(vec3<bool>(true, true, true), !vec3<bool>(arg_0, true, false), !arg_0)));
    return true;
}

fn func_3(arg_0: f32, arg_1: f32) -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_clamp_u32(u_input.a.x, ~4294967295u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) >> (36291u % 32u), 1u)), -160f, ~u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1294f) - vec2<f32>(-369f, var_0.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, var_0.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(846f, -1345f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) * vec2<f32>(arg_1, var_0.b))) + vec2<f32>(arg_1, 757f)))));
    var var_2 = min(firstLeadingBit(-vec4<i32>(var_0.c, u_input.b.x, 8002i, -31101i)) << (_wgslsmith_clamp_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), ~u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, countOneBits(max(10931i, -2147483647i)), -72627i, var_0.c << (u_input.a.x % 32u))) & vec4<i32>(_wgslsmith_mult_i32(-max(u_input.b.x, -80420i), 0i), ~(u_input.b.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(u_input.a.x, 0u)) % 32u)), u_input.b.x, ~(~(~(-35510i))));
    let var_3 = var_0;
    let var_4 = (var_0.a | u_input.a.x) ^ (1u >> (~abs(~var_3.a) % 32u));
    return vec3<u32>(52966u, _wgslsmith_mod_u32(1u, var_3.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, var_3.a, ~32902u), countOneBits(vec4<u32>(var_0.a, 4294967295u, var_4, var_4))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(524f)), -1094f)), 966f))), Struct_2(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(234f)))), (~u_input.b.x << (4294967295u % 32u)) >> (~(~arg_1.x) % 32u)), Struct_2(arg_1.x, -557f, abs(-(u_input.b.x | u_input.b.x))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-373f * var_0.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), 1433f))))), var_0.c, var_0.c);
    var var_1 = min(~select(min(arg_1.xww, func_3(var_0.b.b, var_0.a)), vec3<u32>(114495u, reverseBits(arg_2), ~u_input.a.x), vec3<bool>(true, !arg_0, u_input.b.x > u_input.b.x)), u_input.a.yzz);
    let var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1066f * var_0.c.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-332f * _wgslsmith_f_op_f32(-var_0.c.b)), _wgslsmith_f_op_f32(round(1801f))))), var_0.c, Struct_2(1u, -801f, 52957i));
    var var_3 = firstLeadingBit(abs(~(-var_0.c.c))) << (reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x << (var_2.c.a % 32u), 5046u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), vec3<u32>(arg_2, arg_2, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)))) % 32u);
    return Struct_2(_wgslsmith_div_u32(7192u, _wgslsmith_mod_u32(min(28774u, var_1.x) << (4294967295u % 32u), ~var_0.c.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1981f))), select(firstLeadingBit(_wgslsmith_div_i32(0i, reverseBits(var_0.b.c))), var_2.b.c, true));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = arg_2;
    let var_1 = u_input.a;
    var var_2 = Struct_1(arg_1.a);
    var var_3 = arg_1.a >> (_wgslsmith_mod_u32(var_2.a, func_2(!all(vec2<bool>(false, true)), ~vec4<u32>(1u, arg_0.a, u_input.a.x, var_1.x) << (~vec4<u32>(var_2.a, arg_1.a, var_2.a, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_mod_u32(var_2.a, 12700u), 621f == _wgslsmith_f_op_f32(-var_0.x)).a) % 32u);
    var var_4 = true || (arg_1.c <= (arg_0.c ^ _wgslsmith_mult_i32(arg_0.c, -arg_0.c)));
    return vec3<bool>(!any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), all(vec4<bool>(true, true, false, false)))), !(!(-459f < _wgslsmith_f_op_f32(-var_0.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec4<bool>(any(vec4<bool>(true, true, true, true)), true && (u_input.b.x <= u_input.b.x), false, true));
    var_0 = any(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))) | true;
    var var_1 = select(vec3<bool>(any(vec3<bool>(true, true, false)), true && all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), true || func_1(any(vec2<bool>(true, true)))), func_4(func_2(func_1(true), firstTrailingBit(~vec4<u32>(1u, u_input.a.x, 17041u, 60175u)), ~(~u_input.a.x), u_input.a.x <= u_input.a.x), func_2(false, u_input.a, select(~43793u, _wgslsmith_mult_u32(u_input.a.x, 42161u), false), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + vec4<f32>(-937f, _wgslsmith_f_op_f32(-669f * -1678f), _wgslsmith_f_op_f32(trunc(633f)), -1229f))), vec3<bool>(1u < _wgslsmith_dot_vec4_u32(~u_input.a, u_input.a & u_input.a), all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), !(abs(u_input.a.x) == _wgslsmith_mod_u32(64510u, u_input.a.x))));
    var_1 = !(!vec3<bool>(false, true, !any(vec4<bool>(var_1.x, true, true, var_1.x))));
    var_0 = func_1(var_1.x);
    let var_2 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer((~firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)) ^ ~(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))) & select(max(u_input.a.zxy, vec3<u32>(u_input.a.x, u_input.a.x, 1u)) & _wgslsmith_sub_vec3_u32(u_input.a.zzx, vec3<u32>(0u, 123832u, 1u)), func_3(-304f, var_2) ^ ~u_input.a.wyz, !var_1.x & func_1(var_1.x)), ~_wgslsmith_dot_vec2_u32(abs(~u_input.a.zy), ~reverseBits(vec2<u32>(u_input.a.x, 4294967295u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(~u_input.a.x, reverseBits(u_input.a.x), u_input.a.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(6502u, u_input.a.x, 53353u), u_input.a.wyy), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~u_input.a.xyx), u_input.a.zyz)), ~vec4<u32>(0u, min(29486u, 1u), 28807u, abs(~u_input.a.x)), ~4294967295u);
}

