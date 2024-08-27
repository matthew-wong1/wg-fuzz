struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<i32>(18940i, -1i, i32(-2147483648))), Struct_1(vec3<i32>(0i, 2147483647i, -17518i)), Struct_1(vec3<i32>(1i, 0i, 2147483647i)));

var<private> global2: u32;

var<private> global3: array<vec2<bool>, 20>;

var<private> global4: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-543f, -179f, -513f), vec3<f32>(935f, -401f, -383f), vec3<f32>(-382f, 1000f, 2034f), vec3<f32>(-2004f, 1000f, 294f), vec3<f32>(-688f, 1772f, -505f), vec3<f32>(711f, 1790f, -1223f), vec3<f32>(955f, -2203f, -364f), vec3<f32>(306f, -896f, 546f), vec3<f32>(194f, -454f, -584f), vec3<f32>(1649f, -774f, 1206f), vec3<f32>(1966f, -251f, -1000f), vec3<f32>(349f, 1098f, -1000f), vec3<f32>(257f, 687f, -1458f), vec3<f32>(-566f, 886f, 1837f), vec3<f32>(-1000f, -1281f, -1117f), vec3<f32>(554f, 214f, 2283f), vec3<f32>(-608f, 969f, -1227f), vec3<f32>(-1771f, -408f, 1636f), vec3<f32>(1075f, 407f, -217f), vec3<f32>(-1192f, 150f, 118f), vec3<f32>(263f, 143f, -1345f), vec3<f32>(-300f, -800f, -534f), vec3<f32>(1278f, -200f, -754f), vec3<f32>(1099f, 1000f, -590f), vec3<f32>(-1000f, 1000f, 282f), vec3<f32>(409f, 199f, 224f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 3u)];
    let var_1 = ~vec3<i32>(-1i, 2147483647i, abs(max(-7466i & u_input.a, _wgslsmith_sub_i32(-7966i, u_input.c))));
    return ~_wgslsmith_dot_vec3_u32(abs(max(~vec3<u32>(79254u, 4294967295u, 76261u), vec3<u32>(1u, 1u, 1u))), vec3<u32>(28980u, 6391u, 4898u));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(func_3(), 3u)];
    global3 = array<vec2<bool>, 20>();
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1156f, _wgslsmith_f_op_f32(ceil(1335f)), -275f, _wgslsmith_div_f32(387f, 432f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1583f))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -1699f, -200f, 1160f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1332f, -1142f, 216f, global0.x)))))))));
    let var_2 = vec3<i32>(arg_0.x, -_wgslsmith_div_i32(firstLeadingBit(u_input.b.x), abs(firstTrailingBit(45017i))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_0.x, reverseBits(0i)) | -1i, 24039i));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-683f, var_1.x)), 256f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(-493f, -316f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1990f, -1042f, global0.x) - vec4<f32>(649f, -1178f, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-272f, 356f, -443f, var_1.x))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -463f, _wgslsmith_f_op_f32(max(global0.x, -430f)), global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1573f, var_1.x, global0.x) + vec4<f32>(var_1.x, var_1.x, var_1.x, global0.x)) * vec4<f32>(-265f, -363f, -1065f, 386f))), vec4<f32>(1000f, var_1.x, var_1.x, global0.x))));
    return Struct_1(var_0.a << (~vec3<u32>(0u, min(1u, 7182u), 1u << (1u % 32u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(global0.zy * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x - -216f), -1513f) * _wgslsmith_f_op_vec2_f32(floor(global0.xx))));
    let var_1 = arg_1;
    var var_2 = func_2(-var_1.a);
    let var_3 = vec4<bool>(false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - -660f), 1f)) >= _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-234f)), global0.x), 1683f)), true, arg_0.x);
    return true;
}

fn func_4(arg_0: vec4<f32>, arg_1: bool) -> Struct_1 {
    global4 = array<vec3<f32>, 26>();
    let var_0 = vec3<i32>(9450i, max(~(-u_input.a), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(0i, -1i, u_input.b.x)), vec3<i32>(abs(0i), u_input.a, ~0i))), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), ~_wgslsmith_add_i32(u_input.c, u_input.c)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -882f), global0.x)))))), 587f, arg_0.x, global0.x);
    let var_2 = func_2(var_0);
    var var_3 = ~countOneBits(_wgslsmith_mod_u32(firstTrailingBit(4294967295u), 52219u));
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = vec4<i32>(~arg_0.a.x, u_input.c, arg_2.a.x, arg_0.a.x);
    let var_1 = func_2(_wgslsmith_sub_vec3_i32(var_0.zzx, ~var_0.xzy));
    global4 = array<vec3<f32>, 26>();
    var var_2 = vec3<u32>(arg_1, 1u, 45035u);
    var var_3 = Struct_1(firstLeadingBit(arg_2.a));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 124f, 231f, -1081f))))) * vec4<f32>(-249f, -1117f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1562f) - 1068f), global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_5(func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(357f, global0.x, global0.x, -1181f) * vec4<f32>(-317f, 1274f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1096f, global0.x, global0.x, -556f) * vec4<f32>(global0.x, -498f, -1306f, global0.x)))), func_1(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(~40932u, 3u)])), 37925u, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(select(46401u, ~82612u, true), 75234u), 3u)]))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec4_f32(func_5(global1[_wgslsmith_index_u32(4294967295u, 3u)], ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(7981u, 1u), vec2<u32>(7531u, 1u))), func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 810f, var_0.x, var_0.x) - vec4<f32>(-1314f, 538f, 274f, var_0.x)))), false))).x, var_0.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(225f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))) - 877f)));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(0u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(10030u, 4294967295u, 31484u, 36981u)))), ~58237u), 3u)];
    let var_4 = vec3<bool>(true, true, true);
    var var_5 = u_input.b | -var_3.a.zy;
    let var_6 = _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), ~vec2<u32>(0u, 0u)), 4294967295u, 1u)), (~vec3<u32>(4294967295u, 27473u, 1u) << (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(44440u, 10846u, 4294967295u), vec3<u32>(41757u, 1u, 4294967295u), vec3<u32>(0u, 8683u, 20495u))) % vec3<u32>(32u))) >> ((vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 5755u, 8503u), vec4<u32>(4155u, 1u, 0u, 12907u)), ~4294967295u, reverseBits(2594u)) >> ((firstTrailingBit(vec3<u32>(4294967295u, 52415u, 4539u)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_7 = 87059u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -993f, global0.x, 170f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, global0.x, var_0.x, -134f)))))));
}

