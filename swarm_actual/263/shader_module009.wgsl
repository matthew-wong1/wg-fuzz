struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(1u, 18382u), vec2<u32>(54354u, 25079u), Struct_1(vec4<f32>(1029f, 835f, 1000f, 308f), vec2<i32>(-86889i, 0i)), Struct_1(vec4<f32>(1000f, 1556f, 937f, -626f), vec2<i32>(1i, 41271i)));

var<private> global2: Struct_2 = Struct_2(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u), Struct_1(vec4<f32>(-483f, 389f, 253f, -488f), vec2<i32>(-46861i, 2147483647i)), Struct_1(vec4<f32>(-1157f, 964f, 1000f, 326f), vec2<i32>(6609i, -44426i)));

var<private> global3: f32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.a.x + -449f)), global1.c.a.x) * _wgslsmith_f_op_vec4_f32(-global2.d.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.d.a.x, 1238f, -473f)))))));
}

