struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec2<f32>(1366f, 624f)), vec2<i32>(-1i, 1i), Struct_1(vec2<f32>(209f, -909f)));

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<f32>(860f, 144f)), Struct_1(vec2<f32>(-486f, -723f)), Struct_1(vec2<f32>(119f, 1257f)), Struct_1(vec2<f32>(246f, 279f)), Struct_1(vec2<f32>(-1000f, 1000f)), Struct_1(vec2<f32>(105f, -1000f)), Struct_1(vec2<f32>(1216f, 599f)), Struct_1(vec2<f32>(895f, 1130f)), Struct_1(vec2<f32>(410f, 1889f)), Struct_1(vec2<f32>(-871f, -243f)), Struct_1(vec2<f32>(-426f, -356f)), Struct_1(vec2<f32>(-410f, 1448f)), Struct_1(vec2<f32>(-365f, -1162f)), Struct_1(vec2<f32>(1986f, 1324f)), Struct_1(vec2<f32>(-252f, 1089f)), Struct_1(vec2<f32>(936f, 1954f)), Struct_1(vec2<f32>(-371f, 528f)), Struct_1(vec2<f32>(545f, -1235f)), Struct_1(vec2<f32>(1000f, 156f)), Struct_1(vec2<f32>(-1542f, -1677f)), Struct_1(vec2<f32>(841f, 3009f)), Struct_1(vec2<f32>(2251f, 1054f)), Struct_1(vec2<f32>(-761f, 183f)), Struct_1(vec2<f32>(851f, -527f)), Struct_1(vec2<f32>(-770f, -841f)));

var<private> global2: array<vec3<bool>, 13>;

var<private> global3: Struct_2;

var<private> global4: array<i32, 5> = array<i32, 5>(-1i, -49271i, 3707i, -6169i, i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), true)) | (any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)) & false);
    return (-2147483647i > arg_0.b.x) && !(~_wgslsmith_mult_i32(global0.b.x, 1i) > ~1i);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_mult_u32(37488u, 54979u), 1u, 1u, 1u)) & (~(~3041u) | _wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 25777u), vec2<u32>(77890u, 50676u), true), abs(vec2<u32>(46517u, 4294967295u)))));
    var var_1 = Struct_3(select(vec4<bool>(false, func_3(Struct_4(global0.c, vec2<i32>(2147483647i, global4[_wgslsmith_index_u32(68875u, 5u)]), global0.c)), true, false), !(!select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(false, false, arg_0.x, false), vec4<bool>(arg_0.x, false, true, false))), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, !(!arg_0.x))), Struct_1(vec2<f32>(global3.a.a.x, _wgslsmith_f_op_f32(floor(-954f)))));
    var_1 = Struct_3(var_1.a, Struct_1(vec2<f32>(global0.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -113f))));
    global1 = array<Struct_1, 25>();
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(global3.c.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -207f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f)), true, select(false, !(!all(vec3<bool>(false, var_1.a.x, true))), var_1.a.x), false & any(!select(vec3<bool>(arg_0.x, var_1.a.x, true), vec3<bool>(true, arg_0.x, true), var_1.a.x)));
    return global0.a;
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> vec2<u32> {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(930f, -311f) - _wgslsmith_f_op_f32(-global3.c.a.x)))) + global3.b.a.x);
    let var_2 = i32(-1i) * -global4[_wgslsmith_index_u32(~firstTrailingBit(countOneBits(1u)), 5u)];
    let var_3 = u_input.a >= ~_wgslsmith_dot_vec4_i32(countOneBits(arg_0.c & vec4<i32>(global4[_wgslsmith_index_u32(arg_1, 5u)], u_input.a, -48275i, global4[_wgslsmith_index_u32(arg_1, 5u)])), vec4<i32>(_wgslsmith_add_i32(-27344i, var_2), _wgslsmith_div_i32(-1i, var_2), u_input.a, arg_0.c.x));
    var_0 = 1i;
    return ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(40441u, 4294967295u)), ~(vec2<u32>(arg_1, 16057u) ^ vec2<u32>(arg_1, 4294967295u))), vec2<u32>(_wgslsmith_mod_u32(1u, arg_1), firstTrailingBit(~arg_1)), ~(~vec2<u32>(arg_1, 0u) << (~vec2<u32>(15240u, arg_1) % vec2<u32>(32u))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = ~func_4(Struct_5(Struct_2(Struct_1(vec2<f32>(681f, arg_1)), func_2(vec3<bool>(arg_0, arg_0, arg_0)), func_2(global2[_wgslsmith_index_u32(50775u, 13u)])), Struct_3(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, true, true, false), vec4<bool>(arg_0, false, arg_0, arg_0)), func_2(vec3<bool>(arg_0, true, false))), vec4<i32>(_wgslsmith_sub_i32(0i, global4[_wgslsmith_index_u32(0u, 5u)]), abs(u_input.a), _wgslsmith_clamp_i32(u_input.a, 11841i, global0.b.x), global0.b.x)), 1u);
    global1 = array<Struct_1, 25>();
    var var_1 = Struct_3(vec4<bool>(arg_0, true, arg_0 & (_wgslsmith_f_op_f32(max(-1226f, arg_1)) != _wgslsmith_f_op_f32(select(global3.c.a.x, arg_2.x, arg_0))), true), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~(~1u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, var_0.x, var_0.x, 1u)), vec4<u32>(1u, var_0.x, var_0.x, var_0.x) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.x, 1u, var_0.x), vec4<u32>(var_0.x, 0u, 57011u, 59086u), vec4<u32>(var_0.x, var_0.x, 42068u, var_0.x)))), 25u)]);
    global0 = Struct_4(func_2(select(var_1.a.xzy, var_1.a.wwz, all(vec4<bool>(arg_0, true, true, arg_0)))), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.a, global4[_wgslsmith_index_u32(var_0.x, 5u)]), -vec2<i32>(_wgslsmith_dot_vec2_i32(global0.b, vec2<i32>(global4[_wgslsmith_index_u32(var_0.x, 5u)], -2147483647i)), u_input.a)), func_2(vec3<bool>(var_1.a.x & true, !var_1.a.x && false, u_input.a != global0.b.x)));
    let var_2 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, 1u, 4294967295u, firstTrailingBit(1u))), ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(20266u, 0u), ~var_0.x), _wgslsmith_sub_u32(1u, var_0.x), var_0.x, func_4(Struct_5(Struct_2(Struct_1(global3.c.a), var_1.b, Struct_1(global0.c.a)), Struct_3(vec4<bool>(var_1.a.x, arg_0, false, false), Struct_1(vec2<f32>(449f, arg_2.x))), vec4<i32>(u_input.a, -25793i, global4[_wgslsmith_index_u32(4294967295u, 5u)], u_input.a)), var_0.x & var_0.x).x));
    return func_2(select(!(!select(var_1.a.xxz, global2[_wgslsmith_index_u32(0u, 13u)], false)), vec3<bool>(!var_1.a.x, var_1.a.x, any(!global2[_wgslsmith_index_u32(var_2.x, 13u)])), global2[_wgslsmith_index_u32(var_2.x, 13u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(Struct_1(global3.a.a), global1[_wgslsmith_index_u32(~(~min(21853u, 442u) & (_wgslsmith_dot_vec2_u32(vec2<u32>(49174u, 1u), vec2<u32>(16881u, 6078u)) << (~1u % 32u))), 25u)], func_1(!all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), _wgslsmith_f_op_f32(-global0.a.a.x), vec2<f32>(_wgslsmith_f_op_f32(-global3.a.a.x), global3.b.a.x)));
    let var_0 = Struct_2(global0.a, global0.c, Struct_1(global0.c.a));
    global0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-global3.a.a)), global0.b, Struct_1(var_0.c.a));
    let var_1 = 0u;
    global2 = array<vec3<bool>, 13>();
    global1 = array<Struct_1, 25>();
    var var_2 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(var_1, var_1, _wgslsmith_div_u32(abs(~1u), ~_wgslsmith_add_u32(3669u, 0u))), 0u, -(~vec2<i32>(u_input.a, -65737i)) >> (vec2<u32>(select(~var_1, ~var_1, any(global2[_wgslsmith_index_u32(var_1, 13u)])), abs(_wgslsmith_clamp_u32(24554u, 4294967295u, var_1))) % vec2<u32>(32u)), global3.b.a.x);
}

