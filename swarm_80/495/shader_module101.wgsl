struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 4294967295u, 0u, 64240u);

var<private> global1: vec3<f32>;

var<private> global2: vec4<f32> = vec4<f32>(876f, -976f, -386f, -1000f);

var<private> global3: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(1i, -9675i, 7833i, 2147483647i), vec4<i32>(-65288i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, -1i, 19353i, 0i), vec4<i32>(0i, -1i, i32(-2147483648), 1338i), vec4<i32>(1i, 50856i, 2147483647i, 2147483647i), vec4<i32>(0i, 18652i, 2147483647i, 0i), vec4<i32>(71593i, -15125i, 16936i, 1i), vec4<i32>(1955i, -9293i, 30585i, i32(-2147483648)), vec4<i32>(9000i, 2147483647i, -51116i, -1i), vec4<i32>(26905i, 18983i, -30323i, 1300i), vec4<i32>(0i, 50678i, -9486i, 2147483647i), vec4<i32>(37879i, 26704i, 0i, 1814i), vec4<i32>(-3980i, i32(-2147483648), -33421i, 18276i), vec4<i32>(12017i, -1i, 0i, -2979i), vec4<i32>(2147483647i, 1i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, 36371i, 28068i, -1i), vec4<i32>(19266i, 40646i, 3293i, i32(-2147483648)), vec4<i32>(-739i, 48574i, 2147483647i, 1i), vec4<i32>(1i, -1i, -13695i, 1i), vec4<i32>(-4025i, -2111i, -11719i, 23195i), vec4<i32>(17437i, 66231i, -3700i, i32(-2147483648)), vec4<i32>(91454i, 58933i, -38589i, 0i), vec4<i32>(-1148i, -355i, -1i, -1i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 46852i), vec4<i32>(-6215i, 15859i, 1i, 28684i), vec4<i32>(i32(-2147483648), -3411i, -1i, 41001i), vec4<i32>(0i, -8418i, 0i, -40413i), vec4<i32>(-33975i, -7829i, 1i, i32(-2147483648)), vec4<i32>(14041i, -1i, 1i, -32543i), vec4<i32>(-1i, 26489i, i32(-2147483648), -15534i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = -219f;
    let var_1 = all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))) | (u_input.c.x > u_input.c.x);
    var var_2 = 677f;
    var var_3 = 4294967295u;
    var var_4 = Struct_1(all(select(select(!vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), vec2<bool>(true, true)), select(vec2<bool>(false, var_1), !vec2<bool>(false, var_1), vec2<bool>(true, false)), var_1)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(228f, 1323f, global1.x, 2232f) + vec4<f32>(global2.x, global1.x, -332f, -1000f)), vec4<f32>(1049f, global1.x, 344f, 216f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -350f, 1182f, global1.x) + vec4<f32>(-1040f, -1922f, 524f, global1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global1.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-439f, global1.x, global1.x, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(973f, global1.x, -503f, -1252f))))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_i32(1i, abs(_wgslsmith_mult_i32(1i, 2147483647i)));
    let var_1 = arg_1;
    let var_2 = Struct_2(select(u_input.a, u_input.c.x, !arg_0.x), global3[_wgslsmith_index_u32(var_1, 30u)], Struct_1(true), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_add_u32(abs(4294967295u), firstTrailingBit(var_1)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global0.yxx, vec3<u32>(u_input.b.x, 0u, 0u)), 0u)), global0.xwz));
    global0 = u_input.b;
    let var_3 = !vec4<bool>(true | all(!vec3<bool>(var_2.c.a, arg_0.x, var_2.c.a)), 35617u <= arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(58310u, 20416u, arg_1), vec3<u32>(var_2.d.x, var_1, var_2.d.x) ^ var_2.d) < ~arg_1, true);
    return select(select(vec2<bool>(select(true, arg_0.x & true, true), (var_2.d.x & var_1) >= _wgslsmith_div_u32(1u, 1u)), vec2<bool>(!any(vec2<bool>(true, true)), true), !vec2<bool>(-2147483647i <= u_input.c.x, true)), var_3.zx, select(var_2.c.a, arg_0.x, all(select(select(var_3, var_3, vec4<bool>(arg_0.x, var_3.x, true, false)), vec4<bool>(var_3.x, false, true, false), vec4<bool>(true, var_3.x, false, arg_0.x)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(-119f, global1.x, select(true, true, true))), _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_div_f32(-985f, 1981f), true)), -712f, 143f), _wgslsmith_f_op_vec4_f32(func_2(-16662i))))));
    global3 = array<vec4<i32>, 30>();
    let var_0 = func_3(!vec2<bool>(false, 1u >= _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), global0.x);
    return Struct_3(select(vec3<bool>(any(!vec3<bool>(true, var_0.x, var_0.x)), all(vec2<bool>(true, true)), select(false, true, true | var_0.x)), vec3<bool>(arg_0.x > _wgslsmith_sub_i32(u_input.a, arg_0.x), false, true), !select(vec3<bool>(true, false, var_0.x), !vec3<bool>(true, var_0.x, true), var_0.x && var_0.x)), abs(u_input.b.xy), false, 54055i);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    global3 = array<vec4<i32>, 30>();
    let var_0 = arg_1.b;
    let var_1 = func_1(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2, u_input.a, arg_0.x), u_input.c.yww), vec3<i32>(arg_2, -7289i, arg_0.x), u_input.c.wxw), select(select(u_input.c.zwz, vec3<i32>(0i, arg_2, arg_1.d), arg_1.c), vec3<i32>(arg_2, arg_2, arg_1.d), arg_1.a.x)), ~min(0i, arg_1.d) | _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_2, u_input.a, -27959i, arg_1.d)), u_input.c >> (u_input.b % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + 1000f)))) + 1000f));
    global3 = array<vec4<i32>, 30>();
    var var_2 = !(!(!(true | (true || arg_1.c))));
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_mod_vec3_u32(global0.yww, ~max(~vec3<u32>(u_input.b.x, u_input.b.x, 62089u), firstLeadingBit(u_input.b.wyw))), ~reverseBits(global0.www));
    let var_1 = Struct_2(2147483647i, ~_wgslsmith_mult_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 0i, -1i), vec4<i32>(-6093i, u_input.a, u_input.c.x, u_input.a)), -global3[_wgslsmith_index_u32(~1u, 30u)]), func_4(~max(-vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_mod_vec2_i32(u_input.c.wy, vec2<i32>(u_input.c.x, u_input.c.x))), func_1(abs(~vec2<i32>(24753i, 6782i)), global2.x), abs(firstTrailingBit(1i)) & u_input.c.x), countOneBits(vec3<u32>(u_input.b.x, abs(global0.x | 0u), ~abs(global0.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, -682f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1118f - global1.x))), _wgslsmith_f_op_vec4_f32(func_2(~var_1.b.x)).x), 798f), vec4<f32>(_wgslsmith_f_op_f32(934f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + 1598f), _wgslsmith_div_f32(global2.x, -244f))), 852f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + 587f), -314f), !select(!vec4<bool>(true, var_1.c.a, true, false), select(!vec4<bool>(var_1.c.a, var_1.c.a, false, false), vec4<bool>(var_1.c.a, true, false, false), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, var_1.c.a, var_1.c.a, true), vec4<bool>(var_1.c.a, var_1.c.a, var_1.c.a, var_1.c.a)))));
    var var_3 = Struct_3(!select(!(!vec3<bool>(var_1.c.a, var_1.c.a, var_1.c.a)), !(!vec3<bool>(false, var_1.c.a, var_1.c.a)), any(vec2<bool>(true, true))), vec2<u32>(abs(_wgslsmith_add_u32(5104u ^ u_input.b.x, select(0u, 1u, var_1.c.a))), u_input.b.x), false, ~(-select(~var_1.b.x, _wgslsmith_mod_i32(2147483647i, u_input.a), func_1(vec2<i32>(0i, 1i), -113f).a.x)));
    let var_4 = vec3<f32>(global1.x, -251f, _wgslsmith_f_op_f32(global1.x * var_2.x));
    let var_5 = vec4<bool>(any(select(vec2<bool>(var_3.c, -1i > u_input.c.x), vec2<bool>(var_3.d >= 0i, var_1.c.a), (var_3.d & var_1.a) <= ~(-2147483647i))), true, var_3.c, all(select(var_3.a.yz, var_3.a.yz, var_3.a.yy)) || any(vec4<bool>(!var_1.c.a, select(true, var_1.c.a, true), all(vec3<bool>(false, var_3.c, var_1.c.a)), var_1.a <= -1i)));
    let x = u_input.a;
    s_output = StorageBuffer((~(~var_1.d.x) >> (31299u % 32u)) << (~var_0.x % 32u), _wgslsmith_div_u32(~(~1u), ~func_1(u_input.c.wz & var_1.b.xw, _wgslsmith_f_op_f32(f32(-1f) * -1023f)).b.x), ~(~1i), -1i);
}

