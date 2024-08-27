struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: bool;

var<private> global2: array<Struct_4, 2>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = arg_0.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(-arg_0.x))) * _wgslsmith_f_op_f32(abs(279f)));
    global1 = any(!select(vec2<bool>(u_input.d.x > 49377u, true), vec2<bool>(true, true), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true))));
    var var_1 = !vec4<bool>(true, select(24709u < ~u_input.d.x, !(u_input.b == u_input.c.x), all(vec4<bool>(true, true, true, true))), any(vec2<bool>(true, true)), any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true)));
    var var_2 = vec2<bool>(!(!all(var_1.zw)), var_1.x);
    return _wgslsmith_div_f32(-512f, arg_0.x);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> f32 {
    let var_0 = Struct_3(true, Struct_2(arg_2.b, arg_2.c, arg_2.b), vec2<i32>(-18075i, firstTrailingBit(-arg_3) << (~11123u % 32u)));
    var var_1 = vec2<f32>(-587f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    global1 = all(!(!select(select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(false, false)), !vec2<bool>(var_0.a, false), any(vec2<bool>(var_0.a, true)))));
    let var_2 = var_0;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.a.a, arg_2.a.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_2.b.b.a)))))));
    return 586f;
}

fn func_1(arg_0: vec2<i32>) -> Struct_4 {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1118f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -306f) - _wgslsmith_f_op_f32(661f * 1830f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2421f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1026f, -1740f))));
    let var_0 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(1000f, -1256f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(223f)))));
    let var_1 = any(vec4<bool>(!var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(756f * -1111f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d.x, 598f, Struct_2(Struct_1(-732f), Struct_1(704f), Struct_1(-1293f)), u_input.a.x))), true, var_0));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1327f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-226f)))))));
    let var_3 = 1u;
    return global2[_wgslsmith_index_u32(~firstLeadingBit(94825u), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<i32>(abs(u_input.a.x), -max(-12879i, abs(u_input.c.x))));
    var var_1 = var_0.a.x;
    var var_2 = Struct_5(Struct_2(var_0.c, var_0.c, func_1(max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(0i, 31338i)), abs(u_input.c))).c), var_0.c);
    let var_3 = var_2.a;
    global0 = var_0.a.x;
    global0 = var_0.a.x;
    var_2 = Struct_5(var_2.a, func_1(_wgslsmith_div_vec2_i32(select(~vec2<i32>(2147483647i, 2147483647i), u_input.a, !vec2<bool>(var_0.a.x, true)), ~vec2<i32>(u_input.b, u_input.a.x))).c);
    var_1 = true;
    var_2 = Struct_5(var_2.a, var_2.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.d));
}

