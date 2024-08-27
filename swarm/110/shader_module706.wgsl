struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec4<f32>(-997f, 260f, -1000f, 496f), vec2<f32>(-471f, 1000f), Struct_1(false, true, 49110u, true, vec4<u32>(25828u, 41460u, 4294967295u, 0u))), Struct_2(vec4<f32>(646f, 935f, 692f, 272f), vec2<f32>(543f, -370f), Struct_1(false, false, 16281u, false, vec4<u32>(39637u, 0u, 0u, 0u))), Struct_2(vec4<f32>(1000f, -1653f, 489f, -495f), vec2<f32>(1972f, -1000f), Struct_1(true, true, 0u, false, vec4<u32>(4294967295u, 64533u, 1u, 7405u))), Struct_2(vec4<f32>(1473f, 748f, 825f, -1193f), vec2<f32>(-1535f, 198f), Struct_1(true, true, 4294967295u, false, vec4<u32>(55218u, 1u, 0u, 34973u))), Struct_2(vec4<f32>(699f, 669f, 293f, 478f), vec2<f32>(449f, -1085f), Struct_1(false, false, 34324u, false, vec4<u32>(29427u, 4294967295u, 7191u, 52431u))), Struct_2(vec4<f32>(-413f, -1347f, -1309f, 772f), vec2<f32>(1059f, -131f), Struct_1(true, true, 0u, true, vec4<u32>(31220u, 29964u, 102957u, 17119u))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), u_input.c, vec2<u32>(_wgslsmith_div_u32(34373u, ~22224u), ~(~(~u_input.a))), vec4<u32>(26794u, ~min(reverseBits(1u), _wgslsmith_div_u32(1u, 17845u)), countOneBits(_wgslsmith_mod_u32(1u, 1u)), ~7537u));
}

