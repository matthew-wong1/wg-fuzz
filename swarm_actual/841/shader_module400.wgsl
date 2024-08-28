struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-1304f, -205f, -1588f, 571f, -309f, 1797f, 1091f, -2007f, -1082f, -281f, -597f, -2029f, 1066f, 1000f, 621f, -1000f, -371f, -1016f);

var<private> global1: array<vec2<i32>, 13>;

var<private> global2: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-27870i, 1i, 1i), vec3<i32>(37952i, 15554i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 0i), vec3<i32>(-1i, 2147483647i, 5631i), vec3<i32>(-5068i, 42671i, 17948i), vec3<i32>(0i, 1i, 0i), vec3<i32>(-1i, -7928i, -19642i), vec3<i32>(i32(-2147483648), 33461i, 2147483647i), vec3<i32>(-62772i, 2147483647i, -1i), vec3<i32>(-43258i, 31656i, 38082i), vec3<i32>(1i, 1i, 25767i), vec3<i32>(-36688i, 25738i, i32(-2147483648)), vec3<i32>(2147483647i, -11208i, 48934i), vec3<i32>(18935i, -1i, 2043i), vec3<i32>(-16195i, -4797i, 11068i), vec3<i32>(36278i, 2147483647i, 1i), vec3<i32>(-1i, -1i, 22962i), vec3<i32>(-30528i, 47484i, 41246i), vec3<i32>(i32(-2147483648), 26032i, 1i), vec3<i32>(i32(-2147483648), 12955i, 1i), vec3<i32>(2147483647i, 80863i, 2147483647i), vec3<i32>(49913i, 2147483647i, 2147483647i), vec3<i32>(17426i, -1i, 19050i), vec3<i32>(0i, -24768i, -1i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 20389i, -53805i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(13557i, -13212i, -24665i), vec3<i32>(-37562i, 19261i, -34388i), vec3<i32>(48210i, 12322i, -4513i), vec3<i32>(-66685i, -21459i, -1i), vec3<i32>(18280i, -52195i, -1i));

var<private> global3: array<f32, 9> = array<f32, 9>(472f, 664f, -1203f, -942f, -347f, -184f, 827f, 423f, 927f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<i32> {
    global1 = array<vec2<i32>, 13>();
    var var_0 = vec2<u32>(firstTrailingBit(0u), select(_wgslsmith_div_u32(~u_input.b.x, 54998u), _wgslsmith_dot_vec4_u32(countOneBits(abs(u_input.b)), (u_input.b >> (vec4<u32>(u_input.e.x, 50225u, 4294967295u, u_input.b.x) % vec4<u32>(32u))) ^ u_input.b), !(~u_input.b.x == 1u)));
    var var_1 = vec2<f32>(global3[_wgslsmith_index_u32(var_0.x, 9u)], 1380f);
    global0 = array<f32, 18>();
    global3 = array<f32, 9>();
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(countOneBits(~vec4<i32>(u_input.d, 0i, u_input.d, u_input.d)), _wgslsmith_div_vec4_i32(min(vec4<i32>(-48030i, 0i, 17052i, -2147483647i), vec4<i32>(u_input.d, u_input.d, 0i, u_input.d)), vec4<i32>(u_input.d, u_input.d, u_input.d, -21119i) >> (vec4<u32>(u_input.b.x, var_0.x, u_input.a, u_input.a) % vec4<u32>(32u)))) | _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<i32>(-9600i, u_input.d, u_input.d, -1296i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.d, u_input.d, -1i), vec4<i32>(u_input.d, u_input.d, u_input.d, 15234i))), abs(vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.d))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(-vec4<i32>(19823i, 2147483647i, u_input.d, u_input.d), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 28722i, -24405i, u_input.d), vec4<i32>(-29642i, 2147483647i, -1i, -6762i)), vec4<i32>(u_input.d, 21354i, u_input.d, u_input.d) & vec4<i32>(u_input.d, u_input.d, -2147483647i, 42280i))) | _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -706i, reverseBits(u_input.d), countOneBits(u_input.d), -2147483647i), vec4<i32>(-u_input.d, ~0i, min(u_input.d, u_input.d), reverseBits(u_input.d))), min(~vec4<i32>(-6480i, -32303i, -62552i, u_input.d), vec4<i32>(u_input.d >> (4294967295u % 32u), 0i, u_input.d, -2147483647i)) & _wgslsmith_clamp_vec4_i32(select(vec4<i32>(-1i, -21372i, -14410i, u_input.d), reverseBits(vec4<i32>(u_input.d, 71437i, u_input.d, u_input.d)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))), abs(~vec4<i32>(u_input.d, u_input.d, -1i, 19731i)), vec4<i32>(-76359i, u_input.d, _wgslsmith_mod_i32(-2147483647i, u_input.d), -25990i)));
}

fn func_2(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = Struct_1(!select(!(!vec2<bool>(arg_0.c.x, arg_0.c.x)), arg_0.b.a, false), global0[_wgslsmith_index_u32(arg_0.a, 18u)]);
    global0 = array<f32, 18>();
    let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(firstTrailingBit(-vec4<i32>(-101700i, 19455i, -37693i, 2147483647i))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.d, 2147483647i, _wgslsmith_add_i32(u_input.d, u_input.d)), vec4<i32>(reverseBits(u_input.d), abs(13341i), firstTrailingBit(u_input.d), u_input.d >> (arg_0.a % 32u)))), func_3());
    var var_2 = Struct_4(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~firstLeadingBit(54641u) ^ min(u_input.e.x, 58620u), 9u)] * arg_0.b.b), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1790f - -1194f)) > var_0.b, false), Struct_1(vec2<bool>(arg_0.b.a.x, firstTrailingBit(1i) > min(var_1.x, 41022i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1301f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(7762u, 18u)]))))), _wgslsmith_sub_i32(var_1.x, u_input.d), var_0);
    var var_3 = global2[_wgslsmith_index_u32(abs(97507u), 32u)];
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-496f, 211f, var_0.b)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.b, -144f, global3[_wgslsmith_index_u32(u_input.e.x, 9u)])), vec3<f32>(var_2.c.b, 1314f, -566f)), vec3<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(arg_0.a, 9u)])), var_0.b))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_3 {
    let var_0 = vec3<f32>(1f, 1716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))))));
    var var_1 = -165f;
    var var_2 = vec2<i32>(-10004i, -firstLeadingBit(i32(-1i) * -2147483647i)) ^ vec2<i32>(8309i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -7091i, 49765i, -15623i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.d, -34962i, -2147483647i), vec4<i32>(u_input.d, u_input.d, u_input.d, 29156i))), max(2147483647i, u_input.d));
    var var_3 = u_input.b.x;
    var_3 = _wgslsmith_div_u32(u_input.b.x, u_input.b.x);
    return Struct_3(global0[_wgslsmith_index_u32(u_input.c, 18u)], arg_1);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_u32(~_wgslsmith_add_u32(1u, 1u), 6291u), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1799f, global0[_wgslsmith_index_u32(55127u, 18u)], arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -299f, arg_1.a))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1639f, global3[_wgslsmith_index_u32(u_input.c, 9u)], global3[_wgslsmith_index_u32(41223u, 9u)])))))), Struct_1(!arg_1.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - global3[_wgslsmith_index_u32(u_input.a, 9u)])))).b, select(select(select(vec3<bool>(arg_1.c.a.x, arg_0.b.a.x, arg_1.e.a.x), !vec3<bool>(true, arg_0.b.a.x, arg_1.e.a.x), vec3<bool>(false, arg_1.e.a.x, arg_1.e.a.x)), !vec3<bool>(true, arg_1.e.a.x, true), true), vec3<bool>(_wgslsmith_clamp_i32(2147483647i, 0i, u_input.d) < -arg_1.d, !(arg_1.e.a.x & arg_1.c.a.x), arg_1.b.x), vec3<bool>(true, !arg_1.c.a.x, all(vec2<bool>(arg_1.b.x, arg_1.c.a.x)))), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(196f, arg_1.e.b, global3[_wgslsmith_index_u32(u_input.a, 9u)]) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], -1000f, -1461f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.b, arg_0.b.b, 1351f) - vec3<f32>(arg_0.b.b, global3[_wgslsmith_index_u32(u_input.e.x, 9u)], 1648f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(u_input.e.x, 9u)], 611f, arg_0.a), vec3<f32>(arg_1.c.b, 1313f, arg_1.c.b))))), func_4(vec3<f32>(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.c, 9u)])), _wgslsmith_f_op_f32(f32(-1f) * -462f), -939f), Struct_1(arg_1.e.a, -220f)).b).b);
    let var_1 = arg_0.a;
    let var_2 = Struct_3(382f, func_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.c.b, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a, 18u)]), _wgslsmith_f_op_vec3_f32(func_2(var_0)).x))), Struct_1(func_4(vec3<f32>(var_0.d.b, global3[_wgslsmith_index_u32(5732u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)]), arg_1.e).b.a, -339f)).b);
    return var_0;
}

fn func_1() -> f32 {
    var var_0 = false;
    let var_1 = _wgslsmith_add_i32(min(u_input.d, u_input.d), -countOneBits(-2147483647i) & u_input.d);
    let var_2 = func_5(func_4(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(0u, Struct_1(vec2<bool>(true, true), global3[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec3<bool>(true, true, true), Struct_1(vec2<bool>(false, false), -803f)))), Struct_1(vec2<bool>(any(vec4<bool>(false, false, true, false)), any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], -1360f) * -796f))), Struct_4(710f, vec2<bool>(true, false), Struct_1(vec2<bool>(true, true), 505f), u_input.d, func_4(vec3<f32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e.zy, u_input.e.yz), 9u)], _wgslsmith_f_op_f32(f32(-1f) * -1186f), -769f), Struct_1(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), _wgslsmith_f_op_f32(f32(-1f) * -1494f))).b), firstLeadingBit(~u_input.d >> (23699u % 32u)));
    global1 = array<vec2<i32>, 13>();
    global3 = array<f32, 9>();
    return 252f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !((-11989i < ~_wgslsmith_clamp_i32(u_input.d, 84160i, -34466i)) && true);
    let var_1 = Struct_1(!vec2<bool>(select(true, true, true), !all(vec2<bool>(true, false))), 1550f);
    var_0 = var_1.a.x;
    global2 = array<vec3<i32>, 32>();
    let var_2 = !select(!vec3<bool>(var_1.a.x || true, true, 39890u <= u_input.b.x), vec3<bool>(any(vec3<bool>(false, true, var_1.a.x)), any(vec3<bool>(false, var_1.a.x, var_1.a.x)), true), select(true | all(var_1.a), true, var_1.a.x));
    var var_3 = -vec4<i32>(-u_input.d & _wgslsmith_add_i32(~0i, i32(-1i) * -1i), _wgslsmith_clamp_i32(5634i, firstTrailingBit(51208i), 0i) >> (0u % 32u), ~((0i >> (0u % 32u)) >> (u_input.a % 32u)), _wgslsmith_mult_i32(u_input.d, 2098i));
    global2 = array<vec3<i32>, 32>();
    global1 = array<vec2<i32>, 13>();
    let var_4 = Struct_4(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(53123u, 18u)], _wgslsmith_f_op_f32(f32(-1f) * -238f), -var_3.x != ~var_3.x)), vec2<bool>(!all(vec3<bool>(var_2.x, false, var_2.x)), var_1.a.x), Struct_1(!vec2<bool>(any(var_1.a), var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -774f)), ~(-18110i), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1()))), -global1[_wgslsmith_index_u32(u_input.a, 13u)], ~_wgslsmith_clamp_vec2_u32(select(abs(u_input.b.zz), u_input.b.zz, var_4.c.a.x), vec2<u32>(1u, ~0u), u_input.b.zz), ~min(u_input.b.xx, u_input.e.xz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], -865f, var_1.b), vec3<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 9u)], global0[_wgslsmith_index_u32(7352u, 18u)], 1085f), vec3<bool>(var_1.a.x, true, true))), Struct_1(var_1.a, -567f)).a)));
}

