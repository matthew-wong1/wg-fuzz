struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-11028i, -7314i, -37364i, -17407i), vec4<i32>(-1i, i32(-2147483648), 38024i, -1i), vec4<i32>(-1i, 0i, 1i, -18457i), vec4<i32>(-1i, 11663i, -1i, i32(-2147483648)), vec4<i32>(-1i, -1i, -1i, 7132i), vec4<i32>(2147483647i, 55747i, 0i, 1i), vec4<i32>(24388i, 1i, 15549i, 26076i), vec4<i32>(-1i, 27425i, -9130i, -1i), vec4<i32>(8732i, 1i, 38834i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -20537i, -20660i), vec4<i32>(41760i, 1i, 0i, i32(-2147483648)), vec4<i32>(-25609i, i32(-2147483648), -27178i, 72049i), vec4<i32>(-1i, -1i, -45099i, 52258i), vec4<i32>(-24028i, -9847i, 2147483647i, 2512i), vec4<i32>(2147483647i, 77972i, 2147483647i, 30968i), vec4<i32>(-37220i, 625i, i32(-2147483648), 60340i), vec4<i32>(2147483647i, 0i, 24713i, -1i), vec4<i32>(12760i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(2147483647i, 40501i, 1i, 1i), vec4<i32>(32730i, 47421i, 0i, -12818i), vec4<i32>(2147483647i, 87446i, 36299i, 9159i));

var<private> global1: array<Struct_1, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec4<f32> {
    global0 = array<vec4<i32>, 21>();
    global0 = array<vec4<i32>, 21>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1f), 1295f));
    let var_1 = true;
    global0 = array<vec4<i32>, 21>();
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-400f, -2219f)), _wgslsmith_f_op_f32(select(var_0.x, 1746f, var_1))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-var_0.x), -1000f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec4_f32(func_2()));
    let var_1 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0.b)))))));
    var var_2 = 7654u;
    var var_3 = Struct_1(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.a, firstLeadingBit(var_0.a)), ~u_input.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.x)))), -973f, var_1.b.x) - var_1.b));
    var var_4 = _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1391f, _wgslsmith_f_op_f32(-var_3.b.x)))))));
    return 0u;
}

fn func_4(arg_0: Struct_1) -> bool {
    global0 = array<vec4<i32>, 21>();
    var var_0 = -_wgslsmith_div_i32(2147483647i, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a) >> (u_input.b % vec2<u32>(32u)), vec2<i32>(2147483647i, 10857i))));
    var var_1 = Struct_1(countOneBits(_wgslsmith_mult_u32(1u, arg_0.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(arg_0.b.x, 726f, 178f, 674f))) + arg_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), _wgslsmith_div_f32(673f, 578f), arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)))));
    var var_2 = arg_0;
    var_1 = global1[_wgslsmith_index_u32(~88420u, 11u)];
    return any(vec3<bool>(true, true, true));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(func_2()));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)));
    let var_3 = arg_3;
    global1 = array<Struct_1, 11>();
    return vec3<bool>(true, !(!all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), any(vec3<bool>(arg_3.a != var_3.a, true, any(vec2<bool>(false, true)))) & !func_4(global1[_wgslsmith_index_u32(func_3(-2147483647i), 11u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1686f);
    let var_1 = global1[_wgslsmith_index_u32(abs(firstLeadingBit(~0u)), 11u)];
    let var_2 = global1[_wgslsmith_index_u32(u_input.b.x ^ 0u, 11u)];
    global1 = array<Struct_1, 11>();
    let var_3 = select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), all(func_1(vec4<f32>(1000f, var_2.b.x, -453f, 3062f), u_input.a, global1[_wgslsmith_index_u32(~4294967295u, 11u)], Struct_1(var_2.a, var_2.b)))), !vec3<bool>(false, true, !func_1(vec4<f32>(var_0, 1065f, -1000f, var_0), -1i, global1[_wgslsmith_index_u32(0u, 11u)], Struct_1(24878u, var_1.b)).x), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -14231i);
}

