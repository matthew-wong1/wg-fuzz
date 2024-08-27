struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6>;

var<private> global1: array<vec4<bool>, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: vec4<f32>) -> bool {
    global0 = array<vec2<f32>, 6>();
    global1 = array<vec4<bool>, 22>();
    let var_0 = abs(abs(46301u << (u_input.a.x % 32u)) << (4294967295u % 32u)) & u_input.c;
    var var_1 = arg_3;
    var var_2 = false;
    return arg_1.a.d;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_3(arg_1.a);
    let var_1 = Struct_2(Struct_1(reverseBits((vec2<u32>(u_input.b, arg_2.b) & vec2<u32>(arg_2.b, 20756u)) >> (var_0.a.a % vec2<u32>(32u))), reverseBits(var_0.a.a.x), u_input.b, all(select(global1[_wgslsmith_index_u32(0u, 22u)], select(global1[_wgslsmith_index_u32(arg_2.b, 22u)], vec4<bool>(var_0.a.e, var_0.a.e, var_0.a.d, var_0.a.d), arg_1.a.d), !vec4<bool>(arg_2.e, arg_1.a.e, false, true))), var_0.a.e), arg_2);
    let var_2 = 98028u;
    var var_3 = -984f;
    let var_4 = Struct_2(Struct_1(reverseBits(arg_1.b.a), u_input.b, var_0.a.b, func_3(Struct_3(Struct_1(vec2<u32>(0u, var_2), var_1.b.a.x, 4294967295u, false, arg_1.b.d)), Struct_3(Struct_1(vec2<u32>(29446u, 1u), 24885u, var_2, false, true)), arg_2.d, _wgslsmith_div_vec4_f32(vec4<f32>(1594f, -932f, 861f, -313f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-439f, -1013f, 1350f, -943f), vec4<f32>(1478f, 282f, -1000f, 1278f))))), 690f <= _wgslsmith_f_op_f32(floor(-202f))), Struct_1(reverseBits(~abs(vec2<u32>(var_1.b.b, var_0.a.a.x))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a.yxx, u_input.a.xwz), 1u, var_2 >> (var_1.b.c % 32u)) << (~(~var_0.a.c) % 32u), 36974u, !any(!vec2<bool>(false, arg_1.b.e)), !(!(true | var_1.a.e))));
    return ~arg_1.b.c;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> f32 {
    global0 = array<vec2<f32>, 6>();
    let var_0 = _wgslsmith_sub_vec3_u32(u_input.a.yzz, reverseBits(~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xw, u_input.a.wx), ~arg_1.x, arg_1.x)));
    var var_1 = vec4<bool>(~(~var_0.x) < min(_wgslsmith_mod_u32(0u, ~var_0.x), func_2(vec3<i32>(arg_0, arg_0, arg_0), Struct_2(Struct_1(var_0.xy, 56056u, 0u, false, false), Struct_1(vec2<u32>(u_input.a.x, 1u), 50416u, 4294967295u, false, true)), Struct_1(u_input.a.yy, arg_1.x, var_0.x, true, true)) << (var_0.x % 32u)), all(!vec2<bool>(true, all(vec2<bool>(false, false)))), true, true);
    return -1973f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(reverseBits(1i), vec2<u32>(4294967295u, u_input.c)))))));
    global1 = array<vec4<bool>, 22>();
    let var_1 = abs(u_input.a | ~u_input.a);
    var var_2 = -1i;
    let var_3 = Struct_1(~select(vec2<u32>(u_input.a.x, 898u), countOneBits(vec2<u32>(var_1.x, var_1.x)), true), _wgslsmith_mult_u32(~0u << (firstTrailingBit(var_1.x) % 32u), ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(57474u, 0u, u_input.a.x, 0u))) << (57065u % 32u), _wgslsmith_div_u32(max(u_input.b, firstTrailingBit(min(43272u, 23881u))), ~(firstTrailingBit(var_1.x) & u_input.c)), true, true);
    global0 = array<vec2<f32>, 6>();
    let var_4 = Struct_1(min(vec2<u32>(1u, reverseBits(u_input.c)), ~(~vec2<u32>(54310u, 36825u))) ^ ~var_3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x >> (~13998u % 32u), 4974u, 57518u, ~(~var_3.a.x)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 87079u, u_input.a.x), vec4<u32>(var_1.x, 0u, 4294967295u, 0u)), vec4<u32>(func_2(vec3<i32>(2147483647i, -13745i, -18626i), Struct_2(var_3, Struct_1(vec2<u32>(var_3.b, 10838u), 0u, var_3.a.x, var_3.d, false)), var_3), ~14228u, ~u_input.b, min(0u, 43808u)), any(vec3<bool>(var_3.e, var_3.e, var_3.d)))), countOneBits(27261u), true, var_3.d);
    var var_5 = Struct_2(var_3, var_3);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(20358i, _wgslsmith_mult_vec2_u32(vec2<u32>(var_4.a.x, var_1.x), _wgslsmith_add_vec2_u32(var_3.a, vec2<u32>(var_1.x, var_3.a.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1283f - 883f))), 1035f), all(select(select(vec3<bool>(true, false, true), vec3<bool>(var_4.e, true, true), var_5.b.e), select(vec3<bool>(var_3.e, false, true), vec3<bool>(var_4.d, true, var_3.e), vec3<bool>(var_5.a.d, var_4.d, var_3.d)), select(vec3<bool>(var_3.e, false, false), vec3<bool>(var_5.a.d, var_3.e, true), vec3<bool>(false, true, var_4.d)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-945f - 242f) + 700f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(716f, 313f, 1f), abs(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(0i, -7328i), 16043i)), vec2<i32>(1i, -2147483647i));
}

