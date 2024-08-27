struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec2<f32>(-1305f, 762f), vec2<f32>(-932f, -404f)), 46595u, -487f, vec3<u32>(43573u, 13466u, 1u)), Struct_2(Struct_1(vec2<f32>(156f, -1000f), vec2<f32>(-747f, -1000f)), 57614u, -304f, vec3<u32>(12438u, 0u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(195f, -318f), vec2<f32>(-432f, 1000f)), 1u, -332f, vec3<u32>(54762u, 1u, 18104u)), Struct_2(Struct_1(vec2<f32>(-606f, -584f), vec2<f32>(1254f, 419f)), 1u, 492f, vec3<u32>(57678u, 1u, 59667u)), Struct_2(Struct_1(vec2<f32>(-962f, 784f), vec2<f32>(807f, -388f)), 22484u, -190f, vec3<u32>(4294967295u, 29703u, 34497u)), Struct_2(Struct_1(vec2<f32>(-1000f, 469f), vec2<f32>(1000f, -1162f)), 27591u, 826f, vec3<u32>(25252u, 1u, 38219u)), Struct_2(Struct_1(vec2<f32>(2018f, 891f), vec2<f32>(111f, -924f)), 4294967295u, 1821f, vec3<u32>(1u, 7709u, 45358u)), Struct_2(Struct_1(vec2<f32>(818f, 1000f), vec2<f32>(2055f, 1668f)), 2985u, 720f, vec3<u32>(1u, 19141u, 0u)), Struct_2(Struct_1(vec2<f32>(786f, 1558f), vec2<f32>(-283f, 1534f)), 9260u, -995f, vec3<u32>(0u, 4294967295u, 56925u)), Struct_2(Struct_1(vec2<f32>(-597f, 568f), vec2<f32>(-2404f, -359f)), 0u, -809f, vec3<u32>(20509u, 50848u, 35692u)), Struct_2(Struct_1(vec2<f32>(143f, -1909f), vec2<f32>(1383f, 2064f)), 4294967295u, 256f, vec3<u32>(0u, 23418u, 4294967295u)));

var<private> global1: vec4<f32>;

var<private> global2: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global3: array<f32, 30>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>) -> u32 {
    global3 = array<f32, 30>();
    let var_0 = !(!(!select(vec2<bool>(arg_0.x, false), arg_0.yw, vec2<bool>(arg_0.x, arg_0.x))));
    var var_1 = 12900u & max((1u << ((arg_1.x & arg_1.x) % 32u)) << (arg_1.x % 32u), ~(~_wgslsmith_mod_u32(arg_1.x, arg_1.x)));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-835f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(587f, global1.x)) + -1100f)), global1.yx);
    global2 = array<vec2<bool>, 30>();
    return ~0u;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.wy), global1.zz);
    var var_1 = Struct_2(var_0, ~0u, 1225f, ~vec3<u32>(max(46404u, _wgslsmith_mult_u32(52859u, 66613u)), func_3(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), ~vec3<u32>(0u, 37219u, 10657u)), ~_wgslsmith_mult_u32(0u, 4294967295u)));
    var var_2 = var_0;
    let var_3 = 27505i;
    let var_4 = ~1i;
    return _wgslsmith_f_op_f32(trunc(var_0.b.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global2 = array<vec2<bool>, 30>();
    global1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0, arg_0, vec4<bool>(true, false, true, false))) - arg_0))))));
    global3 = array<f32, 30>();
    let var_0 = -abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, u_input.a)) | vec3<i32>(u_input.a, i32(-1i) * -8699i, reverseBits(u_input.a)));
    global2 = array<vec2<bool>, 30>();
    return Struct_1(arg_1.a.a, vec2<f32>(global3[_wgslsmith_index_u32(~min(4294967295u, 1u), 30u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.a.x, -475f))), 1679f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 30u)], arg_0.b.x), -1000f, _wgslsmith_f_op_f32(global1.x * arg_0.b.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-812f, -182f, global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(arg_1.x, 30u)]))))), Struct_2(arg_0, ~_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(1u, 9011u)), _wgslsmith_f_op_f32(func_2()), vec3<u32>(arg_1.x, _wgslsmith_clamp_u32(arg_1.x | arg_1.x, 1u ^ arg_1.x, ~20182u), ~arg_1.x)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(global1.wz)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(ceil(1f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(172f + 1000f)), arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1293f)));
    global3 = array<f32, 30>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.a.x, var_1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(799f)), _wgslsmith_f_op_f32(arg_0.b.x - var_1.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.b)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(global1.zx)))));
    var var_3 = -(~firstTrailingBit(max(_wgslsmith_mod_vec2_i32(vec2<i32>(20618i, u_input.a), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, u_input.a)))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 30>();
    global1 = vec4<f32>(global3[_wgslsmith_index_u32(select(~4294967295u | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 41411u), vec4<u32>(1391u, 59548u, 0u, 22395u)), 35988u, true) ^ ~_wgslsmith_mult_u32(1u, ~1u), 30u)], _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(727f, -574f)))), -974f, global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 68915u, 49902u, 29780u), vec4<u32>(0u, 0u, 9269u, 79031u), vec4<bool>(true, false, true, true)), ~vec4<u32>(30444u, 1u, 86400u, 7626u)), _wgslsmith_add_u32(~4294967295u, 7164u), 14776u), 30u)]);
    let var_0 = !vec3<bool>(any(vec3<bool>(true, true, global1.x > 226f)), u_input.a >= (-u_input.a >> (reverseBits(0u) % 32u)), true | all(vec3<bool>(true, true, true)));
    global2 = array<vec2<bool>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, func_1(Struct_1(vec2<f32>(-753f, global1.x), vec2<f32>(1000f, global3[_wgslsmith_index_u32(1u, 30u)])), ~vec2<u32>(4294967295u, 74419u)), reverseBits(~0u)), ~vec3<u32>(0u, 106u, _wgslsmith_mult_u32(1u, 8579u))), min(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)) | vec4<u32>(7945u, func_1(func_4(vec4<f32>(307f, 609f, 891f, global3[_wgslsmith_index_u32(0u, 30u)]), global0[_wgslsmith_index_u32(4294967295u, 11u)], Struct_1(vec2<f32>(-582f, global3[_wgslsmith_index_u32(1u, 30u)]), global1.xz)), ~vec2<u32>(75656u, 52177u)), 1u, ~(~79199u)), max(abs(~4887u) & ~_wgslsmith_clamp_u32(35654u, 0u, 0u), min(62032u, countOneBits(2578u)) & firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 0u, 5190u))), -53568i, -firstLeadingBit(u_input.a));
}

