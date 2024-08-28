struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: u32;

var<private> global2: f32 = 229f;

var<private> global3: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(23283u, 0u), vec2<u32>(4294967295u, 74971u), vec2<u32>(17433u, 22315u), vec2<u32>(1u, 2824u), vec2<u32>(44801u, 0u), vec2<u32>(27209u, 30213u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(32419u, 21795u), vec2<u32>(1u, 4294967295u), vec2<u32>(91468u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(93599u, 72154u), vec2<u32>(4294967295u, 35265u), vec2<u32>(1u, 15749u), vec2<u32>(47895u, 56838u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(2113u, 37354u), vec2<u32>(0u, 4294967295u), vec2<u32>(67248u, 25409u), vec2<u32>(4294967295u, 37552u), vec2<u32>(54538u, 1u), vec2<u32>(0u, 31976u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 45743u), vec2<u32>(45750u, 0u), vec2<u32>(4294967295u, 4294967295u));

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    return _wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32((_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 78651u, u_input.b), vec4<u32>(u_input.e, 0u, 13413u, 4294967295u)), u_input.c) << ((select(u_input.e, u_input.b, false) | countOneBits(0u)) % 32u)) << (~(~u_input.b) % 32u), 29u)], max(min(~(~global3[_wgslsmith_index_u32(u_input.b, 29u)]), vec2<u32>(~u_input.c, u_input.c)), global3[_wgslsmith_index_u32(1u, 29u)]));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    global0 = global4[_wgslsmith_index_u32(~(min(u_input.c, max(63956u, ~46342u)) << (42831u % 32u)), 10u)];
    global2 = -914f;
    global1 = _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(countOneBits(u_input.b), _wgslsmith_div_u32(firstLeadingBit(u_input.e), 16671u), 21711u), min(53846u, _wgslsmith_div_u32(4294967295u, func_3(Struct_1(arg_1.a), !vec2<bool>(global0.a, true)))), reverseBits(u_input.c) & ~30157u);
    return !(!vec4<bool>(!global0.a, false, global0.a, true));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    global1 = _wgslsmith_clamp_u32(~(~_wgslsmith_div_u32(u_input.c, u_input.e)), 1u, ~max(countOneBits(_wgslsmith_sub_u32(4294967295u, 0u)), firstTrailingBit(_wgslsmith_div_u32(u_input.c, 9474u))));
    global3 = array<vec2<u32>, 29>();
    var var_0 = abs(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-32962i, u_input.a, u_input.d), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 15017i, u_input.d, 3647i), vec4<i32>(u_input.d, 17719i, u_input.d, 0i)), _wgslsmith_sub_i32(19265i, 2147483647i), 1i)), _wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, 1i, u_input.d), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, -28600i, 45154i), vec3<i32>(u_input.d, u_input.a, u_input.d))) & -vec3<i32>(u_input.a, u_input.a, u_input.a)));
    global1 = u_input.b;
    var var_1 = ~abs(firstLeadingBit(1u));
    return func_4(select(var_0.x, min(12168i, select(i32(-1i) * -3322i, abs(var_0.x), true)), !any(vec4<bool>(arg_1.a, arg_1.a, global0.a, false))), Struct_1(false), func_3(Struct_1(arg_1.a), !(!(!vec2<bool>(false, global0.a)))));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: bool, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = !vec2<bool>(all(select(func_2(arg_0, Struct_1(false)), func_4(-2147483647i, global4[_wgslsmith_index_u32(4294967295u, 10u)], 5249u), !vec4<bool>(arg_2, arg_2, true, global0.a))), func_2(-210f, Struct_1(arg_2)).x);
    global3 = array<vec2<u32>, 29>();
    return vec4<i32>(~(-(~u_input.a) >> (13809u % 32u)), u_input.a, u_input.a, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 10>();
    var var_0 = ~vec4<i32>(2147483647i >> (u_input.b % 32u), -u_input.a, _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(-2147483647i, 13657i, u_input.d)), ~abs(vec3<i32>(-1i, u_input.d, u_input.a))), _wgslsmith_dot_vec4_i32(~(-vec4<i32>(u_input.d, u_input.a, 6864i, 0i)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1609f, 1000f, -551f)), all(vec4<bool>(global0.a, global0.a, true, global0.a)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1391f, 441f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-462f - 1143f), _wgslsmith_f_op_f32(-1322f * 620f), !global0.a)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(743f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1722f)))))));
    let var_3 = global4[_wgslsmith_index_u32(~min(116212u, u_input.b), 10u)];
    let var_4 = Struct_1(func_2(var_1.x, Struct_1(func_4(55801i, Struct_1(false), 0u).x)).x);
    var var_5 = !(func_2(-1395f, var_4).x | all(!(!vec2<bool>(global0.a, false))));
    var var_6 = firstLeadingBit(u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~30040u, _wgslsmith_add_u32(reverseBits(47607u), u_input.e), _wgslsmith_add_u32(reverseBits(u_input.c), ~4294967295u), 73253u) << (~max(_wgslsmith_sub_vec4_u32(vec4<u32>(7474u, 48965u, u_input.e, u_input.e), vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b)), ~vec4<u32>(0u, u_input.b, 4294967295u, 7227u)) % vec4<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.e), global3[_wgslsmith_index_u32(0u, 29u)]), ~firstTrailingBit(_wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, u_input.d, u_input.a), vec3<i32>(u_input.a, u_input.a, var_0.x)), ~vec3<i32>(1i, 12485i, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-274f * _wgslsmith_f_op_f32(sign(var_1.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) * var_1.x), var_1.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(step(1812f, var_1.x))), -412f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2112f, 2013f, var_1.x, -152f) - vec4<f32>(-1146f, -1135f, -1000f, 1628f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, -394f, var_1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 495f, 502f, -1156f) - vec4<f32>(-1187f, 2589f, 591f, 2431f)) + vec4<f32>(643f, 467f, -195f, 342f)), func_4(34441i, Struct_1(global0.a), 15200u)))));
}

