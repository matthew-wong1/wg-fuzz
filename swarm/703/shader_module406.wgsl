struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, 40917u, Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(-750f, 266f), 2319f, vec2<f32>(-1185f, 1549f)), 4294967295u, Struct_2(107101u, Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(-425f, -1000f), 1455f, vec2<f32>(1112f, -2125f)), Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(1161f, -588f), 1568f, vec2<f32>(435f, -799f))));

var<private> global1: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(1u, 848f), Struct_5(1u, 861f), Struct_5(13387u, 540f), Struct_5(0u, -619f), Struct_5(30431u, 562f), Struct_5(28751u, 1399f), Struct_5(39077u, 101f), Struct_5(73586u, 2190f), Struct_5(25507u, -1867f), Struct_5(7728u, 1844f), Struct_5(4294967295u, -739f), Struct_5(0u, 2074f), Struct_5(1u, 483f), Struct_5(0u, 272f), Struct_5(14350u, 424f), Struct_5(1u, -101f), Struct_5(0u, 1000f), Struct_5(917u, 667f), Struct_5(12905u, 741f), Struct_5(59669u, 586f), Struct_5(0u, 869f), Struct_5(4294967295u, -1604f), Struct_5(7436u, 1000f), Struct_5(20355u, 629f), Struct_5(1u, 858f), Struct_5(23533u, 625f), Struct_5(1u, -516f), Struct_5(4294967295u, -1579f), Struct_5(1u, -494f), Struct_5(66159u, 1132f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> vec4<bool> {
    return select(select(select(select(vec4<bool>(global0.c.a.x, global0.e.b.a.x, global0.a, true), vec4<bool>(true, global0.a, true, false), false), vec4<bool>(!global0.e.c.a.x, false, global0.e.c.a.x, true), true), select(global0.e.b.a, global0.e.b.a, global0.c.a), false), select(!global0.e.c.a, vec4<bool>(false, all(global0.e.b.a.wxw) & global0.a, true, !select(true, false, false)), true), global0.e.b.a);
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-966f, global0.c.b.x, -2368f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global0.e.b.d.x, global0.c.b.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(869f, global0.e.c.b.x, -1628f))), vec3<f32>(_wgslsmith_f_op_f32(global0.c.d.x + global0.e.b.c), global0.e.b.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1644f)))));
    global0 = Struct_3(!any(vec2<bool>(true, true)), min(reverseBits(_wgslsmith_mod_u32(27964u, 1u)), global0.e.a) & 5714u, Struct_1(vec4<bool>(false, !func_1().x, arg_0, select(true, arg_0 && arg_0, any(arg_1.zwy))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(global0.c.b)))), -884f, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(global0.c.b.x * 1637f))))), _wgslsmith_div_u32(min(global0.d, _wgslsmith_mult_u32(70968u | global0.d, ~global0.e.a)), min(4294967295u, ~global0.d >> (3358u % 32u))), global0.e);
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -u_input.a.yxw, _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.b, 1i, -u_input.d)), u_input.a.yxw));
    let var_2 = 37089i > -u_input.d;
    var_1 = -countOneBits(-vec3<i32>(i32(-1i) * -7898i, var_1.x, var_1.x));
    return global0.e.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_5) -> i32 {
    global0 = Struct_3(true, arg_0.b, arg_1.c, arg_1.a, Struct_2(~(~max(global0.e.a, arg_1.a)), Struct_1(!select(vec4<bool>(false, false, arg_0.a.x, false), arg_1.c.a, false), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-227f, arg_2.b))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-767f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1060f, 1362f), vec2<f32>(1351f, -1447f)))), Struct_1(arg_0.e, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(arg_0.c.b, arg_0.c.d), global0.e.c.b)), -214f, global0.e.b.b)));
    global1 = array<Struct_5, 30>();
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = global0.e;
    return -countOneBits(-51572i);
}

fn func_2(arg_0: Struct_4) -> u32 {
    let var_0 = vec2<i32>(~(-1i), func_4(Struct_4(func_1().xx, _wgslsmith_mult_u32(global0.d, arg_0.b), Struct_1(vec4<bool>(arg_0.e.x, global0.c.a.x, false, arg_0.e.x), global0.c.d, -385f, arg_0.c.b), all(vec3<bool>(true, global0.a, global0.c.a.x)), !arg_0.c.a), global0.e, Struct_5(func_3(arg_0.a.x, arg_0.c.a), _wgslsmith_f_op_f32(ceil(arg_0.c.d.x))))) & vec2<i32>(935i, -26311i);
    var var_1 = true;
    global1 = array<Struct_5, 30>();
    var var_2 = ~func_4(Struct_4(!arg_0.c.a.xy, _wgslsmith_mult_u32(~arg_0.b, 1u), global0.e.c, global0.a, !vec4<bool>(true, false, arg_0.a.x, true)), global0.e, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(global0.e.a, global0.d) >> (max(arg_0.b, ~global0.d) % 32u), 30u)]);
    global0 = Struct_3(false, arg_0.b, Struct_1(vec4<bool>((i32(-1i) * -1i) >= _wgslsmith_dot_vec2_i32(var_0, u_input.a.zx), global0.e.b.a.x | false, !any(global0.c.a.wwx), _wgslsmith_f_op_f32(arg_0.c.d.x + 1255f) < _wgslsmith_div_f32(685f, arg_0.c.c)), _wgslsmith_f_op_vec2_f32(-arg_0.c.d), _wgslsmith_f_op_f32(-arg_0.c.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1017f)), -748f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.b.b.x, -1648f) + global0.c.b))))), _wgslsmith_mult_u32(max(abs(abs(arg_0.b)), 4294967295u), _wgslsmith_sub_u32(~firstLeadingBit(arg_0.b), select(arg_0.b, 1u, all(global0.c.a)))), Struct_2(arg_0.b >> (11916u % 32u), Struct_1(vec4<bool>(true, any(vec4<bool>(false, arg_0.a.x, true, global0.e.b.a.x)), true, any(global0.c.a)), vec2<f32>(_wgslsmith_div_f32(-555f, 243f), arg_0.c.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(779f, -158f)) - _wgslsmith_f_op_f32(min(-1020f, -549f))), _wgslsmith_f_op_vec2_f32(global0.e.c.b - _wgslsmith_f_op_vec2_f32(vec2<f32>(-241f, arg_0.c.c) - arg_0.c.b))), Struct_1(select(vec4<bool>(arg_0.a.x, false, true, false), !global0.e.b.a, true), arg_0.c.b, arg_0.c.b.x, vec2<f32>(1165f, -2029f))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = !select(global0.c.a, select(vec4<bool>(!global0.a, global0.e.c.a.x, true, -1i < u_input.c), vec4<bool>(global0.a, -1i > u_input.a.x, select(global0.a, true, false), global0.e.c.a.x), global0.e.b.a), !select(!vec4<bool>(false, global0.a, global0.e.c.a.x, false), func_1(), !global0.e.b.a));
    global1 = array<Struct_5, 30>();
    var var_2 = _wgslsmith_mult_vec4_i32(-u_input.a >> (vec4<u32>(func_2(Struct_4(var_1.yw, global0.b, Struct_1(vec4<bool>(var_1.x, var_1.x, global0.a, true), vec2<f32>(global0.e.b.d.x, 151f), -332f, global0.e.c.b), true, vec4<bool>(var_1.x, false, var_1.x, var_1.x))), global0.e.a >> (global0.d % 32u), ~0u, ~4294967295u) % vec4<u32>(32u)), vec4<i32>(0i, max(_wgslsmith_div_i32(u_input.e.x, u_input.d), -2147483647i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, 75462i, -2147483647i, u_input.d), vec4<i32>(-2147483647i, u_input.d, 1i, u_input.d), global0.e.b.a), select(vec4<i32>(u_input.b, u_input.d, u_input.a.x, -1i), u_input.a, false)), abs(_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(u_input.d, 13188i))))) >> (vec4<u32>(max(~(~4294967295u), 42213u), _wgslsmith_mod_u32(min(global0.d, global0.e.a), countOneBits(global0.b)), 4294967295u, ~(global0.e.a ^ global0.e.a)) % vec4<u32>(32u));
    let var_3 = any(vec3<bool>(var_1.x, true, !((false || global0.e.c.a.x) && (var_2.x != u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.e.a, 9617u, u_input.b, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.d.x))))), 323f, _wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(749f, global0.c.d.x))))));
}

