struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_2,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<u32>;

var<private> global2: Struct_4;

var<private> global3: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(14818u, 47180u, 24154u), vec3<u32>(41567u, 2358u, 31299u), vec3<u32>(4294967295u, 54476u, 1u), vec3<u32>(1u, 1u, 56210u), vec3<u32>(89313u, 68707u, 77031u), vec3<u32>(4294967295u, 37260u, 12137u), vec3<u32>(23880u, 20190u, 0u), vec3<u32>(66786u, 1u, 1u), vec3<u32>(78505u, 53525u, 42406u), vec3<u32>(52062u, 35229u, 0u), vec3<u32>(4294967295u, 53567u, 62131u), vec3<u32>(71213u, 30550u, 1u), vec3<u32>(0u, 24576u, 51688u), vec3<u32>(65926u, 32177u, 1u), vec3<u32>(28514u, 24274u, 10606u), vec3<u32>(20969u, 1838u, 0u), vec3<u32>(107361u, 62004u, 1u));

var<private> global4: array<i32, 27>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    var var_0 = Struct_4(global2.a, Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(max(0u, 145469u), arg_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 5534u), vec3<u32>(global1.x, 10720u, arg_1.x))), ~_wgslsmith_div_u32(0u, 28691u)), select(select(vec2<bool>(false, global2.b.b.x), vec2<bool>(false, global2.a.a.b.x), global0.c.x), arg_2.b, select(vec2<bool>(arg_2.b.x, global2.b.b.x), !arg_0.c.zy, select(vec2<bool>(false, global2.a.a.b.x), arg_2.b, arg_0.b.b.x))), vec2<i32>(~1i, -27836i), ~1i));
    global3 = array<vec3<u32>, 17>();
    var_0 = Struct_4(Struct_3(arg_2, firstTrailingBit(global2.a.a.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.c + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2.a.c.x))) * vec2<f32>(_wgslsmith_f_op_f32(round(var_0.a.c.x)), 456f))), global0.b);
    let var_1 = global2.a.a.b.x;
    global0 = Struct_2(reverseBits(52498u), Struct_1(select(0u, arg_3.x, all(!vec4<bool>(true, var_0.b.b.x, true, false))), vec2<bool>(true, !any(vec4<bool>(arg_0.c.x, true, false, arg_0.c.x))), vec2<i32>(max(-86256i, _wgslsmith_mod_i32(arg_0.b.d, 0i)), global0.b.c.x), arg_0.b.c.x), arg_0.c);
    return global0.b.b.x;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    var var_0 = Struct_5(Struct_2(_wgslsmith_add_u32(global1.x ^ u_input.d.x, ~firstTrailingBit(59354u)), Struct_1(reverseBits(~0u), vec2<bool>(all(vec4<bool>(true, global0.c.x, false, true)), true), vec2<i32>(1i, _wgslsmith_mult_i32(global2.a.b.x, -3396i)), select(global0.b.c.x << (global1.x % 32u), -20364i, all(vec4<bool>(arg_3.x, false, global2.b.b.x, true)))), vec3<bool>(global2.a.a.b.x, all(!global2.a.a.b), firstTrailingBit(5666i) > countOneBits(global0.b.c.x))), Struct_3(global2.b, vec2<i32>(min(1i, abs(arg_0)), 2147483647i), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global2.a.c, vec2<f32>(683f, 726f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1398f, 262f) + global2.a.c), global2.a.c))), Struct_2(global2.a.a.a, global0.b, vec3<bool>(any(vec4<bool>(global0.c.x, false, global2.a.a.b.x, false)), global0.b.b.x, all(vec3<bool>(arg_3.x, false, true)))), global2.a, false);
    let var_1 = reverseBits(vec2<i32>(-1i) * -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, arg_0), vec2<i32>(58806i, 14984i), vec2<i32>(-2147483647i, u_input.a))));
    var var_2 = Struct_4(Struct_3(Struct_1(abs(4301u), !vec2<bool>(var_0.d.a.b.x, true), -vec2<i32>(-2147483647i, 0i), _wgslsmith_mod_i32(-u_input.e.x, -1i)), global2.b.c, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(164f, _wgslsmith_f_op_f32(ceil(arg_2)))))), Struct_1(u_input.b.x, !global2.a.a.b, countOneBits(vec2<i32>(2147483647i, _wgslsmith_sub_i32(var_1.x, u_input.a))), u_input.e.x >> (_wgslsmith_clamp_u32(~global0.b.a, _wgslsmith_mod_u32(var_0.a.a, global0.a), u_input.b.x) % 32u)));
    let var_3 = (global1.zy | global1.zw) >> (~u_input.d.ww % vec2<u32>(32u));
    let var_4 = var_2.a.c.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.a.c.x, _wgslsmith_f_op_f32(-global2.a.c.x))))) + _wgslsmith_f_op_f32(var_2.a.c.x + 117f));
}

fn func_2() -> u32 {
    var var_0 = !(!select(!global0.c.yy, global0.b.b, !global0.b.b.x && true));
    global2 = Struct_4(global2.a, global0.b);
    let var_1 = _wgslsmith_f_op_f32(func_4(i32(-1i) * -firstTrailingBit(-2147483647i), ~vec4<i32>(-u_input.e.x, global0.b.d << (0u % 32u), 2147483647i, _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(1u, 27u)], -11058i)), _wgslsmith_f_op_f32(1419f - -1064f), vec4<bool>(!(!global2.a.a.b.x), func_3(Struct_2(global0.b.a, global2.a.a, global0.c), _wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 35084u, global1.x, global1.x)), global0.b, vec4<u32>(9936u, 4294967295u, 4268u, global1.x)), true, !global0.c.x))) > _wgslsmith_f_op_f32(min(540f, 761f));
    var var_2 = global2.a.a.b.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.c.x, _wgslsmith_f_op_f32(func_4(global4[_wgslsmith_index_u32(global2.b.a, 27u)], vec4<i32>(global0.b.d, 3217i, global0.b.d, -2147483647i), -672f, vec4<bool>(global2.a.a.b.x, var_1, global2.b.b.x, false))), _wgslsmith_f_op_f32(min(-1349f, global2.a.c.x)), global2.a.c.x) - vec4<f32>(global2.a.c.x, _wgslsmith_f_op_f32(max(global2.a.c.x, 1039f)), _wgslsmith_f_op_f32(-global2.a.c.x), _wgslsmith_f_op_f32(abs(global2.a.c.x)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-192f, 1169f, global0.c.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1515f)), -1000f, -1000f, 1005f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.c.x, global2.a.c.x, global2.a.c.x, -661f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, global2.a.c.x, -614f, -1598f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.c.x, global2.a.c.x, global2.a.c.x, 1379f) * vec4<f32>(global2.a.c.x, 262f, -1320f, global2.a.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1484f, global2.a.c.x, 630f, -1293f)), select(vec4<bool>(true, global0.b.b.x, false, true), vec4<bool>(true, true, var_0.x, var_0.x), global0.c.x)))))));
    return _wgslsmith_div_u32(4294967295u, firstTrailingBit(global1.x));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: f32) -> Struct_5 {
    global1 = ~vec4<u32>(4294967295u, 0u, abs(~4294967295u >> (_wgslsmith_add_u32(40176u, global1.x) % 32u)), global0.b.a);
    let var_0 = global0.b;
    var var_1 = u_input.c;
    global4 = array<i32, 27>();
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u << (global0.a % 32u), _wgslsmith_add_u32(44021u, u_input.b.x)), arg_0.a, _wgslsmith_sub_u32(arg_1, _wgslsmith_add_u32(arg_0.a, 73842u))) >> (~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(), 0u), 17u)] % vec3<u32>(32u)), vec3<u32>(abs(4294967295u | (var_0.a ^ 70658u)), _wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.b.x, arg_0.a), global0.a << (global2.a.a.a % 32u)), 4294967295u), global3[_wgslsmith_index_u32(abs(8629u), 17u)]);
    return Struct_5(Struct_2(~(u_input.b.x & arg_2.x), global2.a.a, global0.c), global2.a, Struct_2(_wgslsmith_div_u32(1u, 1u) ^ _wgslsmith_div_u32(~var_0.a, var_2.x), Struct_1(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 28112u, 52453u), arg_2)), vec2<bool>(var_0.b.x, all(vec4<bool>(var_0.b.x, true, false, global2.a.a.b.x))), global0.b.c, global0.b.d ^ ~5727i), vec3<bool>(any(!vec4<bool>(global2.a.a.b.x, false, false, var_0.b.x)), all(vec4<bool>(var_0.b.x, global2.a.a.b.x, var_0.b.x, true)), !global0.c.x)), Struct_3(global2.a.a, _wgslsmith_clamp_vec2_i32(firstLeadingBit(countOneBits(global0.b.c)), vec2<i32>(~(-50998i), global2.b.c.x), ~global0.b.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(global2.a.c, vec2<f32>(-174f, -1815f), var_0.b.x)))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    let var_1 = func_1(global0.b, 14184u, ~vec4<u32>(global0.a, select(abs(global1.x), 83564u, false || global2.a.a.b.x), reverseBits(~u_input.b.x), global1.x), -167f);
    var var_2 = vec4<bool>(false, global2.b.b.x, var_1.c.c.x, !all(!select(vec3<bool>(global2.a.a.b.x, var_1.d.a.b.x, false), vec3<bool>(var_1.b.a.b.x, global2.a.a.b.x, true), global0.c)));
    global3 = array<vec3<u32>, 17>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(559f, _wgslsmith_f_op_f32(func_4(global4[_wgslsmith_index_u32(76281u, 27u)], vec4<i32>(44072i, global0.b.c.x, var_1.b.a.d, -1i), var_1.b.c.x, vec4<bool>(true, true, false, false)))) + global2.a.c)));
    global1 = ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, _wgslsmith_mult_u32(global2.a.a.a << (global1.x % 32u), global1.x), global1.x), u_input.d);
    let var_4 = Struct_2(_wgslsmith_sub_u32(abs(~func_2()), firstLeadingBit(max(global2.a.a.a, u_input.d.x) ^ global2.b.a)), func_1(Struct_1(50178u, vec2<bool>(var_2.x, !var_1.b.a.b.x), min(var_1.d.a.c, vec2<i32>(1i, u_input.a)) ^ _wgslsmith_sub_vec2_i32(var_1.c.b.c, vec2<i32>(-39563i, global2.a.b.x)), min(global2.b.c.x ^ global0.b.d, select(1i, global2.b.c.x, var_2.x))), _wgslsmith_add_u32(28559u >> (_wgslsmith_mod_u32(4294967295u, u_input.d.x) % 32u), 440u), ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 22650u), u_input.d, vec4<u32>(0u, 1u, 831u, global1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 0u, var_1.a.a, 0u), u_input.d, vec4<u32>(4294967295u, 7469u, 31294u, var_1.b.a.a))), var_3.x).c.b, vec3<bool>(531f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a.c.x, global2.a.c.x)) * _wgslsmith_f_op_f32(186f * 1616f)), func_3(Struct_2(48600u, Struct_1(0u, vec2<bool>(var_1.e, false), vec2<i32>(global0.b.c.x, var_1.a.b.d), 2348i), select(var_1.c.c, var_2.xxx, global0.c)), u_input.d, func_1(Struct_1(u_input.b.x, var_1.a.b.b, var_1.b.a.c, 1i), ~46117u, ~vec4<u32>(4294967295u, 9862u, u_input.b.x, var_1.d.a.a), var_1.d.c.x).d.a, select(vec4<u32>(114087u, 70953u, 1u, 4294967295u), u_input.d, true)), false));
    var_0 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, func_1(func_1(global0.b, 0u, vec4<u32>(13146u, 84863u, global0.b.a, 0u), -514f).b.a, abs(var_4.b.a), vec4<u32>(var_4.a, 55240u, 57178u, 0u), _wgslsmith_f_op_f32(step(var_1.b.c.x, -470f))).c.b.a), _wgslsmith_mod_vec2_u32(vec2<u32>(74517u, 4294967295u) | ~global1.xw, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), global1.wx) | ~vec2<u32>(15481u, 0u))), _wgslsmith_add_i32(abs(global0.b.c.x), u_input.a), -2147483647i, _wgslsmith_f_op_f32(-754f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f))), func_1(func_1(func_1(Struct_1(u_input.d.x, global0.c.zz, var_1.c.b.c, -8211i), 4294967295u, ~u_input.d, _wgslsmith_f_op_f32(-341f * 1000f)).d.a, _wgslsmith_div_u32(~global2.b.a, u_input.b.x), countOneBits(vec4<u32>(global2.a.a.a, 1u, global2.a.a.a, var_1.d.a.a)), _wgslsmith_f_op_f32(-global2.a.c.x)).a.b, firstLeadingBit(_wgslsmith_mod_u32(u_input.b.x, 46043u)), u_input.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.a.c.x, _wgslsmith_f_op_f32(global2.a.c.x + 821f), any(vec2<bool>(global0.c.x, true)))), 1423f)).a.b.c.x);
}

