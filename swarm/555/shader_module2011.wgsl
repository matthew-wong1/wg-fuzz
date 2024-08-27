struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-184f, 936f);

var<private> global1: array<vec3<i32>, 23>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    global0 = arg_1.a;
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_1.a.x)), -1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(230f)))))));
    global1 = array<vec3<i32>, 23>();
    global1 = array<vec3<i32>, 23>();
    var var_1 = vec3<i32>(-2147483647i, -40861i, _wgslsmith_mult_i32(-1i, u_input.b.x));
    return var_0.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> vec4<bool> {
    global1 = array<vec3<i32>, 23>();
    let var_0 = all(!select(vec3<bool>(true, true, any(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    global1 = array<vec3<i32>, 23>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a - arg_0.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, 1376f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(903f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-699f)))), var_1.a.x)));
    return vec4<bool>(any(select(!(!vec4<bool>(true, true, false, var_0)), vec4<bool>(u_input.b.x > arg_1.x, var_0, !var_0, !var_0), true)), u_input.c >= abs(u_input.a.x), false || all(vec2<bool>(all(vec3<bool>(var_0, var_0, var_0)), var_0)), !(!var_0) && false);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-461f, arg_0)));
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-546f, _wgslsmith_f_op_f32(func_3(vec2<i32>(u_input.a.x, -2147483647i), Struct_1(vec2<f32>(-600f, arg_0))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, global0.x), vec2<f32>(global0.x, global0.x), vec2<bool>(false, true)))))), global1[_wgslsmith_index_u32(select(~_wgslsmith_add_u32(select(1u, 24635u, false), 6426u), 73129u, true), 23u)]);
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.b.yy, Struct_1(vec2<f32>(-1397f, -228f)))), global0.x)), _wgslsmith_f_op_f32(-global0.x)));
    global0 = var_1.a;
    global1 = array<vec3<i32>, 23>();
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    global1 = array<vec3<i32>, 23>();
    global1 = array<vec3<i32>, 23>();
    var var_1 = func_2(arg_0.a.x);
    let var_2 = Struct_1(vec2<f32>(-731f, arg_3.a.x));
    return arg_0;
}

fn func_6(arg_0: Struct_1) -> u32 {
    var var_0 = countOneBits(~countOneBits(vec3<i32>(-2147483647i, 1i, u_input.a.x)));
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = var_1.yx;
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -813f)), arg_0.a.x));
    global0 = var_3.a;
    return 1u;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = vec4<bool>(arg_1.x, true, true, arg_1.x);
    let var_1 = var_0.x;
    global1 = array<vec3<i32>, 23>();
    var var_2 = min(_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 55799u, 0u, arg_0.x), arg_0), ~(vec4<u32>(7878u, 4294967295u, arg_0.x, 82563u) << (vec4<u32>(38871u, arg_0.x, 11247u, 4294967295u) % vec4<u32>(32u)))) ^ arg_0, vec4<u32>(arg_0.x, ~3715u, 0u, func_6(func_5(Struct_1(vec2<f32>(global0.x, global0.x)), _wgslsmith_div_u32(arg_0.x, arg_0.x), func_2(global0.x), Struct_1(vec2<f32>(-895f, 618f))))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(func_1(vec4<u32>(40333u, 20695u, 17233u, 4294967295u), vec2<bool>(false, false)) | select(79751u, 0u, false), _wgslsmith_mult_u32(39092u, _wgslsmith_mod_u32(22788u, 13680u))), select(vec2<u32>(1u, 1u), firstTrailingBit(~vec2<u32>(1u, 1u)), select(true, any(vec4<bool>(true, true, true, false)), u_input.c < 1i)) & _wgslsmith_mult_vec2_u32(~(~vec2<u32>(4294967295u, 1u)), firstTrailingBit(abs(vec2<u32>(1u, 4294967295u)))));
    let var_1 = global0.x;
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, -103f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(358f, 1073f)))))));
    var var_4 = Struct_1(vec2<f32>(722f, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1609f, var_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(-1049f, -221f))))), min(~u_input.b.yyz, select(~u_input.b.xzy, vec3<i32>(min(u_input.c, 2147483647i), u_input.b.x, ~(-37586i)), var_3.x == -614f)), u_input.a.x, var_4.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.x, 1273f, 968f))) + vec3<f32>(163f, -408f, var_4.a.x)), vec3<f32>(-1346f, _wgslsmith_f_op_f32(exp2(global0.x)), 1057f)))));
}

