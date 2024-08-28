struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<bool, 10>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: f32) -> vec3<bool> {
    var var_0 = Struct_4(_wgslsmith_sub_u32(4294967295u, 85u));
    var var_1 = 390f;
    let var_2 = Struct_2(vec4<u32>(0u, ~abs(4294967295u), 7470u ^ _wgslsmith_mod_u32(u_input.a.x, ~var_0.a), u_input.a.x));
    var_1 = _wgslsmith_div_f32(-1135f, _wgslsmith_div_f32(arg_2, arg_2));
    let var_3 = _wgslsmith_mult_u32(var_2.a.x >> (0u % 32u), var_2.a.x);
    return select(arg_1.a, select(select(!vec3<bool>(false, true, arg_1.a.x), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)], false), vec3<bool>(arg_1.a.x, global0[_wgslsmith_index_u32(var_0.a, 9u)], true), vec3<bool>(true, true, arg_1.a.x)), vec3<bool>(any(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 10u)], arg_1.a.x, false)), arg_1.a.x, all(arg_1.a.xz))), arg_1.a, arg_1.a), !vec3<bool>(true & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_2.a.yzx, vec3<u32>(11130u, 0u, u_input.a.x)), 9u)], arg_2 >= _wgslsmith_f_op_f32(arg_0.x * -2146f), false));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> f32 {
    var var_0 = arg_0.x;
    global0 = array<bool, 9>();
    var var_1 = vec3<u32>(arg_0.x, u_input.a.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 56531u, arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(31348u, 41671u, 39949u, u_input.a.x), vec4<u32>(arg_0.x, 10411u, arg_1.x, 1u))), arg_1.x << (~0u % 32u))) & ~arg_1;
    let var_2 = Struct_2(firstTrailingBit(select(countOneBits(~vec4<u32>(59794u, 105801u, 6146u, var_1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(8659u, u_input.a.x, u_input.a.x, 38535u), vec4<u32>(1u, 19355u, 142914u, 66621u)), all(arg_2.zz))));
    global1 = array<bool, 10>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f), 264f)))));
}

fn func_1() -> u32 {
    var var_0 = 63457u;
    var var_1 = Struct_3(!select(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false), !func_2(vec2<f32>(-1586f, -624f), Struct_3(vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], false, true)), 2800f), global0[_wgslsmith_index_u32(4294967295u, 9u)]));
    let var_2 = u_input.a.x;
    let var_3 = vec4<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(0u, 62215u), vec3<u32>(4294967295u, 4294967295u, u_input.a.x), vec4<bool>(var_1.a.x, false, global1[_wgslsmith_index_u32(1u, 10u)], false), vec4<i32>(-44792i, 2147483647i, 0i, u_input.b)))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-486f, 795f))))) | global1[_wgslsmith_index_u32(1u, 10u)], false, any(!vec2<bool>(true, func_2(vec2<f32>(1313f, -109f), Struct_3(var_1.a), 915f).x)), all(var_1.a));
    global0 = array<bool, 9>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1());
    global1 = array<bool, 10>();
    var var_1 = !func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(-857f)), _wgslsmith_f_op_f32(-1288f + -2258f))), Struct_3(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(516f, 309f, global0[_wgslsmith_index_u32(45438u, 9u)])))) - _wgslsmith_f_op_f32(f32(-1f) * -1140f))).zz;
    let var_2 = Struct_3(!vec3<bool>(var_1.x || true, true, true));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1072f, 1000f, -175f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -960f, -1180f) * vec3<f32>(861f, -534f, 660f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1081f, 694f)), 1f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(536f))))), !(!(!select(vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.a, 10u)], global1[_wgslsmith_index_u32(87250u, 10u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(29694u, 10u)], var_1.x), var_2.a)))));
    var var_4 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.a, 38579u, var_0.a, 49640u)) << ((vec4<u32>(0u, 29055u, var_0.a, var_0.a) ^ vec4<u32>(var_0.a, 0u, 44841u, u_input.a.x)) % vec4<u32>(32u)), vec4<u32>(var_0.a, u_input.a.x, 69081u, 1u)), var_0.a, ~(~_wgslsmith_div_u32(4294967295u, u_input.a.x))), vec3<u32>(_wgslsmith_mult_u32(~27631u, select(max(var_0.a, var_0.a), u_input.a.x, global1[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_clamp_u32(~var_0.a, ~var_0.a, u_input.a.x), ~_wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(u_input.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.x, 1512f, -1043f), vec3<f32>(var_3.x, var_3.x, var_3.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-444f, var_3.x, -387f)), var_2.a)) - vec3<f32>(var_3.x, var_3.x, 198f))), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.b, 54178i, 3489i) & vec3<i32>(2681i, 22677i, u_input.b)), firstTrailingBit(reverseBits(vec3<i32>(0i, u_input.b, 3901i)))) ^ ~_wgslsmith_mod_vec3_i32(~vec3<i32>(9291i, u_input.b, u_input.b), -vec3<i32>(u_input.b, u_input.b, u_input.b)), ~4294967295u, 1000f, u_input.b);
}

