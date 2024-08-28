struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<u32>) -> u32 {
    var var_0 = countOneBits(_wgslsmith_mod_u32(u_input.e.x, ~(~1u)));
    var var_1 = _wgslsmith_div_f32(295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))));
    var var_2 = arg_1;
    let var_3 = abs(~firstTrailingBit(~(~1u)));
    return _wgslsmith_clamp_u32(33423u, countOneBits(firstTrailingBit(arg_2.x) | arg_0.x), arg_2.x);
}

fn func_2() -> vec2<f32> {
    var var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(12105u, 0u, u_input.b.x, 4294967295u)), ~vec4<u32>(0u, ~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 3089u, 21396u, u_input.a), vec4<u32>(1u, 1u, 107660u, u_input.b.x)), ~u_input.c));
    var_0 = _wgslsmith_div_u32(~u_input.c, 0u);
    var var_1 = 30210u;
    var var_2 = Struct_1(func_3(vec2<u32>(~_wgslsmith_mult_u32(u_input.e.x, u_input.e.x), u_input.b.x), !(!(u_input.c >= u_input.e.x)), vec2<u32>(~u_input.a, reverseBits(0u) << (u_input.c % 32u))));
    var_0 = _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32((var_2.a ^ var_2.a) << (firstLeadingBit(104898u) % 32u), abs(reverseBits(~0u))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-921f * -2100f), -693f) * vec2<f32>(_wgslsmith_f_op_f32(ceil(1645f)), 490f))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1792f), _wgslsmith_f_op_f32(abs(467f)))))));
}

fn func_1() -> Struct_3 {
    global0 = 2147483647i;
    global0 = reverseBits(select(-(i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-25684i, u_input.d.x), 1i, -1801i, -1503i), vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, -16713i), firstLeadingBit(u_input.d.x), select(u_input.d.x, u_input.d.x, true), firstTrailingBit(u_input.d.x))), true));
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    var var_1 = 46310u;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(257f, -1716f)), _wgslsmith_f_op_f32(f32(-1f) * -260f)))), _wgslsmith_f_op_f32(ceil(478f)));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1000f) - _wgslsmith_f_op_f32(exp2(var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x) + var_0.x), _wgslsmith_f_op_f32(-722f + _wgslsmith_f_op_f32(-var_0.x))), 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-627f - _wgslsmith_f_op_f32(var_0.x + 236f)) - _wgslsmith_f_op_vec2_f32(func_2()).x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_3) -> f32 {
    global0 = _wgslsmith_add_i32(-36707i, 1i);
    let var_0 = u_input.e.x;
    var var_1 = countOneBits(-(~u_input.d)) ^ (~(u_input.d << (firstLeadingBit(vec2<u32>(arg_0.x, 4294967295u)) % vec2<u32>(32u))) | -(u_input.d & _wgslsmith_div_vec2_i32(vec2<i32>(-8874i, u_input.d.x), u_input.d)));
    var_1 = -vec2<i32>(var_1.x, i32(-1i) * -abs(u_input.d.x));
    var var_2 = Struct_1(4294967295u);
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2164f - _wgslsmith_f_op_f32(round(1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<u32>(_wgslsmith_add_u32(1u, 555u), u_input.e.x, u_input.a), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1079f, -1733f), 2447f)), func_1()))));
    var_1 = 795f;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), !select(!select(vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(var_0, false, true, true)), vec4<bool>(false, var_0, true, all(vec2<bool>(var_0, true))), any(vec4<bool>(var_0, false, false, var_0))), -_wgslsmith_add_vec4_i32(vec4<i32>(43847i, 0i, u_input.d.x, u_input.d.x), abs(vec4<i32>(u_input.d.x, 3107i, 0i, u_input.d.x))) & (reverseBits(vec4<i32>(0i, u_input.d.x, 2147483647i, -1i)) << (vec4<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.b.x, 9538u, u_input.a)), _wgslsmith_mult_u32(u_input.b.x, 34124u), 1u) % vec4<u32>(32u))), ~u_input.a, Struct_1(u_input.b.x));
    var var_3 = -u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

