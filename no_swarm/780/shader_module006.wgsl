struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(Struct_3(vec3<bool>(true, false, false), Struct_1(vec2<bool>(false, false), vec4<u32>(0u, 0u, 4294967295u, 0u), 1109f, 49404u, true), Struct_2(vec2<i32>(2147483647i, 33702i), vec2<f32>(-749f, 172f), Struct_1(vec2<bool>(true, false), vec4<u32>(4294967295u, 4294967295u, 23455u, 0u), -166f, 0u, false), vec4<bool>(false, false, true, false), 3451u), vec4<i32>(i32(-2147483648), -70729i, 2147483647i, 54317i), vec2<f32>(1436f, -1292f)), vec2<i32>(-7947i, -123347i), vec4<bool>(true, false, false, true), vec3<i32>(-1i, -46303i, i32(-2147483648))), Struct_5(Struct_3(vec3<bool>(false, true, false), Struct_1(vec2<bool>(true, true), vec4<u32>(1u, 8071u, 1u, 0u), 309f, 63852u, true), Struct_2(vec2<i32>(1947i, 2147483647i), vec2<f32>(-869f, -1012f), Struct_1(vec2<bool>(true, false), vec4<u32>(32386u, 5738u, 0u, 384u), -329f, 54195u, true), vec4<bool>(false, false, false, false), 4294967295u), vec4<i32>(25761i, 0i, 13560i, 1i), vec2<f32>(2040f, 115f)), vec2<i32>(-5779i, 2147483647i), vec4<bool>(false, false, true, false), vec3<i32>(-1i, 2147483647i, 1i)));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), vec4<u32>(6129u, 19362u, 0u, 18024u), -189f, 4294967295u, false);

var<private> global2: array<Struct_1, 19>;

var<private> global3: array<i32, 27> = array<i32, 27>(1i, 0i, 69084i, 1122i, 0i, 0i, 5439i, -1i, i32(-2147483648), -29833i, 18767i, 2147483647i, -1i, 68288i, 3615i, -27208i, -1i, 24120i, 4431i, 1i, 49166i, i32(-2147483648), -19851i, 61121i, -17994i, 49969i, 1i);

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: i32) -> vec4<u32> {
    var var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(arg_1.a.b.d), 19u)];
    let var_1 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-(-2147483647i & arg_1.b.x), ~arg_1.a.d.x, i32(-1i) * -1i), -56192i), arg_2, 38274i, arg_1.b.x >> (~(~(~11107u)) % 32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.e.x * _wgslsmith_f_op_f32(-124f - 862f)));
    var var_3 = Struct_3(!select(select(arg_1.a.a, !arg_1.c.xzx, all(vec3<bool>(arg_1.a.a.x, arg_0, false))), vec3<bool>(false, var_0.a.x, arg_0), vec3<bool>(all(global1.a), false, arg_0 | global1.a.x)), global2[_wgslsmith_index_u32(arg_1.a.c.e >> (43482u % 32u), 19u)], arg_1.a.c, reverseBits(var_1), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a.c.c.c)), _wgslsmith_f_op_f32(abs(1000f))))))));
    global3 = array<i32, 27>();
    return global4.b;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> Struct_4 {
    global0 = array<Struct_5, 2>();
    global1 = Struct_1(global4.a, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1187f))))), _wgslsmith_dot_vec4_u32(func_3(global1.a.x, Struct_5(Struct_3(vec3<bool>(true, false, false), Struct_1(vec2<bool>(global4.a.x, true), vec4<u32>(global1.b.x, arg_1.x, global1.b.x, 51502u), 1000f, global4.b.x, global1.a.x), Struct_2(vec2<i32>(global3[_wgslsmith_index_u32(0u, 27u)], 33781i), vec2<f32>(-1000f, global4.c), Struct_1(vec2<bool>(false, global4.a.x), global4.b, global4.c, 3473u, arg_0), vec4<bool>(false, arg_0, false, true), arg_1.x), vec4<i32>(35146i, global3[_wgslsmith_index_u32(arg_1.x, 27u)], 0i, global3[_wgslsmith_index_u32(global1.d, 27u)]), vec2<f32>(466f, 152f)), ~vec2<i32>(global3[_wgslsmith_index_u32(46421u, 27u)], global3[_wgslsmith_index_u32(arg_1.x, 27u)]), !vec4<bool>(false, global4.e, true, global1.e), max(vec3<i32>(1i, 1i, 0i), vec3<i32>(-42840i, global3[_wgslsmith_index_u32(3140u, 27u)], global3[_wgslsmith_index_u32(global4.d, 27u)]))), -8312i), vec4<u32>(min(21859u, u_input.a.x), 27682u, _wgslsmith_mod_u32(0u, 32957u), _wgslsmith_sub_u32(41186u, 1u)) ^ _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(global1.b, vec4<u32>(arg_1.x, 54219u, global1.b.x, 54741u)), global4.b)), any(select(select(select(vec3<bool>(global4.e, false, true), vec3<bool>(true, arg_0, global4.a.x), global1.e), !vec3<bool>(global1.a.x, true, arg_0), vec3<bool>(true, arg_0, global4.e)), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, global1.a.x))), select(vec3<bool>(true, global1.e, global4.a.x), vec3<bool>(true, false, arg_0), select(vec3<bool>(true, false, arg_0), vec3<bool>(true, arg_0, arg_0), global1.a.x)))));
    global3 = array<i32, 27>();
    let var_0 = global0[_wgslsmith_index_u32(~arg_1.x, 2u)];
    var var_1 = !global1.a;
    return Struct_4(Struct_2(-(vec2<i32>(-1i) * -vec2<i32>(var_0.a.c.a.x, var_0.b.x)), _wgslsmith_f_op_vec2_f32(var_0.a.e * vec2<f32>(global1.c, _wgslsmith_f_op_f32(min(-538f, -183f)))), Struct_1(var_0.a.a.yy, vec4<u32>(_wgslsmith_clamp_u32(var_0.a.b.b.x, global1.d, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(33081u, 23416u), 1u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(943f, global1.c) * -1782f), 8480u, !any(vec3<bool>(false, var_1.x, false))), vec4<bool>(select(true, !arg_0, !global4.a.x), true, true, all(!vec4<bool>(global4.e, true, true, true))), ~u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.c.c.c), _wgslsmith_f_op_f32(sign(global4.c)), 1041f) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.c.b.x, global4.c, var_0.a.b.c))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = !global1.e;
    var var_1 = func_2(all(!vec3<bool>(global4.e, false, true)), abs(vec3<u32>(global4.b.x, 1u, ~(~21340u))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-345f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.c, global1.c, true))), 463f)), _wgslsmith_f_op_vec3_f32(var_1.b * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global4.c), _wgslsmith_f_op_f32(floor(441f)), _wgslsmith_f_op_f32(global1.c + var_1.b.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.b, vec3<f32>(-761f, global4.c, var_1.b.x), var_1.a.d.x))))));
    let var_3 = func_2(any(select(vec3<bool>(!global4.a.x, false, true), func_2(true, vec3<u32>(global4.b.x, var_1.a.e, var_1.a.c.b.x)).a.d.xwz, func_2(all(var_1.a.d.xwx), var_1.a.c.b.zyx).a.d.wzx)), vec3<u32>(_wgslsmith_dot_vec3_u32(~(~global1.b.yyz), ~(vec3<u32>(u_input.a.x, var_1.a.c.d, global4.d) ^ var_1.a.c.b.xyy)), ~(global4.b.x & _wgslsmith_dot_vec3_u32(var_1.a.c.b.yxx, vec3<u32>(var_1.a.e, u_input.a.x, 0u))), global1.b.x ^ 1u)).a.c;
    let var_4 = (all(vec3<bool>(global4.c <= 645f, false, true)) & (true && !all(vec4<bool>(false, true, false, true)))) && global1.a.x;
    return func_2(true, vec3<u32>(4294967295u, 29363u, func_2(any(select(vec4<bool>(var_4, var_4, false, false), vec4<bool>(global1.e, global1.e, var_4, var_1.a.c.e), vec4<bool>(true, false, global4.e, global1.a.x))), ~(var_1.a.c.b.yww & var_1.a.c.b.wyy)).a.c.b.x)).a.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 2>();
    global2 = array<Struct_1, 19>();
    let var_0 = func_1(1i);
    global3 = array<i32, 27>();
    global0 = array<Struct_5, 2>();
    global4 = Struct_1(vec2<bool>(var_0.e, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-4474i, global3[_wgslsmith_index_u32(0u, 27u)]), -1i, ~global3[_wgslsmith_index_u32(42202u, 27u)]) != _wgslsmith_div_i32(abs(31904i), 1i)), ~min(reverseBits(~var_0.b), ~global1.b), _wgslsmith_f_op_f32(-func_1(2147483647i).c), global1.b.x, _wgslsmith_f_op_f32(sign(-1000f)) <= global1.c);
    var var_1 = reverseBits(global3[_wgslsmith_index_u32(u_input.a.x, 27u)]) | _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(~firstLeadingBit(var_0.b.x), 27u)] & global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1.b.x, _wgslsmith_dot_vec4_u32(global4.b, vec4<u32>(26646u, global1.d, global4.b.x, u_input.a.x))), 27u)], _wgslsmith_add_i32(global3[_wgslsmith_index_u32(func_1(1i).b.x, 27u)], -global3[_wgslsmith_index_u32(1u, 27u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(func_2(global1.a.x && false, var_0.b.zyz).b.zx)), vec2<f32>(var_0.c, _wgslsmith_f_op_f32(func_1(0i).c * _wgslsmith_f_op_f32(-global4.c)))), 7345u, global1.d, global1.c, reverseBits(~7176i));
}

