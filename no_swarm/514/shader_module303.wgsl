struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7>;

var<private> global1: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(392f, -347f, -321f), vec3<f32>(-317f, -1177f, 1322f), vec3<f32>(-1763f, -1114f, 837f), vec3<f32>(1277f, -1388f, 1055f), vec3<f32>(445f, 1383f, 576f), vec3<f32>(1270f, -301f, -1409f), vec3<f32>(-516f, -321f, -914f), vec3<f32>(-1000f, -1098f, 1000f), vec3<f32>(-587f, -278f, 1000f), vec3<f32>(-609f, 152f, 794f), vec3<f32>(-173f, 270f, 363f), vec3<f32>(641f, -1300f, -1112f), vec3<f32>(1297f, 411f, -1078f), vec3<f32>(-225f, -532f, -398f), vec3<f32>(226f, 608f, -463f), vec3<f32>(901f, -1000f, -2090f), vec3<f32>(-1000f, -286f, -1000f), vec3<f32>(-173f, -1711f, -953f), vec3<f32>(815f, 171f, 408f), vec3<f32>(1001f, -1083f, 182f), vec3<f32>(-943f, -1348f, 1461f), vec3<f32>(-1000f, 399f, -557f), vec3<f32>(-1972f, 1367f, 793f), vec3<f32>(194f, -1000f, 493f), vec3<f32>(-232f, -595f, 397f), vec3<f32>(148f, -762f, -163f), vec3<f32>(637f, -1000f, 110f), vec3<f32>(-708f, -1389f, -115f));

var<private> global2: array<vec4<f32>, 24>;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<f32>(-1476f, -571f), -1i), Struct_1(vec2<f32>(-1097f, 640f), 26790i), Struct_1(vec2<f32>(1724f, 522f), -11150i));

var<private> global4: array<i32, 24>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    global0 = array<vec3<f32>, 7>();
    global3 = array<Struct_1, 3>();
    global3 = array<Struct_1, 3>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), arg_2.x))), _wgslsmith_f_op_f32(max(545f, _wgslsmith_f_op_f32(sign(arg_2.x)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec3<i32>(-1i, -1i, global4[_wgslsmith_index_u32(1u, 24u)]), u_input.a.x, vec3<f32>(1623f, arg_1.a.x, -853f))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1306f), _wgslsmith_f_op_f32(-711f + -1307f)), global2[_wgslsmith_index_u32(select(31905u, ~u_input.e, true), 24u)], vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(16512u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]))), _wgslsmith_f_op_vec4_f32(floor(global2[_wgslsmith_index_u32(10526u, 24u)]))))), !select(all(vec3<bool>(true, true, true)), -512f != arg_1.a.x, global4[_wgslsmith_index_u32(740u, 24u)] > _wgslsmith_mod_i32(2147483647i, global4[_wgslsmith_index_u32(1615u, 24u)]))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-625f - -650f) + -1177f), arg_1.a.x), -1000f), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-(~global4[_wgslsmith_index_u32(76077u, 24u)]), arg_2.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(108268u, 24u)], -10519i), 7922i), -arg_2.x)));
    let var_2 = u_input.d;
    global3 = array<Struct_1, 3>();
    global4 = array<i32, 24>();
    return global3[_wgslsmith_index_u32(u_input.a.x, 3u)];
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    global1 = array<vec3<f32>, 28>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((u_input.a | u_input.a) << (u_input.a % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.a.x, ~45900u)), 7u)]));
    let var_1 = arg_3;
    global1 = array<vec3<f32>, 28>();
    var var_2 = var_1.a.x;
    return _wgslsmith_sub_i32(~(-global4[_wgslsmith_index_u32(0u, 24u)] << (_wgslsmith_add_u32(~u_input.a.x, 7204u) % 32u)), select(11966i, var_1.b, all(vec4<bool>(any(vec4<bool>(true, false, false, false)), true, -973f >= arg_3.a.x, false))));
}

fn func_1() -> u32 {
    global4 = array<i32, 24>();
    global0 = array<vec3<f32>, 7>();
    var var_0 = min(-func_4(1i, func_2(u_input.d.x, global3[_wgslsmith_index_u32(u_input.e, 3u)], vec2<i32>(5300i, -34410i)), _wgslsmith_add_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 24u)], global4[_wgslsmith_index_u32(19577u, 24u)]), u_input.b.yx), Struct_1(vec2<f32>(274f, 145f), global4[_wgslsmith_index_u32(46071u, 24u)])), u_input.b.x) & -func_4(22170i, global3[_wgslsmith_index_u32(~1u, 3u)], -vec2<i32>(-4575i, u_input.b.x), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(276f, 1620f)), -1i));
    var var_1 = -679f;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-2420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1141f) + -973f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(379f)))), -376f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), 192f)))), vec4<f32>(func_2(0i, global3[_wgslsmith_index_u32(4651u, 3u)], _wgslsmith_div_vec2_i32(select(u_input.b.zz, u_input.d.xx, vec2<bool>(false, true)), vec2<i32>(1i, 1i) ^ u_input.d.yy)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c.yxx, 94468u, vec3<f32>(447f, 739f, -156f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(285f)), -351f) + 837f), 1210f));
    return firstTrailingBit(countOneBits(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(54204u, u_input.e, u_input.e, 13095u), firstLeadingBit(vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.a.x))), ~(vec4<u32>(u_input.e, 46953u, 4294967295u, u_input.e) << (vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 28>();
    var var_0 = u_input.b.x;
    global1 = array<vec3<f32>, 28>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-612f, _wgslsmith_f_op_f32(sign(532f)))), 1008f) * vec2<f32>(397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-684f + -477f)))), -2147483647i);
    let var_2 = _wgslsmith_mod_u32(0u, u_input.e >> ((u_input.a.x | func_1()) % 32u));
    global4 = array<i32, 24>();
    global4 = array<i32, 24>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(func_3(u_input.c.ywy, 4294967295u, global0[_wgslsmith_index_u32(11826u, 7u)])))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1182f))))) + _wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(-943f + _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(f32(-1f) * -363f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.e ^ abs(min(4294967295u, 87088u))), var_1.a.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-1000f + var_1.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_div_f32(var_1.a.x, var_1.a.x))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.x)) - _wgslsmith_f_op_f32(var_1.a.x + -1237f)), _wgslsmith_f_op_f32(f32(-1f) * -582f)))), -320f, _wgslsmith_div_u32(~max(var_2, var_2), ~(~4294967295u)));
}

