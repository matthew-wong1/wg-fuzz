struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: u32) -> vec2<i32> {
    let var_0 = u_input.c.x;
    global0 = Struct_3(global0.a, Struct_1(global0.b.a, max(countOneBits(arg_1), u_input.a | 68028u) == global1.x), global0.b, _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(f32(-1f) * -170f)), global0.c.b);
    global0 = Struct_3(global0.a, global0.b, global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(678f)))), true);
    let var_1 = 0i;
    var var_2 = -1i;
    return select(u_input.d, global0.c.a, !select(select(select(vec2<bool>(arg_0, false), vec2<bool>(global0.c.b, true), vec2<bool>(global0.c.b, arg_0)), vec2<bool>(arg_0, arg_0), true), vec2<bool>(global0.c.b, !global0.e), true));
}

fn func_2(arg_0: i32) -> vec2<u32> {
    global0 = Struct_3(global0.a, Struct_1(func_3(global0.e, u_input.a), global0.d < -1775f), global0.b, -1493f, all(!vec2<bool>(global0.b.b, false)));
    let var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * _wgslsmith_f_op_f32(-global0.d)), 229f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.a.x, global0.a.a.x, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a.a.x, global0.d)), -1435f), -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(102f, _wgslsmith_f_op_f32(2371f + global0.a.a.x), _wgslsmith_f_op_f32(1036f + 226f)) * vec3<f32>(_wgslsmith_f_op_f32(global0.a.a.x * global0.d), -560f, 712f)))));
    var var_2 = var_1.x;
    let var_3 = max(~(~(~vec2<u32>(u_input.c.x, u_input.a) << ((vec2<u32>(30095u, u_input.a) & u_input.c) % vec2<u32>(32u)))), vec2<u32>(max(4294967295u, 1910u), u_input.a));
    return ~(~countOneBits(_wgslsmith_sub_vec2_u32(var_3, vec2<u32>(u_input.a, var_3.x)) | u_input.c));
}

fn func_1() -> u32 {
    let var_0 = global0.b;
    global1 = (func_2(_wgslsmith_div_i32(min(var_0.a.x, global0.c.a.x), -2147483647i)) & _wgslsmith_mod_vec2_u32(func_2(firstTrailingBit(-41607i)), _wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, 0u), u_input.c))) ^ u_input.c;
    global1 = ~vec2<u32>(u_input.c.x, 0u) & u_input.c;
    var var_1 = global0.c;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d * 1153f) + global0.a.a.x)), global0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - -384f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1049f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1003f, global0.a.a.x)))));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(_wgslsmith_div_u32(func_1(), global1.x), _wgslsmith_mult_u32(40958u, 52198u), _wgslsmith_clamp_i32(-2147483647i, global0.b.a.x, 99298i) < 1i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.b));
}

