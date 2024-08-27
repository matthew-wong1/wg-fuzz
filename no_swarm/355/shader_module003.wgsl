struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = false;

var<private> global2: array<f32, 9>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    global1 = any(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(all(vec2<bool>(false, true)), true, global0.x <= 43812i, true), vec4<bool>(any(vec2<bool>(false, false)), true, true, true)));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.x, 0u), 9u)] * -1366f) * -431f)), vec3<i32>(global0.x, reverseBits(-2147483647i), u_input.b.x));
    let var_1 = Struct_1(_wgslsmith_mod_i32(-_wgslsmith_sub_i32(-22319i, firstLeadingBit(-1i)), _wgslsmith_add_i32(344i, 18753i)), i32(-1i) * -1i);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-601f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1572f - global2[_wgslsmith_index_u32(37127u, 9u)]) + var_0.a)))), countOneBits(~vec3<i32>(i32(-1i) * -16296i, 0i, var_1.a)));
    var_0 = var_2;
    return !(!vec2<bool>(true, false && any(vec3<bool>(false, false, false))));
}

fn func_2() -> Struct_2 {
    global2 = array<f32, 9>();
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), -abs(u_input.b.xy)), global0.x);
    let var_1 = var_0;
    let var_2 = all(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), all(vec2<bool>(true, true)))) && !any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), func_3(), true));
    let var_3 = vec2<i32>(var_0.b, 0i);
    return Struct_2(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.a.x, 9u)])), _wgslsmith_sub_vec3_i32(select(u_input.b, min(abs(vec3<i32>(19034i, -2147483647i, -35498i)), ~vec3<i32>(var_1.b, 48887i, u_input.b.x)), select(select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(true, var_2, var_2), vec3<bool>(false, true, var_2)), !vec3<bool>(var_2, true, var_2), global2[_wgslsmith_index_u32(4294967295u, 9u)] != -273f)), vec3<i32>(-_wgslsmith_mod_i32(-1i, var_1.a), var_1.b, var_3.x)));
}

fn func_1(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = func_2();
    let var_1 = u_input.b.x;
    global3 = u_input.a.xz;
    global0 = u_input.b.yy ^ vec2<i32>(abs(u_input.b.x), _wgslsmith_add_i32(~(~global0.x), -(~(-2147483647i))));
    var var_2 = true;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(3952u, 9u)])) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-218f, global2[_wgslsmith_index_u32(global3.x, 9u)], arg_0.a), vec3<f32>(var_0.a, 716f, global2[_wgslsmith_index_u32(global3.x, 9u)])))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_0.a, var_0.a) - vec3<f32>(110f, global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(735f, -2007f, var_0.a))) - vec3<f32>(-743f, 920f, global2[_wgslsmith_index_u32(global3.x, 9u)])))), any(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(43353u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(u_input.c, 9u)]), _wgslsmith_f_op_vec3_f32(func_1(Struct_2(global2[_wgslsmith_index_u32(0u, 9u)], vec3<i32>(-49903i, 7863i, -1i)))))), vec3<f32>(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(u_input.d, 9u)])), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(48770u, 9u)], 142f), _wgslsmith_f_op_f32(floor(-1257f))))))));
    let var_1 = true;
    global0 = u_input.b.yz;
    global2 = array<f32, 9>();
    let var_2 = var_1;
    var var_3 = global2[_wgslsmith_index_u32(global3.x, 9u)];
    var var_4 = vec3<f32>(1055f, -1279f, -1079f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(global0.x, u_input.b.x), u_input.b.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.yz)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(306f, var_0.x) + _wgslsmith_f_op_vec2_f32(-var_4.xz))), vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~10541u, 9u)]), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4.x)))))));
}

