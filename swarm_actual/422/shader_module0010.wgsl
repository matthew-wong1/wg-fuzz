struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec3<u32>(19421u, 62387u, 4294967295u)), vec4<f32>(1000f, -429f, 2640f, -113f));

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 1>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-global0.b);
    let var_1 = Struct_4(global0.a, !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), global1.c > u_input.b.x), true), Struct_3(Struct_2(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, 4035u, global0.a.a.x), global0.a.a ^ global0.a.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1642f, -2863f, 298f, -385f)), true)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -619f), _wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(step(-321f, global1.a)), _wgslsmith_f_op_f32(f32(-1f) * -601f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.zw + _wgslsmith_f_op_vec2_f32(-global0.b.ww))));
    var var_2 = var_1;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(abs(1395f))))), -193f, _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(round(var_1.c.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1913f));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(var_2.c.b, var_1.c.b)), vec4<f32>(-157f, -1000f, -1176f, var_1.d.x))), _wgslsmith_f_op_vec4_f32(-var_1.c.b))))) + _wgslsmith_f_op_vec4_f32(var_2.c.b - global0.b));
    return Struct_1(global0.b.x, 21628u, -(~1i));
}

fn func_3() -> u32 {
    let var_0 = false;
    var var_1 = ~u_input.a.yy;
    global2 = array<vec3<bool>, 1>();
    global1 = func_2();
    var var_2 = func_2();
    return 1u;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32) -> vec4<bool> {
    var var_0 = func_2();
    global3 = global0.a;
    var var_1 = vec4<u32>(~0u, global0.a.a.x, func_3(), ~global0.a.a.x);
    let var_2 = Struct_4(global0.a, select(!vec4<bool>(all(vec4<bool>(true, true, false, true)), true, 100f < arg_2, all(vec2<bool>(false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec4<bool>(true, false, true, true))), true), Struct_3(global0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -788f)), -1413f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-309f + var_0.a)), 840f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-268f, global1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2400f + 1214f), -452f)))));
    var var_3 = !any(global2[_wgslsmith_index_u32(var_0.b, 1u)]);
    return select(vec4<bool>(!((4294967295u ^ global1.b) == global0.a.a.x), all(!(!vec3<bool>(true, var_2.b.x, var_2.b.x))), true, (var_2.b.x || var_2.b.x) != true), !var_2.b, true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = ~global1.c;
    global1 = func_2();
    let var_1 = vec3<i32>(-5873i, ~min(1i, -_wgslsmith_add_i32(-1i, global1.c)), global1.c);
    let var_2 = arg_3.x;
    global2 = array<vec3<bool>, 1>();
    return global0.a;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global0 = Struct_3(global0.a, vec4<f32>(_wgslsmith_f_op_f32(1288f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.b.x, global0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1001f + 609f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1000f))))), _wgslsmith_f_op_f32(-global1.a), global1.a));
    return Struct_2(vec3<u32>(global1.b, 5188u, _wgslsmith_div_u32(func_2().b, global3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -234f);
    global3 = func_5(func_4(Struct_3(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.b, global0.b)) - _wgslsmith_f_op_vec4_f32(global0.b - global0.b))), Struct_2(global0.a.a), global0.a.a, func_1(abs(~5104u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a))), _wgslsmith_f_op_f32(select(-699f, -1000f, true)))));
    var var_2 = u_input.a.ywy;
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - 1000f) - -1173f))))));
    let x = u_input.a;
    s_output = StorageBuffer(586f);
}

