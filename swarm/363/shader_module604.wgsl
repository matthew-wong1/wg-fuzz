struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(-1i, 0i, 0i, 2147483647i, 0i, 1i, -615i, 42767i, -76503i, -13575i, 1i, -30910i, -1i, i32(-2147483648), -30171i, 1i, -36945i, -23067i, 2147483647i, -130i, -41719i, -13792i, 20017i, 2147483647i, 1i, 0i, 20429i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = vec3<f32>(505f, arg_2.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b))))));
    var var_1 = false;
    var var_2 = arg_1;
    var_1 = false;
    global0 = array<i32, 27>();
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(~u_input.b.x ^ -2003i, 32338i), select(u_input.b.xx, u_input.b.xw, vec2<bool>(true, true)) | vec2<i32>(i32(-1i) * -2147483647i, -1i));
    let var_1 = arg_1;
    let var_2 = Struct_1(func_1(func_1(func_1(func_1(Struct_1(arg_1.a, arg_1.b), arg_1, Struct_1(var_1.a, var_1.b), vec4<u32>(0u, 36992u, 46703u, var_1.a.x)), func_1(Struct_1(var_1.a, 1016f), Struct_1(arg_1.a, 2719f), Struct_1(vec3<u32>(var_1.a.x, arg_1.a.x, var_1.a.x), arg_1.b), vec4<u32>(arg_1.a.x, arg_1.a.x, 0u, var_1.a.x)), arg_1, vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, 0u) << (vec4<u32>(40242u, 35454u, 4294967295u, 12792u) % vec4<u32>(32u))), Struct_1(vec3<u32>(4294967295u, var_1.a.x, arg_1.a.x) & arg_1.a, _wgslsmith_f_op_f32(floor(-1155f))), Struct_1(vec3<u32>(1u, 1u, arg_1.a.x) << (vec3<u32>(arg_1.a.x, 1u, var_1.a.x) % vec3<u32>(32u)), _wgslsmith_div_f32(arg_1.b, -477f)), vec4<u32>(var_1.a.x, _wgslsmith_add_u32(var_1.a.x, 72526u), _wgslsmith_mult_u32(var_1.a.x, 63041u), arg_1.a.x)), var_1, arg_1, ~(countOneBits(vec4<u32>(53484u, 0u, 4294967295u, var_1.a.x)) & (vec4<u32>(9128u, var_1.a.x, var_1.a.x, 0u) >> (vec4<u32>(arg_1.a.x, 4294967295u, arg_1.a.x, arg_1.a.x) % vec4<u32>(32u))))).a, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-328f, 2010f)), _wgslsmith_f_op_f32(-601f - var_1.b)))));
    global0 = array<i32, 27>();
    var_0 = firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.b.zw, ~u_input.b.ww));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b, 1614f), 886f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_2.b, -376f, true))))) * 512f), _wgslsmith_f_op_f32(-var_1.b), any(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), true))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a, arg_0))))), arg_0.b);
    let var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true)), !any(vec4<bool>(false, true, false, false)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), ~20505u != _wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x)), vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))), false, !any(vec3<bool>(true, true, false)))), select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, select(true, false, true), all(vec3<bool>(true, true, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), true)), !vec4<bool>(true, 1u != arg_0.a.x, any(vec2<bool>(false, false)), false), !any(vec2<bool>(true, true)) | any(vec4<bool>(true, true, true, true))), vec4<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1390f, 1463f), _wgslsmith_f_op_f32(floor(arg_0.b)), arg_0.a.x <= arg_0.a.x)) > 250f, any(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), true))));
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = vec3<bool>((_wgslsmith_f_op_f32(-191f - _wgslsmith_f_op_f32(func_3(-2147483647i, arg_0))) > 163f) | true, any(vec4<bool>(true, !all(vec4<bool>(true, false, false, true)), true, true)), !(!(_wgslsmith_f_op_f32(arg_0.b + 490f) > arg_0.b)));
    global0 = array<i32, 27>();
    let var_1 = var_0.yx;
    let var_2 = abs(vec3<i32>(-2147483647i, u_input.a, -1i));
    let var_3 = arg_0;
    return -1380f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(~0u, 75294u, ~_wgslsmith_sub_u32(4294967295u, 37459u)) << (vec3<u32>(1u, 43839u, ~_wgslsmith_clamp_u32(83987u, 1u, 0u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(func_1(Struct_1(vec3<u32>(4294967295u, 2277u, 19617u), -1107f), Struct_1(vec3<u32>(15920u, 21280u, 5292u), 125f), Struct_1(vec3<u32>(0u, 1u, 1u), 1000f), vec4<u32>(36046u, 12709u, 24082u, 0u)))))));
    let var_1 = Struct_1(~var_0.a, var_0.b);
    var_0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-51805i | _wgslsmith_sub_i32(77685i, u_input.a), var_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b)), 1000f) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1122f, 499f) - vec2<f32>(var_1.b, var_1.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1467f, 1000f)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -332f, -2198f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.b, -220f))) + vec2<f32>(472f, -251f)))));
}

