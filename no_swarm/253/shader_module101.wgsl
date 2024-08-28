struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(81716u);

var<private> global1: array<vec2<i32>, 10>;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(5344u), Struct_1(0u), Struct_1(4484u), Struct_1(5518u), Struct_1(0u), Struct_1(26254u), Struct_1(110u), Struct_1(4859u), Struct_1(62458u), Struct_1(1u), Struct_1(34001u), Struct_1(0u), Struct_1(0u), Struct_1(8394u), Struct_1(43996u), Struct_1(47095u), Struct_1(28209u), Struct_1(107115u), Struct_1(1u), Struct_1(0u), Struct_1(0u), Struct_1(0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1() -> f32 {
    global1 = array<vec2<i32>, 10>();
    global1 = array<vec2<i32>, 10>();
    global3 = array<Struct_1, 22>();
    var var_0 = ~(~vec4<u32>(~global0.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, u_input.b), vec3<u32>(global0.a, global0.a, 33564u)), global0.a, global0.a));
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 22u)];
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1181f, -1000f, global2.x)), -411f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))));
}

fn func_3() -> vec3<f32> {
    global1 = array<vec2<i32>, 10>();
    global3 = array<Struct_1, 22>();
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~0u), _wgslsmith_mod_u32(global0.a, abs(4294967295u)), u_input.b & 143150u) | abs(~(~1u)), 22u)];
    let var_1 = Struct_1(4294967295u);
    let var_2 = min(-abs(select(u_input.d, u_input.d, global2.x) | ~(-2147483647i)), 1i);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1212f - -1242f) * -335f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1277f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1751f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1405f, -307f) - _wgslsmith_f_op_f32(-1000f + 471f)))))), -212f);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_div_f32(-1013f, _wgslsmith_f_op_f32(557f + -1380f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 1435f)) - _wgslsmith_f_op_f32(f32(-1f) * -106f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1627f, -1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, -1087f, -937f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-139f, -1000f, -254f)) * _wgslsmith_div_vec3_f32(vec3<f32>(535f, 1000f, -943f), vec3<f32>(180f, 906f, 822f))))) * _wgslsmith_f_op_vec3_f32(func_3()));
    let var_2 = select(2147483647i, -28040i, select(global2.x, global2.x, any(!vec4<bool>(global2.x, true, global2.x, true)) & !global2.x));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, var_2), firstLeadingBit(firstLeadingBit(-44129i))), u_input.e | _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, 52297i, arg_0.x), vec4<i32>(u_input.d, var_2, -1i, -5942i) >> (vec4<u32>(global0.a, global0.a, 35112u, u_input.b) % vec4<u32>(32u))), -u_input.a.x >> (_wgslsmith_mult_u32(9570u, global0.a) % 32u), -_wgslsmith_mod_i32(arg_0.x, 1i)));
    let var_4 = global3[_wgslsmith_index_u32(global0.a, 22u)];
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 22>();
    var var_0 = u_input.a;
    global3 = array<Struct_1, 22>();
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1113f + 167f) + _wgslsmith_f_op_f32(trunc(301f))), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), -161f, -103f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1218f * 1993f), _wgslsmith_f_op_f32(363f * 1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(107f)) * _wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.e, u_input.e, 1143i), 96478u, global3[_wgslsmith_index_u32(0u, 22u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(820f, 534f))))), _wgslsmith_f_op_f32(1242f + _wgslsmith_f_op_f32(trunc(-1883f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(908f, -1264f, global2.x)), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1598f)))))));
    global1 = array<vec2<i32>, 10>();
    var var_2 = min(u_input.b, 4294967295u);
    var var_3 = Struct_1(max(u_input.c.x & 20370u, ~(~(~u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(vec4<i32>(1i, var_0.x, 25865i, 0i) << (vec4<u32>(global0.a, var_3.a, var_3.a, 0u) % vec4<u32>(32u)))) & ((_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.e, 0i), vec4<i32>(-2147483647i, -29600i, -1i, u_input.d)) >> (abs(vec4<u32>(u_input.c.x, 1639u, global0.a, 1u)) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_3.a, 63350u, u_input.b, 4294967295u)), vec4<u32>(u_input.b, global0.a, u_input.c.x, 0u)) % vec4<u32>(32u))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(31857u, u_input.b), var_3.a, 9132u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.a, global0.a, var_3.a), abs(firstLeadingBit(vec3<u32>(11570u, 50844u, 19773u))))), vec4<u32>(var_3.a, 78116u, 22014u, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c.x & 0u, abs(u_input.c.x)), ~4921u)), 2147483647i, reverseBits(min(vec3<u32>(25685u, global0.a, 1u), vec3<u32>(var_3.a, var_3.a, firstLeadingBit(global0.a)))));
}

