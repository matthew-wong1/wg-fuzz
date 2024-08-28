struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec2<bool>(true, false), 425f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = Struct_1(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(!vec3<bool>(true, all(vec2<bool>(false, false)), true), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !any(vec2<bool>(false, true)), select(any(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, true, true, true)), true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true))));
    var var_1 = Struct_3(select(vec2<bool>(var_0.b.x, all(vec4<bool>(var_0.b.x, false, var_0.a, true))), var_0.b.yz, var_0.b.x), _wgslsmith_div_f32(1606f, 944f));
    global0 = array<Struct_3, 1>();
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.b, 557f)))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_2(527f);
    global0 = array<Struct_3, 1>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(arg_1.a))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1707f, -1872f)))))));
    let var_2 = Struct_1(true && !all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false)), vec3<bool>(-_wgslsmith_add_i32(u_input.b, u_input.b) < _wgslsmith_sub_i32(42793i, -u_input.b), !any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), true));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) + -1000f));
    return var_1.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_1(false, !vec3<bool>(-1425f >= _wgslsmith_f_op_f32(func_2(vec3<u32>(arg_0.x, arg_0.x, u_input.a), Struct_2(-1402f))), !all(vec2<bool>(true, false)), any(vec2<bool>(false, true)) & false));
    let var_1 = vec4<u32>(arg_0.x, arg_0.x, reverseBits(~_wgslsmith_mod_u32(abs(1u), _wgslsmith_add_u32(arg_0.x, arg_0.x))), _wgslsmith_mod_u32(1u, ~u_input.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(900f, 965f), vec2<f32>(683f, -3059f), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1363f, -170f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1643f, -445f) - vec2<f32>(-234f, -762f))))))));
    let var_3 = Struct_2(-2106f);
    var var_4 = vec4<i32>(u_input.b, firstTrailingBit(1i), i32(-1i) * -14506i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-2147483647i, i32(-1i) * -4237i, u_input.b, ~arg_1)), vec4<i32>(u_input.b, -(arg_1 & -12994i), max(53149i, arg_1), ~reverseBits(arg_1))));
    return Struct_2(-981f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(u_input.b) | select(11811i, _wgslsmith_add_i32(~_wgslsmith_sub_i32(-7070i, 50518i), u_input.b), true);
    global0 = array<Struct_3, 1>();
    var var_1 = func_1(~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.c, 4294967295u, u_input.a)), vec3<u32>(_wgslsmith_div_u32(60357u, 45733u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 17518u), vec3<u32>(8941u, 4294967295u, 11349u)), u_input.c), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 17824u, 13633u), vec3<u32>(u_input.c, 87458u, u_input.a) << (vec3<u32>(u_input.c, 40165u, u_input.c) % vec3<u32>(32u)))), _wgslsmith_sub_i32(var_0 >> (u_input.c % 32u), 1i));
    global0 = array<Struct_3, 1>();
    var var_2 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -u_input.b, _wgslsmith_mod_i32(u_input.b << (u_input.a % 32u), _wgslsmith_add_i32(0i, 1i))), vec3<i32>(~u_input.b, u_input.b, ~u_input.b) & vec3<i32>(~u_input.b, 9604i, -1i)), 1i, ~(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -3467i, var_0, u_input.b), vec4<i32>(2147483647i, -2147483647i, u_input.b, u_input.b)))), countOneBits(2147483647i));
    var var_3 = func_1(~firstLeadingBit(vec3<u32>(~u_input.c, 1u, 1u)), 25717i);
    var_2 = vec4<i32>(var_0 ^ _wgslsmith_mult_i32(var_2.x, _wgslsmith_mult_i32(0i, ~var_0)), u_input.b, -_wgslsmith_div_i32(~_wgslsmith_div_i32(var_0, var_2.x), 1i), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-u_input.b, 1i)), vec2<i32>(~(u_input.b | 2147483647i), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~max(vec4<u32>(u_input.c, 0u, u_input.c, 1u), vec4<u32>(1u, 69203u, 99679u, 85345u)), ~vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.c)) & min(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(29173u, u_input.a, 4294967295u, 0u), vec4<u32>(20805u, 35083u, u_input.a, 4510u))), ~(vec4<u32>(1u, u_input.c, 0u, 10394u) | vec4<u32>(4294967295u, 14188u, u_input.a, u_input.c))));
}

