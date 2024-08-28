struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = firstTrailingBit(~reverseBits(_wgslsmith_sub_vec2_u32(u_input.a << (vec2<u32>(4294967295u, arg_0.x) % vec2<u32>(32u)), ~vec2<u32>(0u, u_input.a.x))));
    let var_1 = select(~(~u_input.a.x), ~(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_0.x, 0u, arg_0.x), var_0.x) | _wgslsmith_mult_u32(arg_2, 0u)), all(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)))));
    var_0 = ~(max(_wgslsmith_add_vec2_u32(abs(vec2<u32>(93043u, arg_2)), arg_0.yx), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, var_1, 36578u), vec4<u32>(0u, u_input.d.x, 0u, var_1)), 62231u)) & ~(arg_0.zx & vec2<u32>(arg_0.x, arg_0.x)));
    var var_2 = Struct_2(any(vec4<bool>(true, false, 0u < u_input.d.x, all(vec3<bool>(true, true, false)))) & true, _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(30959u, 26522u), u_input.a.x), u_input.a), ~var_0.x, arg_1.x);
    let var_3 = arg_3;
    return _wgslsmith_div_u32(~(_wgslsmith_clamp_u32(arg_0.x, 4294967295u, ~u_input.b) ^ var_1), abs(_wgslsmith_mult_u32(firstTrailingBit(113916u), ~var_0.x) << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_2, 54423u, 1u, var_0.x), vec4<u32>(4294967295u, arg_0.x, 33825u, 1u), vec4<bool>(false, false, false, true)), abs(vec4<u32>(0u, 56492u, var_0.x, var_2.c))) % 32u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32) -> bool {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(~4294967295u, u_input.d.x, u_input.b << (u_input.a.x % 32u), 27904u), ~_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1, u_input.b, u_input.d.x, 0u), select(vec4<u32>(arg_1, 35579u, 21271u, 28850u), vec4<u32>(16196u, 20983u, u_input.a.x, 0u), true)), ~(~vec4<u32>(1u, u_input.a.x, 15166u, 55825u)) ^ ~vec4<u32>(arg_1, arg_1, u_input.a.x, arg_1));
    var var_1 = 2147483647i;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) - _wgslsmith_f_op_f32(sign(1711f)));
    let var_3 = Struct_2(true, vec2<u32>((func_3(vec3<u32>(6985u, u_input.d.x, 4294967295u), vec3<f32>(arg_0.x, var_2, -1186f), 1u, Struct_1(619f)) ^ 1u) | ~25564u, _wgslsmith_clamp_u32(91502u, 12321u, _wgslsmith_sub_u32(abs(var_0.x), max(56232u, u_input.d.x)))), _wgslsmith_mod_u32(~29658u, _wgslsmith_mod_u32(u_input.d.x, ~(0u ^ var_0.x))), 737f);
    let var_4 = ~max(~abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.b.x, 1u, arg_1), vec3<u32>(22366u, u_input.a.x, u_input.a.x))), min(var_0.yxw, _wgslsmith_div_vec3_u32(var_0.zxz, vec3<u32>(1427u, arg_1, 25379u) | vec3<u32>(var_3.b.x, 0u, 1u))));
    return true;
}

fn func_2() -> bool {
    let var_0 = !vec2<bool>(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1329f, 732f, -476f, 1385f)) + vec4<f32>(-926f, -686f, -685f, -992f)), func_3(~vec3<u32>(u_input.b, 99909u, 65008u), vec3<f32>(1122f, 1027f, 371f), 1u, Struct_1(1818f))), true);
    return true;
}

fn func_1() -> f32 {
    let var_0 = vec3<bool>(!func_2() & !(!func_2()), !select(false, 0i <= (0i >> (u_input.d.x % 32u)), true), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-231f, -1143f, -740f, 1000f), vec4<f32>(1000f, -1165f, 371f, -271f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1964f, -676f, -153f, 386f) + vec4<f32>(867f, 863f, -1000f, 1585f))) - vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1756f)) * _wgslsmith_f_op_f32(-475f * 205f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-695f + 135f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(806f)), -533f)))));
    let var_2 = Struct_2(!(!(!var_0.x)) && true, ~select(select(u_input.a, u_input.a, var_0.xz), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 0u), u_input.d), var_0.xx) << (vec2<u32>(~u_input.b, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x | u_input.b, u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.a.x, 30u, u_input.b), vec4<u32>(0u, u_input.b, u_input.b, u_input.a.x)), _wgslsmith_clamp_u32(~4294967295u, 1u, ~0u)), ~vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(38175u, 4294967295u), firstLeadingBit(22290u), _wgslsmith_div_u32(u_input.b, u_input.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)))));
    let var_3 = func_3(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4421u, 89993u), var_2.b.x, ~u_input.b), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d.x, 1u, u_input.d.x), countOneBits(vec3<u32>(14562u, 5058u, var_2.c)))), vec3<u32>(var_2.c, ~firstLeadingBit(u_input.d.x), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(3544u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, 4294967295u))))), _wgslsmith_f_op_vec3_f32(select(var_1.yzy, _wgslsmith_f_op_vec3_f32(min(var_1.wwy, var_1.wzw)), var_0)), var_2.c, Struct_1(var_2.d));
    var var_4 = ~34389u;
    return _wgslsmith_f_op_f32(-1000f * -944f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true != (u_input.b >= ~(~u_input.b));
    let var_1 = Struct_2(any(vec4<bool>(true, true, true, true)), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(33152u, 4294967295u, 0u), vec3<u32>(u_input.a.x, u_input.d.x, u_input.b)), u_input.a.x, u_input.b, firstLeadingBit(1u)), ~(~(~vec4<u32>(u_input.d.x, 99430u, 856u, u_input.b)))), -863f);
    var var_2 = var_1;
    var_2 = var_1;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1()))) - _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(var_2.d * _wgslsmith_div_f32(var_2.d, var_2.d)))));
    let var_4 = vec4<u32>(33375u, 55457u, (0u | u_input.a.x) & u_input.d.x, ~(~60400u));
    var_2 = Struct_2(!(!(!var_2.a) & !var_2.a), reverseBits(vec2<u32>(var_1.c, abs(_wgslsmith_dot_vec2_u32(var_4.wx, vec2<u32>(24859u, 4237u))))), var_2.c >> (~_wgslsmith_div_u32(~79289u, ~17664u) % 32u), var_1.d);
    var_0 = true;
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(vec4<i32>(-9512i, 15775i, u_input.c.x, 12801i) >> (var_4 % vec4<u32>(32u)))), vec4<f32>(var_1.d, var_2.d, _wgslsmith_f_op_f32(f32(-1f) * -552f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), 1f))));
}

