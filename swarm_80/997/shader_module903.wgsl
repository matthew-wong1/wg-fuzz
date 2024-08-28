struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> i32 {
    global0 = array<u32, 17>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-1011f * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(280f - 797f), _wgslsmith_f_op_f32(max(-1307f, 2386f)))))), -732f);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a)))));
    var_1 = arg_0;
    return arg_3.x;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<u32>) -> Struct_1 {
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -583f), 264f);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec3<i32> {
    global0 = array<u32, 17>();
    var var_0 = _wgslsmith_f_op_f32(-813f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-354f - arg_1)) + -330f)));
    return vec3<i32>(_wgslsmith_clamp_i32(19395i, _wgslsmith_clamp_i32(u_input.a, ~(9270i & u_input.a), min(max(0i, u_input.a), u_input.a)), u_input.a), -19501i, -_wgslsmith_dot_vec3_i32(vec3<i32>(abs(-1i), u_input.a ^ u_input.a, firstTrailingBit(-14121i)), max(vec3<i32>(u_input.a, u_input.a, -21724i), vec3<i32>(u_input.a, u_input.a, u_input.a)) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -19889i, u_input.a), vec3<i32>(u_input.a, u_input.a, 72445i))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = func_2(56156u, i32(-1i) * -u_input.a, vec4<f32>(715f, 221f, _wgslsmith_f_op_f32(trunc(598f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-380f * _wgslsmith_f_op_f32(sign(2207f)))))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 17u)], 17u)], 44040u, global0[_wgslsmith_index_u32(var_0.x, 17u)])), max(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(34825u, 65860u, 7796u), vec3<u32>(1u, var_0.x, u_input.c))), ~vec3<u32>(33586u, var_0.x, 1u) | ~vec3<u32>(var_0.x, 7180u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x | 23572u, global0[_wgslsmith_index_u32(1u, 17u)], u_input.c), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0.x, 12503u), vec3<u32>(0u, 4294967295u, 4294967295u)) ^ vec3<u32>(var_0.x, arg_0, global0[_wgslsmith_index_u32(44103u, 17u)]))));
    global0 = array<u32, 17>();
    let var_2 = arg_0;
    global0 = array<u32, 17>();
    return func_2(1u, max(1i, arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, var_1.a, var_1.a) * vec4<f32>(-1000f, -220f, 1747f, var_1.b)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(651f, var_1.a, var_1.b, -209f))))))), firstTrailingBit(~(vec3<u32>(1u, 89098u, arg_0) ^ (vec3<u32>(72651u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], 17u)], 20880u) << (vec3<u32>(47593u, 1u, 14777u) % vec3<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -980f) * _wgslsmith_div_f32(-350f, 1055f)))), _wgslsmith_f_op_f32(step(1389f, _wgslsmith_f_op_f32(max(-923f, _wgslsmith_f_op_f32(146f - 632f)))))), func_4(1u, u_input.a, func_3(func_2(_wgslsmith_clamp_u32(u_input.c, 60406u, 10954u), func_1(true, vec3<i32>(u_input.a, u_input.a, -22602i), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 17u)], 17u)], 17u)], 77019u), vec4<i32>(u_input.a, -1i, u_input.a, 44876i)), vec4<f32>(-1037f, 1000f, 1144f, -330f), max(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(40272u, global0[_wgslsmith_index_u32(29590u, 17u)], 4294967295u))), -1000f), true), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -291f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f), 2020f)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(~(~global0[_wgslsmith_index_u32(u_input.c, 17u)]), u_input.b.x << (firstLeadingBit(u_input.b.x) % 32u)), 50470u, 54574u));
    let var_1 = var_0;
    let var_2 = !(!(!(!(var_0.e >= 1u))));
    var var_3 = func_2(global0[_wgslsmith_index_u32(~14697u, 17u)], _wgslsmith_mult_i32(u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2320f), var_0.d.b, _wgslsmith_f_op_f32(var_1.a.b - 1000f), _wgslsmith_f_op_f32(exp2(var_0.c.a))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(363f, var_0.b.a, -159f, 830f))))), vec3<u32>(max(17196u, ~var_1.e) & 0u, _wgslsmith_add_u32(2988u, 1u), _wgslsmith_sub_u32(select(1u, ~u_input.b.x, var_2), global0[_wgslsmith_index_u32(u_input.c, 17u)])));
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(210f, _wgslsmith_f_op_f32(var_0.b.a + 963f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~firstTrailingBit(22493u)) >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(max(global0[_wgslsmith_index_u32(1u, 17u)], 1u), _wgslsmith_mult_u32(0u, 1u)), 1u) % 32u), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(908f + _wgslsmith_f_op_f32(abs(529f))))), var_0.c.b));
}

