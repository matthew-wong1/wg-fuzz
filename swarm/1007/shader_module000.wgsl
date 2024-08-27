struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: array<Struct_5, 25> = array<Struct_5, 25>(Struct_5(vec3<f32>(1000f, 830f, -215f), true, -1636f), Struct_5(vec3<f32>(-1009f, -321f, 1000f), false, 580f), Struct_5(vec3<f32>(1920f, 280f, 168f), true, 1318f), Struct_5(vec3<f32>(-459f, -644f, -1750f), true, 960f), Struct_5(vec3<f32>(-1000f, -1233f, 1000f), true, 589f), Struct_5(vec3<f32>(549f, -1856f, -265f), true, -376f), Struct_5(vec3<f32>(-1055f, -893f, 428f), true, 1155f), Struct_5(vec3<f32>(-845f, 1530f, 505f), false, 1251f), Struct_5(vec3<f32>(256f, -616f, 598f), true, -1000f), Struct_5(vec3<f32>(-989f, 213f, -513f), false, -385f), Struct_5(vec3<f32>(1778f, -905f, -198f), true, 1404f), Struct_5(vec3<f32>(1192f, 664f, 132f), true, 2343f), Struct_5(vec3<f32>(792f, 1236f, 160f), true, -154f), Struct_5(vec3<f32>(-243f, -122f, 1006f), true, 410f), Struct_5(vec3<f32>(1489f, -815f, -1260f), false, -1402f), Struct_5(vec3<f32>(-235f, 1230f, 852f), false, -1392f), Struct_5(vec3<f32>(110f, 1000f, 787f), false, -411f), Struct_5(vec3<f32>(730f, -532f, -1852f), true, 1000f), Struct_5(vec3<f32>(-770f, -449f, 1140f), false, 147f), Struct_5(vec3<f32>(406f, -1000f, -2767f), true, -451f), Struct_5(vec3<f32>(145f, -2605f, -152f), true, -1000f), Struct_5(vec3<f32>(-1172f, 1283f, 1277f), false, 658f), Struct_5(vec3<f32>(-1743f, 114f, 1015f), true, 1000f), Struct_5(vec3<f32>(-1231f, 973f, 1202f), false, 2122f), Struct_5(vec3<f32>(1131f, -752f, -1043f), false, 739f));

var<private> global1: vec4<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(!(22962i <= u_input.a), true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), select(u_input.a, 2147483647i, true) > ~u_input.a), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(73988u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(16856u, 6015u, 28080u, 4294967295u), vec4<u32>(75069u, 4294967295u, 4294967295u, 1u)))), ~(~(~4294967295u))), ~select(~_wgslsmith_div_u32(34360u, 4294967295u), ~firstTrailingBit(1u), true), abs(87707u));
    let x = u_input.a;
    s_output = StorageBuffer(1i << ((_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_1.xy) & (abs(var_1.x) >> (firstTrailingBit(35170u) % 32u))) % 32u));
}

