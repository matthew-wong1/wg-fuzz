struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<i32, 16>;

var<private> global2: vec2<bool>;

var<private> global3: array<vec4<u32>, 28>;

var<private> global4: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(1687f, vec3<f32>(176f, 329f, -747f), Struct_1(vec2<f32>(-986f, -159f), -2010i, -1169f, vec2<u32>(11245u, 0u), false), vec2<f32>(-250f, 717f)), Struct_2(909f, vec3<f32>(-161f, 1185f, 608f), Struct_1(vec2<f32>(-1116f, -165f), 0i, -638f, vec2<u32>(0u, 1u), false), vec2<f32>(-1609f, -734f)), Struct_2(-1237f, vec3<f32>(-1071f, -585f, -437f), Struct_1(vec2<f32>(2580f, 1583f), 0i, 1516f, vec2<u32>(50460u, 4294967295u), true), vec2<f32>(-644f, 1311f)), Struct_2(401f, vec3<f32>(851f, -563f, 268f), Struct_1(vec2<f32>(337f, 500f), 2147483647i, 1101f, vec2<u32>(0u, 3736u), true), vec2<f32>(214f, -430f)), Struct_2(384f, vec3<f32>(881f, -515f, 2181f), Struct_1(vec2<f32>(-552f, -187f), -1i, -652f, vec2<u32>(0u, 4294967295u), false), vec2<f32>(222f, 1665f)), Struct_2(143f, vec3<f32>(3046f, 106f, 147f), Struct_1(vec2<f32>(883f, -647f), 2147483647i, 880f, vec2<u32>(4294967295u, 0u), true), vec2<f32>(1274f, 1000f)), Struct_2(252f, vec3<f32>(-1667f, 1000f, 1000f), Struct_1(vec2<f32>(786f, -1798f), -80087i, -576f, vec2<u32>(4294967295u, 4294967295u), false), vec2<f32>(-1626f, -1720f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    let var_0 = u_input.b.x;
    global0 = vec4<i32>(-1i) * -vec4<i32>(global0.x, _wgslsmith_dot_vec3_i32(global0.ywz >> (u_input.d % vec3<u32>(32u)), global0.yxw), min(12468i, u_input.e) << (1u % 32u), (2147483647i & u_input.e) >> (~u_input.c % 32u));
    global1 = array<i32, 16>();
    global0 = vec4<i32>(~global1[_wgslsmith_index_u32(19736u >> (~(~1u) % 32u), 16u)], 18554i, u_input.e, _wgslsmith_dot_vec2_i32(global0.zy, -global0.yz));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~firstTrailingBit(u_input.d.x), 1u, ~_wgslsmith_div_u32(36484u, u_input.a)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 35552u), _wgslsmith_sub_vec3_u32(u_input.b.zxx, u_input.d)), vec3<u32>(u_input.b.x, var_0, u_input.d.x), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(29152u, 26607u), vec2<u32>(u_input.a, 118207u)), abs(var_0), _wgslsmith_clamp_u32(4294967295u, u_input.a, 78368u))), vec3<u32>(4677u, ~u_input.c, var_0 | 0u)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, 326f))))));
}

fn func_2(arg_0: u32) -> vec2<f32> {
    var var_0 = !select(vec2<bool>(true, select(true, global2.x, true)), !vec2<bool>(true, all(vec2<bool>(true, true))), global2.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-529f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(2136f)))), (arg_0 << (arg_0 % 32u)) >= u_input.b.x))) - _wgslsmith_div_f32(1085f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2408f, -1000f)) + 769f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1201f * -1611f))))));
    var_0 = !vec2<bool>(any(!vec3<bool>(var_0.x, true, false)) | true, true);
    var var_2 = !vec2<bool>(!global2.x, false);
    let var_3 = vec3<u32>(_wgslsmith_div_u32(~1u, ~77954u), arg_0 | countOneBits(~(~u_input.c)), arg_0);
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1137f)), -1252f)))), _wgslsmith_f_op_f32(f32(-1f) * -1474f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(2907f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-632f, -489f)), select(false, false, var_2.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(1051f)).x, _wgslsmith_f_op_f32(f32(-1f) * -785f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-716f, 758f), vec2<f32>(1000f, -551f), var_2.x))))), global2.x));
}

fn func_1(arg_0: i32) -> vec3<i32> {
    let var_0 = vec4<i32>(-u_input.e, _wgslsmith_add_i32(global0.x, _wgslsmith_dot_vec3_i32(-global0.wwx, vec3<i32>(u_input.e, global0.x, global0.x))), u_input.e, 34898i) << (vec4<u32>(53347u, ~u_input.d.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2409f, -1864f))) - vec2<f32>(-606f, -1016f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(~41214u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(u_input.a)))), vec2<bool>(true, any(vec3<bool>(global2.x, global2.x, global2.x)))))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(var_0, var_0 & vec4<i32>(-1723i, global1[_wgslsmith_index_u32(51967u, 16u)], arg_0, global0.x)), -(-2147483647i ^ global0.x)), select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 8136i), global0.zy), _wgslsmith_mult_i32(-2147483647i, arg_0)), abs(-global0.yz), 0u < _wgslsmith_add_u32(25314u, u_input.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -326f), ~u_input.b.yx, true);
    let var_2 = -(~abs(2147483647i));
    var var_3 = 6345i;
    let var_4 = vec2<u32>(var_1.d.x, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_clamp_u32(~0u, 46262u, u_input.a), ~63057u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.d.x, var_1.d.x, 30887u), vec3<u32>(4294967295u, 2072u, var_1.d.x)), u_input.d), 1u)));
    return -_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(var_1.b, var_2, global0.x)), ~(-vec3<i32>(-1i, -25403i, -30325i))), firstLeadingBit(-_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, var_0.x, -2147483647i), var_0.xyz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    global3 = array<vec4<u32>, 28>();
    global3 = array<vec4<u32>, 28>();
    let var_1 = u_input.d.xx;
    var var_2 = _wgslsmith_sub_vec3_i32(global0.xyy, func_1(~(i32(-1i) * -15013i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, 2534i, ~global3[_wgslsmith_index_u32(61207u, 28u)], _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1123f, _wgslsmith_f_op_f32(-522f * _wgslsmith_f_op_f32(sign(103f)))))));
}

