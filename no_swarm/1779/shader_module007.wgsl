struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, false));

var<private> global2: array<vec4<bool>, 27>;

var<private> global3: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-626f, -479f, -102f, -740f), vec4<f32>(-229f, -1020f, -1000f, -474f), vec4<f32>(-1317f, 350f, -800f, 867f), vec4<f32>(588f, 1453f, 247f, -1000f), vec4<f32>(-689f, -208f, -353f, -874f), vec4<f32>(739f, 392f, -802f, -177f), vec4<f32>(-1000f, 171f, -542f, 163f), vec4<f32>(-2820f, 1000f, -155f, -190f), vec4<f32>(1000f, 368f, -462f, -942f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    global2 = array<vec4<bool>, 27>();
    global3 = array<vec4<f32>, 9>();
    global3 = array<vec4<f32>, 9>();
    let var_0 = Struct_1(arg_0.wwx);
    let var_1 = global1.a.yy;
    return any(arg_0);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_1(vec3<bool>(any(vec4<bool>(true, true, true, global1.a.x)), func_3(vec4<bool>(false, false, arg_0 || global1.a.x, arg_0), Struct_1(select(vec3<bool>(false, false, false), global1.a, global1.a))), all(!global2[_wgslsmith_index_u32(49404u, 27u)])));
    let var_1 = ~(~vec2<u32>(u_input.b, select(arg_1.x, ~u_input.c.x, global1.a.x)));
    let var_2 = Struct_1(!select(vec3<bool>(false, false, select(true, true, global1.a.x)), var_0.a, !arg_0 & any(global1.a.zy)));
    let var_3 = var_2;
    let var_4 = Struct_1(var_2.a);
    return !(!global1.a.yy);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    global3 = array<vec4<f32>, 9>();
    global3 = array<vec4<f32>, 9>();
    global2 = array<vec4<bool>, 27>();
    global1 = arg_0;
    var var_0 = select(vec2<bool>(~33861u > u_input.b, any(!(!global2[_wgslsmith_index_u32(arg_3.x, 27u)]))), func_2(arg_0.a.x && true, reverseBits(u_input.c.zy)), 11930i <= (_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, arg_2, -15164i), vec3<i32>(arg_2, arg_2, 93501i)) | (0i & _wgslsmith_add_i32(arg_2, 1i))));
    return Struct_1(vec3<bool>(var_0.x, false, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1.a;
    let var_1 = func_1(arg_0, !arg_0.a.x, _wgslsmith_mult_i32(21639i, u_input.a.x), u_input.c);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1155f - 1513f))), _wgslsmith_f_op_f32(f32(-1f) * -355f))), _wgslsmith_f_op_f32(332f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(732f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 1814f)) + _wgslsmith_f_op_f32(select(1000f, -300f, arg_1.a.x))))))));
    global0 = array<vec4<u32>, 14>();
    var var_3 = vec3<u32>(~63564u, 1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(3668u, _wgslsmith_clamp_u32(min(12309u, 10077u), 58771u ^ u_input.c.x, u_input.c.x)), _wgslsmith_mod_u32(max(81534u ^ u_input.e, u_input.b), 1u)));
    return Struct_1(select(vec3<bool>(all(select(global2[_wgslsmith_index_u32(0u, 27u)], vec4<bool>(false, true, false, arg_0.a.x), true)), true, var_0.x), vec3<bool>(arg_0.a.x, true, true), func_1(Struct_1(var_1.a), func_1(arg_0, false, 56218i, vec3<u32>(var_3.x, 15593u, 0u)).a.x, ~u_input.a.x, abs(u_input.c)).a.x & all(arg_0.a)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -vec4<i32>(-_wgslsmith_mult_i32(-2147483647i, u_input.d), u_input.a.x, ~(~73863i), 45052i);
    global3 = array<vec4<f32>, 9>();
    let var_1 = arg_1;
    var var_2 = i32(-1i) * -50673i;
    let var_3 = Struct_1(!(!(!(!vec3<bool>(true, arg_2.a.x, arg_0.a.x)))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 14>();
    global0 = array<vec4<u32>, 14>();
    var var_0 = func_5(Struct_1(global1.a), true, func_4(func_1(Struct_1(global1.a), false, -15786i, vec3<u32>(u_input.e, 0u, 30736u >> (u_input.e % 32u))), Struct_1(vec3<bool>(true, !global1.a.x, global1.a.x))));
    global2 = array<vec4<bool>, 27>();
    let var_1 = vec3<bool>(false, false, false);
    var var_2 = func_5(Struct_1(vec3<bool>(true, !(!global1.a.x), !var_1.x)), var_0.a.x, Struct_1(!var_1));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-((u_input.d & 1i) ^ 1i), u_input.d, ~0i), vec4<u32>(max(_wgslsmith_div_u32(reverseBits(4294967295u), u_input.c.x), _wgslsmith_mod_u32(abs(4294967295u), max(u_input.b, u_input.b))), u_input.b, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(12099u, u_input.b, u_input.b, u_input.e), min(global0[_wgslsmith_index_u32(u_input.b, 14u)], vec4<u32>(u_input.e, u_input.c.x, u_input.c.x, u_input.b)))), u_input.c.x));
}

