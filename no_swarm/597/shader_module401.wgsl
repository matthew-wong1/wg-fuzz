struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(18090i, 4294967295u, vec3<f32>(1102f, 500f, -207f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 26>;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-27076i, 1u, vec3<f32>(496f, -304f, 1286f)), Struct_1(-13818i, 4294967295u, vec3<f32>(654f, -1910f, 1279f)), Struct_1(2147483647i, 81243u, vec3<f32>(348f, 398f, 250f)), Struct_1(-314i, 0u, vec3<f32>(-219f, -1814f, 1012f)), Struct_1(i32(-2147483648), 1u, vec3<f32>(2037f, -1362f, 399f)), Struct_1(-23685i, 47342u, vec3<f32>(-402f, -275f, -640f)), Struct_1(-10417i, 1u, vec3<f32>(-958f, 1675f, -1577f)), Struct_1(0i, 1u, vec3<f32>(1000f, 2099f, -573f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(!any(vec3<bool>(true, true, true)), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f)), global1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

