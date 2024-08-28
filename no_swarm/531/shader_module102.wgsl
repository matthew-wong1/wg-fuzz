struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: Struct_2 = Struct_2(vec3<i32>(0i, 19744i, 0i));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> vec4<u32> {
    global0 = array<f32, 12>();
    let var_0 = Struct_3(arg_0.x);
    return vec4<u32>(0u, ~0u, u_input.a.x, u_input.a.x);
}

fn func_3() -> vec4<u32> {
    var var_0 = any(vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true));
    let var_1 = global1.a;
    global1 = Struct_2(-reverseBits(select(vec3<i32>(u_input.b.x, u_input.b.x, -3786i), vec3<i32>(var_1.x, global1.a.x, 27442i), vec3<bool>(true, false, false))));
    var_0 = all(select(select(vec3<bool>(false, any(vec2<bool>(true, false)), true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), false), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(all(vec2<bool>(false, false)), true, true), vec3<bool>(true, false, true)), true));
    var var_2 = vec4<bool>(true, true, false, all(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), true)));
    return vec4<u32>(~u_input.a.x, 4294967295u, u_input.a.x, 0u);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_4(Struct_2(u_input.b), abs(~min(select(vec4<i32>(global1.a.x, global1.a.x, global1.a.x, u_input.b.x), vec4<i32>(-2147483647i, global1.a.x, -2147483647i, u_input.b.x), vec4<bool>(false, true, true, true)), vec4<i32>(global1.a.x, -27203i, global1.a.x, global1.a.x))), Struct_1(vec4<f32>(1468f, -1537f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-611f, -1835f)) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 12u)] + -1319f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(576f - 1000f))), ~(~max(arg_0, vec4<u32>(70873u, arg_1.x, 9416u, 76671u))), vec2<bool>(any(vec2<bool>(true, true)), true), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false)), 1u <= arg_1.x));
    var var_1 = ~_wgslsmith_sub_i32(-59042i, var_0.b.x);
    global0 = array<f32, 12>();
    return var_0;
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2423f), -220f));
    let var_1 = func_4(firstTrailingBit(abs(~vec4<u32>(78053u, u_input.a.x, u_input.a.x, 1u))) >> (func_2(~_wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(-9931i, u_input.b.x, u_input.b.x)), true) % vec4<u32>(32u)), func_3());
    let var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(func_4(vec4<u32>(0u, arg_0.x, arg_0.x, 4294967295u) << (var_1.c.b % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, var_1.c.b.x, 40930u), ~vec4<u32>(1u, u_input.a.x, 0u, u_input.a.x))).a.a.zy, vec2<i32>(-1i) * -firstLeadingBit(var_1.a.a.yz)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(31564i, global1.a.x), ~var_1.a.a.zy), vec2<i32>(-global1.a.x, max(30102i, var_1.b.x))) & vec2<i32>(u_input.b.x, 1i), max(_wgslsmith_sub_vec2_i32(var_1.b.xy, select(firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x)), countOneBits(vec2<i32>(var_1.a.a.x, 37687i)), true)), _wgslsmith_div_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, firstLeadingBit(var_1.a.a.x)))));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(25122u, 12u)], 243f))), vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))));
    var var_4 = ~var_1.b.x;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(func_1(~(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)))), -(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-1i, u_input.b.x), _wgslsmith_mult_i32(-2147483647i, global1.a.x)) | global1.a.x), abs(1i));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 688f, -899f, -118f) + vec4<f32>(318f, -1010f, 523f, -356f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1249f, -1559f, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(0u, 12u)])))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -417f, -1015f) + vec4<f32>(2752f, -622f, global0[_wgslsmith_index_u32(8685u, 12u)], -325f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-133f, -303f, 310f, -336f), vec4<f32>(-175f, -357f, global0[_wgslsmith_index_u32(10988u, 12u)], 1000f), true)), vec4<bool>(true, false, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1127f, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -318f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1049f, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 2395f, 882f) - vec4<f32>(-1462f, global0[_wgslsmith_index_u32(35108u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 1000f))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_4(vec4<u32>(u_input.a.x, 48621u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 3001u)).c.d.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-829f, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(6506u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)]))), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)] * 1777f), 1231f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 12u)] - global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), func_4(vec4<u32>(23845u, 86081u, u_input.a.x, 0u), vec4<u32>(880u, 67675u, 0u, u_input.a.x)).c.a.x), any(vec2<bool>(true, false)))) * vec4<f32>(_wgslsmith_f_op_f32(-1531f - global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(11212u & u_input.a.x, 0u), 12u)], _wgslsmith_f_op_f32(-760f - _wgslsmith_f_op_f32(146f - 1562f)), -1010f)));
    let var_2 = Struct_4(func_4(~max(func_4(vec4<u32>(u_input.a.x, 71730u, 0u, 19287u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)).c.b, ~vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x)), vec4<u32>(u_input.a.x, _wgslsmith_add_u32(firstTrailingBit(24182u), ~u_input.a.x), u_input.a.x & (u_input.a.x ^ u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a))).a, -(~vec4<i32>(global1.a.x, -10189i, u_input.b.x, var_0.x)) ^ (vec4<i32>(u_input.b.x, -58261i, -1i, ~u_input.b.x) << ((~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 43124u) >> (func_3() % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(2814u, 12u)])), _wgslsmith_f_op_f32(floor(-580f))), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 580f)), var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(285f * -1035f)))), abs(select(vec4<u32>(1u, 4294967295u, u_input.a.x, 61624u), vec4<u32>(1u, 91938u, u_input.a.x, u_input.a.x), vec4<bool>(true, false, true, false))) << (func_4(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 61638u), vec4<u32>(33469u, u_input.a.x, 4294967295u, u_input.a.x))).c.b % vec4<u32>(32u)), !vec2<bool>(true, all(vec3<bool>(false, true, false))), !vec4<bool>(true, global1.a.x == var_0.x, false, false), !(!all(vec2<bool>(true, true)))));
    global1 = func_4(var_2.c.b, vec4<u32>(0u, 4294967295u, var_2.c.b.x, _wgslsmith_dot_vec4_u32(~(~var_2.c.b), ~(~var_2.c.b)))).a;
    var var_3 = _wgslsmith_div_vec4_i32(var_2.b, -(countOneBits(func_4(vec4<u32>(30129u, 4294967295u, 4294967295u, var_2.c.b.x), vec4<u32>(0u, 4294967295u, 5372u, 313u)).b) | func_4(~vec4<u32>(1u, u_input.a.x, u_input.a.x, var_2.c.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 0u, 1u), var_2.c.b)).b));
    global0 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(0i, ~12906i | (_wgslsmith_mod_i32(var_0.x, -2147483647i) & global1.a.x)), func_4(firstTrailingBit(var_2.c.b), func_2(func_4(select(vec4<u32>(135233u, 0u, 29609u, 1u), vec4<u32>(u_input.a.x, 31911u, 21538u, 38399u), vec4<bool>(var_2.c.d.x, true, true, true)), var_2.c.b).b.xyy, var_2.c.d.x)).c.a.x, global1.a.x);
}

