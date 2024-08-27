struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, -11779i, -39828i), vec3<i32>(1i, -28700i, -1i), vec3<i32>(1i, -41156i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 10793i, -28050i), vec3<i32>(-16047i, 23090i, -1685i), vec3<i32>(48777i, 2147483647i, -35223i), vec3<i32>(-1i, 25276i, -1i), vec3<i32>(i32(-2147483648), 1i, 2152i), vec3<i32>(-47633i, -1i, 19211i), vec3<i32>(25298i, 2147483647i, -1i), vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(57837i, -2305i, 0i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(-42286i, 23408i, i32(-2147483648)), vec3<i32>(8121i, 1i, -52075i));

var<private> global1: i32 = -7694i;

var<private> global2: vec4<i32> = vec4<i32>(0i, 70468i, 0i, -31204i);

var<private> global3: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(true, Struct_1(1u), true), Struct_3(false, Struct_1(4294967295u), true), Struct_3(true, Struct_1(4294967295u), true), Struct_3(true, Struct_1(65283u), false), Struct_3(false, Struct_1(42740u), false), Struct_3(true, Struct_1(0u), false), Struct_3(true, Struct_1(1u), true), Struct_3(false, Struct_1(0u), false), Struct_3(false, Struct_1(7964u), false), Struct_3(false, Struct_1(32798u), true), Struct_3(false, Struct_1(0u), true), Struct_3(false, Struct_1(4294967295u), false), Struct_3(true, Struct_1(0u), false), Struct_3(true, Struct_1(3338u), false), Struct_3(true, Struct_1(41375u), true), Struct_3(false, Struct_1(1u), false), Struct_3(true, Struct_1(70964u), false), Struct_3(true, Struct_1(0u), false), Struct_3(false, Struct_1(1u), false), Struct_3(true, Struct_1(5409u), true), Struct_3(true, Struct_1(0u), false), Struct_3(true, Struct_1(4294967295u), true), Struct_3(false, Struct_1(30285u), false));

var<private> global4: Struct_3 = Struct_3(true, Struct_1(4294967295u), false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32) -> bool {
    global3 = array<Struct_3, 23>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))), 372f, 487f, -2062f);
    let var_1 = Struct_2(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) * _wgslsmith_f_op_f32(step(arg_2, 386f)))))));
    var var_2 = Struct_1(1u);
    let var_3 = 60905u;
    return any(!(!(!(!vec3<bool>(false, global4.a, global4.a)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_2 {
    global1 = global2.x;
    let var_0 = arg_2;
    var var_1 = any(select(select(vec2<bool>(global4.c, true), !vec2<bool>(false, global4.a), true & !global4.c), vec2<bool>(all(!vec4<bool>(true, false, global4.a, true)), true), vec2<bool>(global4.c, true)));
    var_1 = func_3(global2.x, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, u_input.a, u_input.a, -1i), vec4<i32>(global2.x, u_input.a, 0i, -22449i))) | select(-16974i, countOneBits(global2.x), true), _wgslsmith_f_op_f32(192f * arg_2.x));
    var var_2 = Struct_1(24985u);
    return Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(arg_1.x - 351f)))))), arg_2.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_2) -> bool {
    let var_0 = Struct_1(4294967295u);
    var var_1 = arg_2;
    return true;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> bool {
    global4 = global3[_wgslsmith_index_u32(~global4.b.a, 23u)];
    let var_0 = vec2<i32>(0i, 1i);
    var var_1 = Struct_1(_wgslsmith_div_u32(5970u, arg_0.b.a | 87319u));
    let var_2 = Struct_1(reverseBits(arg_2.a));
    let var_3 = -195f;
    return !all(vec2<bool>(arg_0.c, func_4(func_2(global4.b, vec2<f32>(-580f, 182f), vec3<f32>(var_3, var_3, var_3)), func_2(Struct_1(1u), vec2<f32>(var_3, var_3), vec3<f32>(var_3, 1239f, var_3)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-839f, 274f, -1035f, 161f)), func_2(Struct_1(var_1.a), vec2<f32>(var_3, var_3), vec3<f32>(1168f, var_3, -841f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    let var_0 = 912f <= _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(482f * _wgslsmith_f_op_f32(768f - -616f)), -806f)));
    var var_1 = -810f;
    var var_2 = select(!vec3<bool>(u_input.b <= _wgslsmith_mult_u32(u_input.b, 53092u), var_0, all(vec4<bool>(false, true, global4.a, true)) && true), !(!vec3<bool>(false, true, func_1(Struct_3(false, Struct_1(0u), global4.c), global2.x, global4.b))), !global4.c);
    let var_3 = vec3<bool>(true, !(!any(select(vec3<bool>(false, true, var_2.x), vec3<bool>(true, global4.c, true), vec3<bool>(var_0, var_0, false)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(200f, -611f) - -601f) * -655f))), 35468i);
}

