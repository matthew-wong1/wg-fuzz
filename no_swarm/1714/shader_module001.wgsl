struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_4(Struct_1(u_input.a, arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-397f))), arg_0, true))));
    var var_1 = Struct_4(Struct_1(1i << (~(~1u) % 32u), var_0.a.c, var_0.a.b));
    let var_2 = var_1.a.a << (u_input.b % 32u);
    var_1 = Struct_4(Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(-50334i, var_0.a.a, -18336i, -6276i), _wgslsmith_div_vec4_i32(vec4<i32>(-41928i, -5041i, var_0.a.a, 5465i), vec4<i32>(var_2, var_2, 1i, 2147483647i))) ^ reverseBits(abs(-3934i)), -814f, 2274f));
    var var_3 = ~(-6931i);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(-2653f - arg_0)), _wgslsmith_f_op_f32(floor(var_1.a.b)), !(553f == var_0.a.c))) + _wgslsmith_div_f32(arg_0, -381f))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-_wgslsmith_sub_i32(reverseBits(_wgslsmith_mult_i32(u_input.a, u_input.a)), _wgslsmith_clamp_i32(~2147483647i, ~u_input.a, 28238i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(609f, -112f) + _wgslsmith_f_op_f32(593f * 2145f)), 1f) + 582f), _wgslsmith_f_op_f32(200f - 174f));
    var var_1 = Struct_2(!(u_input.b > ~(~u_input.b)), Struct_1(-var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(181f * 230f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))));
    var var_2 = u_input.b;
    let var_3 = select(var_1.a | true, var_1.a, false);
    var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, _wgslsmith_add_u32(u_input.b, 105280u), u_input.b), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, u_input.b, 1u)), abs(vec3<u32>(u_input.b, u_input.b, 4354u)))) >> (_wgslsmith_mod_u32(u_input.b, max(_wgslsmith_clamp_u32(1u, 46306u, u_input.b), select(u_input.b, u_input.b, var_1.a))) % 32u), u_input.b << (firstLeadingBit(u_input.b) % 32u));
    return Struct_1(var_0.a, _wgslsmith_f_op_f32(-var_1.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(120f))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(u_input.b, ~127760u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(455f, arg_0.c) - vec2<f32>(arg_0.c, arg_0.c))))));
    let var_2 = func_2();
    var var_3 = vec4<u32>(var_0, 0u, ~(firstTrailingBit(54236u) | u_input.b), _wgslsmith_div_u32(~0u, 1u)) & vec4<u32>(var_0, select(u_input.b, var_0, true), ~_wgslsmith_add_u32(var_0, 0u) & _wgslsmith_add_u32(687u, _wgslsmith_clamp_u32(1130u, var_0, 0u)), u_input.b | 4294967295u);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.b))));
    return arg_0;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = Struct_4(func_4(func_2()));
    var var_1 = var_0;
    let var_2 = !(!select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, true), false));
    var var_3 = 1000f;
    let var_4 = select(select(vec2<bool>(~var_1.a.a >= (var_0.a.a | u_input.a), false), vec2<bool>(var_2.x, !var_2.x == true), !vec2<bool>(select(var_2.x, var_2.x, var_2.x), any(vec4<bool>(false, true, var_2.x, true)))), select(!(!var_2), !select(select(var_2, vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, true)), var_2, var_2), var_2), !any(vec3<bool>(!var_2.x, true, true)));
    return -686f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1355f, -689f, 508f, -220f) + vec4<f32>(397f, 1f, -187f, -672f))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-257f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b, 24139u))))), _wgslsmith_f_op_f32(round(func_2().c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1200f + 1428f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(993f, 235f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-711f)) - -3757f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1036f)), _wgslsmith_f_op_f32(f32(-1f) * -688f)))));
    let var_1 = func_4(Struct_1(_wgslsmith_sub_i32(0i, countOneBits(-43225i)), -2085f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -499f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -1406f, -625f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 107f, -1141f, -1366f) - vec4<f32>(var_1.c, var_1.c, 337f, var_0.x)))))));
    let var_2 = vec2<u32>(u_input.b, ~36939u);
    let var_3 = -(~1i);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.b, 739f), _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b, 38572u))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_1.c)))) * -867f);
    let var_5 = func_4(Struct_1(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(262f * 265f) + var_0.x) + -2361f), _wgslsmith_f_op_f32(-120f + 1515f))).b;
    var var_6 = func_4(var_1);
    let var_7 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(-309f))))), _wgslsmith_f_op_f32(abs(var_6.c))) * vec2<f32>(var_5, _wgslsmith_f_op_f32(-var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(487f - _wgslsmith_f_op_f32(688f + var_5))))), 4294967295u, 18039i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-331f + _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(28995u, 4294967295u))))) * var_5));
}

