struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(28092u, -378f, 1u, -1i, 1u), Struct_1(108068u, 1806f, 0u, 32786i, 4294967295u), Struct_1(45703u, -521f, 4294967295u, i32(-2147483648), 278u), Struct_1(17175u, -181f, 31815u, -4526i, 4294967295u), Struct_1(26154u, 638f, 26451u, i32(-2147483648), 16564u), Struct_1(1u, 763f, 18353u, -18972i, 4294967295u), Struct_1(17646u, -1000f, 4294967295u, 55475i, 1u), Struct_1(4294967295u, -884f, 0u, 21989i, 14652u), Struct_1(16095u, -131f, 79517u, -1i, 1u), Struct_1(16078u, 142f, 31169u, -45477i, 41027u), Struct_1(106667u, 1130f, 1u, -15543i, 4294967295u), Struct_1(4294967295u, 1355f, 0u, 0i, 4294967295u), Struct_1(1462u, -1000f, 17696u, 2147483647i, 0u), Struct_1(4294967295u, -1127f, 0u, 31587i, 4294967295u), Struct_1(5557u, 678f, 4294967295u, 71789i, 7214u), Struct_1(1u, 1435f, 1u, -1i, 50440u), Struct_1(22368u, 1536f, 0u, 2147483647i, 4294967295u), Struct_1(1u, 1765f, 1281u, -24970i, 1u), Struct_1(0u, 643f, 26707u, 0i, 31001u), Struct_1(4294967295u, 773f, 1u, 0i, 1u), Struct_1(1641u, 877f, 0u, 2147483647i, 4294967295u), Struct_1(68065u, -675f, 4294967295u, 1i, 16383u), Struct_1(71676u, -1465f, 4294967295u, 2147483647i, 54074u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(4294967295u & u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(570f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-181f, 300f, true)), _wgslsmith_f_op_f32(1000f - 1140f))))), u_input.c.x, ~(-1i) ^ u_input.a, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-122f, 2147483647i);
}

