struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

var<private> global1: array<vec3<u32>, 8>;

var<private> global2: f32 = -884f;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<u32>(4294967295u, 3802u, 48633u), false), 0i, false, vec4<f32>(473f, 407f, -127f, -2218f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> i32 {
    return 2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    global3 = Struct_2(Struct_1(!(!arg_0.a), firstLeadingBit(vec3<u32>(~1u, arg_0.b.x, ~global3.a.b.x)), !(_wgslsmith_f_op_f32(ceil(115f)) == _wgslsmith_f_op_f32(ceil(arg_1.a.x)))), func_3(Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_1.a), _wgslsmith_f_op_vec3_f32(-arg_1.a))), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-499f * -409f))) - _wgslsmith_f_op_f32(466f + arg_1.a.x)), Struct_2(Struct_1(!vec4<bool>(true, arg_0.c, global3.a.a.x, arg_0.c), ~vec3<u32>(u_input.a.x, u_input.c, 0u), all(arg_0.a)), ~2147483647i | -global3.b, true, _wgslsmith_f_op_vec4_f32(-global3.d))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global3.d, vec4<f32>(1133f, -1205f, arg_1.a.x, 1566f)) - _wgslsmith_f_op_vec4_f32(step(global3.d, global3.d))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global3.d), global3.d)))));
    let var_0 = Struct_1(!vec4<bool>(false, false != !arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<u32>(arg_0.b.x, firstLeadingBit(global3.a.b.x), arg_0.b.x), arg_1.b.x);
    var var_1 = Struct_2(global3.a, -2147483647i, all(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global3.a.b.xx, arg_0.b.yy), vec2<u32>(4294967295u, var_0.b.x)), 25u)]), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global3.d.x)))), -2096f), arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -360f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(-arg_1.a.x))));
    let var_2 = ~(~(~4294967295u));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x + global3.d.x))))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), -229f));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    global0 = array<vec3<bool>, 25>();
    global0 = array<vec3<bool>, 25>();
    global0 = array<vec3<bool>, 25>();
    let var_0 = true;
    var var_1 = _wgslsmith_div_vec2_f32(global3.d.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(global3.a.a, vec3<u32>(u_input.b.x, 43737u, global3.a.b.x), false), Struct_3(vec3<f32>(703f, -1000f, -1365f), vec3<bool>(false, global3.c, false)))))) * global3.d.wx));
    return StorageBuffer(0u, vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global3.b, 2147483647i, global3.b, 11109i), vec4<i32>(0i, -2147483647i, global3.b, 17614i)) >> (94101u % 32u), global3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * global3.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global3.a.a.zxy, Struct_1(global3.a.a, vec3<u32>(global3.a.b.x, global3.a.b.x, u_input.a.x), any(global3.a.a)), global3.a);
}

