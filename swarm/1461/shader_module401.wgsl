struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: vec2<f32>;

var<private> global2: array<f32, 30> = array<f32, 30>(-167f, 290f, 453f, -1027f, -471f, 1329f, -1321f, 1345f, 101f, 1029f, 2019f, -459f, -468f, -1048f, -1159f, -1315f, 2383f, -988f, 382f, -1000f, 1059f, -1335f, 1000f, -297f, -337f, -2080f, 1462f, 1058f, 1007f, 1000f);

var<private> global3: Struct_3 = Struct_3(Struct_1(vec3<u32>(10038u, 1765u, 1u), vec3<f32>(-545f, 1000f, -1071f), true));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_3) -> bool {
    var var_0 = -_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.b, -15611i, u_input.b, u_input.b), ~vec4<i32>(-50441i, 42449i, 15875i, u_input.b)), vec4<i32>(u_input.b, 2147483647i, u_input.b, 2420i) & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, 5595i), vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b))), _wgslsmith_sub_vec4_i32(~(~vec4<i32>(-3881i, u_input.b, 29664i, u_input.b)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-32276i, -34362i, u_input.b, u_input.b), vec4<i32>(-2147483647i, u_input.b, -88240i, 2147483647i)), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))));
    let var_1 = ~1u;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.b.x, 361f, -1472f, global3.a.b.x), vec4<f32>(473f, global1.x, -102f, global3.a.b.x), arg_0.a.c)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1235f, -146f, global0[_wgslsmith_index_u32(4779u, 3u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.b.x, -600f, arg_0.a.b.x, global2[_wgslsmith_index_u32(var_1, 30u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-576f, global2[_wgslsmith_index_u32(1u, 30u)], global3.a.b.x, -1309f)))), arg_0.a.c));
    let var_3 = countOneBits(select((_wgslsmith_div_u32(global3.a.a.x, arg_0.a.a.x) ^ 1u) << (1u % 32u), var_1, arg_2.a.b.x != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1, 3u)])));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-375f, 1349f)), _wgslsmith_f_op_f32(trunc(-1380f)), _wgslsmith_f_op_f32(floor(-214f)), _wgslsmith_div_f32(global3.a.b.x, 1332f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2509f, 379f, global1.x, arg_2.a.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 190f, var_2.x, 1266f) * vec4<f32>(368f, -929f, -743f, global1.x)), true)))));
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_0 = abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(firstTrailingBit(75602u >> (global3.a.a.x % 32u)), 23551u), ~u_input.c));
    let var_1 = 4294967295u;
    return select(!arg_0, select(!select(vec2<bool>(true, true), select(vec2<bool>(global3.a.c, true), vec2<bool>(arg_2, global3.a.c), vec2<bool>(arg_0.x, arg_2)), arg_0), !(!(!arg_0)), arg_0), !(!global3.a.c));
}

fn func_2() -> u32 {
    global2 = array<f32, 30>();
    let var_0 = select(vec2<bool>(!global3.a.c, !(global3.a.c & true)), select(vec2<bool>(global3.a.c, any(vec4<bool>(global3.a.c, false, global3.a.c, global3.a.c))), vec2<bool>(true, true), !func_4(!vec2<bool>(true, global3.a.c), 1u, func_3(Struct_3(Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), global3.a.b, global3.a.c)), vec3<bool>(global3.a.c, false, global3.a.c), Struct_3(global3.a)), vec4<i32>(-5606i, 8257i, u_input.b, u_input.b))), func_4(!vec2<bool>(u_input.c >= u_input.a, global3.a.c), _wgslsmith_add_u32(~global3.a.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.a.a.x, u_input.c, global3.a.a.x) & vec4<u32>(u_input.a, 37804u, u_input.a, 1u), vec4<u32>(0u, 20801u, 30731u, 100126u))), any(vec3<bool>(global3.a.c, true, !global3.a.c)), firstTrailingBit(vec4<i32>(~(-1i), 20279i, u_input.b, -2147483647i))));
    var var_1 = min(-(~vec4<i32>(u_input.b ^ 4438i, 1i << (u_input.a % 32u), 1i, -37605i)), vec4<i32>(u_input.b, -(~22431i) ^ u_input.b, 2147483647i, _wgslsmith_mod_i32(max(u_input.b, _wgslsmith_mult_i32(6287i, u_input.b)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, -36834i)))));
    let var_2 = Struct_2(!(~(~global3.a.a.x) < 4294967295u), max(vec4<i32>(-13150i, 1i, countOneBits(-11980i), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-1i, -1i)), vec2<i32>(1i, var_1.x))), countOneBits(-(vec4<i32>(var_1.x, -6542i, u_input.b, -785i) & vec4<i32>(-27546i, -31161i, -2147483647i, 26175i)))), global3.a, !vec3<bool>(func_3(Struct_3(global3.a), select(vec3<bool>(var_0.x, global3.a.c, true), vec3<bool>(false, var_0.x, global3.a.c), vec3<bool>(false, global3.a.c, true)), Struct_3(Struct_1(global3.a.a, global3.a.b, true))), true, global3.a.c), true);
    let var_3 = Struct_2(var_0.x, _wgslsmith_mult_vec4_i32(min(var_2.b & vec4<i32>(-2147483647i, 1i, 0i, var_2.b.x), ~var_2.b), select(abs(var_2.b), vec4<i32>(50996i << (u_input.c % 32u), 35181i, 1i, var_1.x), select(select(vec4<bool>(global3.a.c, true, true, var_2.c.c), vec4<bool>(true, false, true, true), true), select(vec4<bool>(global3.a.c, global3.a.c, true, var_2.a), vec4<bool>(false, var_2.a, var_0.x, global3.a.c), vec4<bool>(true, false, false, true)), select(vec4<bool>(global3.a.c, var_2.d.x, global3.a.c, global3.a.c), vec4<bool>(var_2.a, var_2.e, global3.a.c, var_2.c.c), global3.a.c)))), var_2.c, select(!(!select(vec3<bool>(var_0.x, global3.a.c, var_0.x), var_2.d, var_2.d)), vec3<bool>(var_2.c.b.x == global2[_wgslsmith_index_u32(13882u, 30u)], !select(var_0.x, var_2.d.x, var_2.c.c), var_2.e), var_2.d), any(!select(!var_2.d, select(vec3<bool>(true, true, false), vec3<bool>(true, global3.a.c, true), var_2.d), select(var_2.d, vec3<bool>(false, global3.a.c, false), var_2.d))));
    return var_2.c.a.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>) -> vec3<u32> {
    let var_0 = reverseBits(firstLeadingBit(~global3.a.a));
    global0 = array<f32, 3>();
    let var_1 = ~abs(_wgslsmith_div_u32(func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.a.x, u_input.c, u_input.a), var_0) & u_input.c));
    let var_2 = Struct_1(~(~var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(858f, _wgslsmith_f_op_f32(abs(global3.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(874f + global3.a.b.x)))), func_4(func_4(arg_1, abs(0u), (false | global3.a.c) || arg_1.x, ~vec4<i32>(-29301i, 2147483647i, u_input.b, u_input.b)), 16554u, true, vec4<i32>(u_input.b, -u_input.b, ~_wgslsmith_add_i32(1108i, u_input.b), -2147483647i)).x);
    let var_3 = global3.a;
    return vec3<u32>(global3.a.a.x, u_input.c, 3540u);
}

fn func_5(arg_0: vec3<u32>) -> u32 {
    let var_0 = Struct_2((true | (global3.a.b.x <= 524f)) || true, vec4<i32>(u_input.b, abs(_wgslsmith_mult_i32(u_input.b, u_input.b)) << (u_input.c % 32u), 0i, ~u_input.b), global3.a, select(!(!select(vec3<bool>(global3.a.c, true, false), vec3<bool>(global3.a.c, false, true), vec3<bool>(false, global3.a.c, false))), vec3<bool>(!any(vec2<bool>(true, global3.a.c)), true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, 0u), 30u)] <= _wgslsmith_f_op_f32(exp2(global3.a.b.x))), global3.a.c), true);
    let var_1 = max(vec3<u32>(global3.a.a.x, u_input.c, ~max(_wgslsmith_mult_u32(u_input.c, var_0.c.a.x), ~global3.a.a.x)), select((global3.a.a << (var_0.c.a % vec3<u32>(32u))) & var_0.c.a, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_0.c.a, global3.a.a), countOneBits(vec3<u32>(var_0.c.a.x, arg_0.x, var_0.c.a.x))), var_0.d) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.a.x, 46611u, u_input.a) >> (vec3<u32>(global3.a.a.x, 4294967295u, 0u) % vec3<u32>(32u)), abs(global3.a.a | vec3<u32>(1u, global3.a.a.x, 35465u))) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(991f, -1940f, 929f, global3.a.b.x))))))));
    let var_3 = ~var_0.b;
    global2 = array<f32, 30>();
    return global3.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(1084f, global3.a.b.x);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_f_op_f32(abs(global3.a.b.x))) + _wgslsmith_f_op_vec2_f32(-global3.a.b.zy)), vec2<f32>(_wgslsmith_f_op_f32(global3.a.b.x - 622f), -1396f)));
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_div_u32(global3.a.a.x, firstLeadingBit(58496u));
    global2 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 30u)] + -829f))), global1.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(~27059u, 30u)], global2[_wgslsmith_index_u32(min(71292u, global3.a.a.x), 30u)]) - global3.a.b.zz)), func_5(max(global3.a.a << (vec3<u32>(51096u, u_input.c, global3.a.a.x) % vec3<u32>(32u)), func_1(select(vec2<bool>(global3.a.c, global3.a.c), vec2<bool>(global3.a.c, global3.a.c), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(global3.a.c, true), vec2<bool>(true, true))))), -1628f);
}

