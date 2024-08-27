struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(454f, 412f, 175f), vec3<f32>(-275f, -1437f, -484f), vec3<f32>(-1000f, 2110f, -2519f), vec3<f32>(1835f, -1275f, 973f), vec3<f32>(629f, 953f, 1197f), vec3<f32>(860f, 125f, -1387f), vec3<f32>(-264f, -502f, -376f));

var<private> global2: array<vec3<u32>, 24>;

var<private> global3: array<bool, 24>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_1.a, arg_1.b, 0i);
    var_0 = Struct_1(1u, arg_1.b, 18340i);
    let var_1 = vec2<i32>(21927i, -23763i);
    let var_2 = reverseBits(_wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 1i), min(vec2<i32>(global0[_wgslsmith_index_u32(arg_1.a, 1u)], arg_1.c), var_1)), max(vec2<i32>(global0[_wgslsmith_index_u32(~128648u, 1u)], ~1i), _wgslsmith_mult_vec2_i32(select(u_input.a, var_1, vec2<bool>(false, true)), vec2<i32>(1i, arg_0)))));
    global3 = array<bool, 24>();
    return var_0.b;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(136f * -702f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(4294967295u, 1u)], Struct_1(37200u, 1492f, global0[_wgslsmith_index_u32(var_0.x, 1u)])))))), global0[_wgslsmith_index_u32(var_0.x, 1u)]);
    var var_2 = var_1.b;
    var var_3 = Struct_1(countOneBits(~var_1.a), var_1.b, -firstLeadingBit(1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, 1u, arg_0.x), vec4<u32>(13652u, var_0.x, var_0.x, 0u)) % 32u)));
    var var_4 = Struct_1(~select(var_0.x >> (~19947u % 32u), 1u, !global3[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2283f, -584f)))), _wgslsmith_add_i32(-abs(var_3.c), firstTrailingBit(~12775i)) | ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(48349u, 1u)], 0i, u_input.a.x, -85187i), vec4<i32>(var_1.c, -1i, global0[_wgslsmith_index_u32(u_input.b, 1u)], -1019i))));
    return var_1;
}

fn func_1(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> f32 {
    var var_0 = Struct_2(func_2(~global2[_wgslsmith_index_u32(27391u, 24u)]), _wgslsmith_add_u32(min(arg_0, ~(~u_input.b)), firstLeadingBit(1u)));
    var_0 = Struct_2(Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.a.b, 1000f, true)), -858f, all(vec2<bool>(global3[_wgslsmith_index_u32(1u, 24u)], false))))), select(~reverseBits(0i), 19288i, arg_1.x)), _wgslsmith_sub_u32(reverseBits(44339u), _wgslsmith_dot_vec2_u32(vec2<u32>(50948u, _wgslsmith_div_u32(5951u, 38755u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b, 0u), vec2<u32>(1u, var_0.b)))));
    global1 = array<vec3<f32>, 7>();
    var var_1 = ~(-_wgslsmith_sub_vec3_i32(select(vec3<i32>(15692i, u_input.a.x, 1i), ~vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 1u)], u_input.a.x, var_0.a.c), !arg_1.zxx), -(~vec3<i32>(2147483647i, 1i, global0[_wgslsmith_index_u32(arg_0, 1u)]))));
    let var_2 = Struct_1(var_0.a.a, 239f, var_1.x);
    return 1f;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32) -> StorageBuffer {
    let var_0 = ~_wgslsmith_mod_u32(4294967295u, u_input.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(arg_0.zy));
    let var_2 = func_2(abs(select(vec3<u32>(abs(var_0), _wgslsmith_mod_u32(var_0, var_0), ~23418u), vec3<u32>(var_0 | 12647u, 4294967295u, u_input.b << (var_0 % 32u)), vec3<bool>(false == global3[_wgslsmith_index_u32(var_0, 24u)], !global3[_wgslsmith_index_u32(var_0, 24u)], global3[_wgslsmith_index_u32(u_input.b, 24u)]))));
    var var_3 = -(-abs(vec4<i32>(988i, -18163i, var_2.c, 2147483647i)) ^ ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_2.c, 2147483647i, var_2.c), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.c, 66428i, global0[_wgslsmith_index_u32(u_input.b, 1u)], -5931i), vec4<i32>(0i, -16227i, 0i, var_2.c))));
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-211f)), -417f)))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1))));
    return StorageBuffer(1i, -477f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 7>();
    let var_0 = vec3<i32>(2147483647i, 8043i, 1i);
    global2 = array<vec3<u32>, 24>();
    var var_1 = ~1u;
    global3 = array<bool, 24>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-575f, -611f, -533f) - vec3<f32>(1712f, -1916f, 208f)), vec3<f32>(1158f, 2241f, 601f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_1(u_input.b, vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 24u)], false, global3[_wgslsmith_index_u32(u_input.b, 24u)]), -33277i)), _wgslsmith_f_op_f32(trunc(-1307f)), _wgslsmith_f_op_f32(sign(-1336f))), vec3<f32>(_wgslsmith_f_op_f32(step(-1320f, 709f)), _wgslsmith_f_op_f32(round(2708f)), _wgslsmith_f_op_f32(func_3(0i, Struct_1(u_input.b, 578f, -101679i)))), _wgslsmith_div_u32(29655u, 115297u) == u_input.b))), 1125f);
}

