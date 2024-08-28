struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec4<f32>(1401f, -751f, -809f, 556f), 405f, vec3<u32>(10152u, 1u, 0u)), Struct_4(vec4<f32>(1000f, 111f, 276f, -229f), 290f, vec3<u32>(24405u, 45914u, 92520u)), Struct_4(vec4<f32>(-354f, 1031f, -878f, -1577f), 806f, vec3<u32>(112737u, 4294967295u, 43240u)), Struct_4(vec4<f32>(-565f, 126f, -867f, -1648f), -1534f, vec3<u32>(4294967295u, 0u, 70875u)), Struct_4(vec4<f32>(-424f, 1000f, 312f, 759f), -1022f, vec3<u32>(17715u, 0u, 1u)), Struct_4(vec4<f32>(-848f, -1153f, -217f, 422f), 2093f, vec3<u32>(0u, 70439u, 4544u)), Struct_4(vec4<f32>(1486f, 485f, 606f, -1576f), -1547f, vec3<u32>(55305u, 0u, 67406u)), Struct_4(vec4<f32>(-224f, -684f, -1000f, -1659f), -479f, vec3<u32>(0u, 0u, 0u)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 8>();
    global0 = array<Struct_4, 8>();
    global0 = array<Struct_4, 8>();
    global0 = array<Struct_4, 8>();
    global0 = array<Struct_4, 8>();
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-320f, -689f, 2012f, 699f), vec4<f32>(2061f, -998f, 640f, 1466f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -298f)))))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(10456u, 32753u, 28781u) ^ vec3<u32>(u_input.b.x, 25738u, 1u), vec3<u32>(1469u, 0u, 30825u) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), vec3<u32>(0u, u_input.b.x, u_input.b.x)) << (~vec3<u32>(firstLeadingBit(u_input.b.x), ~64319u, u_input.b.x) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, u_input.a.wyw, reverseBits(1i), ~var_0.c);
}

