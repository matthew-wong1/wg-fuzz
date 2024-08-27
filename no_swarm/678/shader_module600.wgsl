struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: Struct_1 = Struct_1(-403f, vec4<u32>(1u, 0u, 1u, 0u), 11807u);

var<private> global2: array<u32, 2> = array<u32, 2>(103689u, 78900u);

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(-1544f, vec4<u32>(4294967295u, 1374u, 66707u, 16798u), 0u), Struct_1(192f, vec4<u32>(74067u, 1u, 0u, 23792u), 69220u), Struct_1(-1206f, vec4<u32>(1u, 31472u, 57975u, 1u), 55398u), Struct_1(911f, vec4<u32>(27085u, 29467u, 0u, 1u), 20183u), Struct_1(1909f, vec4<u32>(0u, 1u, 1u, 4073u), 66435u), Struct_1(-2161f, vec4<u32>(67608u, 4294967295u, 33225u, 1u), 68537u), Struct_1(-749f, vec4<u32>(27153u, 0u, 47699u, 4294967295u), 0u), Struct_1(328f, vec4<u32>(0u, 4294967295u, 50720u, 4294967295u), 4294967295u), Struct_1(1328f, vec4<u32>(1u, 1u, 67173u, 4294967295u), 33208u), Struct_1(892f, vec4<u32>(62174u, 4294967295u, 4294967295u, 27174u), 1u), Struct_1(-255f, vec4<u32>(4294967295u, 4294967295u, 5657u, 0u), 4294967295u), Struct_1(1359f, vec4<u32>(0u, 25992u, 13486u, 18599u), 1u), Struct_1(1035f, vec4<u32>(4294967295u, 7646u, 4294967295u, 4294967295u), 103626u), Struct_1(1000f, vec4<u32>(61649u, 22442u, 43043u, 0u), 24694u), Struct_1(-150f, vec4<u32>(4294967295u, 19614u, 35731u, 4294967295u), 4294967295u), Struct_1(1116f, vec4<u32>(2882u, 0u, 275u, 15534u), 0u));

var<private> global4: array<f32, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global4 = array<f32, 17>();
    global2 = array<u32, 2>();
    global2 = array<u32, 2>();
    global4 = array<f32, 17>();
    let var_0 = global1.b.xyz;
    return (u_input.a & -6597i) >= ~u_input.b;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    global3 = array<Struct_1, 16>();
    let var_0 = u_input.a;
    var var_1 = countOneBits(abs(~vec2<i32>(2147483647i, var_0) >> (~arg_1.b.zw % vec2<u32>(32u))) | (~firstTrailingBit(vec2<i32>(var_0, -20969i)) & ~(vec2<i32>(2147483647i, arg_0) ^ vec2<i32>(1i, var_0))));
    global2 = array<u32, 2>();
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(555f, arg_1.a), global1.a)))), 221f, arg_2.x))));
    return u_input.a;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    global3 = array<Struct_1, 16>();
    global4 = array<f32, 17>();
    let var_0 = u_input.a <= func_3(u_input.b, Struct_1(-393f, _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 2u)], 53794u, u_input.c, global1.b.x), vec4<u32>(arg_1.x, arg_1.x, 4294967295u, 13986u)) | vec4<u32>(u_input.c, 44634u, 4294967295u, global2[_wgslsmith_index_u32(8555u, 2u)]), 1u), vec3<bool>(func_2(arg_1 | arg_1), false, true), global0[_wgslsmith_index_u32(global1.c, 22u)]);
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, _wgslsmith_sub_u32(u_input.c, 0u)), firstLeadingBit(vec2<u32>(arg_1.x, arg_1.x))), 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 17>();
    var var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1002f))), global1.b.wxw);
    var var_1 = func_1(global1.a, select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(26231u, 15478u), global1.b.yz), _wgslsmith_dot_vec3_u32(global1.b.zwz, var_0.b.yyx), 71759u & global2[_wgslsmith_index_u32(var_0.c, 2u)]), _wgslsmith_sub_vec3_u32(func_1(722f, var_0.b.wyx).b.zxw, global1.b.yzw), 0u > var_0.c) ^ vec3<u32>(u_input.c, _wgslsmith_sub_u32(firstTrailingBit(global2[_wgslsmith_index_u32(0u, 2u)]), 13675u), _wgslsmith_add_u32(var_0.c, global1.b.x) << (1362u % 32u)));
    global4 = array<f32, 17>();
    let var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(var_0.b.xwy, var_0.b.zyz), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, global1.a, var_1.a, 1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, 1921f, var_0.a, 441f), vec4<f32>(-790f, global1.a, global1.a, -1080f)))))), ~vec3<u32>(~_wgslsmith_clamp_u32(0u, var_2.x, 4294967295u), countOneBits(~u_input.c), select(4770u >> (u_input.c % 32u), var_0.c | 0u, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2351f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -488f), -414f))));
}

