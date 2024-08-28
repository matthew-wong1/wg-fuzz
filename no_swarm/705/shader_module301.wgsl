struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: array<u32, 18>;

var<private> global2: array<vec2<u32>, 21>;

var<private> global3: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-1149f, 240f), vec2<f32>(656f, 579f), vec2<f32>(1725f, 293f), vec2<f32>(-789f, 261f), vec2<f32>(-416f, -1197f), vec2<f32>(582f, 2638f));

var<private> global4: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(25422u, 1u, 1u, 1u), vec4<u32>(47493u, 0u, 10537u, 0u), vec4<u32>(4294967295u, 0u, 1u, 0u), vec4<u32>(29199u, 67166u, 0u, 0u), vec4<u32>(3727u, 12647u, 55638u, 8313u), vec4<u32>(93853u, 60112u, 50042u, 0u), vec4<u32>(1u, 47010u, 32718u, 74620u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    return Struct_1(~(~global1[_wgslsmith_index_u32(98373u, 18u)]), true, 2147483647i, _wgslsmith_sub_u32(~abs(19157u), ~select(u_input.b.x, ~4294967295u, arg_0.x)), u_input.c);
}

fn func_3() -> Struct_1 {
    global3 = array<vec2<f32>, 6>();
    global0 = array<vec2<bool>, 19>();
    global1 = array<u32, 18>();
    return func_2(select(vec4<bool>(any(!global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34632u, 18u)], 19u)]), firstTrailingBit(-2487i) >= -60539i, all(vec4<bool>(true, true, true, false)) && true, !(global1[_wgslsmith_index_u32(u_input.a, 18u)] > 1u)), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, false, false), any(vec4<bool>(false, true, false, false))), true & !(u_input.d.x <= u_input.d.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    global2 = array<vec2<u32>, 21>();
    global2 = array<vec2<u32>, 21>();
    let var_0 = global1[_wgslsmith_index_u32(24762u, 18u)];
    let var_1 = abs(arg_1) | arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1915f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1813f))))), -338f));
    return func_4(func_2(vec4<bool>(!any(vec4<bool>(true, false, false, true)), true, all(vec4<bool>(true, true, true, true)), false)), func_3());
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = ~countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, u_input.d.x, arg_2.c), vec3<i32>(0i, -7621i, -1i), reverseBits(vec3<i32>(-1i, -28044i, arg_0)))) | vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c, 16856i), select(vec2<i32>(arg_2.c, arg_1.c), u_input.d, arg_1.b)), -1i, ~arg_1.c >> (_wgslsmith_div_u32(~arg_2.a, ~1u) % 32u));
    global2 = array<vec2<u32>, 21>();
    global3 = array<vec2<f32>, 6>();
    global2 = array<vec2<u32>, 21>();
    global0 = array<vec2<bool>, 19>();
    return any(select(select(vec4<bool>(true, arg_2.b, select(false, false, false), arg_1.b & arg_1.b), vec4<bool>(arg_2.b, true, !arg_2.b, 0u < arg_1.e), true), vec4<bool>(!arg_1.b, false, arg_1.b, false), vec4<bool>(func_4(arg_2, Struct_1(0u, arg_1.b, -40956i, 22708u, arg_1.e)).b | true, _wgslsmith_div_u32(7295u, 15715u) < u_input.c, false, true)));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: f32) -> Struct_1 {
    let var_0 = select(select(arg_1, vec4<bool>(u_input.d.x >= -arg_0.x, !func_1(global1[_wgslsmith_index_u32(68287u, 18u)], -39118i).b, func_2(!arg_1).b, func_2(!vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)).b), vec4<bool>(true | arg_1.x, arg_3 < _wgslsmith_f_op_f32(abs(arg_3)), arg_1.x, (0i > u_input.d.x) && !arg_1.x)), vec4<bool>(all(arg_1), false, false, arg_1.x), arg_2.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)));
    global4 = array<vec4<u32>, 7>();
    global4 = array<vec4<u32>, 7>();
    global0 = array<vec2<bool>, 19>();
    let var_1 = _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)) + -1041f));
    return Struct_1(u_input.c, !func_1(u_input.a, func_4(func_3(), func_4(Struct_1(0u, arg_1.x, 8247i, u_input.c, 4294967295u), Struct_1(13463u, true, -2147483647i, 0u, u_input.b.x))).c).b, i32(-1i) * -1i, global1[_wgslsmith_index_u32(u_input.c, 18u)], ~(~46609u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, (any(vec2<bool>(false, true)) & true) | (~_wgslsmith_add_i32(u_input.d.x, 2147483647i) <= _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, 2147483647i, u_input.d.x, u_input.d.x)), vec4<i32>(17089i, 2147483647i, u_input.d.x, u_input.d.x))), 6869i, ~countOneBits(u_input.c & 1u), u_input.a);
    global0 = array<vec2<bool>, 19>();
    global0 = array<vec2<bool>, 19>();
    var var_1 = var_0;
    let var_2 = func_6(u_input.d, select(vec4<bool>(any(!vec3<bool>(var_1.b, var_0.b, true)), false, !var_1.b, true), !vec4<bool>(var_1.b, true && var_1.b, 2147483647i >= var_1.c, var_0.b), select(vec4<bool>(false, !var_0.b, true, var_0.b == false), !(!vec4<bool>(var_0.b, false, var_0.b, var_0.b)), func_5(~u_input.d.x, func_1(var_0.a, 400i), Struct_1(var_0.e, true, var_1.c, 1u, 61671u)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1587f, 1844f))) - global3[_wgslsmith_index_u32(1u, 6u)])), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-784f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-314f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -234f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -924f), 1625f))));
    global1 = array<u32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, u_input.d, ~(~abs(~global4[_wgslsmith_index_u32(var_0.a, 7u)])), ~_wgslsmith_add_i32(var_1.c, 35571i));
}

