struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_1, 4>;

var<private> global3: vec3<i32> = vec3<i32>(i32(-2147483648), -1i, 22160i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = !arg_2.d.x;
    var_0 = all(select(vec4<bool>(!arg_2.b, true, arg_0 >= 0u, any(vec3<bool>(false, arg_1.d.x, arg_2.b))), select(!vec4<bool>(arg_2.d.x, arg_2.b, true, true), select(vec4<bool>(true, true, arg_2.d.x, arg_1.b), vec4<bool>(false, true, arg_2.d.x, arg_1.d.x), vec4<bool>(arg_2.b, arg_1.d.x, true, true)), false), arg_1.d.x)) == !all(!vec4<bool>(false, true, arg_1.d.x, false));
    global0 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    var var_1 = vec2<u32>(firstLeadingBit(~arg_0), ~12824u);
    return !(!vec2<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(arg_2.d.x, true, arg_1.b), vec3<bool>(arg_1.d.x, false, arg_1.d.x))), !arg_1.d.x));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-136f))), 1065f) == _wgslsmith_f_op_f32(-306f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(649f, 276f), -2060f)) - _wgslsmith_f_op_f32(trunc(571f))));
    let var_1 = global3.x < -1i;
    let var_2 = global0[_wgslsmith_index_u32(abs(4294967295u), 4u)];
    global1 = ~11647u;
    global3 = vec3<i32>(global3.x, -1i, _wgslsmith_add_i32(~global3.x >> (~firstLeadingBit(3040u) % 32u), firstTrailingBit(select(abs(1913i), global3.x, var_1))));
    return arg_0;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1021f, 261f), vec2<f32>(1353f, -1424f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 686f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1701f, -535f))), select(vec2<bool>(true, false), func_2(1u, Struct_1(vec4<f32>(281f, -2195f, 802f, -1469f), false, vec2<f32>(-247f, 1258f), vec2<bool>(false, true)), global0[_wgslsmith_index_u32(u_input.b.x, 4u)], vec3<i32>(global3.x, 1i, global3.x)), func_3(false, 0i, 1u)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(145f, 1196f)) - vec2<f32>(590f, 348f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-228f, 1000f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(193f, -1000f)));
    global0 = array<Struct_1, 4>();
    let var_2 = countOneBits(vec2<i32>(global3.x, 22622i));
    let var_3 = ~(~4294967295u >> (u_input.a.x % 32u));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 4>();
    global3 = vec3<i32>(-1i) * -(~(select(vec3<i32>(global3.x, 29505i, global3.x), vec3<i32>(global3.x, -7258i, -1i), false) >> (vec3<u32>(u_input.c.x, u_input.c.x, 0u) % vec3<u32>(32u))));
    global2 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.c.x, 4u)];
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x + -1273f), _wgslsmith_f_op_f32(-var_0.c.x)), var_0.a.x), vec2<f32>(1f, var_0.c.x), all(select(var_0.d, select(vec2<bool>(true, true), vec2<bool>(var_0.b, var_0.b), true), vec2<bool>(var_0.b, true))))), var_0.d);
    global2 = array<Struct_1, 4>();
    global2 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(13453u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(var_1.c.x * var_1.a.x)))), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(func_1()))), min(countOneBits(global3.x), -13208i));
}

