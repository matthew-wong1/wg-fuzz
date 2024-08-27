struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(36678u, 0u, 4294967295u, 4294967295u));

var<private> global1: array<vec2<i32>, 7>;

var<private> global2: Struct_3;

var<private> global3: array<i32, 13>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<u32>) -> vec4<bool> {
    global0 = array<vec4<u32>, 1>();
    let var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(599f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -446f)))), global2.a.a.a.x)));
    global0 = array<vec4<u32>, 1>();
    global1 = array<vec2<i32>, 7>();
    global1 = array<vec2<i32>, 7>();
    return !vec4<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))), false, true, (_wgslsmith_mult_i32(global2.d.b, global2.a.b) >> (0u % 32u)) < _wgslsmith_div_i32(countOneBits(global3[_wgslsmith_index_u32(global2.c.x, 13u)]), ~arg_0));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = true;
    let var_1 = abs(u_input.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_f_op_f32(f32(-1f) * -1501f), -491f, _wgslsmith_f_op_f32(trunc(arg_3.d.c)))) - vec4<f32>(arg_3.d.c, global2.a.a.c, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d.c))), -1000f));
    let var_3 = reverseBits(arg_1.zz);
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.zyx, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.yzy, vec3<f32>(-2170f, arg_3.a.a.a.x, 551f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1645f, -297f, arg_3.d.a.x))))), var_2.xyw);
    return !(!(!vec4<bool>(true, var_0, true, var_0)));
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    var var_1 = vec2<bool>(all(select(func_2(-46142i, max(60729i, global3[_wgslsmith_index_u32(u_input.b.x, 13u)]), abs(vec4<u32>(u_input.a.x, 11487u, 27355u, u_input.b.x))), !vec4<bool>(false, false, var_0, var_0), select(!vec4<bool>(false, false, var_0, var_0), func_3(global1[_wgslsmith_index_u32(global2.c.x, 7u)], vec3<i32>(global2.a.a.b, global2.d.b, 2147483647i), global2.a.a.a.x, Struct_3(global2.a, 0u, vec2<u32>(u_input.a.x, global2.c.x), Struct_1(global2.d.a, global2.a.a.b, -525f))), select(var_0, var_0, false)))), var_0);
    return Struct_2(Struct_1(global2.d.a, countOneBits(23608i), _wgslsmith_f_op_f32(-global2.d.c)), ~global3[_wgslsmith_index_u32(~global2.b, 13u)]);
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = 53067i;
    global3 = array<i32, 13>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_1().a.c))));
    var_0 = -reverseBits(_wgslsmith_dot_vec4_i32(~select(vec4<i32>(28643i, 0i, 55558i, 1i), vec4<i32>(global2.a.b, global3[_wgslsmith_index_u32(arg_0.c.x, 13u)], 1i, -1i), true), vec4<i32>(max(-5321i, arg_0.d.b), i32(-1i) * -6338i, global3[_wgslsmith_index_u32(arg_0.c.x, 13u)], _wgslsmith_mod_i32(2147483647i, global2.d.b))));
    var var_2 = arg_0;
    return var_2.b <= global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-global3[_wgslsmith_index_u32(~global2.b, 13u)]);
    var var_1 = func_4(Struct_3(func_1(), u_input.a.x, vec2<u32>(4294967295u, ~global2.b << (4294967295u % 32u)), func_1().a));
    global2 = Struct_3(func_1(), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, abs(13242u)), _wgslsmith_sub_u32(4294967295u, global2.b) >> (u_input.b.x % 32u)), ~vec2<u32>(~u_input.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.a.xw)), Struct_1(global2.d.a, global2.d.b, -109f));
    global3 = array<i32, 13>();
    var var_2 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(global3[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_mult_i32(-(global3[_wgslsmith_index_u32(4294967295u, 13u)] & global2.a.a.b), 1i)), 4294967295u);
}

