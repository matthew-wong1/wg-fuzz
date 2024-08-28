struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec4<u32>(0u, 1u, 0u, 1u), false, vec3<i32>(-49818i, 1i, 0i), Struct_1(-347f, true)), Struct_4(vec4<u32>(1u, 24999u, 113108u, 85634u), true, vec3<i32>(-41556i, 0i, 4304i), Struct_1(1076f, true)), Struct_4(vec4<u32>(1u, 55850u, 4294967295u, 8939u), false, vec3<i32>(41107i, 2147483647i, -53643i), Struct_1(-445f, false)), Struct_4(vec4<u32>(1u, 82479u, 14248u, 4294967295u), false, vec3<i32>(18112i, -1i, i32(-2147483648)), Struct_1(-1000f, false)), Struct_4(vec4<u32>(0u, 20525u, 4294967295u, 1u), true, vec3<i32>(49556i, -12997i, 54616i), Struct_1(-541f, false)), Struct_4(vec4<u32>(34850u, 76619u, 0u, 28628u), true, vec3<i32>(2147483647i, 0i, 72475i), Struct_1(-695f, true)), Struct_4(vec4<u32>(16220u, 25377u, 0u, 32730u), true, vec3<i32>(6246i, i32(-2147483648), 598i), Struct_1(707f, true)), Struct_4(vec4<u32>(1u, 8292u, 152413u, 15557u), false, vec3<i32>(1i, 0i, i32(-2147483648)), Struct_1(690f, false)), Struct_4(vec4<u32>(90685u, 1u, 50105u, 1856u), true, vec3<i32>(-59746i, -5163i, 26265i), Struct_1(3098f, true)), Struct_4(vec4<u32>(1u, 26086u, 31832u, 4294967295u), true, vec3<i32>(23437i, -59638i, -1i), Struct_1(139f, false)), Struct_4(vec4<u32>(61722u, 41381u, 92438u, 62831u), true, vec3<i32>(35242i, -15953i, 45432i), Struct_1(608f, false)), Struct_4(vec4<u32>(43445u, 29920u, 47251u, 91443u), true, vec3<i32>(5678i, 5554i, 2147483647i), Struct_1(128f, true)), Struct_4(vec4<u32>(0u, 0u, 1u, 1u), false, vec3<i32>(41403i, -68323i, 41322i), Struct_1(1134f, false)), Struct_4(vec4<u32>(0u, 4294967295u, 0u, 66503u), false, vec3<i32>(-13933i, 57228i, 2147483647i), Struct_1(-1049f, true)), Struct_4(vec4<u32>(68054u, 0u, 34443u, 0u), true, vec3<i32>(25451i, -2482i, 1i), Struct_1(1604f, true)), Struct_4(vec4<u32>(1u, 34407u, 0u, 0u), false, vec3<i32>(-53289i, 57217i, 1i), Struct_1(436f, false)), Struct_4(vec4<u32>(10881u, 1u, 0u, 39231u), false, vec3<i32>(2147483647i, 74302i, 23179i), Struct_1(-2361f, false)), Struct_4(vec4<u32>(15906u, 0u, 4294967295u, 10864u), false, vec3<i32>(9355i, 8881i, 0i), Struct_1(-1000f, false)));

var<private> global1: vec4<f32> = vec4<f32>(417f, -753f, 309f, 484f);

var<private> global2: vec4<u32> = vec4<u32>(14786u, 82765u, 57078u, 1u);

var<private> global3: array<Struct_3, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(select(-108f, -992f, true)), _wgslsmith_f_op_f32(global1.x + global1.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 1820f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, -1000f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 664f, global1.x) + vec4<f32>(global1.x, 925f, global1.x, -323f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1873f, global1.x, global1.x, -464f)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, 112f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(ceil(global1.x)), -2020f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -1203f))), true))));
    var var_0 = vec2<bool>(true, true);
    global3 = array<Struct_3, 13>();
    let var_1 = true;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(-1298f, global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -415f, global1.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -789f, -243f, global1.x))))))));
    return 1f;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    global2 = ~vec4<u32>(~u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12772u, u_input.b.x, global2.x, 5898u), vec4<u32>(8495u, global2.x, u_input.b.x, 1u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, 23486u), vec4<u32>(u_input.b.x, u_input.c, 4152u, global2.x)), global2.x | _wgslsmith_dot_vec4_u32(vec4<u32>(7106u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(0u, 1u, global2.x, global2.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(54471u, u_input.b.x), global2.xy)), u_input.b.x, 4727u);
    var var_0 = u_input.a.x;
    global2 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 4294967295u, global2.x, 4294967295u), vec4<u32>(global2.x, 92752u, u_input.b.x, 42024u)) << (abs(_wgslsmith_sub_u32(global2.x, global2.x)) % 32u), u_input.c, _wgslsmith_add_u32(85135u, 0u)), min(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 13564u, 0u), ~vec4<u32>(u_input.c, 51140u, global2.x, global2.x))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(26817u, global2.x, u_input.c, u_input.b.x), vec4<u32>(54709u, 14537u, u_input.b.x, global2.x)))));
    let var_1 = select(vec2<bool>(true, all(vec4<bool>(true, true, !arg_3.b, true))), vec2<bool>(min(_wgslsmith_mod_i32(u_input.a.x, 65291i), i32(-1i) * -21968i) > arg_2, ~u_input.a.x < 38923i), arg_0.xz);
    var var_2 = ~_wgslsmith_mod_vec3_i32(~select(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<i32>(arg_2, arg_2, -2147483647i), select(arg_0, vec3<bool>(arg_1.b, false, false), arg_1.b)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(9881i, u_input.a.x, 2147483647i) >> (global2.wzw % vec3<u32>(32u)), vec3<i32>(arg_2, -1i, -1i)), countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, arg_2))));
    return vec2<u32>(abs(2059u), _wgslsmith_dot_vec4_u32(~vec4<u32>(select(49357u, u_input.c, arg_1.b), u_input.b.x ^ global2.x, _wgslsmith_clamp_u32(u_input.c, global2.x, 33305u), 4294967295u), ~vec4<u32>(~global2.x, u_input.c, firstLeadingBit(54109u), global2.x)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: i32) -> u32 {
    global0 = array<Struct_4, 18>();
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.e.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(631f)) - _wgslsmith_f_op_f32(-120f + -1401f))), global1.wx), _wgslsmith_f_op_vec4_f32(-arg_1.b), func_4(arg_0.xzx, arg_1.e, -_wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -59227i), ~u_input.a.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), false)), min(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(12884i & arg_3, 29607i, _wgslsmith_clamp_i32(arg_1.d, 12506i, 35747i), i32(-1i) * -485i), min(vec4<i32>(arg_1.d, -37270i, arg_1.d, 10705i), vec4<i32>(arg_3, -23313i, arg_1.d, arg_1.d)))), Struct_1(450f, select(true, !arg_0.x, any(vec4<bool>(arg_2.x, arg_0.x, arg_0.x, arg_0.x)))));
    let var_1 = ~func_4(arg_0.xzx, Struct_1(-2106f, arg_0.x), min(-min(var_0.d, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, -9300i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(global1.x * arg_1.e.a)), all(vec2<bool>(arg_0.x, arg_0.x)))).x;
    var var_2 = u_input.a.x;
    global2 = countOneBits(vec4<u32>(~(var_1 << (63724u % 32u)), firstLeadingBit(arg_1.c.x), 1u << (arg_1.c.x % 32u), ~(u_input.b.x | arg_1.c.x)) & vec4<u32>(_wgslsmith_dot_vec3_u32(global2.xzy << (global2.wxx % vec3<u32>(32u)), countOneBits(vec3<u32>(19127u, global2.x, 4294967295u))), firstTrailingBit(~1u), _wgslsmith_mult_u32(0u, 1u), var_1));
    return 0u;
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4) -> Struct_1 {
    var var_0 = !vec4<bool>(arg_1.d.b, arg_1.d.b, !arg_0, true);
    var var_1 = !arg_2.b;
    global1 = vec4<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_div_f32(-2350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), arg_1.d.a, _wgslsmith_f_op_f32(-493f - -1388f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-390f, 190f)));
    var_0 = select(select(vec4<bool>(true, arg_2.d.b, all(var_0.xz), true && arg_1.d.b), select(vec4<bool>(false, false, true, arg_2.d.b), vec4<bool>(all(var_0.yy), true, true, false), !vec4<bool>(true, arg_0, var_0.x, true)), true), !(!select(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(arg_1.d.b, arg_0, arg_2.b, true), arg_1.b), vec4<bool>(arg_1.b, false, false, arg_2.d.b), true)), arg_1.b && true);
    global2 = arg_1.a;
    return arg_1.d;
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = 70272u;
    global2 = arg_0;
    var var_1 = func_5(true, Struct_4(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(arg_0, arg_0), arg_0 & (vec4<u32>(u_input.b.x, 7582u, 4294967295u, 41079u) ^ vec4<u32>(52671u, arg_0.x, global2.x, 1u)), vec4<u32>(~93719u, 1u, func_2(vec4<bool>(true, true, true, true), Struct_2(global1.wy, vec4<f32>(global1.x, global1.x, -761f, -1023f), u_input.b, -35985i, Struct_1(266f, false)), vec2<bool>(false, true), u_input.a.x), global2.x << (4294967295u % 32u))), !(_wgslsmith_div_f32(188f, global1.x) != -291f), vec3<i32>(_wgslsmith_clamp_i32(~(-1i), -u_input.a.x, countOneBits(2147483647i)), -(~2147483647i), reverseBits(i32(-1i) * -2147483647i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1243f + global1.x)), true)), global0[_wgslsmith_index_u32(u_input.b.x, 18u)]);
    var var_2 = vec2<i32>(u_input.a.x, -17497i);
    var_2 = -vec2<i32>(_wgslsmith_mult_i32(-2147483647i << (u_input.c % 32u), -2147483647i), 2147483647i);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(select(firstLeadingBit(vec4<u32>(4072u, 11083u, global2.x, global2.x)), ~vec4<u32>(72796u, 24988u, 1u, global2.x), false))), _wgslsmith_f_op_f32(round(global1.x)), 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x)))))));
    var var_0 = u_input.a.x ^ u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-913f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1133f))))), ~_wgslsmith_add_vec4_u32(select(vec4<u32>(1433u, 45063u, 1u, u_input.b.x), vec4<u32>(u_input.c, global2.x, u_input.b.x, 24392u), false), vec4<u32>(1u, u_input.b.x, 33234u, 88257u)) << (vec4<u32>(abs(~52548u), ~firstTrailingBit(global2.x), func_4(vec3<bool>(true, false, true), Struct_1(1000f, true), 24877i, Struct_1(global1.x, false)).x ^ ~global2.x, func_4(vec3<bool>(true, true, true), Struct_1(-201f, false), firstLeadingBit(u_input.a.x), Struct_1(-492f, false)).x) % vec4<u32>(32u)), vec3<i32>(u_input.a.x, 68100i, -u_input.a.x));
}

