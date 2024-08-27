struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 28910u;

var<private> global1: array<u32, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = abs(23473u & ~countOneBits(global1[_wgslsmith_index_u32(0u, 6u)] | 39014u));
    var var_0 = -1960f;
    let var_1 = global1[_wgslsmith_index_u32(1u, 6u)] | 4294967295u;
    var var_2 = Struct_3(Struct_2(-1214f));
    global0 = ~_wgslsmith_div_u32(reverseBits(~(~global1[_wgslsmith_index_u32(u_input.a.x, 6u)])), ~(~20201u));
    return var_2.a.a;
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(arg_3, arg_1));
    let var_1 = Struct_3(Struct_2(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(func_3(-1i)))));
    let var_2 = 9006u;
    let var_3 = arg_2;
    var var_4 = var_1.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-var_1.a.a)));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> f32 {
    let var_0 = firstLeadingBit(_wgslsmith_div_i32(-3412i, u_input.e.x));
    let var_1 = ~_wgslsmith_sub_u32(102914u, _wgslsmith_clamp_u32(~(~global1[_wgslsmith_index_u32(27659u, 6u)]), ~4294967295u, 0u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - arg_3.x));
    let var_3 = Struct_2(arg_1);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(floor(-600f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1422f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(0i, _wgslsmith_f_op_vec2_f32(-arg_3.zw), !arg_2, _wgslsmith_f_op_vec2_f32(-arg_3.yz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1913f)))))), arg_1, _wgslsmith_f_op_f32(exp2(var_2)));
    return _wgslsmith_f_op_f32(func_2(u_input.c, arg_3.yw, !arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.yy)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = vec2<bool>(true, false);
    let var_2 = vec2<f32>(1000f, _wgslsmith_f_op_f32(func_1(reverseBits(~u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-966f, 221f)), 1183f, u_input.e.x != u_input.c)) * _wgslsmith_f_op_f32(abs(2302f))), var_1.x, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-831f, _wgslsmith_f_op_f32(f32(-1f) * -2379f), -331f, 1f))))));
    var var_3 = Struct_2(var_2.x);
    let var_4 = Struct_2(var_2.x);
    var var_5 = vec2<i32>(-20875i, ~(~min(u_input.c, 0i)));
    var var_6 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-602f, _wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(sign(var_4.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2207f, 1000f, false)))));
    var_1 = !(!vec2<bool>(false, select(true, true, all(vec4<bool>(false, var_1.x, var_1.x, var_1.x)))));
    let var_7 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2)) * var_2) - _wgslsmith_f_op_vec2_f32(-var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.a * 856f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(515f, -1344f) - var_4.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(134f, -346f))), -251f), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_7.x, 175f)))));
}

