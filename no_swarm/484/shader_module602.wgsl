struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, false, false, false, false, true, false, true, false, true, false, false, true, true, true, false, false);

var<private> global1: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(25995u, 0u, 45084u), vec3<u32>(4294967295u, 0u, 88308u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(22412i, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.a.x, 410i, u_input.a.x, -1i)), firstLeadingBit(vec4<i32>(1i, u_input.e, u_input.a.x, u_input.b.x)))), u_input.b.x);
    let var_1 = Struct_2(arg_0, arg_0);
    let var_2 = firstTrailingBit(~abs(arg_1.x));
    let var_3 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.a.x), 408f, -638f, _wgslsmith_f_op_f32(step(2047f, _wgslsmith_f_op_f32(-var_1.a.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1719f)))), -46274i, vec3<u32>(var_2, u_input.d.x >> (var_2 % 32u), ~arg_1.x) << (u_input.d % vec3<u32>(32u))), var_1.a);
    global1 = array<vec3<u32>, 2>();
    return var_1.b;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_0.a.a.x)), _wgslsmith_f_op_f32(arg_0.b.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.x))))), _wgslsmith_f_op_f32(min(arg_0.a.a.x, arg_0.a.a.x)), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, arg_0.b.a.x, -416f, 1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1680f), -1970f)), _wgslsmith_clamp_i32(-16265i, 0i, 58137i), ~(~vec3<u32>(1u, arg_2, 0u))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_2, 1u, 4294967295u), vec4<u32>(u_input.d.x, u_input.d.x, arg_0.a.d.x, arg_2)), vec4<u32>(4294967295u, arg_2, 4294967295u, 1u)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 27317u, arg_2), vec4<u32>(80424u, u_input.d.x, arg_0.a.d.x, 68393u)), ~vec4<u32>(arg_2, u_input.d.x, arg_2, 1u)) % vec4<u32>(32u))).a.x, arg_0.b.a.x);
    var var_1 = Struct_2(func_2(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b, arg_0.a.a.x, var_0.x, var_0.x)), var_0.x, -1i & u_input.a.x, _wgslsmith_div_vec3_u32(arg_0.b.d, global1[_wgslsmith_index_u32(arg_2, 2u)])), _wgslsmith_clamp_vec4_u32(~vec4<u32>(96938u, u_input.d.x, 1u, u_input.d.x), vec4<u32>(arg_0.b.d.x, arg_0.b.d.x, arg_2, arg_0.a.d.x), vec4<u32>(u_input.d.x, arg_2, 4294967295u, 42679u))), firstLeadingBit(vec4<u32>(u_input.d.x ^ arg_2, u_input.d.x, ~u_input.d.x, 4294967295u))), arg_0.b);
    var_1 = arg_0;
    let var_2 = false;
    var var_3 = vec4<bool>(!global0[_wgslsmith_index_u32(firstTrailingBit(0u), 17u)], arg_1, select(var_2, true, !var_2), any(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 17u)], false, false), !vec4<bool>(true, var_2, true, true), !vec4<bool>(arg_1, true, false, true))) || true);
    return _wgslsmith_f_op_f32(round(var_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    global0 = array<bool, 17>();
    global1 = array<vec3<u32>, 2>();
    global0 = array<bool, 17>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1751f * arg_1.a.x)) * 2096f) + _wgslsmith_f_op_f32(sign(-676f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(round(-1926f)))));
    var_0 = arg_0.b.a.wy;
    return arg_0;
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    var var_0 = func_4(Struct_2(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, 1560f, 1000f, -1000f)), _wgslsmith_f_op_f32(max(1015f, -517f)), u_input.c.x, firstTrailingBit(global1[_wgslsmith_index_u32(25901u, 2u)])), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, arg_0.x) & vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 4294967295u)), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(164f, -1578f, 2162f, -692f))), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<f32>(-1935f, 1082f, 1039f, 827f), 693f, -20036i, arg_0.yzx), Struct_1(vec4<f32>(478f, 802f, 593f, -1000f), -1000f, u_input.b.x, arg_0.yzy)), false, reverseBits(u_input.d.x))), 0i, u_input.d)), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-133f * _wgslsmith_f_op_f32(f32(-1f) * -1962f)), -2315f), ~(-44889i), u_input.d));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_0.b.a * vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b.b)), _wgslsmith_f_op_f32(min(-239f, var_0.b.a.x)), _wgslsmith_f_op_f32(var_0.b.a.x - -623f), _wgslsmith_div_f32(var_0.b.a.x, -1432f))), _wgslsmith_f_op_f32(max(var_0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b)))), firstTrailingBit(_wgslsmith_clamp_i32(-2147483647i, -var_0.a.c, var_0.a.c)), var_0.a.d), var_0.b);
    var var_1 = ~reverseBits(1u);
    var_1 = firstLeadingBit(1u & _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(var_0.a.d.x, arg_0.x))) << (firstLeadingBit(~4294967295u) % 32u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1253f), _wgslsmith_f_op_f32(step(-1426f, -438f)), -2795f));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.d.x, u_input.d.x), vec3<u32>(min(7308u, u_input.d.x), 1u << (u_input.d.x % 32u), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 1u, 1u), vec4<u32>(u_input.d.x, 1u, 5438u, u_input.d.x)))) & ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4262u, 75570u, 59845u), countOneBits(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x))), 2u)], ~_wgslsmith_sub_u32(_wgslsmith_add_u32(func_1(vec4<u32>(u_input.d.x, 21993u, u_input.d.x, 9107u)), min(72223u, 4294967295u)), countOneBits(~u_input.d.x)), -1052f);
}

