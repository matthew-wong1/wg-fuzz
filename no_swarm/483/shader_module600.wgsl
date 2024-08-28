struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global0: array<vec4<i32>, 24>;

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(false, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, true)));

var<private> global2: array<bool, 1> = array<bool, 1>(false);

var<private> global3: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-531f, -173f, -135f, -368f), vec4<f32>(218f, 1602f, 1038f, -1130f), vec4<f32>(1000f, -457f, -659f, 1005f), vec4<f32>(698f, 949f, 1437f, 598f), vec4<f32>(-1000f, 388f, 145f, -2077f), vec4<f32>(490f, -578f, -1119f, -436f), vec4<f32>(224f, -743f, 2127f, -1028f), vec4<f32>(416f, 1251f, -2022f, -201f), vec4<f32>(740f, 1663f, 382f, 1043f), vec4<f32>(161f, -1213f, -683f, 2169f), vec4<f32>(-2037f, -1429f, 1197f, -249f), vec4<f32>(-491f, -860f, -1294f, 356f), vec4<f32>(-990f, -1352f, -532f, 1188f), vec4<f32>(1131f, 294f, 398f, 129f), vec4<f32>(-1543f, 1797f, 532f, -1332f), vec4<f32>(-338f, 162f, 583f, 1000f), vec4<f32>(-1128f, -648f, 1170f, 1200f), vec4<f32>(-1228f, -1389f, 400f, -1865f), vec4<f32>(1109f, -1353f, -548f, -1096f), vec4<f32>(1951f, 611f, 534f, 256f), vec4<f32>(-864f, 1905f, -896f, -329f), vec4<f32>(1199f, -661f, -902f, -1347f), vec4<f32>(689f, 708f, -1736f, -745f));

var<private> global4: array<vec4<u32>, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~abs(1u >> (u_input.a.x % 32u)), 50697u), 24u)];
    var var_1 = all(vec4<bool>(~u_input.a.x != _wgslsmith_mult_u32(~u_input.a.x, 36905u), true, select(!global2[_wgslsmith_index_u32(42306u, 1u)], false, true), any(vec2<bool>(true, true))));
    let var_2 = u_input.c;
    global3 = array<vec4<f32>, 23>();
    let var_3 = 440f;
    let x = u_input.a;
    s_output = StorageBuffer(var_3);
}

