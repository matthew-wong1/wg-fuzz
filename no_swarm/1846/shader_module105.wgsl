struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> bool {
    global0 = array<Struct_1, 17>();
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(abs(arg_1.a))));
    let var_1 = u_input.e.yyw;
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(abs(49487u), abs(1u), (0u | min(arg_0, 0u)) | 33395u), select(abs(vec3<u32>(60871u, arg_0, ~u_input.d.x)), vec3<u32>(u_input.d.x, ~56541u, min(~arg_0, u_input.d.x)), !(!select(vec3<bool>(arg_2.x, arg_2.x, false), arg_2, arg_2))));
    let var_3 = Struct_1(var_0.a);
    return false || any(vec4<bool>(false, any(select(vec2<bool>(arg_2.x, true), arg_2.yz, arg_2.x)), all(vec4<bool>(true, arg_2.x, arg_2.x, false)), all(select(vec4<bool>(true, false, false, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), false))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> bool {
    let var_0 = any(arg_1);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(-arg_3)));
    var var_2 = select(arg_1.xxw, select(select(!select(vec3<bool>(var_0, arg_1.x, false), vec3<bool>(arg_1.x, false, arg_1.x), arg_1.x), vec3<bool>(func_3(u_input.d.x, global0[_wgslsmith_index_u32(19073u, 17u)], arg_1.yzx), true, select(arg_1.x, arg_1.x, arg_1.x)), select(arg_1.wwx, vec3<bool>(true, true, true), select(arg_1.wxw, arg_1.zzw, arg_1.x))), arg_1.xzy, select(arg_1.xyz, !vec3<bool>(var_0, var_0, var_0), !vec3<bool>(var_0, false, arg_1.x))), arg_1.zzx);
    let var_3 = 0u >> (~_wgslsmith_dot_vec4_u32(select(vec4<u32>(32624u, arg_0, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 1u, arg_0, u_input.d.x), select(vec4<bool>(false, var_0, true, var_0), vec4<bool>(true, var_2.x, var_2.x, var_0), vec4<bool>(arg_1.x, var_2.x, arg_1.x, var_0))), vec4<u32>(arg_0, arg_0, u_input.d.x, arg_0) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, arg_0, arg_0, u_input.d.x), vec4<u32>(7038u, arg_0, 4294967295u, 1u))) % 32u);
    let var_4 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_3, _wgslsmith_add_u32(_wgslsmith_mult_u32(~0u, 1u), ~abs(u_input.d.x))), 17u)];
    return _wgslsmith_f_op_f32(abs(var_1.a)) > arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    global0 = array<Struct_1, 17>();
    var var_0 = arg_1.x;
    global0 = array<Struct_1, 17>();
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_3, _wgslsmith_dot_vec2_u32(u_input.d, ~u_input.d)), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(arg_3, arg_3) ^ u_input.d), ~vec2<u32>(0u, 4294967295u))), u_input.d ^ (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5637u, 47670u, u_input.d.x), vec3<u32>(0u, arg_3, 0u)), u_input.d.x) ^ u_input.d));
    global0 = array<Struct_1, 17>();
    return Struct_1(_wgslsmith_f_op_f32(abs(arg_0.a)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 17>();
    let var_0 = func_4(Struct_1(-144f), vec3<bool>((func_2(u_input.d.x, vec4<bool>(arg_0, false, arg_0, false), 2147483647i, arg_1.a) && arg_0) || any(vec4<bool>(arg_0, true, false, true)), arg_0, !arg_0), u_input.c.xxw, 4294967295u);
    var var_1 = func_4(func_4(func_4(Struct_1(_wgslsmith_f_op_f32(min(756f, -640f))), vec3<bool>(any(vec2<bool>(false, false)), true, arg_0), vec3<i32>(0i, 2147483647i, _wgslsmith_add_i32(u_input.c.x, u_input.a)), u_input.d.x), vec3<bool>(true, false & !arg_0, true), select(-u_input.c.zxx, u_input.c.xww, func_3(_wgslsmith_mult_u32(u_input.d.x, 4294967295u), func_4(Struct_1(1641f), vec3<bool>(arg_0, false, true), u_input.e.www, 1u), vec3<bool>(arg_0, false, arg_0))), ~1u), !vec3<bool>(arg_0 || true, false, arg_0), u_input.e.wzw, _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(50685u, 20980u, u_input.d.x), ~vec3<u32>(4294967295u, 72775u, 7976u)) & u_input.d.x));
    var var_2 = func_4(arg_1, select(vec3<bool>(_wgslsmith_f_op_f32(abs(-1016f)) < _wgslsmith_f_op_f32(ceil(arg_1.a)), arg_0, any(vec4<bool>(arg_0, arg_0, false, arg_0))), select(!vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, false), vec3<bool>(any(vec3<bool>(arg_0, true, arg_0)), u_input.e.x == u_input.c.x, true)), !select(!vec3<bool>(true, true, arg_0), select(vec3<bool>(false, true, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, false)), any(vec4<bool>(true, false, arg_0, true)))), vec3<i32>(-26684i, firstTrailingBit(-17975i), _wgslsmith_div_i32(u_input.a, ~u_input.e.x ^ -2147483647i)), 1u);
    var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * -736f) - var_0.a));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(9847u, u_input.d.x, 4294967295u), vec3<u32>(0u, u_input.d.x, 1u)), u_input.d.x | u_input.d.x), vec4<u32>(50733u, 1u, u_input.d.x | u_input.d.x, abs(u_input.d.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(41251u, u_input.d.x, 4294967295u) ^ vec3<u32>(32559u, 0u, u_input.d.x))), _wgslsmith_mult_u32(u_input.d.x, reverseBits(~u_input.d.x)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(38311u, 27208u, u_input.d.x)), vec3<u32>(abs(2485u), ~u_input.d.x, 1u)), ~reverseBits(u_input.d.x))), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true, global0[_wgslsmith_index_u32(~abs(u_input.d.x), 17u)]);
    var var_1 = _wgslsmith_clamp_i32(u_input.e.x, max(_wgslsmith_div_i32(~u_input.a, 34184i), 98891i), _wgslsmith_mod_i32(-(i32(-1i) * -2147483647i), firstLeadingBit(0i)));
    global1 = ~(4294967295u << (~_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(0u, u_input.d.x)) % 32u));
    global1 = abs(_wgslsmith_dot_vec2_u32(firstLeadingBit(max(_wgslsmith_add_vec2_u32(u_input.d, u_input.d), vec2<u32>(4294967295u, 1u))), u_input.d));
    global0 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(-912f, ~firstLeadingBit(~reverseBits(vec4<u32>(34898u, u_input.d.x, 2557u, 7582u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 550f)) + vec2<f32>(1292f, -294f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, 1948f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-878f, var_0.a))))));
}

