struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(1143f, -1000f, 525f, 1000f, 224f, 512f, 366f, 189f, 102f, 1000f, 489f, -1000f, 428f, -570f, 1509f, -1542f, -317f, 485f, -1000f, -133f, 456f, 1180f, -396f, 685f, 112f, -1032f, -302f, -824f, 869f, -438f);

var<private> global1: Struct_4;

var<private> global2: vec3<f32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    var var_0 = global1.b;
    global2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -140f, 1923f) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(arg_1.a, 30u)], arg_0)))))))));
    var var_1 = var_0.b.x;
    var var_2 = ~(arg_1.a >> (62501u % 32u));
    let var_3 = !(!(!vec2<bool>(all(vec4<bool>(true, true, true, arg_2)), false)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(798f, -1461f, 753f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.b.x, 30u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, -839f) - _wgslsmith_f_op_f32(floor(-1000f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, -1215f), vec3<f32>(global2.x, 540f, 604f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, global0[_wgslsmith_index_u32(34346u, 30u)], arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.b.x, 30u)], arg_0, 1000f)))), vec3<f32>(global2.x, _wgslsmith_f_op_f32(794f * global0[_wgslsmith_index_u32(~var_0.b.x, 30u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 30u)])))), min(~firstLeadingBit(vec2<u32>(14131u, 0u)), select(~global1.b.b.zx, ~vec2<u32>(var_0.b.x, u_input.a), false)) ^ _wgslsmith_mult_vec2_u32(abs(u_input.d | vec2<u32>(var_0.b.x, arg_1.a)), firstLeadingBit(abs(vec2<u32>(58047u, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(1f - 186f), global1.a, all(vec2<bool>(true, true)));
}

