struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 16>;

var<private> global1: array<bool, 16>;

var<private> global2: array<vec3<f32>, 16>;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(30782u, 24791u, false, vec2<bool>(false, true), -483f), Struct_1(4294967295u, 0u, false, vec2<bool>(false, true), 733f), Struct_1(4294967295u, 22633u, true, vec2<bool>(true, false), 567f), Struct_1(0u, 4294967295u, true, vec2<bool>(false, false), 1569f), Struct_1(37689u, 52070u, false, vec2<bool>(false, true), -1000f), Struct_1(2195u, 58043u, false, vec2<bool>(false, true), -1000f), Struct_1(4294967295u, 98454u, true, vec2<bool>(true, false), 1725f), Struct_1(4294967295u, 4294967295u, false, vec2<bool>(false, true), 1020f), Struct_1(13449u, 65129u, false, vec2<bool>(true, true), 837f), Struct_1(0u, 1u, true, vec2<bool>(true, false), -423f), Struct_1(1u, 17400u, false, vec2<bool>(false, false), -1649f), Struct_1(44803u, 15657u, true, vec2<bool>(false, false), 1138f), Struct_1(1u, 9988u, true, vec2<bool>(true, true), 981f), Struct_1(66439u, 21154u, false, vec2<bool>(true, true), 264f), Struct_1(7228u, 4294967295u, true, vec2<bool>(false, false), -767f), Struct_1(13938u, 4294967295u, false, vec2<bool>(true, true), 1217f), Struct_1(8562u, 43763u, false, vec2<bool>(true, true), 1409f), Struct_1(16899u, 25208u, true, vec2<bool>(true, false), 255f), Struct_1(1u, 1u, false, vec2<bool>(true, false), 1442f), Struct_1(3003u, 84453u, true, vec2<bool>(true, false), 961f), Struct_1(0u, 8571u, false, vec2<bool>(true, false), -840f), Struct_1(0u, 96673u, true, vec2<bool>(true, true), -342f), Struct_1(1u, 0u, false, vec2<bool>(false, true), -1303f), Struct_1(23769u, 51781u, true, vec2<bool>(false, true), 234f));

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(9215u, 25899u, true, vec2<bool>(false, true), 1578f), Struct_1(34331u, 3895u, false, vec2<bool>(true, true), 202f), Struct_1(0u, 0u, false, vec2<bool>(true, true), -606f), Struct_1(57053u, 4294967295u, true, vec2<bool>(false, true), 1009f), Struct_1(0u, 66848u, true, vec2<bool>(false, true), -826f), Struct_1(1u, 4294967295u, true, vec2<bool>(true, true), -2566f), Struct_1(4294967295u, 39985u, true, vec2<bool>(true, false), 1158f), Struct_1(78730u, 4294967295u, true, vec2<bool>(true, false), -406f), Struct_1(7298u, 0u, true, vec2<bool>(false, false), 493f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-u_input.a, -1i) ^ u_input.a;
    global0 = array<vec3<u32>, 16>();
    let var_1 = u_input.a;
    global4 = array<Struct_1, 9>();
    global2 = array<vec3<f32>, 16>();
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(998f * -485f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(u_input.b.x & 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), ~vec4<u32>(u_input.b.x, u_input.b.x, 27285u, u_input.b.x)), u_input.b.x));
}

