struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<i32>(33905i, -1i, -25425i, -1i)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -15178i)), Struct_1(vec4<i32>(-72376i, 2147483647i, -28833i, 1i)), Struct_1(vec4<i32>(0i, -47192i, 2147483647i, 0i)), Struct_1(vec4<i32>(-2440i, -1i, i32(-2147483648), 9063i)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -1235i, i32(-2147483648))), Struct_1(vec4<i32>(63447i, 2147483647i, 0i, 9844i)), Struct_1(vec4<i32>(i32(-2147483648), 7851i, 0i, -1i)), Struct_1(vec4<i32>(-26006i, 0i, 49268i, i32(-2147483648))), Struct_1(vec4<i32>(1i, 2147483647i, 5529i, -59100i)), Struct_1(vec4<i32>(1i, -38878i, 2147483647i, 2147483647i)), Struct_1(vec4<i32>(1i, 0i, 0i, 41190i)), Struct_1(vec4<i32>(0i, 2147483647i, -1i, 1i)), Struct_1(vec4<i32>(10662i, -2974i, 1079i, 1i)), Struct_1(vec4<i32>(-33923i, 0i, i32(-2147483648), 3314i)), Struct_1(vec4<i32>(-1i, -13786i, -60263i, 1i)), Struct_1(vec4<i32>(1i, 10146i, 4078i, 22119i)), Struct_1(vec4<i32>(-1i, -1i, 1i, -1i)), Struct_1(vec4<i32>(-1i, 1i, -8967i, i32(-2147483648))), Struct_1(vec4<i32>(-5963i, 2147483647i, 0i, 0i)), Struct_1(vec4<i32>(i32(-2147483648), 13221i, 0i, -1i)), Struct_1(vec4<i32>(-2323i, 58413i, 2147483647i, 1i)), Struct_1(vec4<i32>(1i, 2147483647i, 1i, 21844i)), Struct_1(vec4<i32>(30170i, 0i, -11390i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, 31887i, 8437i, 12955i)), Struct_1(vec4<i32>(0i, 1i, 16942i, -1i)), Struct_1(vec4<i32>(-7098i, -11371i, 14587i, i32(-2147483648))));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(abs(1f));
    var var_1 = true;
    var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(-vec4<i32>(11543i, 1i, i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-1i, 1i, u_input.d.x, u_input.b.x)))));
    let var_3 = true;
    return vec3<bool>(!all(vec2<bool>(true, true)), true, !(var_2.a.a.x >= _wgslsmith_dot_vec2_i32(-var_2.a.a.wy, vec2<i32>(u_input.d.x, 1i))));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> vec3<bool> {
    let var_0 = Struct_3(Struct_2(Struct_1(arg_0)), Struct_1(u_input.d));
    var var_1 = Struct_3(var_0.a, var_0.a.a);
    var var_2 = true;
    let var_3 = Struct_3(Struct_2(var_1.a.a), global0[_wgslsmith_index_u32(u_input.e.x, 27u)]);
    let var_4 = var_0.a.a;
    return select(vec3<bool>(true, true, !(14339u == _wgslsmith_div_u32(u_input.e.x, u_input.e.x))), vec3<bool>(true, true, true), select(func_3(select(true, true, true)), vec3<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(false, true)) == func_3(true).x, true), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)));
}

fn func_1() -> f32 {
    let var_0 = u_input.b.xxw;
    var var_1 = vec3<bool>(true, u_input.c == (~(~1068u) & u_input.e.x), true);
    global0 = array<Struct_1, 27>();
    var_1 = !(!vec3<bool>(_wgslsmith_mod_u32(0u, 1u) < u_input.e.x, true, any(!vec3<bool>(false, var_1.x, false))));
    var_1 = !func_2(~(min(vec4<i32>(0i, -1i, u_input.b.x, -2147483647i), u_input.d) << (vec4<u32>(48552u, 39014u, u_input.c, 26274u) % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(-u_input.a.xxw, var_0));
    return -1106f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    let var_0 = vec3<bool>(!all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), firstTrailingBit(4294967295u) >= ~u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1769f)), -254f)) < -768f);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(f32(-1f) * -830f))))), -1000f, _wgslsmith_f_op_f32(816f + _wgslsmith_f_op_f32(trunc(-1113f))));
    var var_2 = ~(u_input.d.xw << (~(~abs(u_input.e.zy)) % vec2<u32>(32u)));
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -264f, var_1.x, 3289f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-762f, var_1.x, var_1.x, -1311f), vec4<f32>(-916f, 238f, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, 281f, var_1.x)), all(vec3<bool>(false, var_0.x, var_0.x))))))), u_input.c | abs(u_input.c), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -1277f))) - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(floor(-1442f))));
}

