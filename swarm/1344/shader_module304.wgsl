struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
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

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(297u, -47636i), Struct_2(1u, -30248i), Struct_2(35400u, 55364i), Struct_2(80831u, 2147483647i), Struct_2(14246u, 55752i), Struct_2(0u, 1i), Struct_2(20405u, 15723i), Struct_2(0u, -16107i), Struct_2(47807u, i32(-2147483648)), Struct_2(4294967295u, -11285i), Struct_2(74192u, 2147483647i), Struct_2(53543u, -59772i), Struct_2(1u, -1i), Struct_2(4294967295u, -25728i), Struct_2(1u, i32(-2147483648)), Struct_2(27377u, -15264i), Struct_2(0u, 1i), Struct_2(1u, -3692i), Struct_2(4294967295u, 36990i), Struct_2(4294967295u, 20124i), Struct_2(7750u, i32(-2147483648)), Struct_2(28885u, 32515i), Struct_2(8465u, -28145i), Struct_2(1u, 42924i));

var<private> global1: array<bool, 20> = array<bool, 20>(false, false, true, false, false, true, true, false, true, true, true, false, true, false, true, true, false, false, false, false);

var<private> global2: array<i32, 22> = array<i32, 22>(-1i, i32(-2147483648), 1i, 2147483647i, 1i, 34468i, 0i, i32(-2147483648), 0i, -1i, 7975i, -61363i, 0i, -19139i, -20371i, 1i, 9077i, -52240i, 2147483647i, i32(-2147483648), -35177i, 57275i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-950f * arg_2.c.b.x), -547f)) - _wgslsmith_f_op_f32(max(arg_2.a, -310f)))), -u_input.b, arg_2.c, _wgslsmith_f_op_vec4_f32(arg_2.d - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2138f), _wgslsmith_f_op_f32(floor(arg_2.c.b.x)), _wgslsmith_f_op_f32(step(arg_2.a, arg_2.c.b.x)), -1072f))), any(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(4294967295u), firstTrailingBit(arg_1.a), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, arg_1.a, arg_1.a), vec3<u32>(16889u, arg_1.a, 4294967295u))), 20u)], select(any(vec2<bool>(arg_2.e, false)), select(true, true, false), 904f < arg_2.c.b.x))));
    global2 = array<i32, 22>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(1325f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -800f), _wgslsmith_f_op_f32(-var_0.c.b.x))) * -1299f)), _wgslsmith_f_op_f32(abs(1289f)), 439f);
    var var_2 = var_0.c;
    var var_3 = var_0;
    return all(vec2<bool>(!any(select(vec2<bool>(true, var_0.e), vec2<bool>(var_0.e, var_3.e), vec2<bool>(var_3.e, true))), all(vec2<bool>(true, true)) & !arg_2.e));
}

fn func_2() -> Struct_2 {
    let var_0 = true;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1868f), ~u_input.a, Struct_1(vec2<i32>(min(~u_input.a.x, global2[_wgslsmith_index_u32(~63778u, 22u)]), 62474i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -522f, 1576f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-950f, 267f, 1361f), vec3<f32>(1418f, 1354f, 695f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-113f, -111f, 1232f, 1118f))))), _wgslsmith_div_vec4_f32(vec4<f32>(-369f, 449f, -426f, 1376f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(2119f, -539f, -716f, 1692f), vec4<f32>(-1205f, -278f, -152f, -1000f)))))), u_input.b.x > 26560i);
    global1 = array<bool, 20>();
    global2 = array<i32, 22>();
    var var_2 = vec2<bool>(!(func_3(-var_1.b.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 47978u), 24u)], Struct_3(1445f, var_1.c.a, var_1.c, var_1.d, true)) & true), !var_1.e || true);
    return global0[_wgslsmith_index_u32(0u, 24u)];
}

fn func_1(arg_0: bool) -> Struct_2 {
    global2 = array<i32, 22>();
    let var_0 = 0u;
    let var_1 = func_2();
    var var_2 = global0[_wgslsmith_index_u32(~var_1.a, 24u)];
    let var_3 = func_2();
    return Struct_2(0u, var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 22>();
    global0 = array<Struct_2, 24>();
    var var_0 = Struct_1(min(u_input.a & vec2<i32>(min(global2[_wgslsmith_index_u32(27844u, 22u)], u_input.b.x), -1i), -firstTrailingBit(countOneBits(u_input.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-562f, -233f, 1000f) + vec3<f32>(-255f, 382f, 1000f)))))));
    var var_1 = func_1(!global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(19230u, 1u, 0u, 31062u)), ~(~vec4<u32>(1u, 4294967295u, 33384u, 35074u))), 20u)]);
    let var_2 = !(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(abs(4294967295u), 20u)], any(vec2<bool>(global1[_wgslsmith_index_u32(var_1.a, 20u)], true)), global1[_wgslsmith_index_u32(10155u, 20u)])));
    let x = u_input.a;
    s_output = StorageBuffer(1323f);
}

