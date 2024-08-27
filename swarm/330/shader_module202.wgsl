struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(1291f, -1000f, 1279f, 591f, -449f, 165f, -584f, 2534f, 1070f, -100f, 1238f, -398f, -1130f, 754f, 1368f, -1287f, -456f, 553f, -572f, -607f, -985f, 1000f, 722f, -882f, 841f, -485f, -1849f, 1383f, -1000f);

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-1i, 2147483647i, -13866i), vec3<i32>(44824i, 1i, -1i), vec3<i32>(i32(-2147483648), -5191i, 1i), vec3<i32>(-25887i, 0i, -1i), vec3<i32>(0i, 42014i, 1i), vec3<i32>(i32(-2147483648), 57174i, 1i), vec3<i32>(-36967i, 2147483647i, 2147483647i), vec3<i32>(949i, 1i, 56667i), vec3<i32>(1i, i32(-2147483648), -11341i), vec3<i32>(68715i, 0i, 1i), vec3<i32>(24339i, i32(-2147483648), 56218i), vec3<i32>(2147483647i, 22889i, 20895i), vec3<i32>(i32(-2147483648), 0i, 9745i), vec3<i32>(30372i, i32(-2147483648), 35959i), vec3<i32>(10918i, -73i, 20794i), vec3<i32>(1i, -1i, -45925i), vec3<i32>(33588i, 1i, 0i), vec3<i32>(-1i, -27021i, i32(-2147483648)), vec3<i32>(66408i, i32(-2147483648), 1i), vec3<i32>(12539i, -11826i, 0i), vec3<i32>(1i, i32(-2147483648), -19903i), vec3<i32>(2147483647i, -70051i, 48367i), vec3<i32>(-1i, 17735i, -24010i), vec3<i32>(1i, 27669i, 2147483647i), vec3<i32>(55203i, 18151i, -19279i), vec3<i32>(0i, -1i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 922i), vec3<i32>(10999i, 2147483647i, -1906i));

var<private> global2: f32;

var<private> global3: vec4<bool>;

var<private> global4: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<i32> {
    global1 = array<vec3<i32>, 28>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-328f - _wgslsmith_f_op_f32(min(-1000f, 2575f))), 60967u ^ _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(25176u, 1u, arg_0.b, arg_0.b), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, 18081u, 15098u), vec4<u32>(arg_0.b, 1u, arg_0.b, arg_0.b)), ~vec4<u32>(1u, 4294967295u, 1u, 60439u)), firstLeadingBit(firstLeadingBit(vec4<u32>(arg_0.b, arg_0.b, 4294967295u, arg_0.b)))), arg_0.c, !global3.wyw);
    global0 = array<f32, 29>();
    return reverseBits(select(reverseBits(vec2<i32>(u_input.a, 1i)) | -vec2<i32>(u_input.a, 23703i), firstTrailingBit(-max(vec2<i32>(-2147483647i, -16899i), vec2<i32>(u_input.a, u_input.a))), !global3.x));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(46218u, 29u)];
    var_0 = global0[_wgslsmith_index_u32(13835u, 29u)];
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(0u, 0u)), 29u)], 1u, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(887f, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]) - vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], 3269f, global0[_wgslsmith_index_u32(50619u, 29u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1070f, global0[_wgslsmith_index_u32(1u, 29u)], 1152f) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(2932u, 29u)], global0[_wgslsmith_index_u32(18429u, 29u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(28324u, 29u)], global0[_wgslsmith_index_u32(52333u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global0[_wgslsmith_index_u32(18341u, 29u)], global0[_wgslsmith_index_u32(24690u, 29u)])))))), select(select(global3.zxz, select(vec3<bool>(global3.x, true, global3.x), !vec3<bool>(false, arg_0.x, false), !global3.x), vec3<bool>(all(vec3<bool>(true, false, true)), 1000f != global0[_wgslsmith_index_u32(1u, 29u)], arg_0.x)), select(select(select(global3.wyz, vec3<bool>(global3.x, false, false), vec3<bool>(false, false, arg_0.x)), select(vec3<bool>(arg_0.x, true, true), global3.wwx, arg_0), true), select(select(vec3<bool>(false, global3.x, false), vec3<bool>(arg_0.x, arg_0.x, global3.x), true), select(vec3<bool>(true, true, false), vec3<bool>(false, global3.x, true), false), arg_0), !arg_0), vec3<bool>(true, all(select(vec4<bool>(global3.x, arg_0.x, false, true), vec4<bool>(false, global3.x, global3.x, true), false)), any(!vec2<bool>(global3.x, false)))));
    var var_2 = var_1.b;
    global3 = !vec4<bool>(false, any(vec4<bool>(var_1.d.x, u_input.a == arg_1, any(vec3<bool>(var_1.d.x, global3.x, var_1.d.x)), true)), var_1.d.x, arg_0.x);
    return select(vec4<bool>(true, any(!arg_0) && false, false, var_1.d.x || (true && !var_1.d.x)), vec4<bool>(global3.x || (1i > _wgslsmith_sub_i32(arg_1, 12485i)), any(!select(global4[_wgslsmith_index_u32(var_1.b, 17u)], arg_0.xx, false)), global3.x, true), any(!var_1.d));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> u32 {
    global3 = func_3(!arg_2.d, _wgslsmith_dot_vec2_i32(func_2(Struct_1(arg_2.a, 57856u, vec3<f32>(arg_0, 1443f, arg_1), vec3<bool>(arg_2.d.x, false, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -496f, -1743f, arg_0))), vec2<i32>(-(~27588i), _wgslsmith_clamp_i32(select(-2147483647i, -2147483647i, false), abs(u_input.a), reverseBits(0i)))));
    return ~(select(_wgslsmith_sub_u32(arg_2.b, 171527u), ~arg_2.b, true) & 36244u) << (min(arg_2.b, 0u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(15383u, 29u)]));
    var var_0 = ~(countOneBits(vec4<u32>(func_1(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], Struct_1(global0[_wgslsmith_index_u32(51782u, 29u)], 1u, vec3<f32>(403f, 963f, global0[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(false, global3.x, global3.x))), ~0u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 84685u, 30459u, 67852u), vec4<u32>(492u, 29382u, 19499u, 38403u)))) | _wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(1u, 13776u, 36833u, 25755u)), select(vec4<u32>(51259u, 36404u, 4294967295u, 0u), ~vec4<u32>(15767u, 53698u, 53409u, 7134u), !vec4<bool>(global3.x, false, global3.x, true))));
    var var_1 = vec4<u32>(var_0.x ^ 0u, 15057u, _wgslsmith_mod_u32(~var_0.x, var_0.x), var_0.x);
    let var_2 = var_1.x;
    let var_3 = var_1.x;
    let var_4 = _wgslsmith_mod_i32(countOneBits(-35711i), _wgslsmith_mult_i32(abs(_wgslsmith_mult_i32(u_input.a, 2147483647i)), u_input.a) << (~min(~var_1.x, reverseBits(var_1.x)) % 32u));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-481f * -1000f), var_0.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -672f), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(71688u, 29u)])), -672f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1467f, global0[_wgslsmith_index_u32(32049u, 29u)], -1122f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 29u)], global0[_wgslsmith_index_u32(54966u, 29u)], 566f)), true)), global3.wxz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-331f, -122f, global0[_wgslsmith_index_u32(var_1.x, 29u)]) * vec3<f32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(var_0.x, 29u)], -443f)))))), global3.yyy);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_4, u_input.a, global3.x), -2147483647i, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -668f), -287f)), -1371f), 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 29u)]))), var_5.c.x)), ~(~_wgslsmith_mod_u32(~34458u, var_5.b)), _wgslsmith_mod_u32(var_0.x, var_0.x));
}

