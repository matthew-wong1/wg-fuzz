struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(24635u, 4294967295u), 4888i, Struct_1(126f, vec2<bool>(false, false), 38354u), -2725i, vec4<u32>(0u, 0u, 43654u, 4294967295u));

var<private> global1: array<vec3<bool>, 6>;

var<private> global2: Struct_1 = Struct_1(629f, vec2<bool>(true, false), 4294967295u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 6>();
    global2 = Struct_1(global2.a, !select(global0.c.b, vec2<bool>(global0.a.x >= global2.c, false), true), global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -3669i, u_input.b, ~global0.d), -1i)), i32(-1i) * -(~53199i), u_input.d.x, vec2<f32>(906f, -1000f));
}

