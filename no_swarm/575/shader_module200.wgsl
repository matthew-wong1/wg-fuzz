struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global1: vec3<bool>;

var<private> global2: vec2<f32> = vec2<f32>(580f, 969f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    var var_0 = select(select(vec2<bool>(any(vec4<bool>(global1.x, true, global1.x, false)), true), global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], all(vec4<bool>(global2.x != global2.x, true, all(vec3<bool>(true, true, global1.x)), true))), select(global0[_wgslsmith_index_u32(~abs(~0u), 27u)], select(vec2<bool>(false, true), vec2<bool>(select(true, global1.x, false), true), any(!vec4<bool>(global1.x, global1.x, true, global1.x))), global1.x), !any(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, global1.x), true)));
    global1 = vec3<bool>(true, !((var_0.x && true) || true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1269f, arg_0.b))) <= arg_0.c.x);
    global0 = array<vec2<bool>, 27>();
    let var_1 = arg_0;
    let var_2 = select(select(select(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, true), true), vec3<bool>(false, any(vec4<bool>(false, var_0.x, global1.x, true)), global1.x), true), vec3<bool>(false, all(select(vec3<bool>(false, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, global1.x, false))), var_1.c.x < var_1.c.x), true), !vec3<bool>(all(select(vec4<bool>(false, true, global1.x, true), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, true, true, true))), true, select(true, var_0.x, all(vec3<bool>(false, true, global1.x)))), !(_wgslsmith_f_op_f32(sign(788f)) <= arg_0.b) && global1.x);
    return var_1.b;
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-global2.x);
    global0 = array<vec2<bool>, 27>();
    return select(arg_0.a, vec3<bool>(true, global1.x && (arg_0.a.x == all(vec4<bool>(true, false, global1.x, global1.x))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(1u, 70355u, u_input.a.x, 10613u), 875f, vec2<f32>(global2.x, var_0)), _wgslsmith_mult_vec3_u32(u_input.a.yzw, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-296f))));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> vec4<bool> {
    global0 = array<vec2<bool>, 27>();
    var var_0 = Struct_2(!func_2(Struct_2(!vec3<bool>(global1.x, true, false))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1090f)) * _wgslsmith_f_op_f32(global2.x + -1124f)) + _wgslsmith_div_f32(605f, -1072f)), global2.x, _wgslsmith_f_op_f32(abs(global2.x)));
    var var_2 = arg_1.x;
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, var_1.x));
    return !vec4<bool>(true, false, true == global1.x, any(!vec3<bool>(false, var_0.a.x, var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(countOneBits(1i), _wgslsmith_add_vec3_i32(-(~(~vec3<i32>(-27603i, 1i, -39503i))), firstLeadingBit(_wgslsmith_add_vec3_i32(~vec3<i32>(1i, 941i, 0i), firstLeadingBit(vec3<i32>(61735i, -1i, -9491i))))));
    let var_1 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(900u, ~1u, u_input.a.x, u_input.a.x), u_input.a));
    global0 = array<vec2<bool>, 27>();
    var var_2 = select(var_0, vec4<bool>(false, false, _wgslsmith_div_f32(323f, _wgslsmith_f_op_f32(max(-435f, global2.x))) > global2.x, any(select(vec2<bool>(global1.x, var_0.x), var_0.yy, vec2<bool>(false, true)))), select(vec4<bool>(var_0.x, var_0.x, true, _wgslsmith_add_u32(var_1.x, 4294967295u) >= var_1.x), select(vec4<bool>(true, true, global1.x, true), vec4<bool>(true, true, true, true), !var_0), var_0));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(func_3(Struct_1(~vec4<u32>(52844u, 20098u, 0u, 4294967295u), -871f, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-805f, global2.x), vec2<f32>(541f, -622f)))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(var_1.xxy, vec3<u32>(u_input.a.x, var_1.x, var_1.x)), ~vec3<u32>(var_1.x, var_1.x, 4294967295u))))) * -231f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1113f, _wgslsmith_f_op_f32(round(-870f)), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) * _wgslsmith_f_op_f32(f32(-1f) * -353f))), abs(vec2<i32>(1i, 1i)), vec2<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_1.x), -2511f, vec2<f32>(global2.x, -129f)), ~vec3<u32>(u_input.a.x, u_input.a.x, var_1.x))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global2.x) - vec2<f32>(global2.x, global2.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-164f, 1510f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1453f, global2.x), vec2<f32>(107f, global2.x)), vec2<f32>(global2.x, global2.x), true))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(global2.x + 606f)))))));
}

