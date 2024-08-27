struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

var<private> global2: vec2<bool>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> i32 {
    let var_0 = 4294967295u;
    global1 = Struct_1(!global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(-global1.b)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, global1.b) - _wgslsmith_f_op_f32(global1.b - -1058f)) * -1000f)));
    let var_1 = vec3<u32>(67764u, 0u, u_input.b.x);
    var var_2 = true;
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, abs(var_1.x)), ~(~countOneBits(vec3<u32>(34815u, 23330u, 19930u)) ^ var_1));
    return -31759i;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: vec2<bool>) -> vec4<bool> {
    global2 = !(!vec2<bool>(true, global1.a.x));
    let var_0 = 1052i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.x)) + global1.b) + _wgslsmith_f_op_f32(-902f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))) != arg_0.b;
    let var_2 = u_input.a;
    let var_3 = vec3<i32>(84i, -1i, var_0);
    return vec4<bool>(var_1, ~1i < ~u_input.d, global1.a.x | !(!all(arg_0.a)), var_1);
}

fn func_3(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = Struct_1(vec4<bool>(arg_0.a.x, true, global1.a.x, global1.a.x), -157f);
    global0 = false;
    let var_1 = arg_0;
    let var_2 = !((-1912f < global1.b) && any(var_0.a.xw));
    global0 = all(func_2(Struct_1(select(!vec4<bool>(true, global2.x, global2.x, var_0.a.x), global1.a, global1.a), 1503f), var_0.b, vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(398f - var_1.b)), global1.b), global1.a.zx).wy);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, arg_0.b) - vec2<f32>(-1482f, 1000f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b, arg_0.b), vec2<f32>(1238f, 990f))))))), u_input.d, ~21113u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(true, any(!(!global1.a.wxy))), global1.a.zz, global1.a.x & (-func_1(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.d), u_input.d) >= countOneBits(u_input.d)));
    var var_1 = u_input.a;
    global0 = all(!vec3<bool>(true, global2.x, var_0.x));
    let var_2 = 1u;
    let var_3 = false;
    global2 = !select(select(global1.a.yw, global1.a.ww, !global1.a.wz), !vec2<bool>(global1.a.x, true), !vec2<bool>(true, var_3));
    var var_4 = ~min(~vec4<u32>(62694u, 1u, 1u, 5978u), min(select(vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.a) & vec4<u32>(23880u, 19800u, 1u, var_2), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a, 16169u, u_input.b.x), vec4<u32>(u_input.a, 1u, var_2, u_input.a)), true), vec4<u32>(var_2, u_input.a, 43048u, var_2)));
    let x = u_input.a;
    s_output = func_3(Struct_1(select(select(!vec4<bool>(var_3, false, var_0.x, var_3), func_2(Struct_1(vec4<bool>(global2.x, var_3, true, true), -1000f), global1.b, vec3<f32>(1000f, 1000f, global1.b), global1.a.yw), vec4<bool>(false, false, var_0.x, global1.a.x)), func_2(Struct_1(vec4<bool>(global2.x, true, var_3, true), global1.b), 2007f, vec3<f32>(global1.b, 157f, global1.b), global1.a.wy), vec4<bool>(true, var_0.x, false, true)), _wgslsmith_f_op_f32(exp2(global1.b))));
}

