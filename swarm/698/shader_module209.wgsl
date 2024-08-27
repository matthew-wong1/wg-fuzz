struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(37780u, 71638u), Struct_3(39218u, 4294967295u), Struct_3(1u, 4235u), Struct_3(14059u, 14364u), Struct_3(4294967295u, 1u), Struct_3(4294967295u, 12754u), Struct_3(4294967295u, 0u), Struct_3(1u, 13245u), Struct_3(0u, 0u), Struct_3(8991u, 68295u), Struct_3(61221u, 39015u), Struct_3(1u, 4294967295u), Struct_3(5696u, 31527u), Struct_3(15319u, 1u), Struct_3(91810u, 4294967295u), Struct_3(1u, 4294967295u), Struct_3(4294967295u, 88384u), Struct_3(0u, 4294967295u), Struct_3(35052u, 0u), Struct_3(0u, 1u), Struct_3(4294967295u, 15934u), Struct_3(13506u, 8148u), Struct_3(4294967295u, 8794u), Struct_3(47003u, 1224u), Struct_3(30014u, 1u), Struct_3(7986u, 12698u), Struct_3(105908u, 15139u), Struct_3(54425u, 1u), Struct_3(1u, 0u), Struct_3(1u, 14578u), Struct_3(74029u, 4294967295u), Struct_3(4294967295u, 1u));

var<private> global1: i32 = 1i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(i32(-1i) * -27196i);
    global1 = _wgslsmith_mod_i32(u_input.b.x, -2147483647i);
    global0 = array<Struct_3, 32>();
    var var_0 = 4294967295u;
    let var_1 = true;
    global0 = array<Struct_3, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1739f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1413f, -670f)))), firstLeadingBit(u_input.b.x), ~(~(~(4294967295u | u_input.d.x))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, ~u_input.a, abs(-1i)), abs(vec3<i32>(min(2147483647i, u_input.c), ~2147483647i, -16670i))), vec3<u32>(abs(firstTrailingBit(u_input.d.x)), reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.d.x, 4294967295u, u_input.d.x), countOneBits(vec4<u32>(u_input.d.x, 7291u, 30u, u_input.d.x)))), ~u_input.d.x));
}

