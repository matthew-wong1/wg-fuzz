struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 21> = array<vec3<f32>, 21>(vec3<f32>(-1394f, 1000f, -1317f), vec3<f32>(1615f, 2066f, -175f), vec3<f32>(-571f, -2735f, 870f), vec3<f32>(365f, -1000f, -3669f), vec3<f32>(1000f, 1000f, 1681f), vec3<f32>(1000f, 482f, 1226f), vec3<f32>(858f, -1582f, 2274f), vec3<f32>(1381f, 325f, 2011f), vec3<f32>(-359f, -1000f, 1030f), vec3<f32>(190f, -381f, -199f), vec3<f32>(756f, 166f, -305f), vec3<f32>(465f, 1783f, 888f), vec3<f32>(1525f, 493f, 1531f), vec3<f32>(101f, 112f, -277f), vec3<f32>(-1439f, 1752f, 705f), vec3<f32>(-2024f, 474f, 357f), vec3<f32>(1431f, 1147f, 423f), vec3<f32>(-1407f, 1157f, 2514f), vec3<f32>(994f, -1553f, -581f), vec3<f32>(1105f, -1440f, -848f), vec3<f32>(347f, 724f, 1000f));

var<private> global1: bool = true;

var<private> global2: vec2<i32>;

var<private> global3: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global4: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_2(Struct_1(true, vec2<u32>(19572u, 31350u), vec3<f32>(2158f, 1074f, 1287f)), vec4<u32>(1u, 13165u, 1u, 1u), vec3<f32>(593f, -1225f, 508f), 544f, Struct_1(true, vec2<u32>(1u, 101446u), vec3<f32>(1206f, -570f, 804f))), 4294967295u), Struct_3(Struct_2(Struct_1(false, vec2<u32>(391u, 49497u), vec3<f32>(1451f, 513f, -618f)), vec4<u32>(54425u, 1u, 1u, 0u), vec3<f32>(-1945f, 790f, 1000f), 1933f, Struct_1(false, vec2<u32>(71880u, 0u), vec3<f32>(1291f, -299f, 196f))), 0u), Struct_3(Struct_2(Struct_1(false, vec2<u32>(0u, 1u), vec3<f32>(694f, 1226f, 1000f)), vec4<u32>(4294967295u, 41772u, 45373u, 1u), vec3<f32>(925f, -772f, -2402f), -870f, Struct_1(false, vec2<u32>(0u, 1u), vec3<f32>(-402f, 501f, 117f))), 37897u), Struct_3(Struct_2(Struct_1(false, vec2<u32>(29836u, 1u), vec3<f32>(959f, 1165f, 1086f)), vec4<u32>(857u, 7805u, 1u, 88137u), vec3<f32>(746f, -399f, -549f), 1515f, Struct_1(false, vec2<u32>(22204u, 1u), vec3<f32>(1000f, 1000f, 625f))), 4294967295u), Struct_3(Struct_2(Struct_1(true, vec2<u32>(1u, 95102u), vec3<f32>(1252f, 942f, -484f)), vec4<u32>(61071u, 43162u, 55306u, 55702u), vec3<f32>(-1935f, 1062f, 1019f), -805f, Struct_1(false, vec2<u32>(8596u, 1u), vec3<f32>(361f, 739f, 780f))), 4294967295u), Struct_3(Struct_2(Struct_1(false, vec2<u32>(36122u, 0u), vec3<f32>(-2240f, 181f, -855f)), vec4<u32>(0u, 87594u, 39599u, 19583u), vec3<f32>(1206f, 929f, -602f), -1606f, Struct_1(false, vec2<u32>(5236u, 92534u), vec3<f32>(530f, 494f, 1447f))), 1u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(abs(_wgslsmith_add_u32(_wgslsmith_div_u32(57114u, u_input.a.x), select(64902u, 1u, true)) >> (~(u_input.a.x >> (25980u % 32u)) % 32u)));
    let var_1 = ~(-(~(~global2.x)));
    var var_2 = global4[_wgslsmith_index_u32(var_0, 6u)];
    var var_3 = var_2.a.a;
    global4 = array<Struct_3, 6>();
    var var_4 = _wgslsmith_f_op_f32(-var_3.c.x);
    var var_5 = 0u;
    global1 = any(select(vec3<bool>(true && (var_2.a.e.a || true), false, all(select(vec3<bool>(true, var_3.a, false), vec3<bool>(false, var_2.a.e.a, false), vec3<bool>(var_3.a, var_2.a.e.a, false)))), !(!(!vec3<bool>(var_3.a, true, var_2.a.a.a))), vec3<bool>(var_2.a.e.a, var_3.a, var_3.a)));
    let var_6 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_u32(u_input.a, ~var_2.a.e.b) & ~vec2<u32>(~11259u, 4294967295u >> (var_6.b.x % 32u)));
}

