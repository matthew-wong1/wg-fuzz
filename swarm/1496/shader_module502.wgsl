struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(1u, 61786u), -1421f);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(4294967295u, 20227u), -158f);

var<private> global2: Struct_1;

var<private> global3: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(-59104i, -71326i, 8688i, -1i), vec4<i32>(41033i, 0i, -20193i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 0i), vec4<i32>(70453i, 0i, -5503i, 70100i));

var<private> global4: vec2<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global2 = arg_0;
    let var_0 = true;
    var var_1 = vec3<bool>(!var_0, var_0, select(!var_0, !var_0, !(!var_0 || select(var_0, false, var_0))));
    let var_2 = arg_0;
    global0 = Struct_1(vec2<u32>(4294967295u, _wgslsmith_add_u32(~global2.a.x | 1u, arg_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(183f - arg_0.b) + _wgslsmith_f_op_f32(global2.b + -1610f)))));
    return Struct_1(vec2<u32>(global0.a.x, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(step(1431f, -1367f)))), _wgslsmith_f_op_f32(f32(-1f) * -1473f)) + global2.b));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !(!vec4<bool>(true, !(!arg_1.x), arg_1.x, true));
    var var_1 = global2.b;
    global1 = arg_2;
    let var_2 = func_2(arg_2);
    let var_3 = Struct_1(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * arg_2.b) * _wgslsmith_f_op_f32(var_2.b * arg_2.b))) * -1000f));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec2_i32(firstTrailingBit(-vec2<i32>(28093i, global4.x)) << (vec2<u32>(~global0.a.x, u_input.b) % vec2<u32>(32u)), u_input.c << (~max(global0.a, vec2<u32>(global2.a.x, global1.a.x)) % vec2<u32>(32u))), vec4<bool>(true, global4.x != firstLeadingBit(1i), any(vec4<bool>(true, true, true, true)), true), Struct_1(vec2<u32>(~u_input.b, abs(u_input.b)) & select(vec2<u32>(global1.a.x, 4294967295u), max(global2.a, global1.a), true), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(abs(global1.b)))));
    global0 = var_0;
    global1 = func_1(-(~abs(u_input.c)), vec4<bool>(any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), any(vec4<bool>(true, true, true, true)), !(!(var_0.a.x <= 0u)), true), var_0);
    let var_1 = Struct_1(firstLeadingBit(firstLeadingBit(vec2<u32>(global1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 11627u, 0u, global1.a.x), vec4<u32>(u_input.b, var_0.a.x, global1.a.x, 18229u))))), _wgslsmith_f_op_f32(f32(-1f) * -493f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-863f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))) * _wgslsmith_f_op_f32(-1789f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_3 = func_1(u_input.c, select(vec4<bool>(false, true, any(vec3<bool>(true, true, true)), false), select(vec4<bool>(true, all(vec3<bool>(false, false, false)), any(vec2<bool>(true, true)), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false), any(vec2<bool>(false, false))), !vec4<bool>(false, any(vec4<bool>(false, false, true, false)), var_1.a.x < 7271u, false)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, global2.b))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.b, -1300f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_3.b, -784f))))))));
}

