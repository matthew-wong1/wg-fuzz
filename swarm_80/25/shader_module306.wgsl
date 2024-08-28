struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<f32>(-1138f, 1178f, 342f), vec4<i32>(24561i, 2147483647i, -1i, i32(-2147483648)), vec4<u32>(20098u, 4294967295u, 1u, 4294967295u), vec2<bool>(true, true), 0i), Struct_1(vec3<f32>(-200f, 576f, -511f), vec4<i32>(-47329i, 0i, 1022i, 0i), vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec2<bool>(false, true), 19715i), Struct_1(vec3<f32>(-3054f, -160f, 523f), vec4<i32>(i32(-2147483648), 0i, 2147483647i, -46017i), vec4<u32>(30112u, 0u, 847u, 4294967295u), vec2<bool>(true, false), 0i), Struct_1(vec3<f32>(-747f, -1370f, 988f), vec4<i32>(1i, 29762i, i32(-2147483648), 1i), vec4<u32>(25116u, 31932u, 17376u, 61703u), vec2<bool>(true, false), i32(-2147483648)), Struct_1(vec3<f32>(1000f, 920f, 1846f), vec4<i32>(-37989i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<u32>(1u, 6094u, 0u, 5359u), vec2<bool>(true, true), 1257i), Struct_1(vec3<f32>(-690f, -511f, 537f), vec4<i32>(0i, -36955i, i32(-2147483648), 2147483647i), vec4<u32>(41921u, 1u, 4294967295u, 1u), vec2<bool>(true, true), -16048i), Struct_1(vec3<f32>(-238f, 1082f, -1000f), vec4<i32>(59231i, 2147483647i, 1i, -31083i), vec4<u32>(46079u, 0u, 1u, 0u), vec2<bool>(false, true), 45540i), Struct_1(vec3<f32>(-1295f, 963f, -845f), vec4<i32>(1i, -1859i, -1i, -26412i), vec4<u32>(0u, 4294967295u, 4294967295u, 1020u), vec2<bool>(false, true), -19911i), Struct_1(vec3<f32>(-428f, 215f, -484f), vec4<i32>(i32(-2147483648), 35664i, 2147483647i, 1i), vec4<u32>(4294967295u, 24403u, 59021u, 28858u), vec2<bool>(false, false), 1i), Struct_1(vec3<f32>(-496f, -785f, -579f), vec4<i32>(1i, -19530i, -26500i, 16587i), vec4<u32>(4294967295u, 4294967295u, 10033u, 35779u), vec2<bool>(true, true), 0i), Struct_1(vec3<f32>(1341f, -882f, 131f), vec4<i32>(-1i, 1i, 2147483647i, -13849i), vec4<u32>(4294967295u, 5653u, 9871u, 20474u), vec2<bool>(true, false), -51376i), Struct_1(vec3<f32>(-476f, -286f, 542f), vec4<i32>(1i, 0i, -6869i, 15913i), vec4<u32>(0u, 0u, 0u, 49843u), vec2<bool>(true, true), -12653i), Struct_1(vec3<f32>(278f, 885f, 2071f), vec4<i32>(12700i, 0i, -1i, -1i), vec4<u32>(91337u, 4294967295u, 19738u, 0u), vec2<bool>(false, false), 2147483647i), Struct_1(vec3<f32>(-203f, -453f, 498f), vec4<i32>(-5205i, 1i, i32(-2147483648), 0i), vec4<u32>(114829u, 16743u, 33412u, 96142u), vec2<bool>(true, true), 1i));

var<private> global1: f32 = 275f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = global0[_wgslsmith_index_u32(2920u, 14u)];
    let var_2 = ~var_1.c;
    let var_3 = abs(4294967295u) << (var_1.c.x % 32u);
    global1 = 1324f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

