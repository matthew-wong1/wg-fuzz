struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(-24671i, vec2<i32>(2147483647i, -1619i)), Struct_1(1i, vec2<i32>(-27609i, 0i)), Struct_1(39163i, vec2<i32>(17828i, -45839i)), Struct_1(-8391i, vec2<i32>(2147483647i, 1i)), Struct_1(1i, vec2<i32>(0i, 2147483647i)), Struct_1(11346i, vec2<i32>(29907i, -49391i)));

var<private> global1: array<f32, 32> = array<f32, 32>(-515f, -599f, 1109f, -950f, 162f, 925f, 2955f, -1000f, -126f, -677f, -1623f, 353f, 805f, -489f, -1000f, -1556f, 450f, -204f, -351f, -1293f, 380f, 524f, 291f, 1214f, -1043f, -656f, -706f, -163f, -605f, 873f, -182f, -195f);

var<private> global2: i32 = -3163i;

var<private> global3: array<i32, 14> = array<i32, 14>(37019i, i32(-2147483648), 0i, -16105i, -1i, 24724i, -24746i, -7914i, 2147483647i, -1i, -38321i, 37693i, -52500i, 1299i);

var<private> global4: array<Struct_1, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_1 {
    return global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(abs(u_input.a), 1u), 6u)];
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>) -> vec2<i32> {
    return arg_1;
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global3 = array<i32, 14>();
    var var_0 = vec3<i32>(-_wgslsmith_sub_i32(-8097i, _wgslsmith_clamp_i32(-66744i ^ arg_3.a, 74048i, countOneBits(u_input.b))), func_1(~vec2<i32>(~23787i, 57404i), vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(u_input.a), _wgslsmith_mod_u32(u_input.a, u_input.a)), u_input.a, ~0u)).b.x, arg_3.b.x);
    let var_1 = !any(select(!(!vec4<bool>(true, true, arg_1.x, arg_1.x)), select(vec4<bool>(arg_1.x, true, false, false), !vec4<bool>(arg_1.x, true, true, arg_1.x), !vec4<bool>(false, arg_1.x, arg_1.x, false)), !(8035u == u_input.a)));
    var var_2 = 23370u;
    global3 = array<i32, 14>();
    return (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 21396u ^ u_input.a, ~12935u), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 40952u, u_input.a, u_input.a), vec4<u32>(38246u, 33810u, 71112u, 4294967295u)), ~vec4<u32>(66288u, u_input.a, 64606u, u_input.a))) | (u_input.a & u_input.a)) == 32969u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(-435f >= _wgslsmith_f_op_f32(sign(650f))), func_3(923f, select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), func_1(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(global3[_wgslsmith_index_u32(u_input.a, 14u)], 0i)), vec3<u32>(65322u, 4294967295u, 0u)), Struct_1(~global3[_wgslsmith_index_u32(0u, 14u)], func_2(vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), vec2<i32>(u_input.b, u_input.b)))), any(vec2<bool>(true, false))) | true;
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, 41148i & _wgslsmith_div_i32(global3[_wgslsmith_index_u32(select(26461u, u_input.a, var_0), 14u)], func_2(vec4<u32>(528u, 3538u, 15746u, u_input.a), vec2<i32>(global3[_wgslsmith_index_u32(25317u, 14u)], -2147483647i)).x)), 1000f, vec3<f32>(_wgslsmith_f_op_f32(-851f - global1[_wgslsmith_index_u32(1u, 32u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -355f) * global1[_wgslsmith_index_u32(4294967295u, 32u)]), global1[_wgslsmith_index_u32(u_input.a, 32u)]));
}

