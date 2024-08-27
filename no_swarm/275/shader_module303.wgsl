struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(1u, 20564u, 4451u, 0u), vec4<u32>(1u, 11369u, 4294967295u, 0u), vec4<u32>(6671u, 0u, 1u, 1u), vec4<u32>(85441u, 0u, 6557u, 0u));

var<private> global1: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(4294967295u, 36549u, 76911u, 4294967295u), vec4<u32>(9716u, 36027u, 1u, 37861u), vec4<u32>(69492u, 4294967295u, 61163u, 0u), vec4<u32>(22775u, 60736u, 0u, 85947u), vec4<u32>(4294967295u, 42363u, 0u, 30867u), vec4<u32>(3319u, 619u, 0u, 23208u), vec4<u32>(1u, 8570u, 0u, 2399u), vec4<u32>(17731u, 4294967295u, 59450u, 0u), vec4<u32>(1u, 32349u, 70178u, 19667u), vec4<u32>(46900u, 13242u, 4294967295u, 1u), vec4<u32>(33520u, 0u, 1u, 4294967295u), vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(41105u, 45409u, 108111u, 0u), vec4<u32>(13378u, 0u, 1u, 44728u), vec4<u32>(4294967295u, 0u, 4329u, 0u), vec4<u32>(0u, 0u, 12429u, 1u), vec4<u32>(49943u, 0u, 4294967295u, 4294967295u), vec4<u32>(23043u, 509u, 63227u, 4294967295u), vec4<u32>(23093u, 2899u, 32176u, 47518u), vec4<u32>(98799u, 1u, 28958u, 28826u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(8576u, 0u, 1u, 10688u), vec4<u32>(38089u, 34810u, 43791u, 1u), vec4<u32>(85893u, 1u, 22843u, 1u), vec4<u32>(67717u, 0u, 3909u, 87624u));

var<private> global2: vec2<u32> = vec2<u32>(35540u, 4294967295u);

var<private> global3: array<i32, 30> = array<i32, 30>(-29039i, i32(-2147483648), i32(-2147483648), 1i, 1i, 2147483647i, 2147483647i, 0i, 2147483647i, 0i, 13222i, 1i, -8843i, 1i, -33947i, 1321i, -12741i, 18642i, -60777i, 1i, i32(-2147483648), 1i, 0i, 20247i, 1i, -12303i, 2147483647i, -9411i, 2147483647i, -35267i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global3 = array<i32, 30>();
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(2493f, -284f))) + 1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1062f), _wgslsmith_f_op_f32(round(-925f))))), vec2<f32>(1093f, -263f)));
    let var_1 = 1u;
    let var_2 = Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -299f, -682f)))))));
    let var_3 = abs(9843i);
    return !select(vec2<bool>(all(select(vec4<bool>(true, false, true, var_2.a.x), vec4<bool>(var_2.a.x, false, var_2.a.x, var_2.a.x), true)), true), vec2<bool>(true, true), true);
}

fn func_2() -> f32 {
    var var_0 = -1000f;
    global1 = array<vec4<u32>, 25>();
    let var_1 = any(vec3<bool>(any(func_3()), !func_3().x, false));
    global3 = array<i32, 30>();
    global2 = min(vec2<u32>(max(_wgslsmith_div_u32(global2.x, global2.x), abs(global2.x)), min(global2.x, select(global2.x, global2.x, false))), u_input.b.zy) ^ (select(_wgslsmith_mod_vec2_u32(min(vec2<u32>(0u, global2.x), vec2<u32>(0u, 89103u)), ~u_input.b.zx), abs(abs(vec2<u32>(0u, u_input.b.x))), true) | (vec2<u32>(27951u, 48163u) ^ u_input.b.yy));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-284f * -2061f))), 210f)))));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2()), arg_0.x, 371f, _wgslsmith_f_op_f32(-530f - _wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1330f, arg_0.x, arg_0.x)))))))));
    let var_2 = vec3<i32>(-reverseBits(u_input.a), ~firstLeadingBit(39948i), -26554i);
    let var_3 = select(select(select(!(!vec4<bool>(false, false, var_1.a.x, true)), vec4<bool>(true, true, true, true), !all(var_1.a)), select(!(!vec4<bool>(var_1.a.x, true, var_1.a.x, true)), !(!vec4<bool>(var_1.a.x, true, false, var_1.a.x)), !(!vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x))), !var_1.a.x), !(!select(select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), vec4<bool>(false, true, var_1.a.x, var_1.a.x), vec4<bool>(true, false, true, false)), select(vec4<bool>(var_1.a.x, true, true, false), vec4<bool>(var_1.a.x, false, var_1.a.x, true), var_1.a.x), select(var_1.a.x, var_1.a.x, false))), any(!(!vec3<bool>(var_1.a.x, true, true))));
    global3 = array<i32, 30>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-1312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1492f, -641f, 428f, -1096f), vec4<f32>(320f, 273f, 250f, -2585f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-819f, -465f, 284f, -1112f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1091f + -1179f) + 164f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f - 281f)))));
    var var_1 = firstTrailingBit(4441u);
    global1 = array<vec4<u32>, 25>();
    let var_2 = Struct_1(vec2<bool>(true || (countOneBits(-27270i) <= u_input.a), 4294967295u != abs(global2.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0, _wgslsmith_f_op_vec3_f32(ceil(var_0)))))));
    var var_3 = select(max(2788u, global2.x), u_input.b.x, var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~(~vec3<u32>(u_input.b.x, 4294967295u, 32687u))), global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~1u, 1u), firstLeadingBit(vec3<u32>(65480u, u_input.b.x, 25798u))), 47205u, false), 30u)]);
}

