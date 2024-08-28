struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(836f, 390f, 816f), vec4<bool>(false, true, true, false), vec4<i32>(2147483647i, 0i, 16590i, -1i), -1625f);

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<i32>(2147483647i, 28368i), vec3<f32>(1000f, -1000f, -102f), vec4<bool>(false, false, true, false), vec4<i32>(30417i, 27698i, 1i, 34738i), 2392f), Struct_1(vec2<i32>(70786i, i32(-2147483648)), vec3<f32>(1442f, -1350f, -607f), vec4<bool>(true, true, false, false), vec4<i32>(37731i, 2147483647i, 16421i, i32(-2147483648)), 461f), Struct_1(vec2<i32>(-1i, 979i), vec3<f32>(1273f, 349f, 604f), vec4<bool>(true, false, false, true), vec4<i32>(2147483647i, -32324i, -30135i, -89481i), 1000f), Struct_1(vec2<i32>(6972i, 31501i), vec3<f32>(-2747f, -1370f, 1303f), vec4<bool>(true, false, false, true), vec4<i32>(35109i, -1i, 1i, 2147483647i), 1763f), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<f32>(-143f, 1000f, -258f), vec4<bool>(true, true, true, true), vec4<i32>(-1i, 2147483647i, 32359i, -18416i), 897f), Struct_1(vec2<i32>(-20146i, 1i), vec3<f32>(1043f, -579f, -176f), vec4<bool>(false, false, true, false), vec4<i32>(-1i, -6759i, i32(-2147483648), 2147483647i), -1153f), Struct_1(vec2<i32>(-2078i, -30771i), vec3<f32>(2066f, -708f, 1000f), vec4<bool>(false, true, true, false), vec4<i32>(22208i, 0i, 28070i, 1i), 1316f), Struct_1(vec2<i32>(39085i, 19810i), vec3<f32>(-1899f, 518f, 732f), vec4<bool>(false, false, false, false), vec4<i32>(-14156i, -1i, 37224i, -2635i), -1751f), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec3<f32>(751f, -546f, 184f), vec4<bool>(true, false, false, true), vec4<i32>(54051i, -27476i, 1i, 47052i), -726f), Struct_1(vec2<i32>(-1i, 1i), vec3<f32>(-1333f, -527f, -1000f), vec4<bool>(false, false, false, true), vec4<i32>(17991i, 0i, -16467i, 2147483647i), 1286f), Struct_1(vec2<i32>(i32(-2147483648), 76206i), vec3<f32>(939f, 1761f, 1815f), vec4<bool>(false, true, false, false), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i), 554f), Struct_1(vec2<i32>(2147483647i, -1i), vec3<f32>(-1206f, 141f, 445f), vec4<bool>(false, false, false, false), vec4<i32>(-862i, -13989i, -34858i, 0i), -1254f), Struct_1(vec2<i32>(-27323i, 17489i), vec3<f32>(122f, 2754f, 1333f), vec4<bool>(false, true, false, false), vec4<i32>(-41348i, -24113i, 25039i, 30213i), -270f), Struct_1(vec2<i32>(-1i, 0i), vec3<f32>(673f, 1093f, 180f), vec4<bool>(false, true, false, true), vec4<i32>(37101i, 1i, i32(-2147483648), -14018i), -204f));

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(u_input.a, ~(~(~vec2<i32>(-1i, u_input.a.x)))), global0.b, vec4<bool>(true, true, select(!global0.c.x, true, any(vec4<bool>(false, global0.c.x, global0.c.x, global0.c.x))) != global0.c.x, all(!vec4<bool>(false, global0.c.x, true, true))), ~arg_0, _wgslsmith_f_op_f32(trunc(global0.b.x)));
    let var_1 = global2[_wgslsmith_index_u32(70833u, 14u)];
    let var_2 = var_0.d.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2470f, -686f, 351f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-751f, var_0.b.x, var_1.e)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(601f - -1193f), var_0.b.x, _wgslsmith_f_op_f32(749f - 165f)) + vec3<f32>(-1000f, global0.e, -1446f))));
    global0 = global2[_wgslsmith_index_u32(firstTrailingBit(56359u), 14u)];
    return -166f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.a, vec3<f32>(global0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2321f + global0.e) * _wgslsmith_div_f32(global0.b.x, global0.b.x))), _wgslsmith_f_op_f32(-global0.b.x)), !(!vec4<bool>(true != global0.c.x, global0.c.x, global0.c.x, global0.c.x)), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 72979i), vec2<i32>(global0.d.x, 0i)), global0.d.x, ~(-19580i), abs(-48226i)), 1u))));
    var var_1 = _wgslsmith_sub_i32(-28598i, ~(-12660i));
    let var_2 = select(~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.c.x, u_input.b), u_input.c))), u_input.c, false);
    var_1 = ~(~0i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, var_0.a.x, ~u_input.d);
}

