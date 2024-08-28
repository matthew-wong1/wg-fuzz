struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-41078i, 15364i, -1272i, 2147483647i);

var<private> global1: vec2<f32> = vec2<f32>(-1000f, 1697f);

var<private> global2: array<vec3<bool>, 31>;

var<private> global3: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-2166f, 1108f, 1027f, -174f), vec4<f32>(1611f, -1248f, -1496f, -900f), vec4<f32>(785f, -1249f, -244f, 150f), vec4<f32>(369f, 1086f, 1164f, 132f), vec4<f32>(1606f, -1000f, 1458f, -1143f), vec4<f32>(207f, -837f, 824f, -927f), vec4<f32>(676f, 129f, -511f, -177f), vec4<f32>(1918f, 199f, 1428f, 1000f), vec4<f32>(1000f, 1000f, 204f, 1658f), vec4<f32>(865f, 559f, 845f, -809f), vec4<f32>(366f, 160f, 1131f, 751f));

var<private> global4: vec3<i32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~abs(firstTrailingBit(vec2<i32>(0i, global0.x))), countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, 4294967295u, 13729u, u_input.c.x), ~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(30012u, u_input.c.x, 46081u, 38182u), vec4<u32>(u_input.c.x, 4294967295u, 56269u, 0u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-1811f - -243f));
}

