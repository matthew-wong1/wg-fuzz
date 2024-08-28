struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, 935f, 319f);

var<private> global1: bool = false;

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(1i, 1i, -1i, -18756i), 41342u, 19502i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -884f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global2.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1000f)) - _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global2.x))) * global2.x), 657f);
    let var_1 = Struct_2(-firstTrailingBit(u_input.d.x), firstLeadingBit(firstTrailingBit(-vec4<i32>(-30449i, u_input.d.x, u_input.d.x, u_input.d.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-193f, _wgslsmith_f_op_f32(round(var_0.x)), -310f, _wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1017f, var_0.x, 650f, 731f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-868f, -3204f, -2106f, 705f) + vec4<f32>(global2.x, var_0.x, 548f, global2.x)))))), any(vec3<bool>(all(vec3<bool>(false, true, false)), all(vec4<bool>(true, true, true, true)), true)));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.x * -286f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-417f + _wgslsmith_f_op_f32(global0.x * 719f)), -1719f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -454f) * _wgslsmith_f_op_f32(f32(-1f) * -261f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2.yyy)), _wgslsmith_f_op_vec3_f32(var_0.zyz * var_0.wzw)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_f32(-var_0.x));
}

