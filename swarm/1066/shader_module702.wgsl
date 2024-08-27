struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: f32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec2<f32>,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(-372f), vec4<u32>(79840u, 0u, 0u, 0u)), Struct_2(Struct_1(795f), vec4<u32>(1621u, 43513u, 41059u, 4294967295u)), Struct_2(Struct_1(1000f), vec4<u32>(60320u, 0u, 125254u, 1u)), Struct_2(Struct_1(-635f), vec4<u32>(8882u, 1u, 27225u, 1u)), Struct_2(Struct_1(770f), vec4<u32>(0u, 4294967295u, 66044u, 11671u)), Struct_2(Struct_1(-195f), vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_2(Struct_1(1210f), vec4<u32>(1u, 0u, 4294967295u, 31504u)), Struct_2(Struct_1(-817f), vec4<u32>(1u, 1u, 104159u, 0u)), Struct_2(Struct_1(-922f), vec4<u32>(4294967295u, 4294967295u, 0u, 60375u)), Struct_2(Struct_1(-205f), vec4<u32>(1u, 12110u, 0u, 28889u)), Struct_2(Struct_1(-429f), vec4<u32>(4294967295u, 42482u, 71535u, 1u)), Struct_2(Struct_1(588f), vec4<u32>(45316u, 77046u, 4294967295u, 4294967295u)), Struct_2(Struct_1(1515f), vec4<u32>(13784u, 7422u, 59722u, 22876u)), Struct_2(Struct_1(-359f), vec4<u32>(1u, 0u, 4294967295u, 1u)), Struct_2(Struct_1(-377f), vec4<u32>(0u, 0u, 7534u, 47976u)), Struct_2(Struct_1(1499f), vec4<u32>(1u, 1u, 43728u, 1u)), Struct_2(Struct_1(324f), vec4<u32>(4294967295u, 59904u, 4294967295u, 1u)), Struct_2(Struct_1(386f), vec4<u32>(101967u, 4294967295u, 43201u, 54383u)), Struct_2(Struct_1(329f), vec4<u32>(1u, 20888u, 1u, 83156u)), Struct_2(Struct_1(-123f), vec4<u32>(1u, 44444u, 0u, 4294967295u)), Struct_2(Struct_1(256f), vec4<u32>(1u, 55491u, 54011u, 4294967295u)), Struct_2(Struct_1(1369f), vec4<u32>(1u, 4294967295u, 4294967295u, 20764u)), Struct_2(Struct_1(1247f), vec4<u32>(62535u, 32154u, 33289u, 55777u)), Struct_2(Struct_1(441f), vec4<u32>(0u, 1u, 1u, 18041u)), Struct_2(Struct_1(-291f), vec4<u32>(1881u, 13215u, 0u, 1u)), Struct_2(Struct_1(285f), vec4<u32>(0u, 51157u, 16420u, 4294967295u)), Struct_2(Struct_1(-1138f), vec4<u32>(4294967295u, 2279u, 21558u, 6065u)), Struct_2(Struct_1(918f), vec4<u32>(0u, 1u, 1055u, 33780u)), Struct_2(Struct_1(1031f), vec4<u32>(33696u, 4294967295u, 64521u, 1u)));

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    global0 = array<Struct_2, 29>();
    return ~(~max(_wgslsmith_add_u32(select(15001u, global1.x, true), ~7024u), ~min(4294967295u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1251f, 1277f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(644f, -933f) * vec2<f32>(-862f, -1327f))))))));
    global1 = ~_wgslsmith_clamp_vec3_u32(u_input.d, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c.x ^ u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), global1.yy)), abs(~u_input.d)), u_input.d);
    global0 = array<Struct_2, 29>();
    let var_1 = global0[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(4294967295u, u_input.c.x), u_input.b), 29u)];
    global0 = array<Struct_2, 29>();
    var var_2 = ~u_input.a.x << (4294967295u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(9261u, ~func_1(), abs(vec2<u32>(u_input.b, global1.x)));
}

