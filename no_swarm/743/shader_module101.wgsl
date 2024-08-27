struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(71662i, false), Struct_1(28632i, false), Struct_1(-1i, false), Struct_1(7259i, true), Struct_1(i32(-2147483648), true), Struct_1(i32(-2147483648), true), Struct_1(2147483647i, false));

var<private> global1: array<vec4<i32>, 23>;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(23693i, global2.b);
    var var_1 = firstTrailingBit(u_input.b);
    let var_2 = ~(~(~(~vec2<u32>(u_input.a, 4294967295u))) & countOneBits(~vec2<u32>(69072u, u_input.a)));
    global1 = array<vec4<i32>, 23>();
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1527f)) * vec2<f32>(-661f, -760f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1119f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1202f)))))))));
    return -var_0.a;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<i32>) -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(~4294967295u, 7u)];
    var var_1 = u_input.a;
    var var_2 = true;
    global2 = global0[_wgslsmith_index_u32(u_input.a & _wgslsmith_mult_u32(~_wgslsmith_add_u32(45664u, u_input.a) >> (u_input.a % 32u), u_input.a), 7u)];
    let var_3 = select(!(!select(vec4<bool>(arg_1, arg_1, false, global2.b), select(vec4<bool>(global2.b, var_0.b, arg_1, global2.b), vec4<bool>(true, true, true, true), arg_1), arg_1)), vec4<bool>(~arg_2.x == _wgslsmith_div_i32(func_3(), _wgslsmith_div_i32(1i, 1i)), all(!(!vec4<bool>(false, true, global2.b, true))), false, false), vec4<bool>(all(vec3<bool>(true, arg_1, global2.b)), !any(vec2<bool>(false, global2.b)), arg_1, false));
    return !(!(!vec2<bool>(all(vec4<bool>(arg_1, var_3.x, false, false)), false != global2.b)));
}

fn func_1(arg_0: f32, arg_1: bool) -> vec2<bool> {
    global1 = array<vec4<i32>, 23>();
    var var_0 = ~u_input.d;
    var var_1 = !(!(!vec2<bool>(arg_1, true)));
    let var_2 = ~(-22319i);
    var var_3 = Struct_1(var_0.x, false);
    return select(select(vec2<bool>(true, _wgslsmith_f_op_f32(floor(arg_0)) != _wgslsmith_div_f32(262f, arg_0)), vec2<bool>(false, !(!var_3.b)), !((-1i >> (u_input.a % 32u)) >= -2147483647i)), select(!select(func_2(-165f, arg_1, u_input.b), func_2(-1183f, false, u_input.b), vec2<bool>(var_1.x, false)), vec2<bool>(var_1.x, !all(vec3<bool>(arg_1, true, arg_1))), vec2<bool>(true, var_1.x)), !(!vec2<bool>(func_2(arg_0, true, vec3<i32>(-40647i, global2.a, -5191i)).x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 23>();
    let var_0 = Struct_1(global2.a, !any(select(func_1(1215f, global2.b), select(vec2<bool>(global2.b, global2.b), vec2<bool>(global2.b, true), true), !vec2<bool>(global2.b, false))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<u32>(18710u, 1u), -19977i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -164f), _wgslsmith_f_op_f32(-1052f - -513f), -1000f)))));
}

