struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec2<f32>(-1420f, 561f), vec2<u32>(0u, 4294967295u), 4294967295u, -387f, vec2<u32>(4294967295u, 38447u)), 16740u, vec2<bool>(false, false), 113f, Struct_1(vec2<f32>(1108f, 1000f), vec2<u32>(0u, 4294967295u), 0u, -1351f, vec2<u32>(4294967295u, 0u))));

var<private> global1: u32;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 5494u, 1u);

var<private> global3: array<f32, 27> = array<f32, 27>(624f, -1320f, 497f, -418f, 680f, -1248f, 686f, 847f, -618f, 1049f, 117f, 240f, -1569f, 1354f, -1642f, -224f, 1000f, 113f, -3024f, 520f, -1361f, 1324f, -1870f, -1230f, 246f, 1088f, -283f);

var<private> global4: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec2<f32>(-1385f, -1000f), vec2<u32>(0u, 4294967295u), 4294967295u, 1019f, vec2<u32>(7972u, 13331u)), 4294967295u, vec2<bool>(false, true), 920f, Struct_1(vec2<f32>(807f, 1175f), vec2<u32>(53834u, 4294967295u), 0u, 1380f, vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(vec2<f32>(-935f, -817f), vec2<u32>(0u, 1u), 0u, -1600f, vec2<u32>(4165u, 1u)), 5660u, vec2<bool>(true, true), 298f, Struct_1(vec2<f32>(382f, 382f), vec2<u32>(0u, 0u), 29471u, -622f, vec2<u32>(35559u, 28703u))), Struct_2(Struct_1(vec2<f32>(1000f, 981f), vec2<u32>(74206u, 1u), 1u, -498f, vec2<u32>(43909u, 57561u)), 4294967295u, vec2<bool>(false, true), 215f, Struct_1(vec2<f32>(1000f, 945f), vec2<u32>(1u, 58975u), 4294967295u, -160f, vec2<u32>(4294967295u, 13855u))), Struct_2(Struct_1(vec2<f32>(251f, -1277f), vec2<u32>(4294967295u, 0u), 0u, -1772f, vec2<u32>(75837u, 51708u)), 0u, vec2<bool>(true, false), -1335f, Struct_1(vec2<f32>(-170f, 170f), vec2<u32>(7098u, 0u), 56940u, -467f, vec2<u32>(11083u, 63640u))), Struct_2(Struct_1(vec2<f32>(-620f, 2550f), vec2<u32>(22234u, 45473u), 4294967295u, 1399f, vec2<u32>(15302u, 4294967295u)), 22141u, vec2<bool>(true, false), -323f, Struct_1(vec2<f32>(341f, 856f), vec2<u32>(0u, 1u), 4294967295u, -813f, vec2<u32>(0u, 16032u))), Struct_2(Struct_1(vec2<f32>(-804f, -758f), vec2<u32>(107928u, 45086u), 1u, -1812f, vec2<u32>(44002u, 22783u)), 23006u, vec2<bool>(true, false), 1762f, Struct_1(vec2<f32>(1149f, 1698f), vec2<u32>(7578u, 1u), 14005u, 1000f, vec2<u32>(56954u, 80728u))), Struct_2(Struct_1(vec2<f32>(1477f, -484f), vec2<u32>(16117u, 1u), 0u, 676f, vec2<u32>(42856u, 75041u)), 51241u, vec2<bool>(false, true), -1297f, Struct_1(vec2<f32>(2211f, -897f), vec2<u32>(37839u, 1u), 4294967295u, -937f, vec2<u32>(4294967295u, 1u))), Struct_2(Struct_1(vec2<f32>(1379f, 2348f), vec2<u32>(1u, 0u), 36645u, 2617f, vec2<u32>(48438u, 1u)), 0u, vec2<bool>(true, false), 1299f, Struct_1(vec2<f32>(-887f, -587f), vec2<u32>(0u, 0u), 4294967295u, 827f, vec2<u32>(56617u, 4294967295u))), Struct_2(Struct_1(vec2<f32>(376f, 471f), vec2<u32>(122329u, 44125u), 0u, -461f, vec2<u32>(40586u, 732u)), 277u, vec2<bool>(true, true), 509f, Struct_1(vec2<f32>(-601f, -305f), vec2<u32>(4294967295u, 22628u), 4294967295u, 1394f, vec2<u32>(4294967295u, 139112u))));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<f32> {
    let var_0 = ~vec4<u32>(~1u, ~_wgslsmith_div_u32(13929u, 61863u), _wgslsmith_sub_u32(reverseBits(1u), global2.x), ~global2.x ^ max(4294967295u, 4294967295u)) | vec4<u32>(~4294967295u, 36711u << (_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(global2.x, 18306u)) % 32u), 76802u, reverseBits(22774u));
    let var_1 = true;
    let var_2 = !(!(4294967295u != _wgslsmith_dot_vec4_u32(~var_0, ~vec4<u32>(1517u, 4294967295u, var_0.x, u_input.d.x))));
    global0 = array<Struct_2, 1>();
    global1 = min(~abs(countOneBits(~u_input.d.x)), _wgslsmith_add_u32(~u_input.d.x, var_0.x));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-848f + _wgslsmith_div_f32(global3[_wgslsmith_index_u32(global2.x, 27u)], global3[_wgslsmith_index_u32(0u, 27u)]))), 503f));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3());
    let var_1 = vec2<bool>(true, 13412u != ~u_input.d.x);
    var var_2 = arg_1.b;
    let var_3 = arg_1;
    var var_4 = var_3.b.a.x;
    return countOneBits(-(~1i));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = u_input.a ^ vec2<i32>(_wgslsmith_div_i32(abs(1i), 1i), 2147483647i);
    global2 = u_input.d;
    global3 = array<f32, 27>();
    let var_1 = u_input.d.x;
    let var_2 = var_0;
    return Struct_1(arg_3.b.a, ~vec2<u32>(_wgslsmith_sub_u32(0u, 0u), ~abs(59075u)), var_1, -396f, ~global2.xz);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> Struct_5 {
    global3 = array<f32, 27>();
    var var_0 = arg_1.a.a.x;
    var var_1 = 0i;
    global3 = array<f32, 27>();
    return Struct_5(Struct_3(arg_1.e.a, func_4(1000f, 492f, arg_0.x, Struct_3(vec2<f32>(arg_1.d, arg_1.e.a.x), arg_1.e))), Struct_2(func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec2_f32(func_3()).x)), 781f, -2147483647i, Struct_3(arg_1.a.a, Struct_1(arg_1.a.a, u_input.d.zx, u_input.d.x, arg_1.d, vec2<u32>(28083u, 4294967295u)))), ~(~(~arg_2)), select(arg_1.c, !arg_1.c, select(arg_1.c, arg_1.c, arg_1.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(~arg_2, 27u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_1.e.a.x, global3[_wgslsmith_index_u32(1u, 27u)]))))), func_4(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(7049u, 27u)] * global3[_wgslsmith_index_u32(46521u, 27u)]) - global3[_wgslsmith_index_u32(global2.x & u_input.d.x, 27u)]), u_input.c, Struct_3(vec2<f32>(-248f, arg_1.e.a.x), func_4(global3[_wgslsmith_index_u32(global2.x, 27u)], arg_1.d, arg_0.x, Struct_3(arg_1.e.a, Struct_1(vec2<f32>(global3[_wgslsmith_index_u32(arg_1.b, 27u)], 293f), arg_1.e.e, 23325u, 761f, u_input.d.yy)))))), select(select(vec3<bool>(true, any(arg_1.c), true), !select(vec3<bool>(arg_1.c.x, arg_1.c.x, true), vec3<bool>(arg_1.c.x, true, false), arg_1.c.x), !select(vec3<bool>(arg_1.c.x, arg_1.c.x, true), vec3<bool>(arg_1.c.x, false, arg_1.c.x), false)), select(select(select(vec3<bool>(arg_1.c.x, false, arg_1.c.x), vec3<bool>(true, arg_1.c.x, true), vec3<bool>(arg_1.c.x, arg_1.c.x, true)), vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x), true), vec3<bool>(select(false, arg_1.c.x, arg_1.c.x), arg_1.c.x, any(vec2<bool>(false, arg_1.c.x))), all(!vec3<bool>(arg_1.c.x, arg_1.c.x, true))), select(!(!vec3<bool>(arg_1.c.x, false, true)), vec3<bool>(true, true, all(arg_1.c)), !(!vec3<bool>(false, arg_1.c.x, false)))), Struct_2(Struct_1(vec2<f32>(347f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_1.b, 27u)])), vec2<u32>(~7376u, ~global2.x), _wgslsmith_mult_u32(global2.x, _wgslsmith_mod_u32(u_input.d.x, arg_2)), arg_1.a.a.x, vec2<u32>(~u_input.d.x, arg_1.a.e.x << (1u % 32u))), ~(~97665u), select(vec2<bool>(true || arg_1.c.x, true), vec2<bool>(true, true), arg_1.c), 210f, arg_1.a));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(abs(-vec4<i32>(_wgslsmith_div_i32(u_input.b, u_input.c), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-2147483647i, 0i)), u_input.a.x, -u_input.c)), Struct_2(Struct_1(vec2<f32>(-1876f, global3[_wgslsmith_index_u32(7271u, 27u)]), global2.xz, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.x, 27u)])), _wgslsmith_add_vec2_u32(abs(global2.xz), ~global2.yy)), 104654u, !vec2<bool>(true, all(vec2<bool>(false, false))), global3[_wgslsmith_index_u32(min(~45633u, 4294967295u), 27u)], func_4(global3[_wgslsmith_index_u32(~(~64463u), 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-925f)) + global3[_wgslsmith_index_u32(~global2.x, 27u)]), func_2(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 191f), Struct_3(vec2<f32>(global3[_wgslsmith_index_u32(0u, 27u)], -872f), Struct_1(vec2<f32>(-695f, 470f), vec2<u32>(1u, 1u), 42322u, 419f, vec2<u32>(global2.x, global2.x))), _wgslsmith_div_i32(u_input.c, u_input.c)), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1596f, 411f)), Struct_1(vec2<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 27u)], global3[_wgslsmith_index_u32(global2.x, 27u)]), u_input.d.xy, 75969u, global3[_wgslsmith_index_u32(41768u, 27u)], vec2<u32>(1525u, u_input.d.x))))), ~(~firstLeadingBit(global2.x << (u_input.d.x % 32u))));
    global0 = array<Struct_2, 1>();
    var var_1 = !var_0.d.c.x == var_0.b.c.x;
    var var_2 = var_0.b.c.x;
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, func_5(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -17786i, u_input.c, -1i), vec4<i32>(1i, -2147483647i, -44828i, -2147483647i)), abs(vec4<i32>(u_input.b, 1i, 25260i, -31187i)), vec4<i32>(u_input.c, u_input.c, u_input.a.x, u_input.c) >> (vec4<u32>(u_input.d.x, 64357u, 23934u, 0u) % vec4<u32>(32u))), Struct_2(func_4(936f, 1401f, u_input.b, Struct_3(var_0.d.e.a, Struct_1(vec2<f32>(-1961f, var_0.b.e.a.x), var_0.d.e.e, var_0.a.b.b.x, 1122f, global2.yx))), var_0.b.b, var_0.d.c, _wgslsmith_f_op_f32(f32(-1f) * -998f), Struct_1(vec2<f32>(var_0.b.e.d, -145f), global2.xy, 0u, var_0.b.e.a.x, var_0.d.e.b)), 48914u ^ (var_0.d.e.b.x >> (1u % 32u))).d.a.c), min(firstLeadingBit(select(vec2<u32>(1u, u_input.d.x) >> (vec2<u32>(var_0.b.a.c, global2.x) % vec2<u32>(32u)), max(u_input.d.yy, vec2<u32>(4294967295u, 31366u)), true)), var_0.d.e.b));
    return global4[_wgslsmith_index_u32(min(~1u, 3379u), 9u)];
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_5 {
    let var_0 = arg_1.x;
    var var_1 = arg_0.e;
    let var_2 = !select(!select(!vec4<bool>(arg_0.c.x, true, arg_0.c.x, arg_0.c.x), select(vec4<bool>(arg_0.c.x, false, false, false), vec4<bool>(true, false, arg_0.c.x, true), arg_0.c.x), false), vec4<bool>(arg_0.c.x, true, all(vec3<bool>(arg_0.c.x, false, true)) && true, arg_0.c.x), true | func_1().c.x);
    global2 = u_input.d;
    var var_3 = func_5(vec4<i32>(1i, u_input.b ^ -max(u_input.c, u_input.c), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.c), func_5(vec4<i32>(max(u_input.a.x >> (var_1.c % 32u), _wgslsmith_clamp_i32(-58786i, 33744i, u_input.c)), func_2(_wgslsmith_f_op_f32(-arg_0.a.a.x), func_5(vec4<i32>(u_input.a.x, 31616i, u_input.b, -2147483647i), Struct_2(arg_0.e, arg_0.a.b.x, vec2<bool>(arg_0.c.x, var_2.x), global3[_wgslsmith_index_u32(25049u, 27u)], Struct_1(arg_0.e.a, vec2<u32>(37890u, var_1.b.x), 18808u, var_1.d, vec2<u32>(12013u, global2.x))), 16247u).a, countOneBits(-1i)), abs(_wgslsmith_add_i32(u_input.c, 1i)), _wgslsmith_mod_i32(-2147483647i >> (1u % 32u), -1i)), Struct_2(func_5(~vec4<i32>(u_input.c, -1i, 2147483647i, -1i), arg_0, firstLeadingBit(u_input.d.x)).a.b, func_5(vec4<i32>(0i, 5046i, -18937i, u_input.c), global0[_wgslsmith_index_u32(4294967295u, 1u)], 4294967295u).a.b.e.x << (global2.x % 32u), !(!var_2.yz), _wgslsmith_div_f32(func_1().d, arg_1.x), func_1().e), ~(51181u & var_1.c)).d, 0u).a;
    return Struct_5(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) - arg_0.e.a), arg_0.e), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1372f, var_3.b.a.x)), _wgslsmith_sub_vec2_u32(~global2.zy, vec2<u32>(u_input.d.x, 4294967295u)), _wgslsmith_div_u32(~var_3.b.e.x, _wgslsmith_mult_u32(var_1.e.x, 9011u)), _wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_mod_vec2_u32(var_3.b.b, ~vec2<u32>(var_1.c, arg_0.a.b.x))), ~u_input.d.x, !select(arg_0.c, !var_2.wy, vec2<bool>(arg_0.c.x, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -1231f), _wgslsmith_f_op_f32(step(-415f, 1f)))), var_3.b), !select(!var_2.xwy, func_5(_wgslsmith_div_vec4_i32(vec4<i32>(43047i, 58301i, -11399i, u_input.a.x), vec4<i32>(-4625i, u_input.b, -1i, 5130i)), func_1(), func_5(vec4<i32>(2147483647i, u_input.c, u_input.b, 1i), global0[_wgslsmith_index_u32(global2.x, 1u)], u_input.d.x).d.b).c, countOneBits(u_input.b) <= -1i), func_5(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.c ^ u_input.b, ~u_input.c), _wgslsmith_div_vec4_i32(max(vec4<i32>(-46114i, u_input.b, u_input.b, 2147483647i), vec4<i32>(u_input.c, u_input.b, -1i, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(19198i, -1i, 0i, u_input.a.x), vec4<i32>(u_input.a.x, -1i, 1i, -14918i))), vec4<i32>(~(-238i), _wgslsmith_div_i32(u_input.c, u_input.c), 9969i << (u_input.d.x % 32u), ~0i)), global4[_wgslsmith_index_u32(var_3.b.b.x, 9u)], func_5(select(vec4<i32>(0i, u_input.b, u_input.a.x, u_input.b), vec4<i32>(-12819i, u_input.c, u_input.b, u_input.a.x), all(var_2)), Struct_2(Struct_1(var_3.a, u_input.d.zz, 1u, arg_1.x, vec2<u32>(var_3.b.e.x, u_input.d.x)), ~17464u, !arg_0.c, _wgslsmith_f_op_vec2_f32(func_3()).x, var_3.b), arg_0.b).b.a.e.x).b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 1>();
    global3 = array<f32, 27>();
    global0 = array<Struct_2, 1>();
    var var_0 = func_6(func_1(), vec2<f32>(_wgslsmith_f_op_f32(-155f + -1258f), 818f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(global2.x, 27u)], -1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-102f, 160f))));
    var var_1 = select(select(vec4<bool>((0u < global2.x) & !var_0.b.c.x, true, true, false), !vec4<bool>(true, false, false, var_0.c.x), var_0.d.c.x), vec4<bool>(!(!func_1().c.x), var_0.b.c.x, var_0.c.x, func_6(global0[_wgslsmith_index_u32(select(~4294967295u, func_5(vec4<i32>(-2147483647i, 5953i, u_input.a.x, 2147483647i), Struct_2(Struct_1(vec2<f32>(-853f, -1764f), var_0.b.a.e, var_0.b.a.e.x, 1141f, vec2<u32>(u_input.d.x, global2.x)), u_input.d.x, vec2<bool>(var_0.d.c.x, var_0.c.x), 2237f, var_0.b.a), var_0.b.b).a.b.e.x, true), 1u)], vec2<f32>(_wgslsmith_f_op_f32(floor(510f)), global3[_wgslsmith_index_u32(12318u, 27u)]), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.b.a.a), vec2<f32>(390f, var_0.b.d)))).d.c.x), all(vec2<bool>(var_0.c.x, var_0.c.x)));
    let var_2 = var_0.b.e.c;
    global3 = array<f32, 27>();
    let var_3 = _wgslsmith_sub_vec2_u32(~var_0.a.b.e, vec2<u32>(var_0.d.e.c, ~_wgslsmith_mod_u32(firstTrailingBit(global2.x), ~28213u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(~3513u, 27u)], func_6(Struct_2(var_0.b.a, var_0.b.a.c, var_0.d.c, var_0.d.e.a.x, var_0.b.e), var_0.d.a.a, var_0.b.a.a).a.b.d, global3[_wgslsmith_index_u32(var_0.d.b << (4294967295u % 32u), 27u)]), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1568f, -768f, global3[_wgslsmith_index_u32(0u, 27u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.d, var_0.b.a.d, var_0.a.a.x)), var_0.b.c.x)), any(func_6(var_0.d, vec2<f32>(2482f, -779f), var_0.b.e.a).d.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1f, var_0.d.e.a.x), -191f, (var_3.x ^ 17790u) <= firstLeadingBit(30798u)))));
}

