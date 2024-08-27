struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

var<private> global1: array<i32, 13>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec2<f32> {
    global1 = array<i32, 13>();
    global0 = array<vec3<bool>, 12>();
    let var_0 = vec4<i32>(i32(-1i) * -28079i, -2147483647i, _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-23434i, -38564i, 52392i, -27762i), vec4<i32>(global1[_wgslsmith_index_u32(50774u, 13u)], 9686i, global1[_wgslsmith_index_u32(1046u, 13u)], u_input.a.x)), vec4<i32>(-6797i, u_input.a.x, u_input.a.x, -11603i), max(vec4<i32>(-1i, global1[_wgslsmith_index_u32(arg_2.a, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)], global1[_wgslsmith_index_u32(arg_2.a, 13u)]), vec4<i32>(7081i, u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(arg_2.a, 13u)]))), countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), -1i, countOneBits(-1i), abs(0i)))), ~_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -2147483647i)), i32(-1i) * -36656i), ~firstLeadingBit(-12586i)));
    global1 = array<i32, 13>();
    var var_1 = select(1i << (_wgslsmith_sub_u32(arg_0.a, ~4294967295u) % 32u), var_0.x >> (_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 1u), ~vec2<u32>(arg_0.a, 64262u), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(45068u, 4294967295u), vec2<u32>(4294967295u, u_input.b)), select(vec2<u32>(arg_2.b, 12993u), vec2<u32>(arg_0.b, arg_2.a), vec2<bool>(false, false)))) % 32u), false);
    return arg_1.yz;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(30302u, 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-483f, -2655f, 1453f, 134f)), arg_1))))));
    var var_1 = arg_1;
    var var_2 = 38218u;
    var_1 = arg_0;
    let var_3 = vec3<u32>(~(62902u & max(min(arg_0.b, u_input.b), var_1.b)), 66386u, _wgslsmith_sub_u32(min(abs(var_1.b) << (arg_1.b % 32u), _wgslsmith_div_u32(arg_1.a, _wgslsmith_clamp_u32(u_input.b, arg_0.b, 67387u))), 42430u));
    return Struct_1(arg_1.b, max(u_input.b, abs(u_input.b) & _wgslsmith_sub_u32(arg_0.a, 5444u)) ^ 1u);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    var var_0 = arg_1;
    var_0 = abs(min(-arg_1, 2147483647i));
    var var_1 = Struct_1(arg_0, _wgslsmith_clamp_u32(arg_2.a, ~(~(~u_input.b)), 0u));
    let var_2 = u_input.a.x;
    let var_3 = func_2(arg_2, arg_2, 1i, firstTrailingBit(vec2<i32>(-global1[_wgslsmith_index_u32(arg_2.a, 13u)], global1[_wgslsmith_index_u32(0u, 13u)]) & vec2<i32>(1892i, -68114i)));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(u_input.b, 39347u, u_input.b)) >> (~u_input.b % 32u)), (~u_input.b >> (func_1(u_input.b, global1[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(u_input.b, u_input.b), vec2<f32>(-1134f, -836f)) % 32u)) ^ _wgslsmith_clamp_u32(26964u, _wgslsmith_clamp_u32(u_input.b, 1u, 3251u), u_input.b)), u_input.b);
    global1 = array<i32, 13>();
    var_0 = Struct_1(select(0u, ~(~25664u) | _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(var_0.a, 12809u)), 1f <= _wgslsmith_f_op_f32(ceil(1144f))), var_0.a | ~abs(func_2(Struct_1(1u, u_input.b), Struct_1(var_0.b, u_input.b), u_input.a.x, u_input.a).b));
    global1 = array<i32, 13>();
    global0 = array<vec3<bool>, 12>();
    let var_1 = _wgslsmith_div_vec3_i32(~abs(vec3<i32>(_wgslsmith_div_i32(-46453i, global1[_wgslsmith_index_u32(53676u, 13u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(-10061i, -1i), vec2<i32>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(40508u, 13u)])), 1i >> (u_input.b % 32u))), -(~firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -1i, global1[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<i32>(0i, global1[_wgslsmith_index_u32(var_0.b, 13u)], u_input.a.x)))));
    var var_2 = select(!(true && !any(vec4<bool>(false, true, false, false))), true, true);
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(-3675i, abs(-1i)), var_1.xx, select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f) - _wgslsmith_f_op_f32(f32(-1f) * -313f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-786f, -1450f, 1098f, -502f) + vec4<f32>(1087f, 232f, 1120f, -1000f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1139f, 466f, 1134f, -386f), vec4<f32>(1527f, -888f, -162f, -176f))))))), var_1.x);
}

