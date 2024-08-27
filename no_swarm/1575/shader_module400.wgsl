struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = 357f;

var<private> global2: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_div_u32(global0.a.e, reverseBits(u_input.c));
    return global0.a.a;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -669f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_div_f32(global0.b, 1091f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1733f))))));
    var var_1 = vec3<u32>(0u, u_input.c, global0.a.e);
    let var_2 = global0.c;
    var_1 = ~(~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, var_2.e, global0.a.e), vec3<u32>(u_input.c, 23210u, 0u)))));
    let var_3 = !(!select(select(arg_3, vec2<bool>(false, false), true), vec2<bool>(var_2.a || false, true), all(!arg_3)));
    return Struct_2(global0.c, var_0.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -886f)) >= _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(trunc(-974f)))), _wgslsmith_clamp_i32(~var_2.c.x, ~_wgslsmith_mult_i32(34806i, 1i), arg_2), var_2.c ^ abs(-u_input.b), _wgslsmith_dot_vec2_i32(global0.a.c.xy, abs(global0.c.c.xw)) ^ _wgslsmith_mod_i32(u_input.a.x, -arg_2), var_2.e));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    global2 = array<vec4<bool>, 8>();
    let var_0 = Struct_3(arg_0.b, _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.d, 2147483647i, 0i), reverseBits(u_input.b)), (u_input.d | -35423i) & -arg_0.a.d), func_2(_wgslsmith_sub_u32(arg_1, ~0u) >> ((31311u & arg_0.a.e) % 32u), _wgslsmith_dot_vec3_i32(arg_0.a.c.xyy & vec3<i32>(1i, arg_0.c.c.x, -2147483647i), min(_wgslsmith_mod_vec3_i32(u_input.b.zyy, vec3<i32>(-29196i, global0.c.b, u_input.d)), -vec3<i32>(5368i, 0i, -27687i))), 43374i, select(vec2<bool>(true, true), !(!vec2<bool>(global0.a.a, global0.c.a)), select(vec2<bool>(arg_0.c.a, global0.a.a), select(vec2<bool>(false, arg_0.c.a), vec2<bool>(global0.a.a, arg_0.a.a), vec2<bool>(arg_0.c.a, global0.c.a)), true))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.b, _wgslsmith_div_f32(-1009f, -165f))));
    global2 = array<vec4<bool>, 8>();
    var var_2 = min(vec4<u32>(~21300u, var_0.c.c.e, ~arg_1, 4294967295u), vec4<u32>(_wgslsmith_mult_u32(var_0.c.a.e, 4294967295u), 4294967295u, reverseBits(firstTrailingBit(_wgslsmith_div_u32(0u, global0.c.e))), _wgslsmith_add_u32(_wgslsmith_div_u32(arg_1 | 12501u, ~1u), arg_0.c.e)));
    return any(select(!select(vec2<bool>(true, true), !vec2<bool>(global0.a.a, var_0.c.c.a), !vec2<bool>(arg_0.c.a, true)), vec2<bool>(!arg_0.c.a, select(func_1(), global0.c.a != global0.c.a, select(false, arg_0.a.a, true))), true));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = func_2(u_input.c, u_input.a.x, -_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, -3409i), -arg_0), arg_2.wy);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), global0.b)) - var_0.b), arg_1, var_0);
    var var_2 = _wgslsmith_add_vec3_i32(countOneBits(-vec3<i32>(_wgslsmith_add_i32(-2147483647i, u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.d, 18723i, 2147483647i), u_input.b.wxy), firstLeadingBit(-9962i))), u_input.b.zwy);
    let var_3 = func_2(var_1.c.a.e << (30359u % 32u), -(~firstLeadingBit(abs(2147483647i))), _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.c.x, global0.a.b, -29016i, var_2.x), vec4<i32>(0i, -2147483647i, 2147483647i, u_input.b.x))), reverseBits(~_wgslsmith_mult_vec4_i32(var_0.c.c, var_0.a.c))), arg_2.wz);
    global2 = array<vec4<bool>, 8>();
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.c.x;
    global0 = func_4(abs(~_wgslsmith_mult_i32(global0.c.d, ~734i)), -31900i, select(vec4<bool>(select(global0.a.a, func_1(), true), false, func_3(func_2(1u, -52012i, global0.a.c.x, vec2<bool>(true, false)), ~u_input.c), !all(vec4<bool>(global0.a.a, global0.c.a, global0.c.a, global0.c.a))), select(select(!vec4<bool>(true, false, global0.a.a, false), select(vec4<bool>(global0.a.a, false, global0.a.a, true), vec4<bool>(false, global0.a.a, global0.a.a, global0.c.a), true), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(42358u, 33493u), 8u)]), vec4<bool>(true, func_2(4294967295u, global0.c.b, global0.c.b, vec2<bool>(global0.c.a, false)).a.a, false, -1474i > global0.c.d), global2[_wgslsmith_index_u32(1u, 8u)]), false));
    var var_1 = func_4(_wgslsmith_div_i32(select(0i, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, 1i), min(-16048i, u_input.b.x)), !global0.c.a), _wgslsmith_add_i32(u_input.d, _wgslsmith_mult_i32(-71625i, 1i))), min(_wgslsmith_dot_vec2_i32(func_4(u_input.b.x ^ -3355i, ~global0.c.d, select(global2[_wgslsmith_index_u32(1u, 8u)], vec4<bool>(global0.c.a, true, true, false), true)).c.c.yz, -global0.c.c.yy), global0.a.c.x | -_wgslsmith_clamp_i32(1i, 26884i, 30790i)), !vec4<bool>(true, true, true, ~u_input.c >= ~81402u)).c;
    var_1 = func_4(_wgslsmith_div_i32(u_input.b.x, -39798i), countOneBits(56836i), vec4<bool>(!(!(global0.a.a | var_1.a)), !any(!vec3<bool>(var_1.a, false, var_1.a)), global0.c.a, global0.b >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -582f), -223f)))).a;
    var_1 = Struct_1(!func_1(), -58769i, max(_wgslsmith_sub_vec4_i32(vec4<i32>(22303i, u_input.a.x, 0i, var_1.c.x), vec4<i32>(var_1.d, var_1.b, -48304i, -13132i)) << (vec4<u32>(_wgslsmith_clamp_u32(var_1.e, 0u, 0u), ~global0.a.e, func_4(-9254i, -23415i, vec4<bool>(false, true, false, true)).c.e, ~var_1.e) % vec4<u32>(32u)), func_4(~u_input.d, -global0.a.b, vec4<bool>(!var_1.a, global0.a.a & var_1.a, func_2(global0.c.e, global0.a.d, u_input.d, vec2<bool>(false, true)).a.a, true)).c.c), ~_wgslsmith_div_i32(var_1.c.x, u_input.d & abs(u_input.b.x)), var_1.e);
    let var_2 = func_4(_wgslsmith_div_i32(u_input.b.x, firstLeadingBit(45572i)), ~0i, !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(var_1.e, var_1.e, 20701u), select(vec3<u32>(7442u, 1349u, global0.c.e), vec3<u32>(var_1.e, 4294967295u, var_1.e), vec3<bool>(var_1.a, global0.a.a, false))), vec3<u32>(25700u, 0u, var_1.e) << (min(vec3<u32>(u_input.c, 0u, global0.a.e), vec3<u32>(40754u, global0.a.e, global0.a.e)) % vec3<u32>(32u))), 8u)]).c;
    global2 = array<vec4<bool>, 8>();
    var var_3 = Struct_3(1011f, ~countOneBits(-1i), Struct_2(global0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(ceil(-1000f)))), -1138f)), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.c.b, var_3.a, var_3.a, var_3.c.b)))) + vec4<f32>(_wgslsmith_f_op_f32(553f - global0.b), _wgslsmith_f_op_f32(var_3.a * 533f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -166f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1006f, var_3.a, -348f, global0.b), vec4<f32>(476f, 636f, 1090f, 1438f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(644f, global0.b, 559f, -400f)))))), vec2<i32>(36527i ^ var_2.b, _wgslsmith_dot_vec3_i32(-(~var_3.c.c.c.xzx), var_2.c.wzw)), vec3<u32>(abs(79682u), ~global0.c.e, var_2.e));
}

