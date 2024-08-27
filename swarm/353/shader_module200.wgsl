struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(i32(-2147483648), 77320i, 1i, -54758i), vec4<i32>(-30944i, 20855i, -1i, 0i), vec4<i32>(-8404i, 0i, -3637i, i32(-2147483648)), vec4<i32>(-4932i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(-13245i, 0i, 0i, -8293i), vec4<i32>(-27326i, 2677i, 0i, 2147483647i), vec4<i32>(-1i, -44935i, -3105i, -1i), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 24985i), vec4<i32>(i32(-2147483648), -1i, -1i, 23192i), vec4<i32>(i32(-2147483648), 4181i, -1i, -18985i), vec4<i32>(-34368i, 2147483647i, 1i, 27012i), vec4<i32>(i32(-2147483648), -21469i, i32(-2147483648), 6295i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 2147483647i), vec4<i32>(1i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(30694i, 36290i, 0i, -21934i), vec4<i32>(i32(-2147483648), 63768i, i32(-2147483648), -57053i), vec4<i32>(2147483647i, -24983i, -47941i, -20229i), vec4<i32>(0i, -3252i, -8739i, 1i), vec4<i32>(-5331i, 1i, 26698i, -1i), vec4<i32>(-1i, 16314i, -75638i, -1075i), vec4<i32>(0i, -1i, -31203i, -53780i), vec4<i32>(0i, -1i, 2147483647i, 2562i), vec4<i32>(-4845i, -1i, 0i, 2147483647i), vec4<i32>(37048i, 31288i, -16410i, -2362i), vec4<i32>(76937i, -26871i, 31767i, 0i), vec4<i32>(51804i, -70727i, -1488i, i32(-2147483648)), vec4<i32>(-17021i, 35572i, 0i, -1i));

var<private> global1: array<vec4<i32>, 23>;

var<private> global2: Struct_1 = Struct_1(2147483647i, 24126i, false, true, -476f);

var<private> global3: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(-100f, vec4<u32>(1u, 1u, 51810u, 4294967295u), Struct_1(-4073i, 1i, true, true, 1549f), false), 4294967295u), Struct_3(Struct_2(727f, vec4<u32>(0u, 4294967295u, 19455u, 4294967295u), Struct_1(2147483647i, i32(-2147483648), true, true, 1000f), false), 7658u), Struct_3(Struct_2(1866f, vec4<u32>(4294967295u, 0u, 4294967295u, 1u), Struct_1(1i, 14345i, true, false, 208f), false), 5539u), Struct_3(Struct_2(-990f, vec4<u32>(24771u, 4294967295u, 0u, 0u), Struct_1(2147483647i, -324i, true, true, 250f), true), 39617u), Struct_3(Struct_2(-1021f, vec4<u32>(0u, 19438u, 75820u, 0u), Struct_1(2147483647i, -1i, true, true, 1122f), false), 0u), Struct_3(Struct_2(753f, vec4<u32>(0u, 1u, 0u, 37087u), Struct_1(-74319i, 41939i, false, false, 1534f), true), 54044u), Struct_3(Struct_2(1459f, vec4<u32>(0u, 27227u, 37943u, 0u), Struct_1(1i, 1i, false, false, -325f), true), 0u), Struct_3(Struct_2(-304f, vec4<u32>(20977u, 20u, 4294967295u, 15455u), Struct_1(28587i, 2147483647i, true, true, 1086f), true), 4294967295u), Struct_3(Struct_2(-1573f, vec4<u32>(4294967295u, 119220u, 54793u, 45838u), Struct_1(5113i, -1i, false, true, -728f), false), 6864u), Struct_3(Struct_2(-2163f, vec4<u32>(0u, 13675u, 1148u, 16664u), Struct_1(-8377i, 27617i, true, false, -656f), false), 65772u), Struct_3(Struct_2(-1000f, vec4<u32>(439u, 15662u, 41379u, 0u), Struct_1(21550i, -58489i, false, false, -345f), false), 38341u), Struct_3(Struct_2(-498f, vec4<u32>(1u, 22699u, 1u, 15611u), Struct_1(-43382i, -25528i, true, true, 1401f), true), 4294967295u), Struct_3(Struct_2(1495f, vec4<u32>(1u, 0u, 1u, 95312u), Struct_1(-1i, 0i, false, false, -895f), true), 1u), Struct_3(Struct_2(228f, vec4<u32>(13465u, 1u, 0u, 19601u), Struct_1(24962i, -1i, true, false, 254f), false), 8249u), Struct_3(Struct_2(-935f, vec4<u32>(56836u, 104215u, 15684u, 4294967295u), Struct_1(23315i, -13140i, false, true, 486f), true), 17661u), Struct_3(Struct_2(874f, vec4<u32>(0u, 4294967295u, 66253u, 33227u), Struct_1(0i, 60064i, false, false, 1168f), false), 62371u), Struct_3(Struct_2(1000f, vec4<u32>(30503u, 8807u, 36429u, 0u), Struct_1(i32(-2147483648), 2147483647i, true, false, -135f), false), 1u), Struct_3(Struct_2(-1162f, vec4<u32>(0u, 4294967295u, 7139u, 4294967295u), Struct_1(13254i, -35093i, true, false, 1435f), false), 23000u), Struct_3(Struct_2(342f, vec4<u32>(29593u, 1u, 72986u, 4294967295u), Struct_1(2147483647i, 19370i, false, false, -604f), false), 4294967295u), Struct_3(Struct_2(132f, vec4<u32>(36149u, 10169u, 48918u, 4294967295u), Struct_1(1i, i32(-2147483648), true, false, -1288f), false), 1u));

var<private> global4: array<bool, 25> = array<bool, 25>(false, true, false, false, true, true, false, false, true, true, false, true, true, true, false, false, true, true, false, true, false, true, true, false, true);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 23>();
    global1 = array<vec4<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-1i, global2.a, u_input.d.x) | vec3<i32>(1i, u_input.a, u_input.c), -vec3<i32>(u_input.a, 3831i, -12440i), all(vec3<bool>(global2.d, global4[_wgslsmith_index_u32(4294967295u, 25u)], global4[_wgslsmith_index_u32(u_input.b, 25u)]))), select(~vec3<i32>(1364i, global2.a, u_input.a), select(vec3<i32>(u_input.d.x, 2147483647i, global2.b), vec3<i32>(0i, 13189i, u_input.d.x), global2.d), !vec3<bool>(global2.c, true, global2.c)), (vec3<i32>(-29698i, u_input.c, global2.a) | vec3<i32>(u_input.c, u_input.a, global2.b)) | (vec3<i32>(-53300i, u_input.d.x, 1i) << (vec3<u32>(u_input.b, 62869u, u_input.b) % vec3<u32>(32u)))), _wgslsmith_mult_i32(min(-1426i, ~(-u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b, u_input.d.x) << (vec2<u32>(29920u, 1u) % vec2<u32>(32u)), vec2<i32>(u_input.d.x, 1i)) & u_input.d.x), _wgslsmith_div_vec4_i32(-(_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(u_input.b, 23u)], vec4<i32>(u_input.a, global2.a, u_input.d.x, u_input.c)) & vec4<i32>(global2.b, -15261i, 2147483647i, u_input.a)), global1[_wgslsmith_index_u32(~1u, 23u)]), firstLeadingBit(~abs(global2.b)), 6723u);
}

