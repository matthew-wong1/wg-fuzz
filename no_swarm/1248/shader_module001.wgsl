struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(0u, vec4<u32>(34629u, 0u, 1u, 8170u), 55813i, 65093i, vec3<bool>(false, true, false)), Struct_1(18113u, vec4<u32>(43575u, 1u, 28495u, 857u), -41931i, 35223i, vec3<bool>(false, true, false)), Struct_1(17923u, vec4<u32>(46915u, 4294967295u, 4294967295u, 0u), i32(-2147483648), -1i, vec3<bool>(true, true, false)), Struct_1(1u, vec4<u32>(1u, 32872u, 16848u, 21244u), -1i, 0i, vec3<bool>(false, true, true)), Struct_1(48126u, vec4<u32>(19304u, 4294967295u, 37489u, 0u), 0i, 20476i, vec3<bool>(false, true, false)), Struct_1(4097u, vec4<u32>(47271u, 0u, 1648u, 4294967295u), 45720i, -37614i, vec3<bool>(false, true, false)), Struct_1(1u, vec4<u32>(1u, 1u, 69955u, 9841u), 0i, -24952i, vec3<bool>(false, false, true)), Struct_1(13385u, vec4<u32>(42495u, 46302u, 41523u, 55251u), 1i, 1i, vec3<bool>(false, false, false)), Struct_1(16624u, vec4<u32>(0u, 77449u, 95686u, 3423u), 34672i, 36604i, vec3<bool>(true, true, true)), Struct_1(54347u, vec4<u32>(114388u, 4294967295u, 23292u, 15148u), 34760i, -3106i, vec3<bool>(false, true, true)), Struct_1(4294967295u, vec4<u32>(26601u, 18264u, 4294967295u, 5321u), 2147483647i, 40870i, vec3<bool>(false, false, true)), Struct_1(26261u, vec4<u32>(13884u, 28631u, 4294967295u, 11195u), 4421i, 2147483647i, vec3<bool>(true, false, true)), Struct_1(122085u, vec4<u32>(0u, 67284u, 0u, 6122u), 20503i, -1i, vec3<bool>(true, true, true)), Struct_1(16998u, vec4<u32>(20828u, 0u, 1u, 2466u), 1i, 2147483647i, vec3<bool>(true, true, false)), Struct_1(35798u, vec4<u32>(4294967295u, 4294967295u, 48168u, 34303u), 28129i, 33466i, vec3<bool>(false, false, true)), Struct_1(1u, vec4<u32>(15400u, 0u, 47832u, 2851u), i32(-2147483648), 2147483647i, vec3<bool>(false, true, false)), Struct_1(58565u, vec4<u32>(80320u, 81794u, 4294967295u, 4294967295u), 1i, -1i, vec3<bool>(true, true, false)), Struct_1(63093u, vec4<u32>(66536u, 1u, 4294967295u, 24782u), -1i, 2147483647i, vec3<bool>(true, false, false)), Struct_1(84415u, vec4<u32>(4294967295u, 23494u, 79372u, 4294967295u), 54343i, 0i, vec3<bool>(true, false, true)), Struct_1(45035u, vec4<u32>(34028u, 2873u, 4294967295u, 5971u), -23178i, -1i, vec3<bool>(false, false, false)), Struct_1(110294u, vec4<u32>(17882u, 1u, 14997u, 22754u), -28129i, -39708i, vec3<bool>(true, false, true)), Struct_1(4294967295u, vec4<u32>(0u, 4294967295u, 4294967295u, 53035u), -13934i, -1i, vec3<bool>(false, true, false)), Struct_1(0u, vec4<u32>(1u, 4294967295u, 0u, 1u), 49530i, -1i, vec3<bool>(true, false, true)), Struct_1(0u, vec4<u32>(4294967295u, 1u, 26097u, 4294967295u), i32(-2147483648), 1i, vec3<bool>(true, false, true)), Struct_1(1u, vec4<u32>(4294967295u, 37340u, 4294967295u, 1u), -4478i, -22287i, vec3<bool>(false, true, true)), Struct_1(5828u, vec4<u32>(38437u, 4294967295u, 4294967295u, 44162u), 9198i, -18078i, vec3<bool>(true, true, true)), Struct_1(0u, vec4<u32>(4294967295u, 23882u, 1u, 10884u), -1i, 5745i, vec3<bool>(true, false, true)), Struct_1(47716u, vec4<u32>(43077u, 0u, 52922u, 0u), 4907i, 1i, vec3<bool>(true, true, true)), Struct_1(4294967295u, vec4<u32>(47488u, 68992u, 4294967295u, 4294967295u), -1i, 13967i, vec3<bool>(true, true, true)), Struct_1(4793u, vec4<u32>(58819u, 68192u, 51501u, 15597u), 1i, -1i, vec3<bool>(true, false, true)));

var<private> global1: Struct_2;

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, -16780i, -31948i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(513f, -120f)), -2380f))));
    var var_1 = _wgslsmith_mult_vec3_u32(global1.b.b.xxx, _wgslsmith_div_vec3_u32(select(~vec3<u32>(1u, global1.a.x, 25970u), global1.b.b.xyx, false), select(global1.b.b.zwx, vec3<u32>(u_input.a, 20339u, 24670u), true)) | vec3<u32>(~1u, 0u, _wgslsmith_div_u32(global1.a.x, u_input.a)));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a, ~u_input.a), select(vec2<u32>(0u, 30174u), var_1.xz >> (vec2<u32>(var_1.x, 0u) % vec2<u32>(32u)), global1.b.e.x), var_1.yz), ~select(vec2<u32>(u_input.a, 27781u), global1.a, any(vec2<bool>(global1.b.e.x, global1.b.e.x)))), ~global1.b.b, -global2.x, ~global2.x, global1.b.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(429f + var_0.x))))))), ~_wgslsmith_sub_u32(u_input.a, ~56197u));
}

