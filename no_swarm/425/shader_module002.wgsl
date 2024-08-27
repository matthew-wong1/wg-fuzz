struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17>;

var<private> global1: f32 = 1480f;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(true, true, true, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, false, true, true)));

var<private> global3: u32 = 21507u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec4<bool> {
    let var_0 = true;
    let var_1 = any(select(vec4<bool>(!select(false, false, arg_3.x), arg_3.x, false, any(arg_3)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, arg_3.x, true), vec4<bool>(true, true, arg_3.x, arg_3.x), vec4<bool>(true, false, true, false)), any(vec3<bool>(arg_3.x, true, true))), select(true | !arg_3.x, !arg_3.x, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 * arg_0) - vec3<f32>(-1846f, -629f, _wgslsmith_f_op_f32(1024f + arg_0.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(251f, arg_1.x, 964f), vec3<f32>(147f, 661f, 698f), false)), vec3<f32>(-1000f, arg_0.x, -1000f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1))), !(!arg_3))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1))));
    global1 = 173f;
    let var_3 = true;
    return select(!select(!select(vec4<bool>(false, false, var_1, false), vec4<bool>(arg_3.x, false, arg_3.x, var_0), false), vec4<bool>(var_1, false, var_0, true), arg_3.x), select(vec4<bool>(!any(arg_3), var_0, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, arg_3.x, var_1), vec4<bool>(true, var_0, true, var_0))), 43862u != ~u_input.a.x), select(select(vec4<bool>(false, true, var_1, var_1), select(vec4<bool>(false, arg_3.x, true, false), vec4<bool>(false, var_1, false, true), false), var_3 && var_1), vec4<bool>(any(arg_3.zy), true, any(vec4<bool>(var_1, false, true, var_3)), any(arg_3.yz)), arg_3.x), !(!(!vec4<bool>(arg_3.x, var_3, true, var_0)))), !(!((u_input.a.x >> (1u % 32u)) != 0u)));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_4(Struct_1(max(u_input.b, u_input.b), ~(vec4<u32>(86809u, 56534u, 29524u, 4094u) ^ reverseBits(vec4<u32>(18063u, u_input.a.x, 27110u, u_input.a.x)))), global2[_wgslsmith_index_u32(firstTrailingBit(firstTrailingBit(11378u)), 17u)], Struct_3(Struct_2(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false)))), countOneBits(~(~u_input.a.x)));
    global3 = u_input.a.x;
    let var_1 = ~(~(~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(var_0.d, 17u)], var_0.a.b), global0[_wgslsmith_index_u32(18438u, 17u)])));
    let var_2 = global2[_wgslsmith_index_u32(~(~(var_1.x << (1u % 32u))), 17u)];
    var var_3 = Struct_5(Struct_2(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(857f, 191f, 421f), vec3<f32>(-1321f, -394f, 735f)))), vec3<f32>(-183f, 813f, _wgslsmith_f_op_f32(floor(2516f))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.a.x, 71555i, -20970i, u_input.b.x), u_input.b, vec4<i32>(var_0.a.a.x, u_input.b.x, -1i, 0i)), var_2.a.zxz)), any(vec3<bool>(!(var_2.a.x | false), !(var_2.a.x | var_2.a.x), var_0.c.a.a.x)));
    return Struct_4(Struct_1(var_0.a.a, ~vec4<u32>(83519u, 1u, 4294967295u, ~0u)), global2[_wgslsmith_index_u32(var_1.x ^ _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_0.a.b.x, u_input.a.x, 91859u)), vec3<u32>(firstLeadingBit(4294967295u), var_0.a.b.x, u_input.a.x)), 17u)], Struct_3(Struct_2(vec4<bool>(false, var_2.a.x, true, true))), _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(0u, u_input.a.x) & vec2<u32>(var_0.a.b.x, var_0.d))), vec2<u32>(_wgslsmith_mult_u32(var_0.a.b.x, u_input.a.x) & _wgslsmith_add_u32(var_0.d, u_input.a.x), 42151u)));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_4 {
    let var_0 = !(!vec4<bool>(any(vec4<bool>(true, true, true, true)), false, true, true));
    return func_2();
}

fn func_4(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: Struct_4) -> u32 {
    let var_0 = select(!func_2().c.a.a.yyz, !func_2().b.a.wyy, arg_0.b);
    let var_1 = Struct_1(vec4<i32>(2147483647i, 1i, _wgslsmith_sub_i32(u_input.c ^ -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -48383i, 0i, u_input.c), arg_2.a.a)), u_input.d) ^ vec4<i32>(arg_1.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, arg_1.x), _wgslsmith_mult_i32(2147483647i, 1i)), _wgslsmith_clamp_i32(-7386i, abs(-58787i), u_input.b.x), -select(-1i, -2147483647i, arg_0.a.a.x)), ~vec4<u32>(6030u, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 14428u, 0u), ~arg_2.a.b.zyx), 77710u));
    let var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2321f - -341f), 758f), _wgslsmith_div_f32(274f, -646f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-112f, 912f)))))), vec4<u32>(1u, ~10053u, _wgslsmith_add_u32(arg_2.d << (_wgslsmith_mult_u32(u_input.a.x, var_1.b.x) % 32u), _wgslsmith_add_u32(1u, ~var_1.b.x)), ~((0u ^ u_input.a.x) << (func_1(123f, vec4<u32>(u_input.a.x, u_input.a.x, var_1.b.x, u_input.a.x), -69337i).d % 32u))), arg_1.x).c.a;
    var var_3 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(797f, _wgslsmith_f_op_f32(max(-945f, -139f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-409f, -241f)) + _wgslsmith_f_op_f32(-1100f - -746f)), true & any(vec2<bool>(false, true)))) - 1234f), var_1.b, u_input.d);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-384f + 369f)))))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1185f;
    let var_1 = ~abs(func_4(Struct_5(global2[_wgslsmith_index_u32(~39115u, 17u)], any(vec3<bool>(true, true, true))), firstLeadingBit(u_input.b), func_1(-880f, abs(vec4<u32>(u_input.a.x, 1u, 4294967295u, 0u)), 2147483647i >> (u_input.a.x % 32u))));
    let var_2 = _wgslsmith_f_op_f32(-805f + -117f);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-317f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2 + -337f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1189f, 517f)) - _wgslsmith_div_f32(var_2, var_2))))));
    var var_3 = Struct_2(vec4<bool>(true, false, !(true != all(vec2<bool>(false, false))), false | (-1i > ~u_input.b.x)));
    let var_4 = Struct_5(func_2().b, var_3.a.x);
    var var_5 = -193f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~54747u))), vec4<u32>(1u, func_2().a.b.x, ~(~_wgslsmith_add_u32(51368u, u_input.a.x)), var_1), -1000f);
}

