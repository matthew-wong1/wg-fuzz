struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

var<private> global1: Struct_1 = Struct_1(vec4<u32>(0u, 3740u, 0u, 4294967295u));

var<private> global2: array<i32, 23>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<u32> {
    var var_0 = abs(_wgslsmith_sub_u32(19191u, ~u_input.d));
    var_0 = abs(global1.a.x);
    let var_1 = Struct_1(vec4<u32>(~0u, ~u_input.d, min(global1.a.x, global1.a.x), ~(~8182u << (abs(global1.a.x) % 32u))));
    var_0 = 26936u & (29009u | select(~84015u, ~global1.a.x, false));
    let var_2 = u_input.d;
    return vec3<u32>(_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 1u)), u_input.a.yz)), 1u, countOneBits(firstLeadingBit(4294967295u))), _wgslsmith_sub_u32(max(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(0u, 0u, var_1.a.x, 4294967295u)), global1.a.x, abs(var_2)), 1u), 82290u), abs(~(~global1.a.x >> ((var_1.a.x | global1.a.x) % 32u))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: vec2<f32>) -> vec4<u32> {
    let var_0 = arg_3.x;
    global0 = array<vec4<bool>, 32>();
    global0 = array<vec4<bool>, 32>();
    global2 = array<i32, 23>();
    return min(~(~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, 51631u, arg_0.a.x, global1.a.x)), vec4<u32>(u_input.a.x, 21393u, arg_0.a.x, arg_0.a.x))), vec4<u32>(global1.a.x, 26625u, _wgslsmith_dot_vec3_u32(~max(vec3<u32>(58398u, u_input.d, 1635u), vec3<u32>(arg_0.a.x, u_input.d, 0u)), func_3()), _wgslsmith_mult_u32(global1.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.a.x, u_input.a.x), vec3<u32>(6396u, 0u, 88820u)), ~1u))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(func_2(Struct_1(vec4<u32>(1774u, 4294967295u, 32459u, 0u)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), select(u_input.c, vec2<i32>(global2[_wgslsmith_index_u32(43983u, 23u)], u_input.e), any(global0[_wgslsmith_index_u32(0u, 32u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(-3015f, 439f) + vec2<f32>(1406f, -1452f))), vec4<u32>(1u, abs(func_2(Struct_1(u_input.a), false, vec2<i32>(global2[_wgslsmith_index_u32(0u, 23u)], u_input.b), vec2<f32>(-705f, 1000f)).x), u_input.d, (u_input.a.x | global1.a.x) << (0u % 32u))));
    let var_1 = select(_wgslsmith_clamp_i32(2147483647i, -2147483647i, ~_wgslsmith_div_i32(-1i, 1i)) << (0u % 32u), -u_input.c.x, true);
    let var_2 = var_0.a.yw;
    let var_3 = var_0;
    global2 = array<i32, 23>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 32>();
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1435f, _wgslsmith_f_op_f32(max(462f, -508f)), -2218f, _wgslsmith_f_op_f32(f32(-1f) * -906f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(452f, -905f, -435f, 1897f), vec4<f32>(1651f, -1099f, 937f, -682f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-962f, -1527f, -1789f, -1210f) + vec4<f32>(-1000f, 223f, -181f, 2286f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1013f, -334f, 1000f, -1539f))))));
    var var_2 = func_1();
    var var_3 = Struct_1(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(-32739i, max(-2147483647i, -1i)), global2[_wgslsmith_index_u32(global1.a.x, 23u)], var_1.x, vec3<i32>(-1i, u_input.e, 0i));
}

