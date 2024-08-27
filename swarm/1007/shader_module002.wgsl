struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 1>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<f32>(-1000f, -1909f)), Struct_1(vec2<f32>(954f, -1167f)), Struct_1(vec2<f32>(165f, 923f)), Struct_1(vec2<f32>(-367f, 1151f)), Struct_1(vec2<f32>(2025f, 1608f)), Struct_1(vec2<f32>(1049f, -202f)), Struct_1(vec2<f32>(-691f, 535f)), Struct_1(vec2<f32>(-374f, 604f)), Struct_1(vec2<f32>(-2252f, -245f)), Struct_1(vec2<f32>(1006f, 303f)), Struct_1(vec2<f32>(376f, 1050f)));

var<private> global3: f32;

var<private> global4: Struct_1 = Struct_1(vec2<f32>(314f, 877f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mult_u32(53543u, ~u_input.c.x) ^ 4698u;
    global4 = Struct_1(global0.a);
    let var_1 = !arg_0.x;
    let var_2 = global2[_wgslsmith_index_u32(abs(var_0), 11u)];
    let var_3 = reverseBits(u_input.d.xxw);
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    var var_1 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, -2147483647i, 0i, u_input.a), max(vec4<i32>(1703i, 0i, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -11388i)), vec4<bool>(true, true, true, true)), vec4<i32>(-u_input.a, 1i & u_input.a, u_input.a, 0i)), -max(-u_input.a, _wgslsmith_sub_i32(u_input.a, -39340i)), -_wgslsmith_sub_i32(-1i, u_input.a >> (58569u % 32u)), u_input.a);
    let var_2 = global2[_wgslsmith_index_u32(reverseBits(31080u), 11u)];
    let var_3 = Struct_1(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)))), var_2.a.x, any(vec2<bool>(false, true))))));
    global4 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, -369f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.a, var_2.a)) - vec2<f32>(var_2.a.x, -659f))), _wgslsmith_f_op_vec2_f32(-arg_0.a)));
    return var_1.x;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    var var_0 = global4.a.x;
    let var_1 = vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1077f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), arg_2.x)) - 865f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(!(!vec4<bool>(true, arg_2.x, true, true)), vec3<f32>(global4.a.x, _wgslsmith_f_op_f32(floor(arg_0)), global4.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4.a.x, global4.a.x)))))), -1045f));
    global0 = Struct_1(global0.a);
    let var_2 = vec4<bool>(arg_2.x, ~(~select(u_input.c.x, u_input.b.x, false)) >= 42184u, true, true);
    let var_3 = u_input.a ^ (func_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) + global4.a))) << (4294967295u % 32u));
    return -234f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(732f, _wgslsmith_f_op_f32(min(global0.a.x, global4.a.x)), 637f, _wgslsmith_f_op_f32(select(global4.a.x, -1000f, true))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1115f, -1107f, _wgslsmith_f_op_f32(round(696f)), 501f) + vec4<f32>(-688f, _wgslsmith_f_op_f32(-186f * global4.a.x), global0.a.x, global4.a.x)))));
    global2 = array<Struct_1, 11>();
    var var_1 = select(!(!vec3<bool>(true, true, u_input.a >= 47669i)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), true);
    var var_2 = global2[_wgslsmith_index_u32(35496u, 11u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.x, -1122f))));
    let var_4 = 4294967295u;
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(~firstTrailingBit(u_input.a), 1i)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(949f, global2[_wgslsmith_index_u32(~4294967295u, 11u)], vec3<bool>(false, true, false))) * -122f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.x * var_3.a.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, global0.a.x, 1354f), _wgslsmith_f_op_vec3_f32(trunc(var_0.wyx)), vec3<bool>(true, true, true))))) + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global4.a.x)))), -2566f, -1053f)));
}

