struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 29>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<u32>(36406u, 0u), vec2<f32>(-941f, 315f)));

var<private> global2: array<f32, 15>;

var<private> global3: array<vec2<bool>, 7>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>) -> bool {
    var var_0 = reverseBits(global4.a.x);
    global0 = array<vec3<i32>, 29>();
    global2 = array<f32, 15>();
    var var_1 = arg_0;
    let var_2 = false;
    return all(select(select(!vec3<bool>(arg_1.x, true, false), arg_1.zxw, vec3<bool>(var_2, !arg_1.x, false)), !(!(!vec3<bool>(var_2, arg_1.x, arg_1.x))), false));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_i32(u_input.a.x, -30393i);
    let var_1 = vec3<i32>(u_input.c, u_input.a.x, 11584i);
    var var_2 = !(1233f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(561f))));
    var var_3 = -reverseBits(_wgslsmith_mult_vec4_i32(~reverseBits(vec4<i32>(u_input.c, -19041i, -1i, 12893i)), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 1i, var_1.x, -19441i)));
    global0 = array<vec3<i32>, 29>();
    return vec4<bool>(true, !arg_0, false, arg_0);
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = u_input.a.yz;
    let var_1 = !select(select(vec4<bool>(true, false, true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, global1.a.b.x < global1.a.b.x)), func_4(!func_3(vec3<u32>(global1.a.a.x, global1.a.a.x, 9410u), vec4<bool>(false, true, true, false)), Struct_2(global1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-480f)), global1.a.b.x), u_input.a.x), select(!func_4(false, Struct_2(Struct_1(vec2<u32>(1u, 36807u), vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global1.a.b.x))), -324f, 1i), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, true), false)));
    global2 = array<f32, 15>();
    var var_2 = Struct_2(Struct_1(abs(global1.a.a >> (~vec2<u32>(1u, 94756u) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global1.a.b.x, -1150f, var_1.x)), global1.a.b.x)), global1.a.b.x)));
    let var_3 = Struct_1(_wgslsmith_mult_vec2_u32(var_2.a.a, ~vec2<u32>(global1.a.a.x, ~var_2.a.a.x)), _wgslsmith_f_op_vec2_f32(-global4.b));
    return Struct_2(var_3);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = func_2(vec4<i32>(2147483647i, u_input.c, -2147483647i, u_input.c));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(global1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.b.x - -299f)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.b.x, global2[_wgslsmith_index_u32(global1.a.a.x, 15u)]))), arg_1.a.b.x) * 1371f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-669f, 1000f) - -723f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))));
    let var_2 = all(!(!select(vec4<bool>(arg_0.x, true, arg_0.x, true), !vec4<bool>(false, arg_0.x, false, true), select(vec4<bool>(false, arg_0.x, true, true), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, true)))));
    global4 = func_2(u_input.a).a;
    let var_3 = 51859u;
    return func_2(vec4<i32>(~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), max(u_input.c, -36291i)), ~0i, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.c, 1i) | -22308i), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(34228u, _wgslsmith_add_u32(global1.a.a.x, ~7656u), _wgslsmith_sub_u32(~u_input.b, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global4.a.x, u_input.b, u_input.b), vec3<u32>(global4.a.x, 24974u, global1.a.a.x)), 1u)) | global4.a.x);
    var var_1 = Struct_2(global1.a);
    var var_2 = ~global4.a;
    var var_3 = func_1(vec3<bool>(true, any(vec3<bool>(var_1.a.b.x >= -462f, true, true)), true), Struct_2(var_1.a));
    global1 = Struct_2(Struct_1(select(~(vec2<u32>(global1.a.a.x, var_3.a.a.x) << (global4.a % vec2<u32>(32u))), ~abs(var_1.a.a), any(vec4<bool>(true, true, true, true))), global1.a.b));
    var_1 = Struct_2(func_2(vec4<i32>(~1i, min(0i, ~u_input.a.x), (u_input.c | -2616i) & u_input.c, firstLeadingBit(_wgslsmith_div_i32(0i, 9211i)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b.x, -1000f, global4.b.x, -947f))))), ~select(~abs(vec4<u32>(4294967295u, 4294967295u, 20330u, var_2.x)), abs(~vec4<u32>(var_2.x, 2177u, var_2.x, global1.a.a.x)), vec4<bool>(true, true, true, true)));
}

