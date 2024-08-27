struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<vec3<bool>, 16>;

var<private> global4: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-1000f, vec4<f32>(625f, 324f, -334f, 1322f), vec2<i32>(1i, -1i), vec3<bool>(false, true, true)), Struct_1(-1000f, vec4<f32>(2058f, -390f, -1404f, -687f), vec2<i32>(2147483647i, 0i), vec3<bool>(true, true, false)), Struct_1(239f, vec4<f32>(264f, 1470f, 1072f, 261f), vec2<i32>(1i, -14193i), vec3<bool>(false, true, false)), Struct_1(2035f, vec4<f32>(630f, 612f, 873f, -354f), vec2<i32>(-36637i, 15038i), vec3<bool>(false, true, false)), Struct_1(371f, vec4<f32>(-515f, -1577f, 1734f, 1430f), vec2<i32>(3060i, i32(-2147483648)), vec3<bool>(true, true, false)), Struct_1(1818f, vec4<f32>(-1028f, 1439f, -110f, -2377f), vec2<i32>(1i, 11693i), vec3<bool>(true, true, false)), Struct_1(386f, vec4<f32>(322f, 710f, -1573f, -2380f), vec2<i32>(2147483647i, -50909i), vec3<bool>(false, true, false)), Struct_1(1031f, vec4<f32>(1167f, 285f, 417f, -1156f), vec2<i32>(-3282i, 2147483647i), vec3<bool>(false, true, true)), Struct_1(-2529f, vec4<f32>(-239f, -321f, 383f, -1000f), vec2<i32>(-7716i, -28387i), vec3<bool>(false, true, true)), Struct_1(427f, vec4<f32>(-2316f, 1612f, 1490f, 1337f), vec2<i32>(2147483647i, -59592i), vec3<bool>(true, false, false)), Struct_1(861f, vec4<f32>(1000f, -1388f, 1000f, -894f), vec2<i32>(13734i, 1i), vec3<bool>(true, false, true)), Struct_1(139f, vec4<f32>(-533f, 739f, -566f, 238f), vec2<i32>(12013i, 2147483647i), vec3<bool>(true, true, true)), Struct_1(-1185f, vec4<f32>(-1062f, 208f, -853f, 1743f), vec2<i32>(28264i, 0i), vec3<bool>(true, false, false)), Struct_1(-599f, vec4<f32>(679f, -443f, -365f, 1000f), vec2<i32>(-8058i, -1i), vec3<bool>(false, true, false)), Struct_1(-1396f, vec4<f32>(-1000f, -674f, 109f, 771f), vec2<i32>(-599i, 2147483647i), vec3<bool>(false, false, false)), Struct_1(1481f, vec4<f32>(-1472f, 820f, 655f, 777f), vec2<i32>(-4987i, -41881i), vec3<bool>(false, false, false)), Struct_1(-1000f, vec4<f32>(-570f, 1150f, -691f, 1244f), vec2<i32>(-51130i, i32(-2147483648)), vec3<bool>(false, true, false)), Struct_1(764f, vec4<f32>(1486f, 341f, 581f, -132f), vec2<i32>(2147483647i, 34245i), vec3<bool>(false, false, false)), Struct_1(-942f, vec4<f32>(1024f, -1797f, 1514f, 846f), vec2<i32>(1387i, 44476i), vec3<bool>(true, false, false)), Struct_1(691f, vec4<f32>(-1047f, -138f, -535f, -101f), vec2<i32>(0i, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_1(-163f, vec4<f32>(1189f, 1884f, -929f, 198f), vec2<i32>(2147483647i, 1i), vec3<bool>(false, true, true)), Struct_1(-163f, vec4<f32>(425f, -1564f, 1000f, 1000f), vec2<i32>(1i, -22996i), vec3<bool>(false, false, false)), Struct_1(-443f, vec4<f32>(309f, 1821f, 1033f, -740f), vec2<i32>(2147483647i, -172i), vec3<bool>(false, false, false)), Struct_1(284f, vec4<f32>(-347f, -1049f, 984f, -1122f), vec2<i32>(-1i, 1i), vec3<bool>(true, true, false)), Struct_1(-2211f, vec4<f32>(-1835f, 934f, -384f, 918f), vec2<i32>(-30453i, 0i), vec3<bool>(true, true, false)), Struct_1(909f, vec4<f32>(-818f, 1000f, -1000f, -815f), vec2<i32>(58206i, 1i), vec3<bool>(true, false, false)), Struct_1(826f, vec4<f32>(-921f, -1152f, 243f, 1000f), vec2<i32>(-1339i, 1i), vec3<bool>(false, false, true)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    var var_0 = global4[_wgslsmith_index_u32(~reverseBits(u_input.d), 27u)];
    var var_1 = var_0.d;
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * global1.b.x)), -769f))));
    var var_3 = Struct_1(var_2.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, -617f, 422f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, global2.a, 2097f, var_2.x) - vec4<f32>(434f, 167f, global1.b.x, 962f)))) * var_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1000f, var_0.b.x, 942f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.b))))), -_wgslsmith_clamp_vec2_i32(~(var_0.c ^ vec2<i32>(2147483647i, -38240i)), vec2<i32>(-u_input.a.x, i32(-1i) * -15405i), u_input.a.yw), vec3<bool>(!(var_0.d.x | (global1.d.x || true)), !(-u_input.b > global1.c.x), select(global2.d.x, true, var_1.x) || (!global2.d.x && any(vec4<bool>(global1.d.x, var_0.d.x, false, false)))));
    let var_4 = global4[_wgslsmith_index_u32(0u, 27u)];
    return 4294967295u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(700f, -1027f));
    var var_1 = global4[_wgslsmith_index_u32(func_3(), 27u)];
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(select(arg_1.xy, vec2<u32>(global0[_wgslsmith_index_u32(14330u, 27u)], 2577u), true), ~arg_1.yx), arg_1.ww), vec2<u32>(abs(global0[_wgslsmith_index_u32(35339u, 27u)]), ~(arg_1.x & 4294967295u))) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_1, countOneBits(arg_1)), ~_wgslsmith_div_vec4_u32(vec4<u32>(11765u, 68020u, 0u, global0[_wgslsmith_index_u32(4294967295u, 27u)]), arg_1)) % 32u), 27u)];
    let var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(~arg_1.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_1.zy, min(vec2<u32>(84756u, global0[_wgslsmith_index_u32(0u, 27u)]), arg_1.xz)), u_input.d)), ~(~arg_1.zy));
    global3 = array<vec3<bool>, 16>();
    return 970f;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(select(select(global1.d.xy, vec2<bool>(arg_2, false), global1.d.xz), select(global2.d.yy, global2.d.zy, global1.d.zz), arg_2), _wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.d, 27u)], 0u, 15784u, 64972u) << (vec4<u32>(77193u, u_input.d, 40385u, u_input.d) % vec4<u32>(32u)), vec4<u32>(1u, 61247u, global0[_wgslsmith_index_u32(4294967295u, 27u)], u_input.d)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.b.zyy))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1532f - global1.a)))))), global2.b, ~vec2<i32>(u_input.a.x, reverseBits(-34326i)), global1.d);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1382f * global2.a), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.b, global1.b), var_0.b), vec2<i32>(-_wgslsmith_dot_vec2_i32(var_0.c, global1.c), _wgslsmith_mod_i32(reverseBits(_wgslsmith_sub_i32(arg_0, u_input.a.x)), _wgslsmith_add_i32(arg_0, -4469i))), var_0.d);
    global4 = array<Struct_1, 27>();
    var var_2 = global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(u_input.c, 18268u, u_input.c), ~vec3<u32>(u_input.c, u_input.d, 4294967295u), any(select(vec4<bool>(false, global1.d.x, false, true), vec4<bool>(true, global1.d.x, false, var_0.d.x), global1.d.x))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(20162u, global0[_wgslsmith_index_u32(17750u, 27u)], 4294967295u) ^ vec3<u32>(u_input.d, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(u_input.d, 27u)]), max(vec3<u32>(global0[_wgslsmith_index_u32(126097u, 27u)], 39084u, 20050u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.d, 27u)], u_input.c))))), 27u)];
    return StorageBuffer(-firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.a.zxx, vec3<i32>(74234i, 2147483647i, var_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(!(true == all(vec2<bool>(false, false))), !global2.d.x, true), select(vec3<bool>(global1.d.x, global2.d.x, all(!vec4<bool>(true, global1.d.x, true, global2.d.x))), !select(select(global3[_wgslsmith_index_u32(1u, 16u)], vec3<bool>(true, global2.d.x, true), global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 16u)]), global1.d, false), global2.d.x || global2.d.x), false);
    var_0 = select(select(vec3<bool>(false, var_0.x, any(global1.d)), vec3<bool>(all(!global1.d.yz), (false | global1.d.x) == (global2.b.x < global2.a), true), abs(_wgslsmith_mod_u32(1251u, 1u)) > u_input.d), global2.d, any(!global1.d.xy));
    let var_1 = vec2<u32>(u_input.d, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23958u, 27u)], 27u)], 17097u, 77806u, global0[_wgslsmith_index_u32(0u, 27u)]), reverseBits(~vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(1u, 27u)], 3238u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53456u, 27u)], 27u)])))) << (vec2<u32>(global0[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.d, 27u)], u_input.c)), 27u)], 234u) % vec2<u32>(32u));
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    let x = u_input.a;
    s_output = func_1(global1.c.x, !(~var_1.x >= ~_wgslsmith_mod_u32(4294967295u, var_1.x)), (global0[_wgslsmith_index_u32(select(~0u, 4294967295u, global2.b.x == 944f), 27u)] >> (_wgslsmith_div_u32(~1u, global0[_wgslsmith_index_u32(~u_input.d, 27u)]) % 32u)) > var_1.x);
}

