struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-1007f, vec4<bool>(true, true, false, true), 1047u, vec3<i32>(-1i, 2147483647i, -7854i)), Struct_1(-645f, vec4<bool>(true, false, true, true), 16636u, vec3<i32>(2147483647i, 2147483647i, 1i)), Struct_1(962f, vec4<bool>(true, true, false, false), 0u, vec3<i32>(-1i, 0i, 56419i)), Struct_1(285f, vec4<bool>(true, true, true, true), 4294967295u, vec3<i32>(i32(-2147483648), 17757i, 5131i)), Struct_1(-255f, vec4<bool>(true, false, true, false), 0u, vec3<i32>(-37444i, i32(-2147483648), i32(-2147483648))), Struct_1(-617f, vec4<bool>(true, true, true, true), 104152u, vec3<i32>(29939i, 573i, 1i)), Struct_1(-2314f, vec4<bool>(true, false, true, false), 1u, vec3<i32>(47453i, 1i, 14825i)), Struct_1(-1294f, vec4<bool>(true, false, false, false), 4294967295u, vec3<i32>(i32(-2147483648), -23174i, 2147483647i)), Struct_1(-107f, vec4<bool>(false, true, true, false), 38990u, vec3<i32>(-48394i, -10437i, -62025i)), Struct_1(1058f, vec4<bool>(false, false, true, false), 1u, vec3<i32>(0i, -65750i, 0i)), Struct_1(-1139f, vec4<bool>(true, false, false, false), 10514u, vec3<i32>(15422i, 83944i, -1i)), Struct_1(1000f, vec4<bool>(true, true, false, true), 6833u, vec3<i32>(i32(-2147483648), 0i, -680i)), Struct_1(-1000f, vec4<bool>(false, false, true, true), 14818u, vec3<i32>(-8822i, 1i, -32310i)), Struct_1(1934f, vec4<bool>(false, true, false, false), 0u, vec3<i32>(20494i, -1i, 61847i)), Struct_1(993f, vec4<bool>(false, true, true, true), 4294967295u, vec3<i32>(2147483647i, 22037i, 65181i)), Struct_1(-1319f, vec4<bool>(true, false, false, false), 32613u, vec3<i32>(-70443i, -63716i, 36135i)), Struct_1(-891f, vec4<bool>(true, false, true, false), 56616u, vec3<i32>(31106i, i32(-2147483648), -1i)), Struct_1(-1887f, vec4<bool>(false, true, true, false), 1u, vec3<i32>(-41919i, 19139i, 1i)), Struct_1(-288f, vec4<bool>(false, false, true, false), 1u, vec3<i32>(-4805i, i32(-2147483648), i32(-2147483648))), Struct_1(783f, vec4<bool>(false, false, true, false), 0u, vec3<i32>(-40589i, 2147483647i, i32(-2147483648))), Struct_1(661f, vec4<bool>(false, false, false, false), 0u, vec3<i32>(47841i, 39016i, -43988i)), Struct_1(-823f, vec4<bool>(false, false, false, true), 9432u, vec3<i32>(2147483647i, 12409i, 62283i)), Struct_1(-1137f, vec4<bool>(true, false, true, false), 0u, vec3<i32>(2147483647i, -18952i, 1i)), Struct_1(-1205f, vec4<bool>(true, true, false, true), 83452u, vec3<i32>(0i, -1i, 29622i)), Struct_1(1934f, vec4<bool>(true, false, false, false), 1u, vec3<i32>(2147483647i, 2147483647i, 2147483647i)), Struct_1(-1185f, vec4<bool>(false, false, false, false), 6536u, vec3<i32>(-1i, -28664i, -8931i)), Struct_1(373f, vec4<bool>(true, true, false, false), 40827u, vec3<i32>(-16805i, -23742i, 2147483647i)), Struct_1(1984f, vec4<bool>(true, false, false, true), 24611u, vec3<i32>(i32(-2147483648), -12230i, 25744i)));

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(-147f);
}

