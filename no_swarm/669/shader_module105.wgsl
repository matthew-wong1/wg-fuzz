struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-138f, -136f), vec2<f32>(-259f, 608f), vec2<f32>(-413f, -187f), vec2<f32>(-1383f, 144f), vec2<f32>(1822f, 883f), vec2<f32>(703f, 645f), vec2<f32>(-279f, -470f), vec2<f32>(1131f, -455f));

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(-1i, -38722i), vec2<i32>(-1i, 3279i), vec2<i32>(78163i, 8143i), vec2<i32>(i32(-2147483648), 7531i), vec2<i32>(2147483647i, 24352i), vec2<i32>(-33751i, 2147483647i), vec2<i32>(-1i, -23864i));

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<f32>(328f, 1000f, 1117f)), Struct_2(vec3<f32>(562f, 756f, -1000f)), Struct_2(vec3<f32>(-969f, -612f, 799f)), Struct_2(vec3<f32>(-220f, -1000f, -192f)), Struct_2(vec3<f32>(-1837f, 424f, 536f)), Struct_2(vec3<f32>(-585f, -2036f, -513f)), Struct_2(vec3<f32>(1486f, 1001f, 601f)), Struct_2(vec3<f32>(197f, 1168f, 1000f)), Struct_2(vec3<f32>(-1000f, 1122f, -115f)), Struct_2(vec3<f32>(-980f, -553f, 1000f)), Struct_2(vec3<f32>(-1148f, -1244f, -1929f)), Struct_2(vec3<f32>(-1145f, 244f, 437f)), Struct_2(vec3<f32>(1706f, -659f, -2061f)), Struct_2(vec3<f32>(-1000f, -2041f, -935f)), Struct_2(vec3<f32>(-811f, -680f, 258f)), Struct_2(vec3<f32>(667f, 954f, -365f)), Struct_2(vec3<f32>(1000f, 462f, 761f)), Struct_2(vec3<f32>(-1094f, -1373f, -972f)), Struct_2(vec3<f32>(-706f, 965f, 1000f)), Struct_2(vec3<f32>(-1163f, -395f, -410f)), Struct_2(vec3<f32>(1987f, 841f, -525f)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(u_input.b.x, 6660i), ~min(~u_input.b.x ^ ~u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(738i, 1i, 7741i, 1i), vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x)) & u_input.b.x));
    global2 = array<Struct_2, 21>();
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(362f, _wgslsmith_f_op_f32(-arg_1), -696f)))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1834f), 1f, _wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_div_vec3_f32(vec3<f32>(-775f, arg_1, 1627f), _wgslsmith_div_vec3_f32(vec3<f32>(771f, arg_1, 950f), vec3<f32>(436f, 219f, arg_1))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 * -382f))))), !any(vec2<bool>(true, true)), arg_0.x << (~2143u % 32u));
    var var_2 = _wgslsmith_div_vec3_i32(~(-(~vec3<i32>(var_0.x, -1i, var_0.x)) & ~_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -24229i, 38537i), vec3<i32>(u_input.b.x, u_input.b.x, var_0.x))), vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(u_input.b.x), 1i), u_input.b.x, ~countOneBits(var_0.x)) ^ vec3<i32>(~_wgslsmith_mod_i32(27568i, 1i), ~var_0.x & u_input.b.x, var_0.x));
    var var_3 = vec2<bool>(true, any(select(select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), any(select(vec3<bool>(var_1.d, false, var_1.d), vec3<bool>(var_1.d, false, var_1.d), vec3<bool>(var_1.d, false, true))))));
    return -475f;
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    let var_0 = 11011u;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1.a.a.x, arg_1.b.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.a.x), arg_1.b.a.x, arg_0)), _wgslsmith_f_op_f32(func_3(min(arg_2, arg_2), _wgslsmith_f_op_f32(arg_1.c + arg_1.b.a.x))))));
    global2 = array<Struct_2, 21>();
    return all(vec3<bool>(arg_0, false, arg_1.d));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = all(vec2<bool>(!select(true, true, true), !func_2(false, Struct_3(Struct_2(vec3<f32>(-1663f, -2175f, -289f)), global2[_wgslsmith_index_u32(u_input.a, 21u)], 116f, true, u_input.a), abs(vec3<u32>(u_input.a, 4294967295u, 56983u)))));
    return StorageBuffer(abs(~_wgslsmith_mult_vec2_u32(~vec2<u32>(51143u, u_input.a), ~vec2<u32>(13060u, u_input.a))), ~vec3<u32>(1u, _wgslsmith_add_u32(u_input.a, 1u), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -812f;
    var var_1 = countOneBits(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b) << (min(u_input.a, u_input.a) % 32u), 25539i));
    var_0 = -696f;
    var var_2 = var_1.x;
    let var_3 = -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(19559i, u_input.b.x), i32(-1i) * -1i, ~var_1.x), (vec3<i32>(-1i, -2147483647i, 3871i) ^ vec3<i32>(2147483647i, var_1.x, u_input.b.x)) | -vec3<i32>(-20820i, u_input.b.x, -1i), -_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, -1519i, u_input.b.x), vec3<i32>(-1i, var_1.x, var_1.x))));
    global0 = array<vec2<f32>, 8>();
    let x = u_input.a;
    s_output = func_1(i32(-1i) * -(i32(-1i) * -u_input.b.x));
}

