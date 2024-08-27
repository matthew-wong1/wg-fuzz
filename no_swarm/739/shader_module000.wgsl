struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(1i, 32392i, 2147483647i, 0i, 0i);

var<private> global1: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_2 {
    global0 = array<i32, 5>();
    global1 = Struct_2(global1.a, u_input.b);
    global0 = array<i32, 5>();
    var var_0 = vec2<i32>(firstTrailingBit(~u_input.b.x), 41141i);
    let var_1 = _wgslsmith_f_op_f32(755f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.a.x), arg_0, false)))));
    return Struct_2(global1.a, u_input.b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    global0 = array<i32, 5>();
    var var_1 = func_2(_wgslsmith_f_op_f32(-global1.a.a.x), 0i).a.b.ywx;
    var_0 = func_2(-117f, _wgslsmith_sub_i32(-2147483647i, (var_0.b.x << (var_0.a.d % 32u)) ^ 0i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, ~var_0.a.c.x), ~(-arg_0.a.c)));
    let var_2 = ~(~max(firstTrailingBit(vec2<u32>(var_0.a.d, 4294967295u)) | (vec2<u32>(1u, arg_1.d) & vec2<u32>(0u, arg_0.a.d)), reverseBits(~vec2<u32>(32617u, arg_1.d))));
    return func_2(-1177f, _wgslsmith_mult_i32(func_2(_wgslsmith_f_op_f32(round(445f)), select(arg_0.b.x, firstTrailingBit(global1.a.c.x), all(vec3<bool>(true, false, true)))).b.x, _wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_mod_i32(16298i, arg_0.a.c.x)), 0i)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(var_0.a.b.www, vec3<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1571f + var_0.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.a.a.x, arg_3.a.a.x)))), global1.a.b, vec2<i32>(-_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_3.b.x, -5265i, -1219i)), vec3<i32>(global1.a.c.x, -2147483647i, global1.a.c.x)), 0i), select(firstLeadingBit(select(arg_0.a.d, arg_3.a.d, arg_1.x)) ^ ~arg_2, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_3.a.d), vec2<u32>(0u, 0u))), true));
    var var_2 = abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(max(1i, 9747i), firstLeadingBit(-18113i), -(i32(-1i) * -1i), -1i), ~vec4<i32>(1i, -1i, ~1i, 1i), firstLeadingBit(-vec4<i32>(-34774i, -5522i, var_1.c.x, -2147483647i)) & max(vec4<i32>(0i, 0i, u_input.b.x, -27985i) & vec4<i32>(global1.a.c.x, u_input.b.x, -1i, 2147483647i), vec4<i32>(36801i, arg_3.a.c.x, 61155i, 27488i))));
    var var_3 = -15437i;
    let var_4 = arg_1.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), var_0.a.b, vec2<i32>(-(-15711i >> (max(arg_2, 9255u) % 32u)), ~(-global0[_wgslsmith_index_u32(~arg_0.a.d, 5u)])), var_0.a.d);
}

fn func_1(arg_0: u32) -> vec3<i32> {
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    let var_0 = arg_0;
    var var_1 = func_4(func_3(func_2(global1.a.b.x, select(global1.b.x, -18849i >> (global1.a.d % 32u), true)), func_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.a.b.x, global1.a.a.x), global1.a.a.x)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(6521i, global1.b.x), u_input.b.x)).a), vec4<bool>(true, (0i > firstTrailingBit(-1i)) || false, any(vec3<bool>(true, select(false, false, true), any(vec3<bool>(true, false, false)))), true), abs(~u_input.a), func_2(-128f, -1i));
    var var_2 = -1i;
    return vec3<i32>(firstTrailingBit(_wgslsmith_clamp_i32(global1.a.c.x, _wgslsmith_mod_i32(global1.a.c.x & u_input.b.x, _wgslsmith_div_i32(var_1.c.x, 1i)), 2147483647i)), 0i, global0[_wgslsmith_index_u32(abs(~(var_1.d << (_wgslsmith_add_u32(var_0, var_0) % 32u))), 5u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    var var_0 = func_1(1u);
    var var_1 = -287f;
    let var_2 = func_4(func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-596f, global1.a.a.x, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.x, -109f, 1517f, global1.a.b.x) - global1.a.b), vec2<i32>(1i, 18606i) | u_input.b, u_input.a >> (u_input.a % 32u)), func_1(u_input.a << (25112u % 32u)).yz), func_3(func_3(func_2(-1878f, global0[_wgslsmith_index_u32(global1.a.d, 5u)]), func_4(Struct_2(global1.a, var_0.zy), vec4<bool>(true, false, true, false), 4294967295u, Struct_2(Struct_1(vec3<f32>(-545f, 271f, 136f), global1.a.b, var_0.zx, 48781u), vec2<i32>(1i, 2147483647i)))), Struct_1(func_2(1278f, 2147483647i).a.b.zwx, _wgslsmith_f_op_vec4_f32(global1.a.b * global1.a.b), var_0.yx, _wgslsmith_add_u32(51569u, u_input.a))).a), vec4<bool>(true, true, true, true), min(global1.a.d, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.d, 4294967295u), vec2<u32>(1u, u_input.a)) << (~71212u % 32u)), func_3(func_3(func_2(_wgslsmith_f_op_f32(-global1.a.b.x), ~1i), global1.a), func_3(Struct_2(Struct_1(vec3<f32>(849f, 1334f, global1.a.a.x), global1.a.b, global1.a.c, 48776u), abs(global1.b)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a.b.x, -1172f, 761f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.a.b.x, -312f, -307f)), u_input.b ^ u_input.b, u_input.a)).a));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-114f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1740f)), all(vec2<bool>(any(vec3<bool>(true, true, false)), true)))) - _wgslsmith_f_op_f32(-global1.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, u_input.a, _wgslsmith_f_op_f32(-var_3), u_input.a);
}

