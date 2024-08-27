struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(4294967295u, vec3<f32>(-448f, 351f, -776f)), Struct_1(13022u, vec3<f32>(648f, -1000f, -660f)), Struct_1(40329u, vec3<f32>(1703f, -578f, 418f)), Struct_1(3072u, vec3<f32>(-925f, 257f, -2331f)), Struct_1(19359u, vec3<f32>(1000f, 1690f, 1000f)), Struct_1(33604u, vec3<f32>(-215f, -119f, 495f)), Struct_1(0u, vec3<f32>(1000f, -1409f, 1330f)), Struct_1(4294967295u, vec3<f32>(-1515f, -960f, -2624f)), Struct_1(0u, vec3<f32>(-473f, 994f, 775f)), Struct_1(1u, vec3<f32>(-370f, 646f, 496f)), Struct_1(0u, vec3<f32>(409f, -751f, 512f)), Struct_1(1u, vec3<f32>(289f, 364f, -1356f)), Struct_1(97992u, vec3<f32>(495f, -1855f, 1636f)), Struct_1(0u, vec3<f32>(-193f, -1125f, -634f)), Struct_1(0u, vec3<f32>(-1363f, 518f, -1840f)), Struct_1(1u, vec3<f32>(-551f, 475f, -108f)), Struct_1(4294967295u, vec3<f32>(-212f, -1015f, 616f)), Struct_1(15371u, vec3<f32>(561f, -1743f, 1244f)), Struct_1(0u, vec3<f32>(329f, -1650f, -1657f)), Struct_1(0u, vec3<f32>(-1497f, 174f, 1000f)));

var<private> global1: array<i32, 22> = array<i32, 22>(i32(-2147483648), -13579i, -15222i, 13232i, 21363i, 9144i, 1i, 0i, 64843i, -43815i, 0i, -62044i, -34528i, 2147483647i, 7923i, -41916i, 2651i, 72669i, 2147483647i, 1i, 27691i, -1i);

var<private> global2: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(global2.a, _wgslsmith_mult_u32(global2.a, u_input.e));
    global2 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.e, _wgslsmith_sub_u32(countOneBits(min(u_input.c.x, 0u)), ~(~global2.a))), 20u)];
    let var_1 = u_input.d;
    var var_2 = true;
    var_2 = any(vec3<bool>(true, true, true)) & !(1i > u_input.b);
    let var_3 = !(!all(vec3<bool>(all(vec2<bool>(true, true)), false, 1u == var_1.x)));
    global0 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-1167f, _wgslsmith_f_op_f32(-global2.b.x)));
}

