struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = array<vec4<u32>, 7>();
    var var_0 = -1000f;
    var_0 = 1f;
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1119f) * -160f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-481f))))));
    global0 = array<vec4<u32>, 7>();
    return -470f;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = arg_0;
    var var_1 = ~(~_wgslsmith_mult_vec3_u32(~(vec3<u32>(arg_1.a, 91095u, u_input.b.x) | vec3<u32>(u_input.b.x, 0u, arg_1.a)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.e, 1u, u_input.e) | vec3<u32>(arg_1.c, 5504u, arg_1.e), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 42657u, u_input.e), vec3<u32>(47245u, 36869u, u_input.b.x)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2309f * 1302f) * _wgslsmith_f_op_f32(select(-1571f, 285f, false))), _wgslsmith_f_op_f32(-281f - -483f) != _wgslsmith_f_op_f32(func_3(Struct_1(var_1.x, vec2<i32>(30021i, 5268i), 6882u, arg_1.d, 4294967295u), 19662u))))));
    let var_3 = _wgslsmith_add_u32(firstTrailingBit(select(_wgslsmith_div_u32(arg_1.e, var_1.x), min(1u, var_1.x), var_0)) << (_wgslsmith_sub_u32(firstTrailingBit(u_input.e), abs(arg_1.c | 4294967295u)) % 32u), 1u);
    global0 = array<vec4<u32>, 7>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1696f);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: i32, arg_3: vec4<i32>) -> vec3<i32> {
    global0 = array<vec4<u32>, 7>();
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, -838f, arg_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, 147f, 1083f)))))) - vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(func_2(false, Struct_1(4294967295u, vec2<i32>(2147483647i, arg_2), u_input.e, arg_3.yzx, 5929u))), false | arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -1014f) - 1737f)))));
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    return _wgslsmith_add_vec3_i32(~vec3<i32>(arg_2, -8323i, -1i), vec3<i32>(u_input.c.x, 46085i, u_input.d.x));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = select(select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(true, false, false)), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(select(false, false, true), false, true)), vec3<bool>((107950u <= arg_1.c) | all(vec3<bool>(true, true, false)), false, any(vec2<bool>(false, true))), true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, 1450f >= arg_2, false), true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), !(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, false))));
    let var_1 = Struct_1(0u, arg_1.b, ~_wgslsmith_mult_u32(1u, u_input.e >> ((arg_1.c >> (u_input.b.x % 32u)) % 32u)), ~arg_1.d ^ vec3<i32>(~_wgslsmith_div_i32(arg_1.d.x, 48973i), -(~u_input.c.x), arg_1.d.x), ~(~_wgslsmith_sub_u32(arg_1.c, 1u)));
    var var_2 = select(~vec2<i32>(-1i, firstTrailingBit(-3029i)), min(~vec2<i32>(arg_1.b.x, var_1.d.x), ~vec2<i32>(-2147483647i, u_input.d.x)), var_0.x) << (u_input.b % vec2<u32>(32u));
    let var_3 = -arg_1.b.x;
    global0 = array<vec4<u32>, 7>();
    return Struct_1(_wgslsmith_dot_vec3_u32(max(firstTrailingBit(vec3<u32>(18400u, arg_1.a, arg_1.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.c, 0u, var_1.e), vec3<u32>(4070u, u_input.b.x, 22430u))) << (vec3<u32>(var_1.c, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(2376u, 62090u, 97664u), vec3<u32>(var_1.a, arg_1.e, arg_1.e))) % vec3<u32>(32u)), ~(vec3<u32>(var_1.c, 30529u, u_input.b.x) & abs(vec3<u32>(29042u, var_1.a, u_input.e)))), var_1.d.xx, ~var_1.e, func_1(arg_0, !vec2<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), 601f <= arg_3), arg_1.d.x, vec4<i32>(0i, -2147483647i, var_3, 2147483647i)), _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(20078u, 7u)], ~(vec4<u32>(arg_1.e, var_1.c, var_1.a, 1u) >> (vec4<u32>(1u, var_1.c, 0u, arg_1.c) % vec4<u32>(32u)))) << (reverseBits(~0u | ~arg_1.a) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = -514f;
    var var_2 = func_4(-955f, Struct_1(~4294967295u, vec2<i32>(~max(3581i, u_input.c.x), 7072i), 4294967295u >> (max(32902u, _wgslsmith_dot_vec3_u32(vec3<u32>(20962u, u_input.b.x, u_input.e), vec3<u32>(1u, var_0, u_input.b.x))) % 32u), _wgslsmith_div_vec3_i32(-(vec3<i32>(2147483647i, -2147483647i, u_input.c.x) & vec3<i32>(u_input.c.x, u_input.c.x, u_input.a)), ~func_1(var_1, vec2<bool>(false, true), -57524i, u_input.d)), 1u), _wgslsmith_f_op_f32(894f - var_1), var_1);
    global0 = array<vec4<u32>, 7>();
    var var_3 = ~(~abs(2203u));
    global0 = array<vec4<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1921f)) + var_1)), 38496u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1363f, var_1)) - vec3<f32>(443f, 445f, var_1))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(182f, var_1, -1948f), vec3<f32>(225f, 503f, 1672f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, 810f) + vec3<f32>(var_1, var_1, -270f)))))));
}

