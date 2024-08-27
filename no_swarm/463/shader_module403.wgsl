struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    let var_0 = ~_wgslsmith_sub_vec3_u32(select(vec3<u32>(~9630u, firstLeadingBit(4294967295u), 4294967295u), vec3<u32>(4294967295u, countOneBits(4294967295u), ~4294967295u), !(!vec3<bool>(true, arg_0.x, arg_0.x))), abs(vec3<u32>(90106u, ~4294967295u, 9421u)));
    var var_1 = true;
    var_1 = !(!(arg_0.x && (arg_0.x & false)) & true);
    var_1 = !all(!(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))));
    var var_2 = arg_0.x | (_wgslsmith_f_op_f32(284f * 144f) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -305f))));
    return var_0;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_2(vec3<u32>(arg_0.b.x, arg_0.b.x | _wgslsmith_mod_u32(arg_0.b.x, arg_0.b.x), _wgslsmith_mod_u32(arg_0.b.x, max(select(0u, 1u, false), firstLeadingBit(1u)))), firstLeadingBit(u_input.a), true, arg_0.b, vec2<bool>(true, true));
    var_0 = Struct_2(_wgslsmith_add_vec3_u32(var_0.a, _wgslsmith_add_vec3_u32(max(func_3(var_0.e), vec3<u32>(4294967295u, 4294967295u, 1u)), firstTrailingBit(abs(vec3<u32>(var_0.d.x, var_0.d.x, 40601u))))), -arg_1, ((arg_0.b.x | 1u) <= 544u) | true, arg_0.b, select(vec2<bool>(var_0.e.x, all(vec4<bool>(var_0.e.x, var_0.c, var_0.c, var_0.e.x))), select(select(!vec2<bool>(var_0.e.x, var_0.e.x), select(var_0.e, vec2<bool>(var_0.e.x, false), var_0.e.x), any(vec4<bool>(var_0.c, var_0.e.x, var_0.e.x, true))), select(vec2<bool>(false, true), select(var_0.e, var_0.e, var_0.e), 0u != var_0.d.x), true), arg_0.c < -1327f));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c + arg_0.c))))), -1398f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(200f, -893f)) + _wgslsmith_f_op_f32(-arg_0.c))) * _wgslsmith_f_op_f32(floor(arg_0.c))));
    var_0 = Struct_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(87427u, var_0.a.x, arg_0.b.x, 1545u) >> (vec4<u32>(arg_0.b.x, 0u, arg_0.b.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(arg_0.b.x, 4294967295u, 4294967295u, 0u)) >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.d.x, 4294967295u), _wgslsmith_div_u32(arg_0.b.x, var_0.a.x)) % 32u), 96981u ^ ~_wgslsmith_div_u32(arg_0.b.x, var_0.d.x), ~(_wgslsmith_add_u32(var_0.d.x, arg_0.b.x) | firstLeadingBit(arg_0.b.x))), u_input.b.x, var_0.e.x, ~(arg_0.b << (vec2<u32>(arg_0.b.x, _wgslsmith_mod_u32(15921u, var_0.d.x)) % vec2<u32>(32u))), select(vec2<bool>(true, !any(vec4<bool>(true, false, false, true))), !vec2<bool>(var_0.e.x, var_0.e.x), !var_0.e.x || var_0.c));
    var_0 = Struct_2(func_3(vec2<bool>(var_0.c, false)), -25324i, false, reverseBits(max(min(arg_0.b, arg_0.b), vec2<u32>(4294967295u, 1u)) << (~(~vec2<u32>(79778u, arg_0.b.x)) % vec2<u32>(32u))), vec2<bool>((var_0.b & arg_1) == _wgslsmith_mod_i32(~arg_0.a, ~var_0.b), true));
    return Struct_1(var_0.b, vec2<u32>(~_wgslsmith_mod_u32(abs(21644u), var_0.a.x << (var_0.a.x % 32u)), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.b.x, arg_0.b.x, var_0.d.x)), var_0.a >> (var_0.a % vec3<u32>(32u)))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(733f * 549f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), arg_1);
}

fn func_1() -> u32 {
    var var_0 = func_2(Struct_1(-18010i, vec2<u32>(1u, ~(~4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-222f))))), 4007i), _wgslsmith_mult_i32(~(u_input.a & _wgslsmith_div_i32(2147483647i, u_input.a)), ~(~_wgslsmith_sub_i32(u_input.b.x, -33359i))));
    var_0 = Struct_1(~_wgslsmith_div_i32(select(~1i, _wgslsmith_clamp_i32(var_0.a, var_0.a, 13548i), true), ~firstLeadingBit(0i)), var_0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1051f, var_0.c, true)) * _wgslsmith_f_op_f32(var_0.c - var_0.c))))), 2147483647i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.c, -172f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 821f)) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), 323f))));
    let var_2 = select(select(vec3<bool>(!any(vec4<bool>(false, false, false, true)), (u_input.c <= u_input.b.x) || true, true || any(vec2<bool>(false, false))), vec3<bool>(true, true, true), all(vec2<bool>(true, true)) & !all(vec4<bool>(false, true, false, true))), vec3<bool>(true, !(true && any(vec4<bool>(true, true, false, false))), !all(vec4<bool>(false, false, false, true)) && true), true);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, _wgslsmith_div_f32(var_0.c, var_1.x))));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~firstLeadingBit(21000i));
    var var_1 = min(~_wgslsmith_mod_u32(1u, 4294967295u) << (func_1() % 32u), min(func_2(func_2(Struct_1(20061i, vec2<u32>(1u, 12402u), -121f, 0i), u_input.b.x), 69631i).b.x, _wgslsmith_clamp_u32(1u, 1u, _wgslsmith_div_u32(27665u, 14658u)))) & (~max(11760u, ~47854u) & select(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 68124u), 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 17331u, 1u), vec4<u32>(0u, 1u, 21544u, 40376u)), true));
    var_1 = 27119u;
    let var_2 = Struct_2(~vec3<u32>(~select(43651u, 0u, true), ~reverseBits(30619u), abs(0u) << (~4294967295u % 32u)), -reverseBits(u_input.c), true, ~(~(~vec2<u32>(1u, 1u))), !select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, true)));
    var_1 = 0u;
    var_1 = ~(4294967295u >> ((_wgslsmith_mod_u32(47832u, var_2.d.x) | _wgslsmith_add_u32(var_2.a.x, 1u)) % 32u)) << (_wgslsmith_dot_vec2_u32(var_2.d, ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.a.x, 65062u), vec2<u32>(var_2.a.x, 1u) | var_2.d)) % 32u);
    var var_3 = vec4<bool>(reverseBits(var_2.a.x) > _wgslsmith_dot_vec2_u32(vec2<u32>(~var_2.a.x, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 2733u) << (vec2<u32>(var_2.a.x, 88846u) % vec2<u32>(32u)), ~var_2.d)), !any(vec4<bool>(true, true, !var_2.c, var_2.c)), true, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(2001f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(546f)), _wgslsmith_f_op_f32(trunc(-242f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-871f)), _wgslsmith_f_op_f32(f32(-1f) * -3206f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1264f - -1076f) * _wgslsmith_f_op_f32(f32(-1f) * -1535f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-142f + _wgslsmith_f_op_f32(abs(-1379f)))), _wgslsmith_f_op_f32(abs(-610f))));
}

