struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(62018u, 0u, 4294967295u, 1u);

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(false, 1i, vec3<f32>(-1950f, -284f, 322f), vec3<u32>(4294967295u, 49875u, 1u)), Struct_1(true, -1i, vec3<f32>(520f, 168f, -394f), vec3<u32>(49711u, 14055u, 1u))), Struct_2(Struct_1(true, -4755i, vec3<f32>(188f, 965f, -109f), vec3<u32>(1u, 135188u, 4294967295u)), Struct_1(false, 34431i, vec3<f32>(-476f, -1075f, 1207f), vec3<u32>(40316u, 4294967295u, 4294967295u))), Struct_2(Struct_1(true, -22448i, vec3<f32>(1163f, 1046f, 1000f), vec3<u32>(0u, 1u, 4294967295u)), Struct_1(false, 80778i, vec3<f32>(-322f, -614f, 404f), vec3<u32>(13855u, 4294967295u, 38626u))), Struct_2(Struct_1(false, -36611i, vec3<f32>(-1724f, 398f, -134f), vec3<u32>(21440u, 4294967295u, 81247u)), Struct_1(false, -13775i, vec3<f32>(-1206f, -758f, 322f), vec3<u32>(4294967295u, 81701u, 1u))), Struct_2(Struct_1(true, -12285i, vec3<f32>(897f, -601f, -461f), vec3<u32>(45453u, 1u, 4294967295u)), Struct_1(false, 2147483647i, vec3<f32>(-2501f, 505f, -812f), vec3<u32>(0u, 15885u, 15347u))), Struct_2(Struct_1(true, -1i, vec3<f32>(-2141f, -587f, -861f), vec3<u32>(4294967295u, 4294967295u, 110179u)), Struct_1(false, 1i, vec3<f32>(264f, -769f, -1000f), vec3<u32>(6593u, 28188u, 1u))), Struct_2(Struct_1(false, 0i, vec3<f32>(-233f, -739f, -1321f), vec3<u32>(1u, 39956u, 98638u)), Struct_1(false, 145i, vec3<f32>(-1025f, 828f, 1471f), vec3<u32>(0u, 58316u, 1u))), Struct_2(Struct_1(false, -13087i, vec3<f32>(-442f, 2517f, 553f), vec3<u32>(17770u, 0u, 1u)), Struct_1(false, 1i, vec3<f32>(1501f, 798f, -606f), vec3<u32>(61066u, 1u, 17210u))), Struct_2(Struct_1(true, 2147483647i, vec3<f32>(-294f, 1550f, -1609f), vec3<u32>(44758u, 62038u, 28526u)), Struct_1(false, -32147i, vec3<f32>(391f, -1000f, -285f), vec3<u32>(93490u, 120188u, 4294967295u))), Struct_2(Struct_1(false, 15515i, vec3<f32>(-893f, 667f, -415f), vec3<u32>(4294967295u, 17209u, 39209u)), Struct_1(false, -7652i, vec3<f32>(1763f, -216f, -348f), vec3<u32>(32124u, 4294967295u, 4294967295u))), Struct_2(Struct_1(false, 18092i, vec3<f32>(-1000f, -1635f, 257f), vec3<u32>(4294967295u, 0u, 22424u)), Struct_1(true, -36382i, vec3<f32>(-1957f, 152f, -299f), vec3<u32>(55778u, 4294967295u, 0u))), Struct_2(Struct_1(false, 2147483647i, vec3<f32>(-740f, -1181f, 1172f), vec3<u32>(9456u, 72838u, 4294967295u)), Struct_1(true, 38251i, vec3<f32>(-461f, -1053f, -1000f), vec3<u32>(19955u, 4294967295u, 1u))), Struct_2(Struct_1(true, -1214i, vec3<f32>(418f, -1017f, -1219f), vec3<u32>(107783u, 49815u, 4294967295u)), Struct_1(true, i32(-2147483648), vec3<f32>(-560f, 874f, -1078f), vec3<u32>(63843u, 5529u, 0u))), Struct_2(Struct_1(true, -1i, vec3<f32>(-612f, 1000f, -801f), vec3<u32>(4294967295u, 1u, 3381u)), Struct_1(false, 1i, vec3<f32>(-1052f, 1000f, 351f), vec3<u32>(0u, 0u, 4294967295u))), Struct_2(Struct_1(false, 11619i, vec3<f32>(470f, 1480f, -277f), vec3<u32>(44253u, 105370u, 1u)), Struct_1(false, 1i, vec3<f32>(240f, -277f, -344f), vec3<u32>(4294967295u, 1u, 24162u))));

var<private> global2: u32;

var<private> global3: Struct_2 = Struct_2(Struct_1(true, -33703i, vec3<f32>(-1111f, 824f, 2009f), vec3<u32>(14329u, 1u, 4294967295u)), Struct_1(true, 28330i, vec3<f32>(592f, -712f, 1315f), vec3<u32>(90061u, 47595u, 0u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 15>();
    global3 = global1[_wgslsmith_index_u32(43912u, 15u)];
    var var_0 = global3.a.c.x;
    global0 = vec4<u32>(max(6065u, global3.b.d.x >> (u_input.b.x % 32u)), global3.b.d.x, global0.x, global3.b.d.x);
    global1 = array<Struct_2, 15>();
    let var_1 = !vec2<bool>(global3.a.a, global3.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32((vec4<u32>(29023u, 1u, 1u, 31941u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(1u, global0.x, 44676u, 54020u), vec4<u32>(global3.b.d.x, 62669u, 50303u, u_input.a))) >> (~(vec4<u32>(0u, 4294967295u, u_input.b.x, 0u) >> (vec4<u32>(25142u, 0u, global3.b.d.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(0u, u_input.b.x, global0.x, u_input.a))), -1038f);
}

