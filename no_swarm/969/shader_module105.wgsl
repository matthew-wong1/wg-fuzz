struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(13725i, 1i);

var<private> global1: Struct_1 = Struct_1(vec2<i32>(0i, -11581i), vec2<f32>(-130f, 711f));

var<private> global2: Struct_1;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(u_input.d.xw, global1.b);
    global1 = var_0;
    var var_1 = var_0;
    global1 = var_0;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, var_1.b.x, -418f, -1406f) * _wgslsmith_div_vec4_f32(vec4<f32>(1577f, 199f, -693f, 434f), vec4<f32>(global2.b.x, -842f, global1.b.x, 156f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(global2.b.x)), _wgslsmith_f_op_f32(min(-408f, var_0.b.x)), global2.b.x, var_1.b.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(685f, -1848f, 553f, -1000f) * vec4<f32>(global1.b.x, global1.b.x, -1262f, var_0.b.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, global1.b.x, 1288f, global2.b.x) * vec4<f32>(var_0.b.x, global2.b.x, -232f, -1627f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1233f, -235f, 677f, var_0.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1435f, 813f, global1.b.x, -1000f)))))));
    return vec2<bool>(false, global3.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(select(-vec2<i32>(0i, ~(-26083i)), vec2<i32>(1i, firstTrailingBit(1i)), !(!func_3())), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(min(global1.b.x, global2.b.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b.x, 238f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(250f, global1.b.x)), _wgslsmith_f_op_vec2_f32(exp2(global1.b))))));
    global3 = func_3();
    let var_1 = abs(-2147483647i);
    global3 = !vec2<bool>(!(_wgslsmith_f_op_f32(-global1.b.x) <= _wgslsmith_f_op_f32(-1155f * -1000f)), global3.x);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)))) - _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(round(229f)));
    return Struct_1((vec2<i32>(-1i) * -abs(vec2<i32>(global1.a.x, -5697i))) | firstLeadingBit(var_0.a & _wgslsmith_div_vec2_i32(var_0.a, u_input.d.yz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1601f, 200f), vec2<f32>(697f, 1303f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.x, -1507f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -907f), 301f), !any(vec4<bool>(true, false, global3.x, false))))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_2.b)) + _wgslsmith_f_op_vec2_f32(-global2.b)));
    global1 = arg_2;
    let var_1 = firstLeadingBit(~_wgslsmith_div_vec2_i32(vec2<i32>(global2.a.x, 27764i) | vec2<i32>(31661i, global0.x), -vec2<i32>(22360i, -16210i)));
    var_0 = func_2();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, var_0.b.x, arg_2.b.x, arg_2.b.x), vec4<f32>(414f, -431f, -486f, 320f), false)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(128f, arg_2.b.x, 805f, arg_2.b.x), vec4<f32>(-1000f, 1196f, arg_0, arg_2.b.x))), !global3.x))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-420f, _wgslsmith_f_op_f32(min(var_0.b.x, -641f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - -1000f)), -1010f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0, 947f)))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(1833f - _wgslsmith_f_op_f32(trunc(1209f))), 576f, global1.b.x)));
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(global2.a.x, -12789i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1.b.x, 35444i, Struct_1(global1.a, global1.b))))), -1000f));
    var var_1 = u_input.b.x ^ 703u;
    global3 = vec2<bool>(true, true);
    global2 = Struct_1(vec2<i32>(global0.x, global0.x) ^ (abs(global2.a) & (u_input.e ^ firstTrailingBit(u_input.d.wx))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(global2.b.x, global1.b.x)) - var_0.b) + vec2<f32>(1000f, _wgslsmith_f_op_f32(-var_0.b.x))));
    var var_2 = u_input.d.zxw;
    var var_3 = func_2();
    let var_4 = vec3<bool>(global3.x, (!global3.x & (any(vec2<bool>(true, false)) && !global3.x)) | false, false);
    var var_5 = vec4<i32>(10609i, func_2().a.x, ~2147483647i, -var_3.a.x);
    var var_6 = -173f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, global1.b.x);
}

