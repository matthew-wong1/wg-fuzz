struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(37201u, 4294967295u, 28537u, 0u), vec4<u32>(4294967295u, 13743u, 51235u, 0u), vec4<u32>(45878u, 4294967295u, 79835u, 0u), vec4<u32>(51462u, 1u, 6872u, 4294967295u), vec4<u32>(2343u, 1u, 1u, 30445u), vec4<u32>(24323u, 1u, 1u, 58586u), vec4<u32>(1u, 21861u, 1u, 0u), vec4<u32>(0u, 1599u, 55738u, 22784u), vec4<u32>(81735u, 8000u, 10815u, 60386u), vec4<u32>(58365u, 4294967295u, 4294967295u, 42062u), vec4<u32>(16573u, 0u, 4294967295u, 8509u), vec4<u32>(951u, 18368u, 16007u, 25702u), vec4<u32>(4294967295u, 10241u, 86769u, 1u), vec4<u32>(35891u, 44038u, 4294967295u, 10884u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(38447u, 4294967295u, 0u, 46324u), vec4<u32>(67996u, 1u, 26257u, 1944u), vec4<u32>(0u, 50157u, 0u, 18598u), vec4<u32>(3621u, 59852u, 0u, 5946u), vec4<u32>(4294967295u, 30073u, 57783u, 4294967295u), vec4<u32>(0u, 0u, 48280u, 4294967295u), vec4<u32>(4294967295u, 43651u, 21977u, 4294967295u), vec4<u32>(44025u, 15112u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 28781u), vec4<u32>(4294967295u, 72563u, 74970u, 0u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(5065u, 0u, 1u, 4294967295u), vec4<u32>(0u, 394u, 1u, 72298u), vec4<u32>(4294967295u, 11375u, 28656u, 41255u), vec4<u32>(33288u, 3981u, 4294967295u, 24333u));

var<private> global1: array<u32, 20>;

var<private> global2: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(56119i, -44362i), vec2<i32>(0i, -67601i), vec2<i32>(1i, 0i), vec2<i32>(-34428i, 10793i), vec2<i32>(0i, 0i), vec2<i32>(17369i, 762i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-8743i, 39769i), vec2<i32>(57870i, 29664i), vec2<i32>(2147483647i, -11249i), vec2<i32>(-10018i, 0i), vec2<i32>(2147483647i, 50993i), vec2<i32>(-47826i, -82548i), vec2<i32>(2147483647i, 0i), vec2<i32>(93353i, 1i), vec2<i32>(39308i, -3058i), vec2<i32>(0i, 2147483647i), vec2<i32>(-21545i, -1i), vec2<i32>(1i, 1i), vec2<i32>(74943i, -22520i), vec2<i32>(-209i, -1i), vec2<i32>(334i, 1i));

var<private> global3: array<f32, 13>;

var<private> global4: array<u32, 20> = array<u32, 20>(5876u, 1u, 1u, 4294967295u, 57253u, 4294967295u, 92360u, 24723u, 1u, 0u, 1u, 1u, 0u, 4294967295u, 0u, 1u, 4294967295u, 16209u, 4294967295u, 26501u);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_1(arg_0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3[_wgslsmith_index_u32(3684u, 13u)], var_0.b.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c.x, -977f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.x, arg_0.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-761f, var_0.b.x) - arg_0.c) * _wgslsmith_f_op_vec2_f32(sign(var_0.c))), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), true))))));
    let var_2 = var_1.b;
    return select(!select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), all(vec4<bool>(false, false, false, false)) | true), vec2<bool>(true, true), true);
}

fn func_3(arg_0: Struct_1) -> u32 {
    global2 = array<vec2<i32>, 22>();
    var var_0 = 1i > (_wgslsmith_sub_i32(0i, arg_0.a.x) & arg_0.a.x);
    let var_1 = Struct_1(-reverseBits(select(vec3<i32>(2147483647i, -28209i, arg_0.a.x), arg_0.a, true)), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -981f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 13u)])) - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1285f - 947f)) * 569f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 20u)], 13u)]), _wgslsmith_f_op_f32(522f * global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23015u, 20u)], 13u)]))), _wgslsmith_f_op_f32(1f * global3[_wgslsmith_index_u32(1u, 13u)])), arg_0.c, false)));
    var var_2 = abs(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~max(u_input.a.xx, u_input.a.xy), ~u_input.a.zy | u_input.a.xz), _wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(max(47919u, global1[_wgslsmith_index_u32(57465u, 20u)]), 20u)], abs(u_input.a.x)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global4[_wgslsmith_index_u32(54645u, 20u)]), vec2<u32>(1u, 46805u)))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -535f);
    return global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(var_2.x << (max(global1[_wgslsmith_index_u32(42447u, 20u)], ~var_2.x) % 32u), 20u)], var_2.x & ~(~(~global1[_wgslsmith_index_u32(var_2.x, 20u)])), ~_wgslsmith_clamp_u32(77056u, global1[_wgslsmith_index_u32(max(select(4294967295u, 73272u, false), global1[_wgslsmith_index_u32(0u, 20u)]), 20u)], 4294967295u)), 20u)];
}

fn func_4(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_1(vec3<i32>(max(-(~2147483647i), ~2147483647i), 59165i, -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1192f, global3[_wgslsmith_index_u32(4294967295u, 13u)]), vec2<f32>(global3[_wgslsmith_index_u32(arg_0.x, 13u)], global3[_wgslsmith_index_u32(1811u, 13u)]))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(55976u, 13u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 20u)], 13u)]) + vec2<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 13u)], 803f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-555f)) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 13u)] + global3[_wgslsmith_index_u32(11098u, 13u)]))), 606f));
    let var_1 = countOneBits(countOneBits(vec2<i32>(var_0.a.x, var_0.a.x)));
    var var_2 = var_0;
    let var_3 = var_0;
    return 1u;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<u32>, 30>();
    global1 = array<u32, 20>();
    var var_0 = func_4(max(vec4<u32>(28108u, global4[_wgslsmith_index_u32(max(func_3(arg_3), 45406u), 20u)], func_3(Struct_1(arg_3.a, arg_3.c, vec2<f32>(arg_0, 1075f))), 23196u), global0[_wgslsmith_index_u32(~25518u, 30u)]));
    let var_1 = Struct_1(~(arg_3.a ^ (arg_2.zwx & vec3<i32>(2147483647i, 313i, 2147483647i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_3.b, arg_3.b, true))) * arg_3.b) - vec2<f32>(_wgslsmith_f_op_f32(840f + _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(67301u, 13u)]))), -286f)), arg_3.c);
    global1 = array<u32, 20>();
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> f32 {
    global4 = array<u32, 20>();
    let var_0 = Struct_1(~_wgslsmith_mod_vec3_i32(abs(arg_0.a), arg_0.a), vec2<f32>(_wgslsmith_div_f32(1104f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1733f * global3[_wgslsmith_index_u32(u_input.a.x, 13u)])))), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(firstTrailingBit(3043u), 20u)], 20u)], 20u)]), 5463u | _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(0u, 20u)], 4294967295u)), 13u)]), arg_0.b);
    global4 = array<u32, 20>();
    var var_1 = ~(-1i) | (_wgslsmith_add_i32(func_2(_wgslsmith_f_op_f32(926f - 692f), 23128i, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, arg_1, arg_1, -51398i), vec4<i32>(-6629i, arg_0.a.x, var_0.a.x, 2147483647i)), var_0).a.x, ~arg_0.a.x) ^ ~_wgslsmith_add_i32(-22584i, abs(arg_0.a.x)));
    var var_2 = 1223f;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(select(u_input.a >> (firstLeadingBit(~u_input.a) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(u_input.a.x, 20u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], 20u)], 4294967295u), u_input.a), vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], 20u)], 0u)), vec3<bool>(true, true, any(func_1(Struct_1(vec3<i32>(-1i, 2147483647i, 1i), vec2<f32>(global3[_wgslsmith_index_u32(8920u, 13u)], global3[_wgslsmith_index_u32(0u, 13u)]), vec2<f32>(-662f, 1238f)), vec2<u32>(global1[_wgslsmith_index_u32(1u, 20u)], 28152u), global2[_wgslsmith_index_u32(4294967295u, 22u)])))), u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1126f - global3[_wgslsmith_index_u32(1u, 13u)])))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(1u, 30u)], vec4<u32>(0u, u_input.a.x, 4294967295u, 77899u)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8117u, 20u)], 20u)]), 13u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 13u)] + 2527f))), _wgslsmith_f_op_f32(838f + 371f)) + vec4<f32>(_wgslsmith_f_op_f32(func_5(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), ~0i, _wgslsmith_add_vec4_i32(vec4<i32>(584i, -4244i, -48102i, 27683i), vec4<i32>(14201i, -1i, -19616i, -1i)), Struct_1(vec3<i32>(-4937i, -24344i, 0i), vec2<f32>(global3[_wgslsmith_index_u32(24494u, 13u)], 514f), vec2<f32>(180f, global3[_wgslsmith_index_u32(23823u, 13u)]))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(58638i, 0i), vec2<i32>(6426i, 2147483647i)))), func_2(global3[_wgslsmith_index_u32(0u, 13u)], abs(abs(45475i)), vec4<i32>(1i, 1i, 1i, 1i), func_2(-200f, -2147483647i, vec4<i32>(0i, -72827i, -1i, 1i), func_2(1113f, -1i, vec4<i32>(-1i, 2147483647i, 2147483647i, 1i), Struct_1(vec3<i32>(-2147483647i, 0i, -56269i), vec2<f32>(-731f, global3[_wgslsmith_index_u32(1u, 13u)]), vec2<f32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 20u)], 13u)], global3[_wgslsmith_index_u32(49338u, 13u)]))))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 13u)] + global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 13u)])), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(countOneBits(max(u_input.a.x, 59167u)), 20u)], global1[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(33498u, 20u)]), 20u)]), 20u)]), 13u)]));
    global0 = array<vec4<u32>, 30>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1474f));
    var var_3 = 619f;
    let var_4 = -abs(select(~firstLeadingBit(vec3<i32>(0i, -1134i, 0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(55458i, 1i, -64420i), ~vec3<i32>(3122i, -45892i, 1i)), all(vec4<bool>(true, true, true, true))));
    let var_5 = Struct_1(var_4, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(68059u, 13u)], var_1.x) - vec2<f32>(var_2, _wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.wx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.xw)) + _wgslsmith_f_op_vec2_f32(-var_1.zx)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~4294967295u, 30u)], var_2, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_4.x, _wgslsmith_sub_i32(1i, var_4.x), 8778i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, var_5.a.x, var_5.a.x, var_4.x), vec4<i32>(var_4.x, 0i, var_4.x, var_5.a.x))), i32(-1i) * -2147483647i, 1i, -1i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -105f)), _wgslsmith_f_op_f32(253f - var_5.c.x))))));
}

