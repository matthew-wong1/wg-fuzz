struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: u32 = 76320u;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * global0.x) - _wgslsmith_f_op_f32(-global0.x))));
}

fn func_2() -> Struct_4 {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + global0.x), _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.b, u_input.b, 4294967295u))) + _wgslsmith_f_op_f32(global0.x - 1386f)), global0.x)), vec4<f32>(1416f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(round(global0.x))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2464f)));
    let var_1 = Struct_2(Struct_1(u_input.a, global2.b || (false || all(vec2<bool>(false, global2.b))), vec2<i32>(28796i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -92905i, -39690i, 43384i), vec4<i32>(30716i, u_input.a, u_input.a, 9227i) >> (vec4<u32>(1u, 1u, 0u, u_input.b) % vec4<u32>(32u))))));
    let var_2 = global2.b;
    let var_3 = Struct_4(0i);
    return Struct_4(countOneBits(0i));
}

fn func_1() -> vec4<f32> {
    var var_0 = func_2();
    var var_1 = !(!all(vec4<bool>(global2.b, global0.x >= global0.x, true, true)));
    var var_2 = vec4<i32>(global2.c.x, func_2().a, -(~select(2149i, reverseBits(-6968i), !global2.b)), -2147483647i);
    let var_3 = global2.b;
    let var_4 = any(vec3<bool>(!all(vec2<bool>(false, true)), global2.b, !any(vec2<bool>(global2.b, global2.b)))) | (false && global2.b);
    return vec4<f32>(_wgslsmith_f_op_f32(select(global0.x, 878f, any(vec2<bool>(true, true)))), -1000f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(global0.x));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - vec4<f32>(-840f, _wgslsmith_f_op_f32(var_0 * var_0), -821f, 1235f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-629f, global0.x, 1156f, 649f), vec4<f32>(1316f, var_0, 1398f, global0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2425f, var_0, var_0, global0.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1278f, 930f, var_0, global0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1496f, var_0, global0.x, -1228f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1811f, var_0))))));
    var var_1 = Struct_2(Struct_1(u_input.a, var_0 == -1000f, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i >> (0u % 32u), 17395i), min(global2.c, ~vec2<i32>(global2.a, global2.a)))));
    var_1 = Struct_2(Struct_1(u_input.a, u_input.b == reverseBits(0u), ~global2.c));
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1259f, 477f, var_0), vec4<f32>(-351f, -235f, global0.x, 1659f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.c, 26303u | firstTrailingBit(u_input.b), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1()).x));
}

