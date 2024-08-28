struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.yyw;
    global0 = Struct_1(select(global0.a, vec3<bool>((false & global0.a.x) & any(vec2<bool>(global0.a.x, true)), all(global0.a.zy), true), vec3<bool>(global0.a.x, all(!vec3<bool>(true, global0.a.x, global0.a.x)), !global0.a.x)));
    let var_1 = vec2<f32>(426f, _wgslsmith_f_op_f32(-1f));
    var var_2 = reverseBits(5492u);
    global0 = Struct_1(!vec3<bool>(!global0.a.x, !global0.a.x, _wgslsmith_f_op_f32(var_1.x - var_1.x) > _wgslsmith_f_op_f32(min(var_1.x, -682f))));
    let x = u_input.a;
    s_output = StorageBuffer(-904i, -firstLeadingBit(-var_0.x));
}

