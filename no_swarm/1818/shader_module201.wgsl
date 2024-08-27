struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<u32>(25691u, 63787u), 1i, vec3<i32>(0i, i32(-2147483648), -5804i)), Struct_2(vec2<u32>(2776u, 1893u), i32(-2147483648), vec3<i32>(-1i, 0i, 50424i)), vec4<f32>(1000f, -1842f, 260f, -1356f));

var<private> global1: Struct_2;

var<private> global2: f32;

var<private> global3: vec4<bool>;

var<private> global4: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: bool) -> vec2<bool> {
    global0 = Struct_3(global0.b, global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(1768f + global0.c.x)))) - global0.c));
    global3 = !(!vec4<bool>(!all(global3.wx), all(vec3<bool>(false, global3.x, arg_1)), false, (0i != global1.b) | false));
    global3 = !select(vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, 54662i, -19597i), vec4<i32>(global1.c.x, 43617i, global0.a.b, global0.a.b)) >= global1.b, !arg_1 && !global3.x, any(global3.www), true), !(!vec4<bool>(arg_1, arg_1, true, false)), -_wgslsmith_clamp_i32(global0.b.c.x, -2147483647i, -29108i) == (min(2147483647i, global0.a.c.x) | -2147483647i));
    let var_0 = abs(firstLeadingBit(~15332u));
    let var_1 = Struct_1(~global1.a.x);
    return global3.zy;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_3 {
    let var_0 = Struct_2(select(abs(select(vec2<u32>(global1.a.x, 0u), ~u_input.e.yy, any(vec4<bool>(global3.x, arg_3, true, global3.x)))), abs(vec2<u32>(arg_0.a.x, 49964u) >> (global0.a.a % vec2<u32>(32u))), !(!func_3(global0.c.x, true))), -10963i, _wgslsmith_mod_vec3_i32(vec3<i32>(global1.b, -8858i, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2, u_input.a, 0i), ~arg_0.c)), vec3<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(2147483647i, global1.b)), _wgslsmith_sub_i32(16371i, -1i) >> (~4294967295u % 32u), arg_0.b)));
    var var_1 = global3.zwx;
    var var_2 = arg_3;
    var var_3 = func_3(992f, true).x;
    let var_4 = abs(abs(1u | ~_wgslsmith_add_u32(arg_1.a, u_input.d)));
    return Struct_3(Struct_2(vec2<u32>(arg_0.a.x, ~select(arg_0.a.x, 11320u, arg_3)), arg_0.b, ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -7962i, global1.b, global0.b.c.x), vec4<i32>(0i, u_input.c, -47893i, global0.a.c.x)), -arg_2, 20249i)), global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.c, vec4<f32>(global0.c.x, -533f, 1821f, -766f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(global0.c)), _wgslsmith_f_op_vec4_f32(-global0.c))), vec4<bool>(true, false, global0.a.c.x <= arg_2, arg_3 & true)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32, arg_3: vec2<f32>) -> bool {
    global4 = Struct_1(_wgslsmith_dot_vec3_u32(min(~u_input.b, u_input.b | u_input.b) | ~u_input.b, u_input.b));
    global3 = !(!(!select(!vec4<bool>(false, false, global3.x, global3.x), !vec4<bool>(global3.x, true, global3.x, global3.x), global3.x)));
    let var_0 = global3.wz;
    let var_1 = Struct_3(Struct_2(select(firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(u_input.e.x, arg_1.b.a.x), true) >> (vec2<u32>(4294967295u, 16201u) % vec2<u32>(32u)), u_input.c, global1.c), global0.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 1000f, _wgslsmith_f_op_f32(trunc(arg_3.x)), _wgslsmith_f_op_f32(284f * global0.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, -1167f, -1499f, -454f))) + global0.c))));
    var var_2 = u_input.e;
    return any(!select(select(!vec4<bool>(true, false, true, global3.x), !vec4<bool>(false, true, var_0.x, false), global0.a.c.x != arg_2), vec4<bool>(false, false, false, false), vec4<bool>(var_1.c.x <= arg_1.c.x, true, !global3.x, global3.x)));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1123f - _wgslsmith_f_op_f32(arg_3.c.x + _wgslsmith_f_op_f32(ceil(arg_3.c.x)))));
    var var_0 = abs(((min(4294967295u, 4294967295u) ^ _wgslsmith_div_u32(global1.a.x, 83448u)) << (u_input.d % 32u)) | select(func_2(func_2(arg_0, Struct_1(0u), 1i, false).a, Struct_1(global1.a.x), select(u_input.c, global1.b, true), global3.x).b.a.x, countOneBits(~global4.a), true));
    let var_1 = Struct_1(~_wgslsmith_div_u32(1u, 65737u));
    let var_2 = Struct_3(func_2(arg_0, var_1, _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.a, global1.c.x, -2147483647i) ^ arg_3.a.c), vec3<i32>(global1.c.x ^ global1.b, _wgslsmith_dot_vec3_i32(global0.a.c, arg_0.c), 0i)), global3.x).a, Struct_2(global0.a.a, reverseBits(u_input.a), vec3<i32>(select(-3445i, abs(1i), true), func_2(func_2(arg_0, var_1, global1.c.x, false).b, var_1, reverseBits(arg_3.b.b), true).b.c.x, firstLeadingBit(~0i))), _wgslsmith_f_op_vec4_f32(-global0.c));
    return Struct_1(global1.a.x);
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    return func_2(global0.b, Struct_1(5039u), ~_wgslsmith_mult_i32(abs(-1i), -16333i), global4.a >= 3489u).a;
}

fn func_1(arg_0: vec2<f32>) -> vec4<u32> {
    let var_0 = Struct_4(global0.b);
    var var_1 = 74221u;
    var var_2 = func_6(1180f, func_5(var_0.a, select(30207u, ~(u_input.e.x & 45921u), func_4(vec3<f32>(arg_0.x, arg_0.x, 1000f), func_2(Struct_2(global0.b.a, var_0.a.b, global0.b.c), Struct_1(global0.a.a.x), global0.b.c.x, true), 1i, _wgslsmith_f_op_vec2_f32(floor(global0.c.wy)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1339f, -1335f), arg_0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, 1332f), vec2<f32>(865f, arg_0.x))))), func_2(global0.b, Struct_1(func_2(Struct_2(global0.b.a, var_0.a.c.x, vec3<i32>(-8932i, -50487i, -1i)), Struct_1(0u), global0.b.c.x, false).a.a.x), 0i, global3.x)));
    let var_3 = Struct_3(global0.a, var_0.a, vec4<f32>(_wgslsmith_f_op_f32(sign(-1157f)), _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_div_f32(-487f, -181f))), _wgslsmith_f_op_f32(floor(global0.c.x)), arg_0.x));
    global4 = Struct_1(global1.a.x);
    return firstTrailingBit(select(vec4<u32>(4294967295u, 88137u, 1u, global0.b.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(global4.a, ~global4.a, 1u, global1.a.x), (vec4<u32>(var_0.a.a.x, 52100u, 17886u, 1u) & vec4<u32>(u_input.e.x, 20511u, 0u, 36957u)) | (vec4<u32>(61064u, global0.a.a.x, global0.a.a.x, global1.a.x) & vec4<u32>(global1.a.x, global0.a.a.x, 62003u, global0.a.a.x))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(global3.x, true, global3.x, global3.x), global3.x), true), vec4<bool>(true, !global3.x, select(false, true, global3.x), global4.a < u_input.e.x), vec4<bool>(global3.x, global3.x || false, true, true))));
}

fn func_7(arg_0: vec4<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = false;
    var var_1 = func_5(Struct_2(vec2<u32>(19846u, ~global0.a.a.x), 2147483647i, ~vec3<i32>(global0.b.b, func_6(global0.c.x, Struct_1(29896u)).c.x, -1i)), global0.b.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(517f, _wgslsmith_div_f32(global0.c.x, -266f)), -1000f)), Struct_3(func_6(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.x))), func_5(global0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 23856u, global4.a, 36619u), vec4<u32>(6812u, u_input.b.x, arg_0.x, arg_0.x)), vec2<f32>(297f, global0.c.x), Struct_3(Struct_2(u_input.b.xx, global1.b, global1.c), Struct_2(arg_0.wx, u_input.a, vec3<i32>(global0.a.c.x, global0.b.c.x, 49073i)), vec4<f32>(-494f, -663f, -763f, global0.c.x)))), func_2(Struct_2(func_6(292f, Struct_1(16501u)).a, global1.b, vec3<i32>(u_input.c, 1i, -2147483647i)), Struct_1(_wgslsmith_clamp_u32(8806u, global1.a.x, global1.a.x)), -2147483647i, true).b, vec4<f32>(_wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-659f, global0.c.x, global3.x)), _wgslsmith_div_f32(674f, 1801f)), global0.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c.x - global0.c.x), global0.c.x))));
    global3 = select(vec4<bool>(global3.x, !arg_1, !global3.x, true), !vec4<bool>(select(false, all(vec4<bool>(true, global3.x, arg_1, arg_1)), any(vec3<bool>(true, false, true))), true, func_3(global0.c.x, !arg_1).x, true), any(global3.xyz));
    var var_2 = !(!func_3(global0.c.x, var_1.a != global4.a));
    var var_3 = !(!vec4<bool>(arg_1, (var_2.x | arg_1) | true, !(global0.c.x == -660f), true));
    return global0.a;
}

fn func_8(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1614f - 342f) * _wgslsmith_f_op_f32(-arg_1.c.x))) + -1175f));
    let var_1 = Struct_3(Struct_2(firstTrailingBit(~(~u_input.e.xx)), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2132i, global1.b), vec3<i32>(-4341i, 0i, 1i)), vec3<i32>(i32(-1i) * -10632i, _wgslsmith_dot_vec3_i32(global0.a.c, ~vec3<i32>(-41823i, -39550i, 0i)), 18896i)), func_2(func_6(_wgslsmith_f_op_f32(sign(arg_1.c.x)), Struct_1(u_input.e.x)), Struct_1(5648u), ~func_6(_wgslsmith_f_op_f32(select(-1000f, arg_1.c.x, global3.x)), func_5(arg_0.a, arg_2.x, vec2<f32>(1672f, global0.c.x), arg_1)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-169f))) < var_0).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.c)))));
    let var_2 = !(!vec2<bool>(true, -1i != global0.b.b));
    global4 = func_5(Struct_2(_wgslsmith_add_vec2_u32(~vec2<u32>(0u, 11217u) >> (~vec2<u32>(arg_1.b.a.x, 1u) % vec2<u32>(32u)), ~(~vec2<u32>(58011u, 4294967295u))), -10325i, arg_1.b.c), 19799u, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c.x, 1137f), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.c.x, -1902f))), vec2<bool>(global3.x, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.yw))), global0.c.xw)), Struct_3(Struct_2(arg_1.a.a, firstLeadingBit(_wgslsmith_sub_i32(u_input.c, 29209i)), min(global0.a.c, vec3<i32>(64716i, -7216i, -39018i))), arg_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-246f)), _wgslsmith_f_op_f32(-1000f * -348f), _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(global0.c.x + 1102f)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    var var_1 = ~global1.c;
    let var_2 = _wgslsmith_f_op_f32(trunc(2315f));
    let var_3 = func_8(Struct_4(func_7(func_1(_wgslsmith_f_op_vec2_f32(-global0.c.yz)), !global3.x)), func_2(global0.a, Struct_1(firstTrailingBit(1u)), ~0i, global3.x), ~(vec2<u32>(~4294967295u, u_input.e.x ^ 77447u) >> (global1.a % vec2<u32>(32u))));
    global0 = Struct_3(func_8(var_3, func_2(Struct_2(vec2<u32>(var_3.a.a.x, global1.a.x), -46651i, vec3<i32>(20583i, global0.b.b, global1.b)), func_5(Struct_2(vec2<u32>(global4.a, var_3.a.a.x), -2147483647i, vec3<i32>(-32262i, -8620i, -41502i)), ~4294967295u, vec2<f32>(global0.c.x, var_2), func_2(Struct_2(var_3.a.a, var_3.a.c.x, vec3<i32>(global0.b.c.x, 2290i, var_1.x)), Struct_1(1u), 6494i, global3.x)), 2274i, global3.x), vec2<u32>(var_3.a.a.x, 4294967295u)).a, func_8(var_3, func_2(Struct_2(select(vec2<u32>(var_3.a.a.x, global4.a), vec2<u32>(69340u, global1.a.x), global3.x), -49200i, vec3<i32>(-8736i, -2147483647i, u_input.c) & vec3<i32>(-21628i, global0.a.c.x, u_input.c)), func_5(global0.b, ~global0.a.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(var_2, var_2), vec2<f32>(var_2, var_2)), Struct_3(var_3.a, global0.b, vec4<f32>(global0.c.x, -379f, var_2, var_2))), abs(-var_3.a.c.x), global3.x), select(vec2<u32>(2130u, ~25383u), vec2<u32>(~68505u, _wgslsmith_mod_u32(4294967295u, 12615u)), global3.wz)).a, global0.c);
    var var_4 = vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, var_1.x, global0.a.c.x, var_3.a.c.x), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -16190i, var_3.a.c.x, -1i), vec4<i32>(var_3.a.c.x, -15748i, -36020i, u_input.a)), vec4<i32>(global1.c.x, -10015i, var_3.a.c.x, 0i) >> (vec4<u32>(1u, u_input.e.x, 4294967295u, 12855u) % vec4<u32>(32u)))) | 1i, global1.c.x, i32(-1i) * -33363i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(32117u, global0.a.a.x), 2340f, global1.c, (~(vec3<u32>(1u, 1u, global1.a.x) << (u_input.b % vec3<u32>(32u))) >> (u_input.e % vec3<u32>(32u))) << (vec3<u32>(38212u, var_3.a.a.x, global4.a) % vec3<u32>(32u)));
}

