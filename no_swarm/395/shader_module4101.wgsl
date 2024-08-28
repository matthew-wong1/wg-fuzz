struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global0: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

var<private> global1: array<Struct_1, 11>;

var<private> global2: bool = false;

var<private> global3: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(655f, 2244f, 1265f) - vec3<f32>(-301f, 1456f, -102f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-514f, -743f, -1770f), vec3<f32>(-1484f, -1000f, 2001f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(655f, -539f, -2155f) - vec3<f32>(1394f, -542f, 691f))))));
    var var_1 = min(_wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(arg_0.a | u_input.b), -1061i, ~u_input.b), vec3<i32>(-1i) * -abs(vec3<i32>(u_input.c, arg_0.c, -2503i))), select(vec3<i32>(0i, abs(~u_input.c), min(arg_0.b.x >> (0u % 32u), -2147483647i)), vec3<i32>(-u_input.c, _wgslsmith_mult_i32(~(-6888i), reverseBits(-1i)), 35094i), any(vec2<bool>(select(true, arg_1, arg_1), arg_1))));
    var var_2 = arg_0.b.zxw;
    let var_3 = 329f;
    var_1 = ~_wgslsmith_div_vec3_i32(abs(~vec3<i32>(arg_0.a, -1i, var_2.x)) | (-vec3<i32>(u_input.b, -2147483647i, 1i) | ~arg_0.b.xwx), -vec3<i32>(2667i, _wgslsmith_clamp_i32(arg_0.a, -38193i, -2147483647i), max(0i, 0i)));
    return select(~min(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d, u_input.d), ~u_input.d), _wgslsmith_div_u32(u_input.d, _wgslsmith_div_u32(u_input.a.x, 1327u))), u_input.d, 32649u <= u_input.a.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> vec3<u32> {
    var var_0 = min(select(firstLeadingBit(u_input.a), _wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.d), vec2<u32>(0u, 94142u)), u_input.a), vec2<bool>(select(true, true, arg_2.x) || false, all(!vec3<bool>(false, true, arg_2.x)))), vec2<u32>(abs(_wgslsmith_mod_u32(u_input.d, u_input.a.x)), ~func_3(global1[_wgslsmith_index_u32(u_input.d, 11u)], arg_1.x)) >> (vec2<u32>(~(~u_input.d), ~1u) % vec2<u32>(32u)));
    global0 = array<vec3<bool>, 31>();
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(69536u, 11u)], -firstLeadingBit(abs(-12131i)));
    var var_2 = Struct_2(Struct_1(-2676i, (vec4<i32>(arg_0.x, var_1.b, -24861i, arg_0.x) ^ _wgslsmith_mult_vec4_i32(var_1.a.b, vec4<i32>(-441i, 0i, -1i, u_input.b))) ^ vec4<i32>(~(-1i), abs(arg_0.x), -u_input.c, -19081i), var_1.b), -15422i);
    let var_3 = any(vec3<bool>(false, !all(vec3<bool>(arg_1.x, arg_2.x, true)), !arg_2.x));
    return vec3<u32>(_wgslsmith_mult_u32(13130u, ~u_input.d >> (4294967295u % 32u)), 1u, 42115u);
}

fn func_4(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = -(41105i & -_wgslsmith_div_i32(-11336i, -u_input.b));
    var_0 = u_input.c;
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(abs(42285i), -max(28204i, 0i)), ~_wgslsmith_div_i32(-43096i, -2147483647i)), ~(-44177i));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1954f, -1000f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-893f, -276f)))))));
    var var_3 = select(u_input.b >= -max(var_1.x << (11829u % 32u), 1i), true, !(!all(select(global0[_wgslsmith_index_u32(7434u, 31u)], global0[_wgslsmith_index_u32(u_input.d, 31u)], true))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-827f + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2.x, var_2.x)))) + -2364f), _wgslsmith_f_op_f32(856f - 549f), var_2.x);
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_2 {
    let var_0 = false;
    var var_1 = global1[_wgslsmith_index_u32(~u_input.a.x, 11u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.d)) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, u_input.a.x, 1u) | select(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(u_input.d, 4294967295u, u_input.a.x), global0[_wgslsmith_index_u32(1u, 31u)])) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 45366u, u_input.a.x) << (vec3<u32>(u_input.a.x, 49765u, 25719u) % vec3<u32>(32u)), func_2(vec3<i32>(-1i, -2147483647i, 1i), vec4<bool>(false, var_0, var_0, false), vec4<bool>(true, var_0, var_0, var_0))) % vec3<u32>(32u))));
    var_1 = global1[_wgslsmith_index_u32(~firstTrailingBit(u_input.a.x) >> (u_input.d % 32u), 11u)];
    global0 = array<vec3<bool>, 31>();
    return Struct_2(Struct_1(var_1.c, var_1.b, u_input.c), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(23981i, -39600i);
    let var_1 = u_input.d;
    var var_2 = true && !(true & any(select(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(var_1, 31u)], vec3<bool>(true, true, true))));
    global2 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, ~(-32628i), u_input.c, ~2147483647i)), -vec4<i32>(-1i, 0i << (var_1 % 32u), var_0, u_input.c | -1i)) > 16738i;
    var var_3 = _wgslsmith_sub_u32(~firstTrailingBit(1u), u_input.d);
    var var_4 = func_1(_wgslsmith_f_op_f32(min(1086f, 460f)), 1548f);
    var_3 = 1u;
    let var_5 = global1[_wgslsmith_index_u32(func_3(func_1(_wgslsmith_f_op_f32(-849f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(228f * -1000f), _wgslsmith_f_op_f32(-1557f * 605f)))), 1f).a, any(!vec3<bool>(-9276i > u_input.c, true, true))), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(14948i, u_input.b, u_input.c, -21187i), var_5.b), 1i))));
}

