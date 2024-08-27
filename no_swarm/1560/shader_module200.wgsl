struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 26>;

var<private> global2: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(4294967295u, 3294u, 25u), vec3<u32>(16666u, 5108u, 24031u), vec3<u32>(4294967295u, 53441u, 20943u), vec3<u32>(16124u, 77111u, 100585u), vec3<u32>(6364u, 99495u, 959u), vec3<u32>(6592u, 53413u, 36306u), vec3<u32>(10130u, 1u, 4294967295u));

var<private> global3: Struct_4;

var<private> global4: bool;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_5(Struct_1(!select(true, true, global3.c.b.b.x != global3.c.b.b.x), vec3<i32>(-2147483647i, -global3.c.a, 1i) >> (u_input.c % vec3<u32>(32u))), global0.b, global3.b.c.b);
    global3 = Struct_4(~global3.a, global3.b, Struct_2(-34255i, global0.c.b));
    var var_1 = global0.d.x;
    var var_2 = vec2<bool>(arg_0.b.a, true);
    let var_3 = global3.b;
    return !vec2<bool>(all(!vec3<bool>(arg_0.b.a, var_3.e.b.a, true)), global1[_wgslsmith_index_u32(0u, 26u)] > ~max(global3.a.x, global3.a.x));
}

fn func_3() -> i32 {
    var var_0 = countOneBits(-max(abs(global0.c.b.b.x), u_input.a.x)) | _wgslsmith_add_i32(u_input.a.x, abs(~global0.e.b.b.x) >> (u_input.d % 32u));
    let var_1 = any(!(!vec2<bool>(global0.e.b.a, global3.b.e.b.a)));
    let var_2 = -9987i;
    let var_3 = select(!vec4<bool>(all(vec2<bool>(true, true)), global0.e.b.a, all(select(vec3<bool>(global0.c.b.a, global0.c.b.a, false), vec3<bool>(var_1, false, false), false)), !(132f == global3.b.b.x)), !select(select(select(vec4<bool>(false, global0.c.b.a, true, global0.c.b.a), vec4<bool>(false, true, global0.e.b.a, var_1), vec4<bool>(true, var_1, true, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, global3.b.c.b.a, true, true), vec4<bool>(global3.b.c.b.a, global0.c.b.a, global0.e.b.a, var_1)), !vec4<bool>(false, true, false, var_1)), !(!vec4<bool>(var_1, var_1, true, false)), vec4<bool>(all(vec2<bool>(global0.e.b.a, true)), true, all(vec2<bool>(var_1, global3.c.b.a)), all(vec4<bool>(var_1, true, var_1, global0.c.b.a)))), global0.e.b.a);
    global2 = array<vec3<u32>, 7>();
    return _wgslsmith_mod_i32(-1i, 1i);
}

fn func_1() -> Struct_1 {
    let var_0 = -33743i;
    var var_1 = vec3<f32>(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -592f), global0.b.x);
    var var_2 = _wgslsmith_dot_vec4_u32(u_input.b, select(u_input.b, abs(u_input.b), !any(func_2(global0.e))));
    var var_3 = Struct_4(vec2<u32>(9014u, ~1u), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.b.a))) + _wgslsmith_f_op_f32(-global0.a)), global3.b.b, Struct_2(_wgslsmith_add_i32(global0.e.a, func_3()), global3.b.e.b), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global3.b.b.x * -1000f), -109f))), global3.c), Struct_2(_wgslsmith_div_i32(global3.b.c.b.b.x, 1i ^ reverseBits(global3.c.b.b.x)), Struct_1(global0.e.b.a, u_input.a << (_wgslsmith_clamp_vec3_u32(u_input.b.xyz, vec3<u32>(8963u, global3.a.x, 1u), u_input.c) % vec3<u32>(32u)))));
    var_3 = Struct_4(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(4294967295u, 0u), global1[_wgslsmith_index_u32(u_input.b.x, 26u)] << (global3.a.x % 32u), firstTrailingBit(4294967295u), u_input.d), max(u_input.b | u_input.b, abs(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 26u)], 1u, global3.a.x)))), ~4294967295u), global3.b, Struct_2(-min(-9151i, var_3.b.e.a) << (~0u % 32u), global0.e.b));
    return Struct_1(var_3.c.b.a, vec3<i32>(u_input.a.x, select(global3.b.e.a, i32(-1i) * -1i, global3.b.e.a != (global0.e.b.b.x >> (22908u % 32u))), var_0));
}

fn func_4(arg_0: Struct_5, arg_1: vec4<bool>) -> Struct_4 {
    var var_0 = arg_0.c.b.x;
    var var_1 = Struct_2(~arg_0.a.b.x, func_1());
    return Struct_4(~firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), u_input.b.zy), vec2<u32>(74660u, global1[_wgslsmith_index_u32(81542u, 26u)]))), global3.b, Struct_2(~(~(-global3.b.c.b.b.x)), global3.b.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(Struct_5(func_1(), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.b.a, 1000f, global3.b.b.x, global3.b.b.x)))))), global3.c.b), select(select(select(vec4<bool>(false, global3.b.e.b.a, false, global3.c.b.a), !vec4<bool>(true, false, global3.c.b.a, global0.c.b.a), vec4<bool>(true, global0.c.b.a, true, true)), select(vec4<bool>(true, false, false, global0.e.b.a), !vec4<bool>(global3.c.b.a, global3.c.b.a, global0.c.b.a, global3.b.c.b.a), vec4<bool>(global3.b.e.b.a, false, global0.c.b.a, false)), !(!global0.c.b.a)), select(vec4<bool>(global3.b.e.b.a, global0.c.b.a || global3.c.b.a, global0.e.b.a || true, global0.c.b.a), !vec4<bool>(true, false, global0.e.b.a, true), vec4<bool>(all(vec3<bool>(false, global0.e.b.a, true)), select(global3.b.e.b.a, true, global0.e.b.a), any(vec3<bool>(false, false, true)), global3.c.b.a)), all(vec2<bool>(true, true)) && (~0u <= u_input.c.x)));
    global3 = func_4(Struct_5(global3.b.e.b, _wgslsmith_f_op_vec4_f32(global3.b.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b - global0.b))), Struct_1(false, vec3<i32>(func_3(), u_input.a.x, firstTrailingBit(-1i)))), select(vec4<bool>(true, false, func_2(global0.c).x, global0.e.b.a), !(!select(vec4<bool>(global3.b.c.b.a, true, true, global0.c.b.a), vec4<bool>(false, global0.e.b.a, global3.c.b.a, true), global0.e.b.a)), !(!vec4<bool>(true, true, global0.e.b.a, true))));
    var var_0 = Struct_4(~firstLeadingBit(global3.a), Struct_3(global3.b.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.b.b * global0.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.b)))), global0.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 1761f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a, global0.d.x)))))), Struct_2(global0.c.b.b.x << (u_input.c.x % 32u), global3.c.b)), Struct_2(~_wgslsmith_mod_i32(select(0i, global0.c.b.b.x, false), firstTrailingBit(global3.c.b.b.x)), global3.b.e.b));
    let var_1 = func_1();
    var var_2 = global3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b.x);
}

