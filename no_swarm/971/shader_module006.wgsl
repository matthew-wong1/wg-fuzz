struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: Struct_1 = Struct_1(1107f, vec3<u32>(27003u, 0u, 1u), vec3<bool>(true, false, false), 13735u, false);

var<private> global2: vec3<u32>;

var<private> global3: Struct_1 = Struct_1(-2793f, vec3<u32>(0u, 0u, 4294967295u), vec3<bool>(false, true, false), 44674u, true);

var<private> global4: Struct_1 = Struct_1(-1219f, vec3<u32>(7585u, 4294967295u, 0u), vec3<bool>(true, false, true), 0u, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a))) - _wgslsmith_f_op_f32(1000f * global4.a)) + _wgslsmith_f_op_f32(-110f - global1.a)), ~global3.b, global4.c, ~_wgslsmith_sub_u32(global2.x, ~_wgslsmith_dot_vec2_u32(global1.b.yx, global2.zx)), true & !global1.e);
    var var_1 = min(~(-(i32(-1i) * -57915i)), 1i) > select(78291i, -19736i, !global4.e);
    global2 = ~(~vec3<u32>(4294967295u, ~(~252u), global4.b.x & ~14374u));
    global1 = var_0;
    global2 = global4.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -273f) + 414f), global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) + 153f)))));
}

