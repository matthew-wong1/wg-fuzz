struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_2(u_input.a, vec3<i32>(-(i32(-1i) * -1i), -18521i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.a.x, u_input.a.x), u_input.a, vec4<i32>(u_input.c, -30570i, u_input.a.x, u_input.a.x)) & vec4<i32>(28960i, -14393i, 2147483647i, -1i), ~u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u), vec4<u32>(4294967295u, u_input.b.x, 18318u, 4294967295u))), u_input.d), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * 762f)))))));
    let var_1 = _wgslsmith_div_i32(u_input.a.x, -_wgslsmith_dot_vec4_i32(var_0.a, u_input.a));
    var var_2 = !vec3<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)) == false, !(0u != ~var_0.c.x), !(!select(true, true, false)));
    var var_3 = var_2.x | all(select(select(select(vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x), vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_2.x, true, var_2.x, true)), !vec4<bool>(true, var_2.x, false, true), select(vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(var_2.x, true, var_2.x, var_2.x), vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x)))));
    var var_4 = u_input.c;
    return select(var_0.c, ~u_input.b, var_2.x);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c & u_input.a.x), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(arg_0.a.x, 17u)], vec2<i32>(-2147483647i, u_input.a.x)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -2147483647i), global0[_wgslsmith_index_u32(0u, 17u)])) << (vec2<u32>(countOneBits(arg_0.a.x), 77575u) % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_mult_i32(select(_wgslsmith_dot_vec4_i32(vec4<i32>(-47387i, -1i, -45088i, u_input.a.x), u_input.a), ~(-15585i), true), u_input.a.x)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(firstLeadingBit(2147483647i), abs(-1i ^ u_input.c)), u_input.c));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -430f);
    let var_2 = !(!(!arg_0.b.wyw));
    let var_3 = ~func_3();
    global0 = array<vec2<i32>, 17>();
    return _wgslsmith_f_op_f32(sign(-907f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1))), var_1)) * 1059f);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    var var_0 = -277f;
    var_0 = arg_0.c;
    var var_1 = vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_0.c, _wgslsmith_div_f32(arg_0.c, 569f))))) < _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c, -1210f)) + -237f)), arg_1.x, func_2(Struct_1(arg_0.a, arg_0.b, arg_0.c), arg_1.x) && any(!arg_1.zx), !all(vec3<bool>(arg_1.x, false, arg_1.x)) && any(!vec2<bool>(false, arg_1.x)));
    let var_2 = Struct_2(min(select(vec4<i32>(-32865i | u_input.a.x, min(48219i, u_input.a.x), -1i, u_input.a.x), ~u_input.a | (vec4<i32>(2147483647i, 1i, u_input.a.x, u_input.a.x) << (arg_0.a % vec4<u32>(32u))), !select(vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), vec4<bool>(false, true, false, var_1.x), arg_1)), min(select(vec4<i32>(-2147483647i, 1i, u_input.a.x, 40876i), u_input.a, vec4<bool>(false, true, false, var_1.x)), vec4<i32>(u_input.c, 1i, -2147483647i, u_input.a.x)) & reverseBits(-u_input.a)), u_input.a.yyy, ~reverseBits(vec2<u32>(~4294967295u, _wgslsmith_mod_u32(19481u, 53263u))), arg_0.c);
    var var_3 = var_2.d;
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 17>();
    let var_0 = ~4294967295u;
    let var_1 = vec4<u32>(u_input.b.x, 4294967295u, ~_wgslsmith_mult_u32((60712u >> (u_input.b.x % 32u)) << (_wgslsmith_div_u32(4448u, u_input.b.x) % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, 1u, 44225u), vec3<u32>(44942u, 0u, 23586u))), u_input.b.x & (var_0 | (~var_0 << (1u % 32u))));
    global0 = array<vec2<i32>, 17>();
    var var_2 = true;
    var var_3 = u_input.c;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(var_1, vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(146f * -915f) - _wgslsmith_f_op_f32(min(-114f, 1731f)))), vec4<bool>(true == any(vec4<bool>(false, true, true, false)), false, true, true), 58418u)) * -1273f);
    global0 = array<vec2<i32>, 17>();
    var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(407f, -1788f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2193f + 1055f), -782f, true)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-860f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-286f))))), _wgslsmith_f_op_f32(1f - 147f), _wgslsmith_f_op_f32(func_1(Struct_1(vec4<u32>(var_0, 23326u, 4294967295u, 63038u) & vec4<u32>(1u, u_input.b.x, var_0, 46527u), vec4<bool>(false, true, true, false), _wgslsmith_div_f32(-543f, -722f)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(false, true, false, false), false), u_input.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 969f))), 1f, true))));
}

