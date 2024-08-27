struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<f32, 12> = array<f32, 12>(-203f, -133f, 1000f, 584f, -273f, -1653f, 1175f, 1199f, 1397f, 347f, 684f, -684f);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_add_u32(arg_0, ~(~arg_0 & 4294967295u)), true, _wgslsmith_f_op_f32(arg_1 * -650f));
    let var_1 = any(vec3<bool>(false, all(!(!vec2<bool>(true, var_0.b))), var_0.b));
    global1 = array<f32, 12>();
    let var_2 = Struct_1(0u, var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))));
    global1 = array<f32, 12>();
    return -2147483647i;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(~4294967295u, true, global1[_wgslsmith_index_u32(u_input.a.x, 12u)]);
    global0 = vec2<i32>(global0.x, global0.x ^ -3151i);
    let var_1 = vec4<bool>(var_0.b, all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.b), vec2<bool>(false, var_0.b), false), vec2<bool>(var_0.b, true)), !select(vec2<bool>(false, var_0.b), vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, var_0.b)), var_0.b)), false, true);
    let var_2 = _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(select(-vec4<i32>(0i, global0.x, -2147483647i, global0.x), vec4<i32>(global0.x, global0.x, global0.x, global0.x), true), vec4<i32>(~1218i, global0.x, _wgslsmith_add_i32(global0.x, global0.x), countOneBits(global0.x))), _wgslsmith_sub_vec4_i32(abs(select(vec4<i32>(global0.x, -1i, -2147483647i, global0.x), vec4<i32>(0i, global0.x, global0.x, global0.x), var_1)), ~(vec4<i32>(global0.x, global0.x, 33797i, 70992i) << (u_input.a % vec4<u32>(32u)))), vec4<i32>(global0.x, -1i, ~_wgslsmith_mod_i32(-30005i, global0.x), func_3(0u, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(60119u, 12u)] * 1647f)))) ^ _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(select(-vec4<i32>(-10469i, -2147483647i, global0.x, 0i), ~vec4<i32>(global0.x, global0.x, 2562i, -35247i), select(true, var_0.b, var_1.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, -28934i, global0.x, -2147483647i), vec4<i32>(2147483647i, global0.x, global0.x, global0.x), select(vec4<i32>(global0.x, -23094i, global0.x, global0.x), vec4<i32>(global0.x, 2147483647i, global0.x, global0.x), var_1)), vec4<i32>(_wgslsmith_clamp_i32(global0.x, global0.x, global0.x), global0.x, 1i, 11419i & global0.x)), vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(global0.x), _wgslsmith_div_i32(global0.x, 1i)), ~(~global0.x), -(~global0.x), -13400i));
    return Struct_1(4294967295u, true, global1[_wgslsmith_index_u32(~(~0u), 12u)]);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    var var_0 = func_2((select(min(u_input.a.zw, vec2<u32>(arg_1.a, 2143u)), vec2<u32>(32056u, 1u), !vec2<bool>(arg_1.b, arg_1.b)) >> (_wgslsmith_mult_vec2_u32(~u_input.a.yz, ~u_input.a.zz) % vec2<u32>(32u))) << (u_input.a.xw % vec2<u32>(32u)));
    let var_1 = -_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, -1i, -2147483647i), vec4<i32>(global0.x, -31574i, global0.x, 1i)), firstLeadingBit(vec4<i32>(1i, global0.x, 63576i, global0.x)), arg_1.b), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 4620i, global0.x, global0.x), vec4<i32>(-61124i, -2147483647i, global0.x, global0.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, arg_1.a, arg_1.a, 17647u), vec4<u32>(103821u, arg_1.a, u_input.a.x, var_0.a), u_input.a) % vec4<u32>(32u)), select(abs(vec4<i32>(-4195i, 1i, global0.x, 17577i)), ~vec4<i32>(global0.x, global0.x, global0.x, global0.x), true)), vec4<i32>(-1i, global0.x, reverseBits(select(-1i, global0.x, var_0.b)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(global0.x, -37330i, global0.x), 7019i)));
    global1 = array<f32, 12>();
    var var_2 = 9699u >> (_wgslsmith_mod_u32(~var_0.a, var_0.a) % 32u);
    var var_3 = Struct_1(0u, false || !(var_0.c >= 248f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c))));
    return _wgslsmith_mod_u32(countOneBits((1u ^ arg_1.a) ^ ~var_0.a) ^ var_3.a, _wgslsmith_dot_vec3_u32(min(firstTrailingBit(u_input.a.xzz & u_input.a.yyz), ~u_input.a.yyw), vec3<u32>(arg_1.a | var_0.a, firstLeadingBit(74464u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(21140u, 11171u, var_0.a), u_input.a.yxz), firstTrailingBit(var_0.a), 5229u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), true));
    global1 = array<f32, 12>();
    var var_1 = -(~1i);
    var_0 = false;
    var var_2 = Struct_1(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1894u, 44225u, u_input.a.x) & vec3<u32>(115240u, 0u, u_input.a.x), min(u_input.a.wxy, u_input.a.yxy))), global1[_wgslsmith_index_u32(0u, 12u)] < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 12u)] + global1[_wgslsmith_index_u32(39415u, 12u)])) * global1[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 12u)]), Struct_1(0u, true, 1292f)), 12u)]), -1000f);
    let var_3 = true;
    var_0 = any(select(!vec2<bool>(global0.x <= global0.x, all(vec4<bool>(true, var_2.b, var_2.b, var_3))), vec2<bool>(true, !select(false, var_2.b, true)), !select(vec2<bool>(false, var_3), select(vec2<bool>(false, true), vec2<bool>(true, false), var_3), select(vec2<bool>(true, true), vec2<bool>(var_3, true), var_3))));
    var var_4 = 379u;
    let x = u_input.a;
    s_output = StorageBuffer(-(abs(vec3<i32>(0i, 0i, 0i) | vec3<i32>(global0.x, global0.x, global0.x)) ^ firstLeadingBit(vec3<i32>(-16852i, global0.x, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_2.c, 326f))))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-626f, var_2.c, -433f, global1[_wgslsmith_index_u32(var_2.a, 12u)])) * vec4<f32>(-363f, var_2.c, global1[_wgslsmith_index_u32(1u, 12u)], var_2.c)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(var_2.a | u_input.a.x, 12u)], _wgslsmith_f_op_f32(ceil(1000f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1783f, 771f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.c, global1[_wgslsmith_index_u32(0u, 12u)]), vec2<f32>(global1[_wgslsmith_index_u32(var_2.a, 12u)], -528f), false)))))), vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(816f))));
}

