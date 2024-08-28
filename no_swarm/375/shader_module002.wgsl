struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(1066f, -1192f), vec2<f32>(-987f, -3197f), vec2<f32>(1445f, -918f), vec2<f32>(-604f, 1329f), vec2<f32>(315f, 345f), vec2<f32>(-858f, -503f), vec2<f32>(-1608f, 129f), vec2<f32>(917f, -328f), vec2<f32>(1000f, -320f), vec2<f32>(-206f, -581f), vec2<f32>(418f, 1022f), vec2<f32>(1226f, 1113f), vec2<f32>(841f, 1071f), vec2<f32>(-1475f, -1597f), vec2<f32>(-112f, 464f), vec2<f32>(1305f, -925f), vec2<f32>(-1350f, -1990f), vec2<f32>(1373f, 1384f), vec2<f32>(-842f, -273f), vec2<f32>(982f, -523f), vec2<f32>(-459f, 167f), vec2<f32>(437f, 1237f), vec2<f32>(1227f, -1013f), vec2<f32>(-1915f, 1139f), vec2<f32>(1000f, 1397f), vec2<f32>(391f, 1012f), vec2<f32>(580f, 349f), vec2<f32>(-378f, -1252f), vec2<f32>(556f, -1338f), vec2<f32>(2206f, -839f), vec2<f32>(1160f, 1161f), vec2<f32>(1211f, 524f));

var<private> global1: vec3<u32> = vec3<u32>(33864u, 11028u, 1u);

var<private> global2: array<Struct_3, 4>;

var<private> global3: array<i32, 2>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    var var_0 = false & arg_2;
    var var_1 = select(arg_2, any(vec4<bool>(arg_2, all(vec3<bool>(arg_2, arg_2, arg_2)), arg_2, arg_2)) | arg_2, any(vec4<bool>(true, false, true, true)) & (_wgslsmith_f_op_f32(arg_0 * 1474f) >= arg_0));
    var var_2 = -global3[_wgslsmith_index_u32(u_input.a, 2u)];
    var var_3 = vec2<u32>(u_input.a, _wgslsmith_mod_u32(countOneBits(~u_input.e), 4294967295u) << (global1.x % 32u));
    var var_4 = _wgslsmith_sub_vec4_i32(reverseBits(abs(vec4<i32>(u_input.c, -5020i, _wgslsmith_sub_i32(11122i, u_input.c), ~(-1820i)))), vec4<i32>(min(firstTrailingBit(u_input.c << (0u % 32u)), -2147483647i), -2147483647i, min(_wgslsmith_sub_i32(u_input.c >> (u_input.b.x % 32u), _wgslsmith_clamp_i32(u_input.c, global3[_wgslsmith_index_u32(global1.x, 2u)], -13702i)), _wgslsmith_add_i32(17421i, _wgslsmith_clamp_i32(u_input.c, -28886i, -20306i))), global3[_wgslsmith_index_u32(0u, 2u)]));
    return firstLeadingBit(min(0u, ~30771u) >> (_wgslsmith_sub_u32(~global1.x, 1u) % 32u)) | 4294967295u;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_mult_u32(~func_3(-721f, vec4<f32>(1f, 1f, 1f, 1f), true), global1.x));
    global2 = array<Struct_3, 4>();
    let var_1 = -337f;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(var_1)))), reverseBits(u_input.c));
    var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_0.a, ~_wgslsmith_mult_u32(var_0.a, var_0.a)), 48837u, u_input.b.x));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a), 1000f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = abs(~abs(u_input.c));
    var var_1 = !(!vec3<bool>(false, true, any(vec4<bool>(true, true, true, true))));
    let var_2 = select(select(!var_1.yz, select(var_1.xx, !(!vec2<bool>(true, var_1.x)), false), !(!var_1.yz)), !vec2<bool>(var_1.x, var_1.x), !(!vec2<bool>(true, !var_1.x)));
    var var_3 = vec3<i32>(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(9937u, arg_1, arg_1)) | ~func_3(-290f, vec4<f32>(964f, arg_2, arg_2, arg_3.x), var_2.x), 2u)], 1i), global3[_wgslsmith_index_u32(global1.x, 2u)], -(~global3[_wgslsmith_index_u32(4294967295u, 2u)]));
    let var_4 = var_3.x;
    return Struct_1(4294967295u);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = func_4(vec2<f32>(-1885f, _wgslsmith_f_op_f32(min(123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 2314f))))), 27101u, _wgslsmith_f_op_f32(810f + -1464f), _wgslsmith_f_op_vec4_f32(func_2()));
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    global0 = array<vec2<f32>, 32>();
    return StorageBuffer(reverseBits(max(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a, var_0.a, 4294967295u, 1u), vec4<u32>(u_input.b.x, arg_1.a, 0u, global1.x)) | ~vec4<u32>(11113u, 34848u, u_input.d.x, 1u), vec4<u32>(arg_2.a, _wgslsmith_mult_u32(u_input.d.x, var_0.a), 0u, ~6172u))), 373f, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(abs(select(u_input.d, vec3<u32>(4294967295u, arg_1.a, arg_1.a), vec3<bool>(true, true, false))), vec3<u32>(~1u, arg_2.a, global1.x)), vec3<u32>(~u_input.d.x ^ _wgslsmith_div_u32(4294967295u, 79510u), ~global1.x, _wgslsmith_clamp_u32(global1.x, 1u, var_0.a) >> (~28960u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<u32>(37445u, ~firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_sub_u32(110642u, global1.x), 29832u)), 4294967295u);
    global0 = array<vec2<f32>, 32>();
    global2 = array<Struct_3, 4>();
    let x = u_input.a;
    s_output = func_1(abs(~(~vec4<i32>(-19435i, u_input.c, u_input.c, global3[_wgslsmith_index_u32(93317u, 2u)]))), Struct_1(22275u), Struct_1(u_input.b.x));
}

