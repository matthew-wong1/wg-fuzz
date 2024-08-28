struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: Struct_3 = Struct_3(Struct_2(85574u, Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(0i, -30138i, 0i, 18071i), vec2<i32>(-52875i, -11662i))), vec3<u32>(1u, 36551u, 1u), vec3<u32>(2828u, 4221u, 41928u), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-1i, 344i, 1i, 1i), vec2<i32>(-20734i, -1i)), -692f);

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -6565i);

var<private> global3: vec2<i32>;

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(41389u, 1u, 12162u), _wgslsmith_f_op_f32(abs(global1.e)), global1.b.x);
}

