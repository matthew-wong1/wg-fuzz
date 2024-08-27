struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> i32 {
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(u_input.a, abs(u_input.d.x)), ~_wgslsmith_mult_u32(u_input.d.x & u_input.d.x, u_input.d.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.a), vec3<u32>(u_input.d.x, u_input.a, u_input.a)), vec3<u32>(u_input.a, 46241u, u_input.d.x) | vec3<u32>(u_input.d.x, u_input.b, u_input.d.x)), ~(~u_input.b), u_input.a) << (vec3<u32>(27221u, 0u, ~(~1u)) % vec3<u32>(32u)));
    var var_0 = 4294967295u;
    return -_wgslsmith_div_i32(9082i, u_input.c.x);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: Struct_4) -> vec3<bool> {
    global0 = array<i32, 21>();
    var var_0 = Struct_5(-435f, -131f, any(select(!(!vec4<bool>(arg_1.a.a.x, false, false, false)), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, arg_0.a.x, true, arg_1.a.a.x), arg_1.a.a.x), ~arg_3.a.b < _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.b, 1u, arg_3.a.b, arg_0.d.a.x), arg_0.d.b))), _wgslsmith_mod_i32(57138i, global0[_wgslsmith_index_u32(~(~(u_input.d.x | 416u)), 21u)]));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.a.c.yz);
    let var_2 = ~(arg_0.d.d & ~arg_1.a.d.d);
    var var_3 = arg_0.d;
    return select(vec3<bool>((var_0.c && (false == var_0.c)) != any(select(vec4<bool>(true, false, arg_1.a.a.x, arg_0.a.x), vec4<bool>(false, true, false, arg_1.a.a.x), vec4<bool>(false, arg_0.a.x, arg_1.a.a.x, false))), true & any(!vec4<bool>(arg_0.a.x, true, true, false)), all(select(!arg_0.a, !arg_0.a, arg_1.a.a.x))), vec3<bool>(any(select(select(arg_3.a.a, arg_0.a, arg_3.a.a), vec3<bool>(true, true, true), !vec3<bool>(arg_1.a.a.x, true, arg_1.a.a.x))), !any(select(vec4<bool>(true, false, arg_1.a.a.x, var_0.c), vec4<bool>(false, true, true, true), vec4<bool>(arg_1.a.a.x, arg_0.a.x, arg_3.a.a.x, arg_1.a.a.x))), !arg_1.a.a.x || (var_2.x >= ~arg_3.a.e)), arg_3.a.a.x);
}

fn func_1(arg_0: i32) -> u32 {
    global1 = u_input.d.x;
    var var_0 = _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(42047i, func_2(), 1i)), select(u_input.c, vec3<i32>(-27960i, -_wgslsmith_sub_i32(-40481i, u_input.e.x), -2147483647i), !select(func_3(Struct_3(vec3<bool>(true, false, false), u_input.b, vec3<f32>(-548f, -1763f, -755f), Struct_1(vec3<u32>(0u, 45079u, u_input.d.x), vec4<u32>(78595u, 1u, u_input.b, u_input.b), vec3<f32>(-239f, -394f, 778f), u_input.e, vec2<f32>(749f, 1154f)), 7957i), Struct_4(Struct_3(vec3<bool>(false, false, true), 1u, vec3<f32>(-576f, 318f, 1112f), Struct_1(vec3<u32>(59601u, 0u, u_input.a), vec4<u32>(0u, u_input.a, u_input.d.x, u_input.a), vec3<f32>(1790f, 658f, 1000f), vec2<i32>(-2147483647i, u_input.c.x), vec2<f32>(1008f, 925f)), 0i)), u_input.d, Struct_4(Struct_3(vec3<bool>(true, true, false), u_input.a, vec3<f32>(1519f, 1987f, -281f), Struct_1(vec3<u32>(4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.d.x), vec3<f32>(1000f, -2610f, 958f), vec2<i32>(1i, -20235i), vec2<f32>(1004f, -617f)), global0[_wgslsmith_index_u32(51489u, 21u)]))), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1346f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1730f)))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(172f))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-481f + 1061f)), _wgslsmith_f_op_f32(1278f - -509f)) - 359f) - _wgslsmith_f_op_f32(select(1196f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1730f, -2742f, true)), _wgslsmith_f_op_f32(-1666f + -876f))), -799f)), false)));
    let var_3 = false;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = min(abs(~max(4294967295u, u_input.d.x)) & ~u_input.d.x, select(_wgslsmith_clamp_u32(0u, 4294967295u, 29642u), ~_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), true) << (u_input.a % 32u));
    global0 = array<i32, 21>();
    var var_0 = select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, func_1(40676i), 4294967295u), vec3<u32>(u_input.a, min(u_input.d.x, ~u_input.b), abs(_wgslsmith_clamp_u32(22628u, 0u, 4294967295u)))), abs(~(~vec3<u32>(u_input.a, 62957u, u_input.d.x))), select(select(vec3<bool>(true, false, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), func_3(Struct_3(vec3<bool>(true, true, false), 11476u, vec3<f32>(1585f, 1312f, -1702f), Struct_1(vec3<u32>(4294967295u, u_input.b, 0u), vec4<u32>(15040u, u_input.a, 1u, u_input.b), vec3<f32>(-626f, -1914f, -140f), vec2<i32>(-19322i, -1762i), vec2<f32>(-1797f, 149f)), global0[_wgslsmith_index_u32(u_input.d.x, 21u)]), Struct_4(Struct_3(vec3<bool>(false, false, false), 47385u, vec3<f32>(-430f, 211f, -2270f), Struct_1(vec3<u32>(8516u, 1u, 0u), vec4<u32>(u_input.a, u_input.d.x, 25681u, 4294967295u), vec3<f32>(-242f, 421f, 1000f), u_input.e, vec2<f32>(161f, 618f)), -2147483647i)), vec2<u32>(31514u, 0u), Struct_4(Struct_3(vec3<bool>(true, true, true), 1u, vec3<f32>(1000f, -1088f, 167f), Struct_1(vec3<u32>(21989u, 1u, u_input.b), vec4<u32>(29645u, u_input.a, u_input.a, 54054u), vec3<f32>(290f, 676f, 527f), u_input.c.yy, vec2<f32>(1000f, -977f)), -1i))), vec3<bool>(true, false, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), 0u == u_input.b), vec3<bool>(-u_input.e.x >= (0i | u_input.c.x), true, _wgslsmith_f_op_f32(floor(1012f)) != _wgslsmith_f_op_f32(step(237f, -2306f)))));
    global1 = u_input.a;
    global1 = var_0.x;
    let var_1 = select(vec3<bool>(true, false, false), vec3<bool>(select(true, true, any(vec3<bool>(true, true, true))), !(50828u >= var_0.x) || !(u_input.e.x > -18108i), true), countOneBits(34075u ^ ~u_input.a) == max(var_0.x, ~(~var_0.x)));
    var_0 = firstLeadingBit(vec3<u32>(28804u, 2497u ^ firstLeadingBit(var_0.x), ~(u_input.b ^ 22320u))) ^ countOneBits(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.a, 67771u) | vec3<u32>(44036u, 72728u, u_input.a), vec3<u32>(1986u, 4294967295u, u_input.d.x)), ~min(vec3<u32>(var_0.x, 0u, var_0.x), vec3<u32>(53130u, u_input.d.x, 91541u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~countOneBits(countOneBits(abs(8602u))));
}

