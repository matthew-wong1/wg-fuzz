struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: vec2<f32>;

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(21522u, 44014u), vec2<u32>(67423u, 0u), vec2<u32>(1u, 1u), vec2<u32>(23008u, 24976u), vec2<u32>(4294967295u, 1709u), vec2<u32>(13799u, 0u), vec2<u32>(1u, 39980u), vec2<u32>(42691u, 1u), vec2<u32>(0u, 23063u), vec2<u32>(38552u, 0u), vec2<u32>(0u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(3453u, 13547u), vec2<u32>(93393u, 82997u), vec2<u32>(0u, 48530u), vec2<u32>(4294967295u, 55178u), vec2<u32>(1046u, 26176u), vec2<u32>(51443u, 1u), vec2<u32>(4294967295u, 14914u));

var<private> global4: u32 = 30255u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = 2120f;
    return 24147u;
}

fn func_2() -> StorageBuffer {
    let var_0 = vec2<bool>(!(!all(vec3<bool>(true, true, false))), false);
    let var_1 = var_0.x || !var_0.x;
    let var_2 = 1000f;
    var var_3 = global0[_wgslsmith_index_u32(1u & firstTrailingBit(_wgslsmith_sub_u32(min(32252u, abs(u_input.c.x)), u_input.a.x)), 11u)];
    global4 = 1u | ~(((21553u | var_3.a.x) & ~u_input.c.x) ^ 4294967295u);
    return StorageBuffer(-901f, vec3<i32>(53382i, ~(i32(-1i) * -global2.x), ~global2.x), -14586i, _wgslsmith_f_op_f32(-var_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~abs(vec4<u32>(reverseBits(u_input.a.x), _wgslsmith_mult_u32(u_input.c.x, u_input.a.x), 14950u, 0u)));
    global3 = array<vec2<u32>, 19>();
    let var_1 = func_1(var_0.a.x);
    global0 = array<Struct_1, 11>();
    var var_2 = global0[_wgslsmith_index_u32(0u, 11u)];
    let var_3 = Struct_1(vec4<u32>(u_input.a.x, u_input.c.x, _wgslsmith_add_u32(var_0.a.x, var_1), var_2.a.x));
    let var_4 = ~var_2.a.wzw;
    let x = u_input.a;
    s_output = func_2();
}

