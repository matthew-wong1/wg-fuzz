struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2) -> bool {
    global0 = array<bool, 32>();
    var var_0 = 16895u;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(global1.a - global1.a)), global1.a, _wgslsmith_f_op_f32(global1.a + 2031f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(712f, global1.a)), _wgslsmith_f_op_f32(-global1.a))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(662f, -567f, global1.a, 691f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-3026f, global1.a, global1.a, global1.a) - vec4<f32>(global1.a, -479f, global1.a, global1.a))), vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(f32(-1f) * -471f), _wgslsmith_f_op_f32(1888f + 276f), -1275f)))));
    var var_2 = all(!(!vec4<bool>(any(vec2<bool>(arg_0.a.a.x, false)), arg_0.b || global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(global1.b.x, 32u)], arg_0.b)));
    let var_3 = arg_0.a.b.zz;
    return !(52704i > -(arg_0.a.b.x ^ u_input.a));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    global0 = array<bool, 32>();
    var var_0 = _wgslsmith_mult_i32(9257i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b.x, 1i, -16273i), vec3<i32>(-65321i, arg_0.b.x, u_input.b))), arg_0.b.zyx), _wgslsmith_mult_i32(abs(24173i), u_input.a)));
    var var_1 = u_input.b;
    let var_2 = Struct_3(-854f, global1.b);
    var var_3 = Struct_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-941f, _wgslsmith_f_op_f32(-var_2.a))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), -482f)), _wgslsmith_add_vec4_i32(vec4<i32>(-(arg_0.b.x ^ -9066i), 0i, _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, u_input.b), max(u_input.a, arg_0.b.x)), arg_0.b.x), vec4<i32>(~(~u_input.b), 0i, -2147483647i, -firstLeadingBit(23360i))), Struct_1(!vec3<bool>(true, func_2(Struct_2(arg_0, arg_1.x, arg_0.b, Struct_1(vec3<bool>(false, arg_1.x, global0[_wgslsmith_index_u32(global1.b.x, 32u)]), vec4<i32>(-2147483647i, u_input.b, -19848i, 8793i)))), true), select(arg_0.b, -(~arg_0.b), !(!arg_1.x))));
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: vec4<bool>) -> Struct_5 {
    let var_0 = reverseBits(~(~(~0u)) << (_wgslsmith_add_u32(_wgslsmith_add_u32(0u, arg_1), 4294967295u) % 32u));
    let var_1 = 25142i;
    var var_2 = Struct_3(global1.a, global1.b);
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    return Struct_5(Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, 263f, global0[_wgslsmith_index_u32(global1.b.x, 32u)]))), _wgslsmith_f_op_f32(max(952f, _wgslsmith_f_op_f32(var_2.a + 1230f))))), global1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, _wgslsmith_f_op_f32(-629f + _wgslsmith_f_op_f32(647f * -168f)), var_2.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(558f)), global1.a)), -119f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 1159f, -421f) * vec3<f32>(var_2.a, -117f, -329f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, 2327f, -456f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -910f, 392f))), arg_0.wwy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(select(!vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(global1.b.x, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(global1.b.x, 32u)])), global0[_wgslsmith_index_u32(31332u, 32u)] & global0[_wgslsmith_index_u32(46760u, 32u)], all(vec2<bool>(false, global0[_wgslsmith_index_u32(global1.b.x, 32u)])), func_1(Struct_1(vec3<bool>(true, false, global0[_wgslsmith_index_u32(13084u, 32u)]), vec4<i32>(11835i, u_input.b, -2147483647i, u_input.a)), vec3<bool>(global0[_wgslsmith_index_u32(1u, 32u)], true, false))), !(!vec4<bool>(global0[_wgslsmith_index_u32(global1.b.x, 32u)], true, true, true)), !global0[_wgslsmith_index_u32(~4294967295u, 32u)]), 1u, vec4<bool>(!global0[_wgslsmith_index_u32(global1.b.x, 32u)], any(vec4<bool>(global0[_wgslsmith_index_u32(~global1.b.x, 32u)], false, true, any(vec2<bool>(global0[_wgslsmith_index_u32(global1.b.x, 32u)], false)))), reverseBits(select(global1.b.x, 0u, global0[_wgslsmith_index_u32(93779u, 32u)])) < global1.b.x, any(select(!vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(4294967295u, 32u)]), !vec4<bool>(global0[_wgslsmith_index_u32(global1.b.x, 32u)], global0[_wgslsmith_index_u32(global1.b.x, 32u)], global0[_wgslsmith_index_u32(global1.b.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]), vec4<bool>(global0[_wgslsmith_index_u32(global1.b.x, 32u)], global0[_wgslsmith_index_u32(global1.b.x, 32u)], true, global0[_wgslsmith_index_u32(4294967295u, 32u)])))));
    let var_1 = ~(~_wgslsmith_add_u32(0u, ~select(0u, global1.b.x, global0[_wgslsmith_index_u32(global1.b.x, 32u)])));
    let var_2 = abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.b, 1i, -2147483647i), ~vec4<i32>(2147483647i, u_input.b, 2147483647i, u_input.a)), -(vec4<i32>(-1i, 0i, 2627i, 36026i) | vec4<i32>(u_input.a, -21072i, u_input.a, -1i)))) & _wgslsmith_mult_i32(u_input.b, -69951i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-385f, 1138f, var_0.c.x, var_0.c.x), vec4<f32>(-1117f, 702f, 293f, 1435f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, global1.a, global1.a, -605f)), select(vec4<bool>(global0[_wgslsmith_index_u32(global1.b.x, 32u)], global0[_wgslsmith_index_u32(var_0.a.b.x, 32u)], global0[_wgslsmith_index_u32(var_0.a.b.x, 32u)], false), vec4<bool>(global0[_wgslsmith_index_u32(var_1, 32u)], false, global0[_wgslsmith_index_u32(97015u, 32u)], true), global0[_wgslsmith_index_u32(4294967295u, 32u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, 678f, var_0.a.a, -877f) * vec4<f32>(154f, var_0.b.x, 236f, -615f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -3617f, var_0.b.x, global1.a)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1134f)), var_0.a.a, _wgslsmith_f_op_f32(var_0.c.x + -736f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.a)), _wgslsmith_f_op_f32(f32(-1f) * -530f), false))))));
}

