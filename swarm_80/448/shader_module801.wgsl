struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(1273f, vec2<u32>(71825u, 4294967295u), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec2<i32>(26321i, i32(-2147483648)), Struct_1(-13797i, 20842i, 12508u, 1000f, false));

var<private> global1: array<f32, 27> = array<f32, 27>(2213f, -899f, 653f, -840f, 1957f, -1456f, -104f, 2001f, 787f, 1758f, 944f, 691f, 816f, 157f, -396f, 305f, -834f, 168f, 2211f, -261f, -232f, 542f, -1537f, 162f, 169f, 620f, -1733f);

var<private> global2: Struct_2 = Struct_2(174f);

var<private> global3: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(vec2<bool>(true, true), -165f, Struct_2(1522f)), Struct_5(vec2<bool>(true, true), -1215f, Struct_2(110f)), Struct_5(vec2<bool>(false, false), -364f, Struct_2(393f)), Struct_5(vec2<bool>(true, true), 156f, Struct_2(1532f)), Struct_5(vec2<bool>(true, true), 247f, Struct_2(1377f)), Struct_5(vec2<bool>(true, false), -569f, Struct_2(425f)), Struct_5(vec2<bool>(true, true), -1207f, Struct_2(-433f)), Struct_5(vec2<bool>(false, true), -1373f, Struct_2(-1311f)), Struct_5(vec2<bool>(false, true), -689f, Struct_2(442f)), Struct_5(vec2<bool>(true, true), -1496f, Struct_2(812f)), Struct_5(vec2<bool>(false, true), 433f, Struct_2(1371f)), Struct_5(vec2<bool>(false, false), -2117f, Struct_2(-150f)), Struct_5(vec2<bool>(false, true), -2013f, Struct_2(-1000f)), Struct_5(vec2<bool>(false, true), 802f, Struct_2(528f)), Struct_5(vec2<bool>(false, false), -1000f, Struct_2(-451f)), Struct_5(vec2<bool>(true, true), 1029f, Struct_2(-718f)), Struct_5(vec2<bool>(true, false), -411f, Struct_2(-719f)), Struct_5(vec2<bool>(true, false), 963f, Struct_2(510f)), Struct_5(vec2<bool>(false, true), 831f, Struct_2(1119f)), Struct_5(vec2<bool>(true, false), 633f, Struct_2(-949f)), Struct_5(vec2<bool>(true, true), -566f, Struct_2(604f)), Struct_5(vec2<bool>(true, true), 1184f, Struct_2(-1663f)), Struct_5(vec2<bool>(true, false), 439f, Struct_2(-1180f)), Struct_5(vec2<bool>(false, false), -1336f, Struct_2(704f)), Struct_5(vec2<bool>(false, false), 920f, Struct_2(-833f)));

var<private> global4: Struct_1 = Struct_1(0i, -20468i, 4294967295u, 1000f, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: bool) -> vec4<i32> {
    global1 = array<f32, 27>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(ceil(global2.a))) + -334f), -112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)))));
    global4 = Struct_1(-(~14447i) >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global0.b.x, 4294967295u), ~4294967295u), 1u) % 32u), u_input.a, reverseBits(~countOneBits(_wgslsmith_mult_u32(global4.c, 58517u))), -255f, arg_2);
    global3 = array<Struct_5, 25>();
    var var_1 = abs(abs(vec2<i32>(u_input.d, global0.c.x) >> (vec2<u32>(1u, global4.c) % vec2<u32>(32u))) << (vec2<u32>(65359u, 1u) % vec2<u32>(32u)));
    return _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(2147483647i, 1i, u_input.a, _wgslsmith_sub_i32(global0.d.x, -1i))), -(~(-vec4<i32>(14873i, global0.c.x, 45116i, global4.b)))), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global4.b, u_input.d), ~global4.b), -38996i, global0.c.x), _wgslsmith_add_vec4_i32(~min(vec4<i32>(-1i, -22114i, 59951i, var_1.x), vec4<i32>(-2147483647i, -1i, var_1.x, 1i)), vec4<i32>(58829i, u_input.a, var_1.x, u_input.a) << (vec4<u32>(global4.c, 0u, global0.e.c, 26187u) % vec4<u32>(32u)))));
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    global2 = arg_0;
    global4 = global0.e;
    let var_0 = global3[_wgslsmith_index_u32(~global0.e.c, 25u)];
    global2 = Struct_2(_wgslsmith_f_op_f32(-1502f + global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(68345u, _wgslsmith_mod_u32(global4.c, global4.c), global4.c ^ 1u), 27u)]));
    var var_1 = global0.e.c;
    return _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, 8242i), vec4<i32>(global4.a, -20038i, u_input.b, global4.a), vec4<i32>(-2147483647i, -24347i, global4.a, -5197i)), abs(vec4<i32>(-40493i, 2124i, global4.b, global4.b))), -2147483647i, -2147483647i, abs(global4.a)) | func_3(!(!vec4<bool>(var_0.a.x, global4.e, true, var_0.a.x)), !(!var_0.a), !(var_0.a.x && false)), firstTrailingBit(countOneBits(vec4<i32>(u_input.b, global4.a, global0.d.x, 2147483647i) ^ vec4<i32>(u_input.b, -1i, global4.a, u_input.c)) << (vec4<u32>(global0.b.x, 1u, global0.e.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, global0.e.c, 4294967295u, global4.c), vec4<u32>(global0.e.c, global0.b.x, 0u, 27415u))) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> Struct_5 {
    var var_0 = Struct_2(global2.a);
    global3 = array<Struct_5, 25>();
    global2 = Struct_2(-358f);
    global3 = array<Struct_5, 25>();
    var var_1 = _wgslsmith_dot_vec4_u32(~(min(vec4<u32>(0u, arg_1, global4.c, 54846u), vec4<u32>(53401u, arg_1, 4294967295u, 4294967295u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 0u, arg_1, global0.b.x), vec4<u32>(4537u, 43372u, 0u, 81271u)) % vec4<u32>(32u))) << (vec4<u32>(abs(34627u), global4.c, ~arg_1, arg_1) % vec4<u32>(32u)), ~(~min(vec4<u32>(arg_1, 0u, 0u, 0u), vec4<u32>(4294967295u, 3495u, global0.b.x, global0.b.x)) & vec4<u32>(global0.b.x, 1u, 1u, ~arg_1)));
    return global3[_wgslsmith_index_u32(~(~((min(arg_1, 30748u) << ((arg_1 | 4294967295u) % 32u)) ^ abs(_wgslsmith_div_u32(global0.e.c, arg_1)))), 25u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: vec2<bool>) -> Struct_5 {
    return func_4(_wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_mult_i32(u_input.a, 21066i), u_input.d, -arg_1.x, ~arg_1.x), func_2(arg_2.c)), arg_0.x);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_5, arg_3: f32) -> f32 {
    global2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * global2.a), func_1(firstTrailingBit(vec4<u32>(global4.c, 5021u, global0.e.c, global4.c)), vec4<i32>(global4.b, arg_1, global0.d.x, -67955i) | vec4<i32>(arg_1, 1i, 2147483647i, arg_1), arg_2, vec2<bool>(true, true)).b) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4.d + _wgslsmith_f_op_f32(1359f - -1524f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-163f + arg_3))))));
    let var_0 = global0.e.c;
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_mult_u32(global0.e.c & 5756u, global0.e.c);
    global1 = array<f32, 27>();
    return arg_2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(-289f, global0.b, select(global0.c, global0.c, vec3<bool>(global0.e.e, global0.e.e, any(select(vec2<bool>(global0.e.e, global4.e), vec2<bool>(false, false), vec2<bool>(global4.e, false))))), -(vec2<i32>(abs(global4.a), ~u_input.d) & vec2<i32>(global4.a, u_input.b | -39819i)), Struct_1(~((global4.a | global0.e.a) >> (global0.e.c % 32u)), 1i, global0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * 1902f), _wgslsmith_div_f32(449f, global4.d)), _wgslsmith_f_op_f32(func_5(global4.e, global0.d.x, func_1(vec4<u32>(41764u, global0.e.c, global0.e.c, 4294967295u), vec4<i32>(u_input.c, 29763i, -29957i, global4.b), Struct_5(vec2<bool>(true, global4.e), global2.a, Struct_2(global0.e.d)), vec2<bool>(false, true)), 1595f)), all(vec2<bool>(true, false)) && global0.e.e)), func_1(vec4<u32>(_wgslsmith_clamp_u32(83683u, 0u, global4.c), global0.b.x, global4.c, 21156u), min(vec4<i32>(8280i, -1i, global0.c.x, 55999i), vec4<i32>(global4.a, -2147483647i, 19184i, global4.a)) ^ ~vec4<i32>(global0.d.x, global0.d.x, global4.a, -24579i), Struct_5(!vec2<bool>(global0.e.e, true), _wgslsmith_f_op_f32(1198f + -1085f), Struct_2(-583f)), !func_4(vec4<i32>(u_input.d, 1i, u_input.b, 4578i), 0u).a).a.x));
    var var_0 = all(!func_1(abs(~vec4<u32>(0u, 0u, 1u, global0.b.x)), vec4<i32>(-2147483647i, 0i, -16779i, reverseBits(global0.e.a)), Struct_5(vec2<bool>(true, true), global1[_wgslsmith_index_u32(10677u, 27u)], func_1(vec4<u32>(1u, 4294967295u, global0.b.x, 17382u), vec4<i32>(u_input.a, -29370i, 0i, -2147483647i), Struct_5(vec2<bool>(global0.e.e, false), global1[_wgslsmith_index_u32(1u, 27u)], Struct_2(global0.e.d)), vec2<bool>(global0.e.e, false)).c), vec2<bool>(!global4.e, true)).a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(282f - 140f) * 1494f), -365f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.a, global0.a, -152f), vec3<f32>(-279f, global0.a, 249f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(287f, -114f, 793f))))));
    var var_2 = global0.d;
    global1 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1329f, global2.a)))), global4.e)), global4.c);
}

