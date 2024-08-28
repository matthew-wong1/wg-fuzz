struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(104f, 673f), vec2<f32>(105f, 1987f), vec2<f32>(156f, 1000f), vec2<f32>(389f, -1371f), vec2<f32>(-2761f, -1294f), vec2<f32>(1405f, 197f), vec2<f32>(1155f, -517f), vec2<f32>(3086f, -399f), vec2<f32>(-231f, -666f), vec2<f32>(-360f, 584f), vec2<f32>(1022f, -664f), vec2<f32>(233f, -486f), vec2<f32>(675f, -134f), vec2<f32>(-332f, -1577f), vec2<f32>(360f, -1128f), vec2<f32>(1629f, -1000f), vec2<f32>(-408f, 2082f), vec2<f32>(-1474f, -956f), vec2<f32>(792f, -440f), vec2<f32>(-1360f, -358f));

var<private> global2: array<Struct_1, 25>;

var<private> global3: vec4<u32>;

var<private> global4: array<vec4<i32>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_add_vec3_u32(u_input.d, ~global3.xwx);
    let var_1 = Struct_1(arg_2.b.wyw, vec4<i32>(i32(-1i) * -27273i, arg_2.c.x, ~arg_2.d.x, arg_2.a.x), vec2<i32>(54819i, -(i32(-1i) * -2147483647i)), _wgslsmith_add_vec4_i32(~global4[_wgslsmith_index_u32(u_input.d.x << (var_0.x % 32u), 27u)], ~global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, u_input.d.x), vec3<u32>(u_input.d.x, global3.x, global3.x))), 27u)]));
    global3 = u_input.b;
    return -2147483647i;
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_1(vec3<i32>(min(func_3(false, _wgslsmith_div_i32(11025i, u_input.c.x), global2[_wgslsmith_index_u32(global3.x & global3.x, 25u)], vec3<bool>(true, true, true)), i32(-1i) * -1i), func_3(any(vec3<bool>(true, true, true)), arg_0.b.x, Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.c.x), vec3<i32>(arg_0.a.x, -521i, u_input.c.x)), vec4<i32>(arg_0.c.x, arg_0.a.x, arg_0.a.x, -2147483647i), abs(vec2<i32>(arg_0.c.x, u_input.c.x)), firstTrailingBit(arg_0.b)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec3<bool>(false, false, true)))), u_input.c.x), vec4<i32>(arg_0.b.x & firstLeadingBit(-1i), func_3(true == select(false, false, true), _wgslsmith_sub_i32(1i, abs(26467i)), Struct_1(arg_0.a, vec4<i32>(0i, 13900i, arg_0.c.x, 0i), countOneBits(arg_0.c), ~vec4<i32>(-1i, -12526i, u_input.c.x, u_input.c.x)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, false, true))), _wgslsmith_div_i32(~1i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.c.x, u_input.c.x)), vec2<i32>(arg_0.c.x, arg_0.c.x))), 13449i), -vec2<i32>(abs(~arg_0.a.x), _wgslsmith_mod_i32(u_input.c.x, 3520i) & countOneBits(1i)), arg_0.b);
    let var_1 = Struct_1(arg_0.a, _wgslsmith_mult_vec4_i32(arg_0.b, global4[_wgslsmith_index_u32(u_input.a.x, 27u)]), -countOneBits(~(~vec2<i32>(79254i, 0i))), vec4<i32>(func_3(all(vec2<bool>(true, true)), -(-29495i | var_0.b.x), Struct_1(arg_0.d.xxw ^ u_input.c, vec4<i32>(var_0.c.x, -45925i, -50141i, 1i), firstLeadingBit(u_input.c.yz), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, var_0.c.x, -1i), vec4<i32>(var_0.c.x, 0i, 2147483647i, 16658i))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), firstTrailingBit(_wgslsmith_div_i32(0i, -2147483647i)), 22682i, _wgslsmith_add_i32(0i >> (global3.x % 32u), var_0.a.x)));
    var_0 = arg_0;
    global1 = array<vec2<f32>, 20>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1581f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-569f, -1175f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1056f + -870f))))), 1980f);
    return -_wgslsmith_dot_vec3_i32((-vec3<i32>(arg_0.d.x, 2147483647i, 39454i) << (vec3<u32>(4294967295u, 2762u, 44354u) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(~u_input.e, global3.yzy) % vec3<u32>(32u)), min(var_0.b.yxx, ~(vec3<i32>(u_input.c.x, var_0.b.x, u_input.c.x) | vec3<i32>(arg_0.a.x, -2147483647i, arg_0.c.x))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(vec3<i32>(arg_0.x, func_2(global2[_wgslsmith_index_u32(abs(0u), 25u)]), 1i), vec4<i32>(countOneBits(23512i), max(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), 1i), firstLeadingBit(-10615i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_0.x, 4020i), 1i, 2147483647i)), arg_0, countOneBits(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a.x, 53729u), 27u)])));
    let var_1 = 833f;
    let var_2 = vec3<u32>(global3.x, 26246u, global3.x);
    let var_3 = vec4<f32>(-915f, _wgslsmith_f_op_f32(-599f - _wgslsmith_f_op_f32(step(-1435f, 820f))), 188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-197f, _wgslsmith_f_op_f32(-var_1)))))));
    var var_4 = 7507i;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))), _wgslsmith_f_op_f32(ceil(718f)), -1140f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, var_1, var_3.x, var_1), _wgslsmith_f_op_vec4_f32(min(var_3, var_3)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(firstLeadingBit(u_input.c.zz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-375f, 1756f, 1728f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1379f, -839f, -320f)), vec3<f32>(-923f, 619f, 375f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211f + 193f)), -458f, -2918f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -231f, 780f, -207f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-481f, -1089f, 302f, -102f)))) - vec4<f32>(-1190f, _wgslsmith_f_op_f32(943f - 292f), _wgslsmith_f_op_f32(-1694f - -128f), _wgslsmith_f_op_f32(f32(-1f) * -992f)))));
    global4 = array<vec4<i32>, 27>();
    global1 = array<vec2<f32>, 20>();
    var var_1 = -u_input.c.x;
    global1 = array<vec2<f32>, 20>();
    global4 = array<vec4<i32>, 27>();
    global0 = ~1u;
    var_0 = vec4<f32>(-405f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(-161f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, 2147483647i, 2147483647i, 34692i) << (vec4<u32>(36824u, global3.x, 1u, u_input.b.x) % vec4<u32>(32u)), -vec4<i32>(u_input.c.x, 31072i, u_input.c.x, u_input.c.x)));
}

