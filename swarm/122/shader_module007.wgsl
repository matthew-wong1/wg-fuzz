struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, 1i);

var<private> global1: bool = false;

var<private> global2: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    return Struct_1(-46305i, 2147483647i);
}

fn func_1() -> Struct_1 {
    let var_0 = global2.b;
    let var_1 = vec2<bool>(true, true);
    global1 = false;
    return func_2(0u, 4294967295u);
}

fn func_3(arg_0: bool, arg_1: bool) -> f32 {
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global2.b, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, -1i, global0.b), vec3<i32>(global2.a, 2147483647i, global2.b)), 0i), ~(vec3<i32>(global0.b, -2147483647i, global2.b) >> (vec3<u32>(0u, 45994u, 1824u) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_mod_i32(u_input.a, global2.b), max(1i, 6959i), 1i) << (select(~vec3<u32>(4294967295u, 4294967295u, 11094u), ~vec3<u32>(4845u, 4294967295u, 68742u), !arg_1) % vec3<u32>(32u))), min(_wgslsmith_dot_vec4_i32(vec4<i32>(min(u_input.a, 1i), global2.b, -2147483647i, -u_input.a), vec4<i32>(abs(global2.b), -1i, -global0.a, min(-14312i, -2147483647i))), ~global0.a));
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(585f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1116f - 1223f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2546f))))), 141f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(633f, -286f, -278f, 2052f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-621f, 965f, -362f, 486f), vec4<f32>(-234f, -2109f, 108f, 779f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, -471f, 1000f, 1052f)), any(vec3<bool>(true, true, false))))), _wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(695f + 141f), 468f, -368f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(268f, -379f, -2450f, 1088f), vec4<f32>(330f, -1414f, -2774f, 157f)))))))), any(select(vec3<bool>(true, false, select(arg_1, true, true)), vec3<bool>(true, !arg_1, !arg_0), arg_1 | all(vec3<bool>(arg_0, arg_1, true))))));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(~(-47483i), min(global2.b, -43916i), ~(-64003i), abs(-14824i)), -_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, -55065i), ~vec4<i32>(global0.a, u_input.a, global2.a, global2.b))), _wgslsmith_add_i32(min(i32(-1i) * -10688i, global0.b), -1i));
    var var_2 = vec2<u32>(1u, 1u);
    var_1 = Struct_1(abs(38086i), -_wgslsmith_sub_i32(-1i & (global0.b ^ global0.b), _wgslsmith_clamp_i32(firstTrailingBit(0i), ~(-7189i), 20019i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, ~(u_input.a >> (42286u % 32u)));
    global1 = true;
    global2 = func_1();
    global0 = func_1();
    global1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(true, true)), 903f)), global2.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-1342f - 560f)))), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -115f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-933f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f) + _wgslsmith_f_op_f32(1000f - -379f))))), max(38644i, global2.a), -122f);
}

