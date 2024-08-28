struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<u32>(29009u, 4294967295u)), Struct_1(vec2<u32>(37713u, 1u)), Struct_1(vec2<u32>(9937u, 24295u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(1u, 25027u)), Struct_1(vec2<u32>(4294967295u, 14133u)), Struct_1(vec2<u32>(71491u, 128619u)), Struct_1(vec2<u32>(19370u, 1u)), Struct_1(vec2<u32>(1u, 34766u)));

var<private> global1: array<i32, 15>;

var<private> global2: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(53938i, 0i, 0i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(37093i, 2147483647i, i32(-2147483648)), vec3<i32>(-36122i, i32(-2147483648), -3998i), vec3<i32>(0i, -28335i, -33069i), vec3<i32>(13309i, i32(-2147483648), 12120i), vec3<i32>(-23378i, 41218i, i32(-2147483648)), vec3<i32>(-1i, -42778i, 1i), vec3<i32>(0i, 7158i, 33219i), vec3<i32>(-68555i, 22922i, 35583i), vec3<i32>(1i, -36880i, 1i), vec3<i32>(0i, -1i, -1i));

var<private> global3: f32;

var<private> global4: array<bool, 17> = array<bool, 17>(true, true, true, false, true, false, false, true, false, true, false, false, false, false, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.e.x), vec3<f32>(409f, _wgslsmith_f_op_f32(select(-1066f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -435f)), true)), -317f));
}

