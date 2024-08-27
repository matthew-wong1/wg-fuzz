struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27>;

var<private> global1: array<Struct_3, 4>;

var<private> global2: Struct_1 = Struct_1(true, true, vec4<bool>(false, true, false, false), 5951u, vec2<f32>(1000f, 1289f));

var<private> global3: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(734f, -484f, 1241f, -1000f), vec4<f32>(-681f, -222f, 240f, 1707f), vec4<f32>(1017f, -763f, -1000f, 951f), vec4<f32>(-1446f, 1089f, 955f, 714f), vec4<f32>(-1926f, -1539f, 1136f, 1769f), vec4<f32>(-192f, 1000f, -163f, -476f), vec4<f32>(-171f, -1000f, -319f, 3482f), vec4<f32>(-1000f, -455f, -158f, -896f), vec4<f32>(-184f, -1090f, 1076f, -367f), vec4<f32>(563f, 1000f, -1000f, 212f), vec4<f32>(-593f, 2736f, 441f, -107f), vec4<f32>(-923f, 1289f, -243f, -501f), vec4<f32>(1409f, -931f, -447f, 1128f), vec4<f32>(-924f, 1884f, 1462f, 558f), vec4<f32>(-445f, -515f, -2340f, -1011f), vec4<f32>(-1095f, 979f, 255f, 1307f), vec4<f32>(-1279f, 1000f, -709f, 1565f), vec4<f32>(-862f, 608f, 1841f, -887f), vec4<f32>(368f, -166f, 568f, -366f), vec4<f32>(2083f, -1104f, -1000f, -139f), vec4<f32>(1394f, -509f, -269f, -636f), vec4<f32>(-454f, 368f, 637f, -785f), vec4<f32>(1000f, 1641f, 1719f, 483f), vec4<f32>(1871f, 1616f, -1000f, 1619f), vec4<f32>(1000f, -511f, -1299f, 401f), vec4<f32>(-431f, -406f, 649f, -1000f), vec4<f32>(-426f, 883f, 1343f, -1390f), vec4<f32>(-970f, -323f, 271f, -1715f), vec4<f32>(266f, -1614f, 219f, 256f));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: Struct_2) -> i32 {
    global0 = array<vec3<i32>, 27>();
    global0 = array<vec3<i32>, 27>();
    let var_0 = (true && !arg_2.c.c.x) & (4294967295u <= (global2.d | ~firstTrailingBit(arg_2.c.d)));
    let var_1 = 1u;
    let var_2 = firstLeadingBit(max(~(~global2.d << (arg_0.a.x % 32u)), abs(1u)));
    return i32(-1i) * -18273i;
}

fn func_2(arg_0: vec2<bool>) -> Struct_5 {
    var var_0 = abs(~abs(firstLeadingBit(~51131u)));
    let var_1 = !(!((u_input.b & -1i) != firstTrailingBit(_wgslsmith_sub_i32(u_input.a, 17367i))));
    var var_2 = !all(!global2.c.xxx);
    global3 = array<vec4<f32>, 29>();
    var var_3 = Struct_3(Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, u_input.a), ~vec4<i32>(u_input.a, u_input.a, u_input.b, 2147483647i)) & (vec4<i32>(1i, -811i, 10503i, 1i) << (~vec4<u32>(4294967295u, 0u, global2.d, global2.d) % vec4<u32>(32u))), select(arg_0.x, false, false), Struct_1(true, arg_0.x, global2.c, 1u, global2.e)), Struct_2(vec4<i32>(u_input.b, reverseBits(-u_input.b), func_3(Struct_5(vec3<u32>(global2.d, 1u, global2.d)), max(0i, u_input.b), Struct_2(vec4<i32>(-78399i, u_input.b, -43603i, 13063i), global2.c.x, Struct_1(var_1, true, global2.c, global2.d, vec2<f32>(298f, global2.e.x)))), _wgslsmith_clamp_i32(2147483647i, u_input.a, -u_input.b)), any(vec3<bool>(true, false, select(false, true, true))), Struct_1(global2.a, true, global2.c, ~93937u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(645f, -985f), vec2<f32>(global2.e.x, 1548f))))), ~vec2<u32>(_wgslsmith_add_u32(54287u, global2.d) ^ ~6684u, 81619u));
    return Struct_5(firstTrailingBit(_wgslsmith_clamp_vec3_u32(~(vec3<u32>(0u, 69462u, 1u) | vec3<u32>(4294967295u, 4294967295u, var_3.b.c.d)), ~(~vec3<u32>(22081u, global2.d, global2.d)), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(var_3.b.c.d, global2.d, global2.d)), ~vec3<u32>(4294967295u, 0u, global2.d)))));
}

fn func_1() -> bool {
    global3 = array<vec4<f32>, 29>();
    var var_0 = func_2(select(vec2<bool>(true, true), !global2.c.wx, global2.a));
    var var_1 = func_2(select(!vec2<bool>(global2.a, global2.b), global2.c.xw, !global2.a || (true & global2.b)));
    let var_2 = Struct_4(Struct_1(true, global2.a, global2.c, abs(51666u), vec2<f32>(_wgslsmith_f_op_f32(1365f - _wgslsmith_f_op_f32(min(global2.e.x, -305f))), _wgslsmith_f_op_f32(round(global2.e.x)))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 6275u, _wgslsmith_sub_u32(global2.d, 1u)), var_0.a), true, global3[_wgslsmith_index_u32(var_1.a.x << (var_1.a.x % 32u), 29u)]);
    var var_3 = Struct_5(select(select(vec3<u32>(34439u, select(var_0.a.x, var_0.a.x, global2.b), _wgslsmith_dot_vec3_u32(var_1.a, vec3<u32>(var_2.a.d, global2.d, 4294967295u))), vec3<u32>(~65593u, global2.d << (var_2.a.d % 32u), select(4294967295u, var_2.b.x, global2.c.x)), var_2.a.c.xxx), vec3<u32>(max(~var_0.a.x, 4294967295u), firstTrailingBit(_wgslsmith_add_u32(var_1.a.x, var_1.a.x)), 0u), var_2.a.a));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, func_1()), global2.c.zz, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e.x - -124f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.e.x))), global2.e.x, -1380f) + _wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(func_2(!vec2<bool>(var_0.x, var_0.x)).a.x, 29u)]))));
    global3 = array<vec4<f32>, 29>();
    var var_2 = global2.c.x;
    var_2 = !(_wgslsmith_sub_i32(u_input.b, ~(~1i)) == 1i);
    global0 = array<vec3<i32>, 27>();
    let var_3 = vec3<i32>(-2147483647i, -_wgslsmith_mult_i32(-1i, ~(-63139i)), u_input.b);
    let var_4 = countOneBits(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~(~26457u)), _wgslsmith_div_u32(global2.d, 4294967295u)), _wgslsmith_f_op_f32(global2.e.x * _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_div_f32(-1252f, _wgslsmith_f_op_f32(-var_1.x))))), (global2.d << (global2.d % 32u)) << (~abs(_wgslsmith_mod_u32(4294967295u, global2.d)) % 32u), ~min(~(~vec4<u32>(1u, global2.d, 70130u, 0u)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(global2.d, global2.d, 35888u, 13571u)), firstTrailingBit(vec4<u32>(37045u, global2.d, 62539u, global2.d)))), vec3<i32>(1i, -_wgslsmith_add_i32(var_3.x, var_4) >> (firstTrailingBit(0u) % 32u), select(min(u_input.b, -20874i) << (~1u % 32u), var_4, !var_0.x)));
}

