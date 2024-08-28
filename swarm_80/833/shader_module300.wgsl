struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: Struct_2;

var<private> global2: array<f32, 18> = array<f32, 18>(-583f, 1924f, -1358f, 1544f, 409f, 1296f, -1599f, 645f, -293f, 1482f, -212f, 222f, 187f, -1943f, -1084f, 1000f, 977f, -228f);

var<private> global3: array<bool, 20>;

var<private> global4: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(36482u, 451u, 4811u), vec3<u32>(23959u, 4294967295u, 50383u), vec3<u32>(21086u, 0u, 1u), vec3<u32>(20460u, 13699u, 57502u), vec3<u32>(7312u, 61444u, 45892u), vec3<u32>(1u, 27184u, 1u), vec3<u32>(36280u, 62040u, 35018u), vec3<u32>(105580u, 62707u, 1u), vec3<u32>(57449u, 35816u, 80183u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(1000f * global1.b.x);
    let var_1 = Struct_3(!any(vec3<bool>(!arg_1, all(vec3<bool>(true, arg_1, global3[_wgslsmith_index_u32(4294967295u, 20u)])), false)), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(379f, global2[_wgslsmith_index_u32(0u, 18u)], -1000f, -107f), global1.a)) - _wgslsmith_f_op_vec4_f32(-global1.a)) + vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(round(global1.a.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(25614u, 18u)] * global1.a.x), _wgslsmith_f_op_f32(abs(global1.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-590f, -638f, global2[_wgslsmith_index_u32(6693u, 18u)], global1.b.x))))), Struct_1(select(select(select(vec3<bool>(arg_1, global3[_wgslsmith_index_u32(10900u, 20u)], true), vec3<bool>(false, false, false), vec3<bool>(true, global3[_wgslsmith_index_u32(12877u, 20u)], true)), vec3<bool>(arg_1, true, global3[_wgslsmith_index_u32(1u, 20u)]), arg_1), !vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, true)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-482f, global2[_wgslsmith_index_u32(75125u, 18u)], 1283f)), _wgslsmith_f_op_vec3_f32(min(global1.a.xzw, vec3<f32>(-501f, global1.a.x, 1430f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.b.wwz + vec3<f32>(1894f, -360f, -532f)), _wgslsmith_f_op_vec3_f32(step(global1.b.zzw, global1.b.wzy)), vec3<bool>(true, true, global3[_wgslsmith_index_u32(41372u, 20u)]))))), 4294967295u));
    var var_2 = Struct_3(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~firstLeadingBit(global4[_wgslsmith_index_u32(var_1.c.c, 9u)])), _wgslsmith_clamp_vec3_u32(~vec3<u32>(38689u, var_1.c.c, 4294967295u), global4[_wgslsmith_index_u32(~var_1.c.c, 9u)], _wgslsmith_sub_vec3_u32(global4[_wgslsmith_index_u32(var_1.c.c, 9u)], ~global4[_wgslsmith_index_u32(17208u, 9u)]))), 27u)], var_1.c);
    global1 = Struct_2(var_2.b.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.b.a, _wgslsmith_f_op_vec4_f32(var_2.b.b * vec4<f32>(var_2.b.a.x, var_2.c.b.x, global2[_wgslsmith_index_u32(var_1.c.c, 18u)], -181f)))))));
    global2 = array<f32, 18>();
    return _wgslsmith_f_op_f32(sign(-1596f));
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.a;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2034f, _wgslsmith_f_op_f32(-1277f + -1346f), _wgslsmith_f_op_f32(-124f - global1.b.x), _wgslsmith_f_op_f32(func_3(63104i, false))) + vec4<f32>(global1.b.x, -1000f, _wgslsmith_f_op_f32(-global1.b.x), 1899f)), _wgslsmith_f_op_vec4_f32(select(global1.a, global1.a, !global3[_wgslsmith_index_u32(~64137u, 20u)])), !select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)], global3[_wgslsmith_index_u32(50742u, 20u)]), !vec4<bool>(true, global3[_wgslsmith_index_u32(77443u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(true, true, global3[_wgslsmith_index_u32(21196u, 20u)], false)))), _wgslsmith_f_op_vec4_f32(-global1.b));
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(firstLeadingBit(max(4294967295u, 1u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), countOneBits(8992u), min(56460u, 24676u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(0u, 27640u, 36465u, 9964u)) >> (17257u % 32u))), 20u)];
    let var_3 = Struct_1(!select(!select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)], false), vec3<bool>(false, global3[_wgslsmith_index_u32(86413u, 20u)], true), true), vec3<bool>(global3[_wgslsmith_index_u32(1906u, 20u)], true | global3[_wgslsmith_index_u32(0u, 20u)], true), true), vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(ceil(global1.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1552f + global2[_wgslsmith_index_u32(abs(15866u), 18u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.x)))))), ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 27983u, 77453u), global4[_wgslsmith_index_u32(~51503u, 9u)]), reverseBits(~4294967295u)));
    let var_4 = _wgslsmith_f_op_f32(-1339f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_3.c, 18u)]) + var_3.b.x)) <= _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), -842f), -1241f);
    return Struct_3(false, global0[_wgslsmith_index_u32(1u, 27u)], Struct_1(!vec3<bool>(4294967295u == var_3.c, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 74551u, var_3.c, var_3.c), vec4<u32>(0u, 1u, 4294967295u, var_3.c)), 20u)], var_4), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_1.b.yww))), ~1u));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: vec4<bool>) -> Struct_3 {
    global0 = array<Struct_2, 27>();
    global3 = array<bool, 20>();
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(arg_1.c.c, 18u)], -663f, _wgslsmith_f_op_f32(exp2(arg_1.c.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), global1.a);
    var var_0 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.c.c, 18u)] - global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~abs(71670u), 32349u), 18u)]);
    global1 = func_2().b;
    return arg_1;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<i32>) -> Struct_2 {
    global2 = array<f32, 18>();
    global3 = array<bool, 20>();
    let var_0 = _wgslsmith_add_u32(arg_1, arg_1 ^ arg_1);
    global1 = global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global4[_wgslsmith_index_u32(var_0, 9u)], select(global4[_wgslsmith_index_u32(arg_1, 9u)], vec3<u32>(arg_1, arg_1, 66037u), vec3<bool>(true, arg_0.x, true))), ~vec3<u32>(20043u, arg_1, var_0)), _wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(2916u, 0u, 0u, 4294967295u), vec4<u32>(arg_1, 0u, var_0, arg_1)), 65724u)) ^ var_0, 27u)];
    var var_1 = func_4(3138i, func_2(), true, !select(select(!vec4<bool>(true, true, arg_0.x, global3[_wgslsmith_index_u32(2199u, 20u)]), select(vec4<bool>(arg_0.x, false, false, global3[_wgslsmith_index_u32(var_0, 20u)]), vec4<bool>(global3[_wgslsmith_index_u32(1u, 20u)], false, global3[_wgslsmith_index_u32(1u, 20u)], false), arg_0.x), any(vec3<bool>(true, arg_0.x, false))), !select(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(32000u, 20u)]), vec4<bool>(false, false, arg_0.x, global3[_wgslsmith_index_u32(var_0, 20u)]), arg_0.x), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0, arg_1), 20u)]));
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 27>();
    global2 = array<f32, 18>();
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = ~4294967295u;
    let var_2 = _wgslsmith_div_u32(~_wgslsmith_div_u32(0u, _wgslsmith_mult_u32(25378u, 1u)), ~(~1u));
    var var_3 = ~vec2<i32>(1i, _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mod_i32(47506i, -2147483647i)) << (_wgslsmith_sub_u32(var_2, _wgslsmith_dot_vec3_u32(vec3<u32>(83090u, 0u, 13355u), vec3<u32>(44525u, 4294967295u, 21006u))) % 32u));
    var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(firstTrailingBit(~(i32(-1i) * -5831i)), 2147483647i), u_input.b.zy);
    var var_4 = Struct_3(false, func_1(!select(!var_0.zx, vec2<bool>(true, true), true), ~(~55006u), vec2<i32>(_wgslsmith_mult_i32(abs(u_input.a), abs(-3119i)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, var_3.x), vec2<i32>(var_3.x, 50280i)) | max(var_3.x, 13043i))), func_2().c);
    var var_5 = global2[_wgslsmith_index_u32(countOneBits(~1u), 18u)];
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, vec2<u32>(~(var_4.c.c ^ var_4.c.c), _wgslsmith_div_u32(firstLeadingBit(func_2().c.c), _wgslsmith_clamp_u32(var_4.c.c, func_4(var_3.x, Struct_3(var_0.x, global0[_wgslsmith_index_u32(var_4.c.c, 27u)], Struct_1(vec3<bool>(var_4.c.a.x, var_0.x, true), var_4.b.a.wwy, var_2)), true, vec4<bool>(false, true, true, false)).c.c, var_4.c.c))), _wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(var_2, var_2))), ~(~vec2<u32>(518u, 1u)) << (vec2<u32>(min(var_4.c.c, 1u), min(var_4.c.c, 4294967295u)) % vec2<u32>(32u))), global1.a.x, 34940i);
}

