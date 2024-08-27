struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<u32, 6> = array<u32, 6>(1u, 89574u, 133092u, 4512u, 1u, 0u);

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(10706u, true, vec2<f32>(275f, -414f)), Struct_2(4129u, true, vec2<f32>(-1577f, 420f)), Struct_2(0u, true, vec2<f32>(-116f, 1057f)), Struct_2(4294967295u, false, vec2<f32>(785f, 307f)), Struct_2(4294967295u, false, vec2<f32>(-1080f, -335f)), Struct_2(1u, true, vec2<f32>(-832f, -785f)), Struct_2(19091u, false, vec2<f32>(-804f, 1776f)), Struct_2(61757u, true, vec2<f32>(1479f, 197f)), Struct_2(15601u, false, vec2<f32>(1174f, -1000f)), Struct_2(4294967295u, true, vec2<f32>(-887f, -131f)), Struct_2(1u, true, vec2<f32>(332f, 159f)), Struct_2(8122u, true, vec2<f32>(543f, -558f)), Struct_2(1u, false, vec2<f32>(-1300f, 1089f)), Struct_2(0u, true, vec2<f32>(-710f, 397f)), Struct_2(12406u, false, vec2<f32>(110f, 769f)), Struct_2(0u, false, vec2<f32>(382f, -470f)), Struct_2(4294967295u, true, vec2<f32>(850f, -463f)), Struct_2(0u, false, vec2<f32>(976f, 940f)), Struct_2(0u, false, vec2<f32>(671f, -399f)), Struct_2(5082u, false, vec2<f32>(-1191f, -658f)), Struct_2(0u, false, vec2<f32>(-445f, 847f)), Struct_2(33801u, false, vec2<f32>(161f, 144f)), Struct_2(1u, false, vec2<f32>(1062f, -1518f)), Struct_2(9453u, true, vec2<f32>(715f, 167f)), Struct_2(1u, true, vec2<f32>(-841f, -2354f)), Struct_2(1u, false, vec2<f32>(-919f, 163f)), Struct_2(0u, true, vec2<f32>(1406f, -293f)));

var<private> global3: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(vec2<bool>(true, true), vec4<u32>(38739u, 0u, 35138u, 4294967295u), Struct_2(0u, false, vec2<f32>(-1131f, 997f))), Struct_5(vec2<bool>(false, false), vec4<u32>(4294967295u, 0u, 34972u, 4294967295u), Struct_2(12180u, true, vec2<f32>(-1014f, 1823f))));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_2) -> f32 {
    global1 = array<u32, 6>();
    var var_0 = -arg_1.c;
    global0 = arg_1.b;
    global1 = array<u32, 6>();
    global0 = all(!select(!vec3<bool>(false, arg_3.b, false), vec3<bool>(false, arg_3.a >= 45804u, true), arg_3.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1154f, arg_0.b.c.x)))))));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: i32) -> vec2<bool> {
    global2 = array<Struct_2, 27>();
    var var_0 = vec2<bool>(arg_1.b.b, false);
    var var_1 = _wgslsmith_f_op_f32(func_3(Struct_4(arg_0, Struct_2(arg_1.b.a, true | (false | arg_1.b.b), arg_1.b.c)), Struct_1(arg_1.b.a, !(!arg_1.b.b), vec4<i32>(-max(75638i, -2147483647i), arg_2, arg_2, _wgslsmith_sub_i32(arg_2, i32(-1i) * -2147483647i))), vec2<i32>(-1i, arg_2), arg_1.b));
    var var_2 = !select(select(vec3<bool>(true, !arg_1.b.b, true), !vec3<bool>(false, arg_1.b.b, var_0.x), false), vec3<bool>(arg_1.b.b, var_0.x, any(vec2<bool>(arg_1.b.b, false))), true);
    var_0 = select(vec2<bool>(all(vec2<bool>(!var_2.x, var_0.x)), !any(select(vec3<bool>(var_0.x, arg_1.b.b, var_2.x), vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, false, false)))), vec2<bool>(53124u != ((arg_1.b.a >> (43825u % 32u)) << (~0u % 32u)), !(_wgslsmith_div_f32(arg_1.a, arg_1.b.c.x) < arg_1.b.c.x)), !var_2.yz);
    return !vec2<bool>(true, all(select(select(vec3<bool>(var_0.x, arg_1.b.b, var_2.x), vec3<bool>(var_0.x, arg_1.b.b, var_2.x), var_2.x), !vec3<bool>(var_2.x, var_2.x, arg_1.b.b), vec3<bool>(var_0.x, var_0.x, arg_1.b.b))));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> Struct_4 {
    global1 = array<u32, 6>();
    global3 = array<Struct_5, 2>();
    return Struct_4(arg_0, Struct_2(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 6u)]), 0u), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(arg_0))))));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3) -> bool {
    global0 = arg_0.a;
    var var_0 = 1u;
    var var_1 = -22307i;
    let var_2 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -671f)))))), select(vec2<bool>(true, false), vec2<bool>(arg_0.a, true), select(select(!vec2<bool>(true, arg_0.a), vec2<bool>(true, arg_0.a), vec2<bool>(arg_2.a, true)), !func_2(-412f, Struct_4(arg_1.x, global2[_wgslsmith_index_u32(38263u, 27u)]), 0i), !(!vec2<bool>(arg_0.a, false)))));
    var var_3 = func_4(var_2.b.c.x, vec2<bool>(true, arg_0.a)).b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.c.x))) >= _wgslsmith_f_op_f32(abs(-515f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(766f, -241f, 624f), _wgslsmith_f_op_vec3_f32(vec3<f32>(2191f, 1000f, 637f) + vec3<f32>(-287f, 335f, 811f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(530f, -1614f, -1769f), vec3<f32>(1368f, 1023f, -548f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1034f, -1000f, 1061f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(573f, 1280f, -413f)))))))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-124f)), _wgslsmith_div_f32(613f, -1728f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1586f + -376f)), _wgslsmith_f_op_f32(-1905f - _wgslsmith_f_op_f32(-525f - -409f))))));
    global0 = false || ((u_input.a >= ~4294967295u) & ((func_1(Struct_3(true), vec2<f32>(var_0.x, var_0.x), Struct_3(false)) & true) | !func_4(var_0.x, vec2<bool>(false, false)).b.b));
    var var_1 = 0u;
    global1 = array<u32, 6>();
    let var_2 = abs(~global1[_wgslsmith_index_u32((~global1[_wgslsmith_index_u32(83051u, 6u)] << (abs(u_input.a) % 32u)) << (u_input.a % 32u), 6u)]);
    var var_3 = var_0.x;
    var var_4 = countOneBits(8465i);
    var_4 = max(max(_wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-9246i, -3380i, 2147483647i), vec3<i32>(0i, 0i, 1i)), 21064i), -(abs(0i) << (var_2 % 32u))), max(select(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -82683i), vec3<i32>(-11369i, 0i, -52773i)), ~0i), _wgslsmith_add_i32(select(-2147483647i, 2147483647i, true), 1i << (var_2 % 32u)), true), i32(-1i) * -abs(1i)));
    var var_5 = vec2<bool>(func_1(Struct_3(true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, -334f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - var_0.yy))), Struct_3(true)), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true))) && all(func_2(552f, func_4(1000f, vec2<bool>(false, false)), _wgslsmith_sub_i32(-1i, 27450i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

