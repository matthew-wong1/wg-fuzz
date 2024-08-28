struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
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

var<private> global0: f32;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(14060u, -42860i, 395f, vec2<i32>(-37674i, 26331i), vec3<u32>(4294967295u, 4294967295u, 11906u)), Struct_1(32505u, 2456i, 1716f, vec2<i32>(1i, -8781i), vec3<u32>(0u, 0u, 4294967295u)), Struct_1(11330u, -25517i, 169f, vec2<i32>(-1i, -1i), vec3<u32>(0u, 9245u, 22651u)), Struct_1(47437u, -30293i, -1000f, vec2<i32>(-27149i, i32(-2147483648)), vec3<u32>(92095u, 4294967295u, 35422u)), Struct_1(0u, 52703i, 1019f, vec2<i32>(1i, 1834i), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(0u, -17848i, 227f, vec2<i32>(i32(-2147483648), 8890i), vec3<u32>(4294967295u, 1u, 52173u)), Struct_1(4294967295u, -68772i, 1164f, vec2<i32>(2147483647i, 55875i), vec3<u32>(34672u, 0u, 4294967295u)), Struct_1(4294967295u, -25381i, 1000f, vec2<i32>(2147483647i, -59765i), vec3<u32>(4294967295u, 9031u, 0u)), Struct_1(54018u, -1i, -1337f, vec2<i32>(0i, 22410i), vec3<u32>(47885u, 64372u, 0u)), Struct_1(8145u, 44032i, 2151f, vec2<i32>(-1393i, -26171i), vec3<u32>(4294967295u, 1u, 1u)), Struct_1(23575u, -15937i, 1460f, vec2<i32>(-1i, 2147483647i), vec3<u32>(0u, 1u, 1u)), Struct_1(0u, 0i, -1420f, vec2<i32>(2147483647i, 61574i), vec3<u32>(0u, 1u, 0u)), Struct_1(55425u, 2147483647i, -474f, vec2<i32>(0i, 33642i), vec3<u32>(32931u, 0u, 32444u)), Struct_1(0u, -20992i, 320f, vec2<i32>(0i, 13495i), vec3<u32>(1u, 48925u, 24915u)), Struct_1(4294967295u, 2147483647i, 371f, vec2<i32>(-1i, 43257i), vec3<u32>(9731u, 4294967295u, 1306u)));

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(23243u, -23790i, -182f, vec2<i32>(2147483647i, 2147483647i), vec3<u32>(4657u, 0u, 63545u)), Struct_1(7637u, -1i, 897f, vec2<i32>(1i, -25491i), vec3<u32>(128390u, 4294967295u, 4294967295u)), Struct_1(1u, 48877i, 179f, vec2<i32>(0i, -17809i), vec3<u32>(25788u, 57801u, 0u)), Struct_1(1u, 8594i, -744f, vec2<i32>(i32(-2147483648), -1i), vec3<u32>(0u, 23734u, 4294967295u)), Struct_1(43518u, 1i, 1495f, vec2<i32>(28482i, -1i), vec3<u32>(1u, 4294967295u, 147808u)), Struct_1(20432u, -54427i, -346f, vec2<i32>(-13256i, 21700i), vec3<u32>(4294967295u, 0u, 1u)), Struct_1(4294967295u, -1i, -2017f, vec2<i32>(i32(-2147483648), 37905i), vec3<u32>(44454u, 105613u, 1u)), Struct_1(4294967295u, -1i, 358f, vec2<i32>(-61782i, 2147483647i), vec3<u32>(85176u, 34391u, 12392u)), Struct_1(37595u, 0i, 703f, vec2<i32>(18601i, 2039i), vec3<u32>(0u, 0u, 42813u)), Struct_1(1u, 2147483647i, -1043f, vec2<i32>(1i, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 42170u)), Struct_1(3574u, 30875i, -591f, vec2<i32>(-82183i, 31189i), vec3<u32>(1u, 0u, 0u)), Struct_1(8979u, 51481i, -918f, vec2<i32>(i32(-2147483648), 1i), vec3<u32>(20043u, 0u, 0u)), Struct_1(1u, i32(-2147483648), 224f, vec2<i32>(1i, 30009i), vec3<u32>(12049u, 35459u, 0u)), Struct_1(0u, 1i, -1000f, vec2<i32>(-1i, -1i), vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(4294967295u, 9344i, 224f, vec2<i32>(-1i, -55439i), vec3<u32>(10385u, 0u, 1u)), Struct_1(0u, 20114i, -1047f, vec2<i32>(-1i, 33808i), vec3<u32>(41483u, 4294967295u, 1u)), Struct_1(1u, -2768i, -149f, vec2<i32>(-42170i, -58561i), vec3<u32>(1u, 62737u, 0u)), Struct_1(8287u, 2147483647i, 401f, vec2<i32>(0i, i32(-2147483648)), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(3714u, -21944i, 1022f, vec2<i32>(0i, 1i), vec3<u32>(0u, 0u, 23218u)), Struct_1(1619u, -15822i, 1383f, vec2<i32>(1i, 0i), vec3<u32>(0u, 66313u, 54305u)), Struct_1(4294967295u, -22303i, 630f, vec2<i32>(-19369i, 1i), vec3<u32>(0u, 14734u, 65675u)), Struct_1(0u, 7898i, -145f, vec2<i32>(-30331i, -53867i), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(35352u, 1i, -318f, vec2<i32>(9847i, -18094i), vec3<u32>(1u, 18945u, 59234u)), Struct_1(1u, 75436i, 2238f, vec2<i32>(12374i, i32(-2147483648)), vec3<u32>(1u, 44604u, 44046u)), Struct_1(6976u, i32(-2147483648), 163f, vec2<i32>(5252i, 488i), vec3<u32>(5501u, 1u, 29486u)), Struct_1(33027u, 0i, -592f, vec2<i32>(-3545i, 0i), vec3<u32>(4294967295u, 31882u, 1u)));

var<private> global3: Struct_1 = Struct_1(564u, 23991i, 189f, vec2<i32>(-1i, -64063i), vec3<u32>(0u, 51195u, 62267u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = !(!vec3<bool>(false, true, select(true, all(vec2<bool>(false, false)), global3.e.x != u_input.a)));
    var var_2 = global1[_wgslsmith_index_u32(abs(34938u), 15u)];
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.e.x, u_input.b.x, u_input.b.x, 38146u), vec4<u32>(u_input.b.x, 6521u, 27409u, u_input.b.x)) >> (var_2.e.x % 32u), global3.e.x), firstLeadingBit(~_wgslsmith_sub_u32(global3.e.x, var_2.e.x))), u_input.b.x), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(-1185f)));
}

