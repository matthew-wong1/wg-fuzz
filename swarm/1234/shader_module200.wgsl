struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 10>;

var<private> global2: array<vec3<f32>, 29>;

var<private> global3: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(0u, 0u), vec2<u32>(36388u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(0u, 8451u), vec2<u32>(0u, 0u), vec2<u32>(1u, 56617u), vec2<u32>(4294967295u, 31406u), vec2<u32>(12337u, 55198u), vec2<u32>(8381u, 33148u), vec2<u32>(2937u, 0u), vec2<u32>(1486u, 4294967295u), vec2<u32>(60853u, 531u), vec2<u32>(4294967295u, 43861u), vec2<u32>(2332u, 4294967295u), vec2<u32>(25053u, 4294967295u), vec2<u32>(4294967295u, 226u), vec2<u32>(125784u, 32248u), vec2<u32>(4294967295u, 13023u));

var<private> global4: i32 = 1138i;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: bool) -> u32 {
    global0 = u_input.a.x;
    global2 = array<vec3<f32>, 29>();
    return _wgslsmith_div_u32(u_input.b.x, arg_1.x);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = array<vec2<u32>, 10>();
    let var_0 = Struct_2(true);
    var var_1 = 0u;
    global0 = ~_wgslsmith_dot_vec4_i32(-select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 55280i), select(vec4<i32>(u_input.a.x, u_input.a.x, -25406i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), true), all(vec3<bool>(var_0.a, false, var_0.a))), ~(-vec4<i32>(u_input.a.x, u_input.a.x, -30869i, u_input.a.x)));
    let var_2 = select(select(select(vec2<bool>(true, true), select(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, var_0.a), true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), !vec2<bool>(true, var_0.a)), vec2<bool>(!var_0.a, select(var_0.a, false, var_0.a))), vec2<bool>(var_0.a && var_0.a, all(!vec3<bool>(var_0.a, var_0.a, var_0.a))), var_0.a), !select(vec2<bool>(!var_0.a, var_0.a), !select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, true), var_0.a), true), vec2<bool>(var_0.a, any(vec2<bool>(!var_0.a, false))));
    return 1u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, var_0, -1257f, var_0))) + arg_1.b) - _wgslsmith_f_op_vec4_f32(-arg_1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(arg_1.b, vec4<f32>(arg_1.d, var_0, 809f, 149f)))))) * _wgslsmith_f_op_vec4_f32(arg_1.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-806f, 392f, 1000f, -2295f))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0, arg_1.d, arg_1.b.x, arg_1.a), vec4<f32>(arg_1.d, -595f, arg_1.a, var_0)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.yy);
    var var_3 = ~(~(~0u));
    var var_4 = u_input.b.x;
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global4 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(19738i, u_input.a.x, u_input.a.x, 1i) & firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(26800i, 459i, u_input.a.x, 8830i)), -vec4<i32>(-2147483647i, u_input.a.x, -16130i, 0i), vec4<i32>(-295i, u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a.x);
    global2 = array<vec3<f32>, 29>();
    var var_0 = Struct_2(select(true, false, any(vec3<bool>(true, true, arg_0.c.x == 29216u))));
    global4 = 9338i;
    let var_1 = Struct_2(true && all(vec4<bool>(true, var_0.a, true, true)));
    return func_4(vec4<u32>(arg_0.c.x, u_input.b.x, _wgslsmith_mult_u32(~arg_0.c.x, min(max(4294967295u, 34639u), ~0u)), u_input.b.x), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - -631f) + _wgslsmith_f_op_f32(arg_0.a * arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(-arg_0.b), ~reverseBits(~arg_0.c), _wgslsmith_f_op_f32(-func_4(~vec4<u32>(32876u, 0u, arg_0.c.x, u_input.b.x), Struct_1(979f, arg_0.b, arg_0.c, arg_0.d), u_input.a.x).a)), -60277i);
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = -332f;
    var var_1 = func_5(func_4(vec4<u32>(_wgslsmith_clamp_u32(~arg_0, ~arg_0, reverseBits(u_input.b.x)), _wgslsmith_add_u32(0u | arg_0, _wgslsmith_div_u32(u_input.b.x, arg_0)), func_2(vec4<f32>(var_0, 576f, var_0, 2243f), vec3<u32>(arg_0, u_input.b.x, 1u), true) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, arg_0), vec4<u32>(u_input.b.x, arg_0, 124534u, arg_0)) % 32u), func_3(Struct_1(1495f, vec4<f32>(1791f, var_0, 1000f, var_0), vec3<u32>(9504u, arg_0, 1u), 939f))), Struct_1(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(563f, var_0, var_0, 1653f) - vec4<f32>(var_0, -323f, 1896f, var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-795f, var_0, var_0, var_0))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(17426u, arg_0, arg_0), vec3<u32>(arg_0, 91212u, 18057u)), var_0), -1i));
    var var_2 = arg_2;
    let var_3 = -(~(u_input.a.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, u_input.a.x, -4495i, 1i), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, arg_1.x)))) == 1i;
    return func_4(max(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.x, 56398u, 4294967295u, 41777u), vec4<u32>(u_input.b.x, u_input.b.x, 26704u, 3237u)), ~vec4<u32>(47549u, var_1.c.x, 44282u, 0u)), ~vec4<u32>(~4294967295u, arg_0 & var_1.c.x, ~0u, _wgslsmith_div_u32(20331u, u_input.b.x))), Struct_1(_wgslsmith_div_f32(-846f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-642f, -895f) + 1f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(round(-164f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-var_0)), 929f), abs(vec3<u32>(0u, var_1.c.x, 22114u)) ^ reverseBits(~var_1.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1295f * var_0)))))), u_input.a.x & _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, -8205i, 41974i, 4264i), min(~vec4<i32>(-20362i, 0i, arg_1.x, -1500i), vec4<i32>(u_input.a.x, u_input.a.x, -11120i, 1i))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    global4 = min(1i, arg_0);
    var var_0 = arg_1;
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_5(Struct_1(633f, arg_1.b, vec3<u32>(arg_1.c.x, 0u, 16371u), 1926f)).b.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.a, -910f), vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, -1904f, arg_2.x)), _wgslsmith_f_op_f32(sign(-174f))), true)));
    var var_2 = u_input.a;
    let var_3 = arg_2.xx;
    return ~(1u ^ firstTrailingBit(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = u_input.a;
    var_1 = abs(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, var_1.x, var_1.x) | u_input.a, abs(u_input.a))) << (~firstLeadingBit(reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 30766u))) % vec3<u32>(32u)));
    global1 = array<vec2<u32>, 10>();
    var var_2 = select(max(func_6(u_input.a.x, func_1(u_input.b.x, vec3<i32>(var_1.x, -11672i, 0i), Struct_2(true)), select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))), func_1(~2801u, vec3<i32>(1i, u_input.a.x, -3080i), Struct_2(false))), u_input.b.x), ~(~u_input.b.x), !(!any(vec4<bool>(true, true, true, true))));
    global3 = array<vec2<u32>, 19>();
    global0 = 99998i;
    let var_3 = ~vec4<u32>(31837u, _wgslsmith_div_u32(countOneBits(u_input.b.x), 0u), select(20059u | u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), all(vec2<bool>(false, true))), reverseBits(~u_input.b.x)) >> (firstLeadingBit(~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_3.x)) & (1u | u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(Struct_1(1143f, vec4<f32>(141f, 594f, 1027f, 1545f), var_3.yxw, 2477f)).d + _wgslsmith_f_op_f32(258f - 1101f)))) - _wgslsmith_f_op_f32(abs(728f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-921f, -287f))) - -1575f), 1000f), select(-2147483647i, -4318i, true), ~u_input.b.x);
}

