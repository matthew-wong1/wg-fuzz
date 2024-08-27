struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
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

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<f32, 26> = array<f32, 26>(1054f, -334f, 593f, -1189f, -1131f, 1689f, -784f, 641f, 104f, 1439f, 2548f, 678f, 1625f, 1856f, 1056f, 132f, -1249f, -773f, 173f, -818f, 1221f, -1000f, -2155f, 294f, -132f, 1000f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<f32, 26>();
    var var_0 = (!(!(arg_2.b == 7702u)) | (9915u == _wgslsmith_clamp_u32(select(0u, 113906u, false), u_input.b ^ 1u, 0u))) & false;
    var_0 = false;
    var var_1 = _wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(arg_1.b, 4294967295u, 1u, _wgslsmith_mult_u32(arg_1.b, 51753u))), arg_1.a);
    var var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(45058u, 26u)]);
    return Struct_1(arg_2.a, ~61309u);
}

fn func_3() -> bool {
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_0 = func_1(~abs(abs(vec4<u32>(u_input.b, 4294967295u, 32503u, 4294967295u) | vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.b))), Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 13257u, 1u, u_input.e.x), vec4<u32>(0u, u_input.b, 64519u, u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(43404u, u_input.b, u_input.e.x, 1u), vec4<u32>(39725u, 2930u, u_input.b, 34624u))), ~vec4<u32>(0u, u_input.b, 0u, 1u)), u_input.e.x | 4731u), global0[_wgslsmith_index_u32(u_input.e.x, 18u)]);
    let var_1 = Struct_1(select(vec4<u32>(min(var_0.a.x, firstTrailingBit(0u)), u_input.e.x, var_0.b, ~0u), countOneBits((var_0.a | vec4<u32>(4294967295u, var_0.a.x, u_input.e.x, var_0.b)) << (vec4<u32>(var_0.a.x, var_0.a.x, 24972u, u_input.e.x) % vec4<u32>(32u))), vec4<bool>(!all(vec3<bool>(true, false, false)), true, all(vec3<bool>(true, false, true)), true)), firstTrailingBit(countOneBits(u_input.e.x)));
    global1 = array<f32, 26>();
    return any(select(vec3<bool>(true, true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = array<Struct_1, 18>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(561f, global1[_wgslsmith_index_u32(arg_1.b, 26u)], -759f)) * vec3<f32>(arg_0, arg_0, global1[_wgslsmith_index_u32(0u, 26u)])))));
    let var_1 = vec3<bool>(!all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), func_3())), all(vec3<bool>(true, true, true)) | all(vec2<bool>(true, true)), true);
    var var_2 = global0[_wgslsmith_index_u32(24470u, 18u)];
    let var_3 = global0[_wgslsmith_index_u32(~1u, 18u)];
    return ~(~(~(1u ^ _wgslsmith_mod_u32(0u, arg_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 26>();
    let var_0 = ~(~(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, 24660u, u_input.e.x)))));
    global0 = array<Struct_1, 18>();
    global1 = array<f32, 26>();
    var var_1 = global1[_wgslsmith_index_u32(~0u, 26u)];
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 26u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~firstTrailingBit(12147u), 26u)])), _wgslsmith_f_op_f32(f32(-1f) * -1601f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.b, 0u), vec3<u32>(u_input.e.x, u_input.b, 0u)) ^ ~_wgslsmith_mult_u32(0u, 0u), 26u)] - global1[_wgslsmith_index_u32(1u, 26u)]), 1394f);
    let var_3 = Struct_1(vec4<u32>(~var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(min(41734u, var_0.x), ~var_0.x, ~4294967295u, ~u_input.e.x), _wgslsmith_mod_vec4_u32(var_0, var_0)), ~(~0u) >> (~u_input.b % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(33611u, 4294967295u), vec2<u32>(122377u, var_0.x)) ^ 0u), firstLeadingBit(~func_2(_wgslsmith_f_op_f32(select(-242f, global1[_wgslsmith_index_u32(1u, 26u)], true)), func_1(var_0, Struct_1(vec4<u32>(var_0.x, 4294967295u, var_0.x, 0u), 2176u), global0[_wgslsmith_index_u32(u_input.e.x, 18u)]), Struct_1(var_0, var_0.x))));
    global1 = array<f32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(var_2.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.wz, vec2<f32>(var_2.x, -1040f)) + vec2<f32>(-210f, global1[_wgslsmith_index_u32(var_3.a.x, 26u)])) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(8584u, 26u)], 2063f) * var_2.xy))))));
}

