struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
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

var<private> global0: array<vec4<bool>, 6>;

var<private> global1: array<u32, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    var var_0 = all(vec3<bool>(false, true | select(true, false, true), true)) == false;
    var_0 = !(!all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))) | (~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-2147483647i, 8987i)) >= u_input.c));
    global0 = array<vec4<bool>, 6>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-650f, 587f, 571f, -435f) * vec4<f32>(-1824f, 341f, -569f, -1000f))))), true, Struct_2(u_input.a.x));
    var var_2 = 4294967295u;
    return var_1.a.x;
}

fn func_1(arg_0: Struct_4) -> f32 {
    global1 = array<u32, 19>();
    let var_0 = arg_0.b;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c, arg_0.e.x, -4320i, u_input.a.x), vec4<i32>(arg_0.c, -50732i, u_input.c, 69935i)) | vec4<i32>(var_1.c, var_1.c, 0i, 11544i), ~abs(vec4<i32>(13427i, 2147483647i, u_input.a.x, u_input.c))), u_input.c) ^ 0i;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * arg_0.a);
    return 751f;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~(~4294967295u), 6u)];
    var var_1 = Struct_2(67207i);
    var var_2 = _wgslsmith_f_op_f32(floor(arg_1.d));
    var_1 = Struct_2((arg_1.a ^ _wgslsmith_dot_vec4_i32(firstLeadingBit(arg_1.c), -arg_2.c)) & ~_wgslsmith_mult_i32(-2658i, _wgslsmith_add_i32(-3445i, u_input.c)));
    var_0 = select(vec4<bool>(!(-1195f != _wgslsmith_f_op_f32(select(arg_1.d, -1144f, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.b.x - 286f))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -713f), arg_2.b.x, any(var_0.xxz))), var_0.x, all(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)) || (_wgslsmith_f_op_f32(sign(arg_2.d)) == 1550f)), select(vec4<bool>(all(vec2<bool>(false, true)) || all(var_0.xzw), var_0.x, false, any(vec4<bool>(true, true, var_0.x, true))), select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(3853u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, arg_0), 19u)]), 6u)], vec4<bool>(all(vec2<bool>(var_0.x, false)), any(vec4<bool>(var_0.x, false, true, false)), var_0.x, select(true, false, var_0.x)), select(!vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, true, false), vec4<bool>(var_0.x, false, true, false))), global0[_wgslsmith_index_u32(~(~u_input.b), 6u)]), true);
    return arg_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<f32> {
    var var_0 = vec4<i32>(arg_0.c.x, arg_0.a, u_input.a.x, 1i);
    let var_1 = max(~_wgslsmith_dot_vec4_u32(arg_1, _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 19u)], u_input.b, 94726u, global1[_wgslsmith_index_u32(arg_1.x, 19u)])), ~arg_1)), _wgslsmith_sub_u32(u_input.b, u_input.b));
    var var_2 = Struct_3(arg_0.b, any(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1, 25670u, ~56303u), 6u)]), Struct_2(~u_input.c));
    let var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x - var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x), 1598f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(430f)) + _wgslsmith_f_op_f32(arg_0.d * -1040f)), 1000f)), var_2.c.a >= -2780i, var_2.c);
    var_2 = var_3;
    return _wgslsmith_f_op_vec4_f32(max(arg_0.b, arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1580u, 19u)], ~max(firstLeadingBit(~38303u), select(1u, ~global1[_wgslsmith_index_u32(4294967295u, 19u)], true)));
    global1 = array<u32, 19>();
    var var_1 = -1027f;
    var var_2 = u_input.c;
    var var_3 = 0i;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(673f)), _wgslsmith_f_op_f32(func_1(Struct_4(-998f, false, u_input.a.x, vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(var_0, 19u)], 71168u), vec2<i32>(1i, u_input.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-934f, -298f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -459f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(func_3(reverseBits(4294967295u), Struct_1(u_input.c, vec4<f32>(var_4.x, 1403f, var_4.x, var_4.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x), var_4.x), Struct_1(u_input.a.x, vec4<f32>(var_4.x, var_4.x, var_4.x, 414f), vec4<i32>(u_input.c, 33603i, u_input.c, 2147483647i), -458f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(195f, 1715f, 772f, var_4.x) + vec4<f32>(410f, var_4.x, -435f, var_4.x)), ~vec4<i32>(45283i, -2147483647i, u_input.c, u_input.c), 2000f), max(vec4<u32>(abs(1u), countOneBits(1u), u_input.b, var_0), (vec4<u32>(73405u, 4294967295u, u_input.b, u_input.b) | vec4<u32>(1u, global1[_wgslsmith_index_u32(25446u, 19u)], 45119u, global1[_wgslsmith_index_u32(u_input.b, 19u)])) << (select(vec4<u32>(var_0, 1u, 1u, global1[_wgslsmith_index_u32(u_input.b, 19u)]), vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20752u, 19u)], 19u)], 1u, 0u), true) % vec4<u32>(32u))))));
}

