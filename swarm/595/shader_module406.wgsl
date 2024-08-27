struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: array<bool, 26> = array<bool, 26>(true, false, false, false, false, false, true, false, false, false, false, true, true, true, true, true, true, true, false, true, false, true, true, true, true, false);

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-783f, -1000f, -1734f, -445f), -238f, vec2<i32>(2147483647i, -25671i), 1034f);

var<private> global3: array<u32, 30> = array<u32, 30>(76948u, 14866u, 4294967295u, 119665u, 97963u, 26248u, 46783u, 55348u, 4294967295u, 12710u, 51021u, 10425u, 65474u, 1u, 34718u, 39186u, 35501u, 0u, 0u, 1u, 1u, 92932u, 0u, 1u, 4294967295u, 22851u, 1u, 0u, 1u, 132117u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    global1 = array<bool, 26>();
    var var_0 = false;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -270f), Struct_3(~max(_wgslsmith_mod_u32(28246u, 45577u), firstTrailingBit(48385u)), _wgslsmith_add_vec4_u32(select(max(vec4<u32>(u_input.c.x, arg_0, arg_0, u_input.b), vec4<u32>(1u, 4294967295u, 4294967295u, u_input.b)), vec4<u32>(0u, u_input.b, 1u, global3[_wgslsmith_index_u32(0u, 30u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0, 5u)], true, global1[_wgslsmith_index_u32(arg_0, 26u)])), vec4<u32>(1u, u_input.b, _wgslsmith_mod_u32(6655u, global3[_wgslsmith_index_u32(54406u, 30u)]), _wgslsmith_sub_u32(0u, 0u))), any(vec4<bool>(true, u_input.d.x > u_input.d.x, true, global3[_wgslsmith_index_u32(65249u, 30u)] >= 3855u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.a.x, arg_1.x, 1039f)))))));
    global3 = array<u32, 30>();
    let var_2 = _wgslsmith_mult_i32(1i, i32(-1i) * -max(22525i, ~global2.c.x));
    return 0u;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global2.a.wyw))), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, global2.b, -475f), vec3<f32>(global2.b, 131f, -936f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, global2.a.x) * global2.a.xxy), vec3<f32>(-561f, 129f, 714f))) * vec3<f32>(-904f, -1256f, 620f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(333f, global2.d, global2.b) + global2.a.xyw) - _wgslsmith_f_op_vec3_f32(-global2.a.xzw)))));
    global0 = array<bool, 5>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * -1606f))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * -187f), 515f)))), Struct_3(global3[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 15736u), arg_1, vec4<u32>(u_input.c.x, u_input.b, 1u, arg_1.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, u_input.c.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 30u)], 30u)], arg_1.x), arg_1) % vec4<u32>(32u)), firstTrailingBit(firstLeadingBit(vec4<u32>(26307u, arg_1.x, u_input.b, 4294967295u)))), global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(arg_1.zw, _wgslsmith_sub_vec2_u32(u_input.c, u_input.c))), 5u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.yzy) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, var_0.x, var_0.x))) - vec3<f32>(-225f, _wgslsmith_f_op_f32(abs(var_0.x)), var_1))));
    global3 = array<u32, 30>();
    return max(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(16642i, 2147483647i, u_input.a), ~u_input.d.xxx), u_input.d.x), ~u_input.d.x) <= global2.c.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = vec3<bool>(func_4(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], all(!vec4<bool>(global1[_wgslsmith_index_u32(arg_0.a, 26u)], false, false, global1[_wgslsmith_index_u32(1u, 26u)]))), ~vec4<u32>(~41524u, u_input.b, func_3(arg_0.a, arg_1.xxz), firstTrailingBit(u_input.c.x))), true, any(vec4<bool>(true, !global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global0[_wgslsmith_index_u32(arg_0.a, 5u)], global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c.x, 1u), 26u)])));
    global3 = array<u32, 30>();
    var var_1 = Struct_3(abs(1u << (u_input.c.x % 32u)), vec4<u32>(firstLeadingBit(0u), reverseBits(~_wgslsmith_mult_u32(23500u, 30502u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(29329u, 30u)], 22174u), select(vec2<u32>(arg_0.a, global3[_wgslsmith_index_u32(arg_0.a, 30u)]), vec2<u32>(1u, 1u), vec2<bool>(var_0.x, var_0.x))), u_input.b), global3[_wgslsmith_index_u32(18713u, 30u)]), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32((_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(arg_0.a, 30u)], arg_0.a) << (1u % 32u)) | abs(global3[_wgslsmith_index_u32(~24147u, 30u)]), ~_wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.a, arg_0.a, u_input.c.x), vec4<u32>(arg_0.a, arg_0.a, global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(arg_0.a, 30u)])))), 30u)], 26u)], arg_0.c.yyx);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-1f), Struct_3(1u, reverseBits(select(vec4<u32>(0u, 41085u, 1u, 44934u), vec4<u32>(arg_0.a, 0u, u_input.c.x, global3[_wgslsmith_index_u32(u_input.c.x, 30u)]), var_0.x)) ^ ~(~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 30u)], 36886u, 0u)), false, arg_1.yyx));
    var var_3 = var_2.b;
    return Struct_1(arg_0.c, var_1.d.x, global2.c, var_2.a);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    global3 = array<u32, 30>();
    global2 = func_2(Struct_2(u_input.c.x, arg_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.c - _wgslsmith_div_vec4_f32(global2.a, vec4<f32>(arg_0.c.x, -502f, -573f, 444f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c), vec4<f32>(global2.a.x, 319f, global2.b, 1441f))) + arg_0.c));
    let var_0 = vec3<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(u_input.c.x, 30u)], min(49865u, 28441u), _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, global3[_wgslsmith_index_u32(5068u, 30u)])), 26u)] == arg_1, !any(!select(vec3<bool>(true, arg_2.x, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 30u)], 5u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30164u, 30u)], 26u)], false), true)), true);
    global3 = array<u32, 30>();
    let var_1 = -7464i;
    return global3[_wgslsmith_index_u32(1u, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(!select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 26u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(48611u, 26u)], global0[_wgslsmith_index_u32(u_input.b, 5u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(41473u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)])), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 30u)], 26u)], true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 26u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 30u)], 5u)], true, false)), !global0[_wgslsmith_index_u32(27388u, 5u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(select(countOneBits(u_input.c.x), 0u << (1u % 32u), any(vec2<bool>(true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(61102u, 30u)], 30u)], 26u)]))), 30u)], 26u)], false, true), vec3<bool>(false, any(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 5u)], false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 30u)], 5u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(5464u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 5u)], false, global0[_wgslsmith_index_u32(u_input.b, 5u)]))), true), vec3<bool>(global1[_wgslsmith_index_u32(select(u_input.b, ~1u, any(vec2<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 30u)], 30u)], 5u)], global1[_wgslsmith_index_u32(1u, 26u)]))), 26u)], global1[_wgslsmith_index_u32(abs(func_1(Struct_2(u_input.b, u_input.a, vec4<f32>(-1214f, 368f, 749f, global2.b)), false, vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 26u)]))), 26u)], all(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 5u)], true, global0[_wgslsmith_index_u32(40219u, 5u)])))), select(select(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 26u)], false, global0[_wgslsmith_index_u32(u_input.b, 5u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 30u)], 30u)], 5u)], global1[_wgslsmith_index_u32(u_input.b, 26u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(17748u, 5u)])), !vec3<bool>(global1[_wgslsmith_index_u32(19487u, 26u)], global0[_wgslsmith_index_u32(80502u, 5u)], global1[_wgslsmith_index_u32(51140u, 26u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_1(Struct_2(0u, 2147483647i, global2.a), true, vec2<bool>(true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16972u, 30u)], 30u)], 26u)])), 30u)], 30u)] >= abs(global3[_wgslsmith_index_u32(1u, 30u)])), vec3<bool>(false, true, func_3(u_input.b, vec3<f32>(764f, global2.a.x, -204f)) > ~u_input.c.x), !select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], global0[_wgslsmith_index_u32(1u, 5u)]), vec3<bool>(global1[_wgslsmith_index_u32(20194u, 26u)], false, true), !vec3<bool>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 30u)], 26u)], global1[_wgslsmith_index_u32(0u, 26u)], false))));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, global2.b, global2.b, 143f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, 2361f, global2.d, 1303f) * global2.a))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-751f)), _wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(ceil(global2.b)), global2.b) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1761f, -1000f, -313f, global2.a.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a.x))), firstLeadingBit(vec2<i32>(i32(-1i) * -35023i, -(i32(-1i) * -1i))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.a.x, 626f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-995f))))))));
    global0 = array<bool, 5>();
    let var_1 = !select(vec3<bool>(var_0.x, true, true), !(!(!vec3<bool>(global0[_wgslsmith_index_u32(36884u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(u_input.c.x, 26u)]))), func_4(select(var_0.zx, select(vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(3580u, 5u)]), var_0.xy, var_0.xx), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 5u)])), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.b, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 30u)], 30u)], 30u)], 30u)]), _wgslsmith_mod_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 30u)], 57747u, 40724u, global3[_wgslsmith_index_u32(u_input.b, 30u)]), vec4<u32>(23727u, u_input.b, u_input.c.x, global3[_wgslsmith_index_u32(u_input.c.x, 30u)])))));
    global3 = array<u32, 30>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.b << (select(global3[_wgslsmith_index_u32(~11810u, 30u)], 1u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(47060u, 14239u), 5u)]) % 32u), 2271u), _wgslsmith_mult_u32(u_input.c.x, ~(~countOneBits(5207u)))), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(~abs(select(vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(u_input.c.x, 30u)], 1u, 33994u) & vec4<u32>(1u, u_input.b, global3[_wgslsmith_index_u32(8357u, 30u)], global3[_wgslsmith_index_u32(u_input.b, 30u)]), vec4<u32>(u_input.c.x, global3[_wgslsmith_index_u32(57467u, 30u)], 10753u, u_input.b), !vec4<bool>(false, var_0.x, false, var_1.x))), select(u_input.d, _wgslsmith_mult_vec4_i32(select(u_input.d, vec4<i32>(global2.c.x, global2.c.x, u_input.a, 2147483647i), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], true, var_0.x)) ^ vec4<i32>(-10627i, global2.c.x, -1i, global2.c.x), -u_input.d), !(!all(vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec3_f32(sign(global2.a.wzy)));
}

