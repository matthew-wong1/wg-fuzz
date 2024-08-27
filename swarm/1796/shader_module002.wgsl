struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: i32;

var<private> global2: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(-200f, vec2<bool>(true, false), vec2<bool>(false, false), Struct_1(-1i, true, vec3<bool>(false, false, false))), Struct_3(667f, vec2<bool>(false, false), vec2<bool>(false, false), Struct_1(8427i, true, vec3<bool>(true, true, true))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<i32>) -> bool {
    global0 = -(~arg_3.x);
    var var_0 = u_input.d;
    var var_1 = vec2<f32>(-1910f, _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1355f * 179f), arg_1.a))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(var_1.x * arg_2.a), arg_2.b, vec2<bool>(arg_2.d.c.x, true), Struct_1(24940i, !arg_2.c.x, !select(vec3<bool>(true, true, true), arg_1.d.c, 28482u < u_input.d)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1141f) * vec2<f32>(-1363f, arg_2.a))))));
    return true;
}

fn func_2() -> vec2<bool> {
    let var_0 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(any(vec2<bool>(true, false)), true, true, func_3(vec4<i32>(u_input.a, u_input.b, 1i, -1i), Struct_3(-1370f, vec2<bool>(true, false), vec2<bool>(true, false), Struct_1(-20659i, true, vec3<bool>(false, false, true))), Struct_3(266f, vec2<bool>(true, true), vec2<bool>(false, false), Struct_1(-1i, false, vec3<bool>(false, false, false))), vec4<i32>(u_input.b, -19678i, -1i, u_input.a))), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(all(vec4<bool>(false, false, false, true)), any(vec3<bool>(false, true, false)), u_input.c >= 4294967295u, true)), vec4<bool>(countOneBits(u_input.b) == _wgslsmith_sub_i32(u_input.a, u_input.a), false, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), true)), !select(vec4<bool>(any(vec4<bool>(false, false, true, false)), true, func_3(vec4<i32>(u_input.b, 0i, u_input.a, 59414i), global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(4883u, 2u)], vec4<i32>(-90092i, u_input.a, 83637i, u_input.a)), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(true, true)), true, u_input.b < 1i, true)), true);
    global0 = u_input.b;
    global1 = u_input.b;
    global1 = 2147483647i;
    let var_1 = Struct_1(~firstTrailingBit(u_input.a), true, var_0.yzw);
    return vec2<bool>(true, var_0.x);
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = !select(!select(vec2<bool>(true, true), func_2(), all(vec3<bool>(false, false, true))), vec2<bool>(4294967295u != u_input.c, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true))), any(!func_2()));
    global2 = array<Struct_3, 2>();
    var var_1 = var_0.x & false;
    global2 = array<Struct_3, 2>();
    global1 = _wgslsmith_sub_i32(-11978i, u_input.b);
    return _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(step(arg_0.x, 709f)), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~select(countOneBits(-26020i), max(u_input.b, u_input.b), (_wgslsmith_f_op_f32(func_1(vec2<f32>(-578f, 725f))) < 1000f) || true);
    let var_0 = u_input.a;
    var var_1 = abs(abs(var_0));
    var_1 = firstLeadingBit(-9135i);
    let var_2 = 90810u;
    var var_3 = all(vec4<bool>(false, true, true, func_2().x || true)) || false;
    let x = u_input.a;
    s_output = StorageBuffer(~(-9462i));
}

