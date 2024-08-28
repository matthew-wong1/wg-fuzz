struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_3,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -235f;

var<private> global1: f32 = 892f;

var<private> global2: Struct_5 = Struct_5(Struct_4(vec3<u32>(39047u, 4294967295u, 79092u), Struct_2(vec3<f32>(-870f, -1841f, 710f)), Struct_2(vec3<f32>(-593f, 493f, -739f))), Struct_2(vec3<f32>(-607f, 281f, -1000f)), Struct_3(vec3<i32>(0i, 25681i, i32(-2147483648))), vec3<i32>(2147483647i, -1i, 2147483647i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(79638u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(253f + global2.b.a.x), 111f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1437f))))), 2148f, _wgslsmith_mod_vec3_u32(reverseBits(u_input.c), vec3<u32>(global2.a.a.x, countOneBits(~0u), global2.a.a.x)));
}

