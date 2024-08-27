struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: bool) -> bool {
    global0 = vec4<bool>(global0.x, !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -1133f))) != _wgslsmith_f_op_f32(f32(-1f) * -434f)), any(!select(select(vec4<bool>(true, true, false, global0.x), vec4<bool>(false, false, arg_2, arg_1), true), select(vec4<bool>(arg_1, arg_2, false, true), vec4<bool>(false, true, arg_2, true), false), select(true, arg_1, false))), true);
    var var_0 = ~firstTrailingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, arg_0, 1u, u_input.c.x), vec4<u32>(37763u, arg_0, 1u, u_input.c.x)), vec4<u32>(1u, 74140u, 1u, u_input.c.x))) << (vec4<u32>(min(u_input.c.x, _wgslsmith_sub_u32(~u_input.c.x, u_input.c.x)), _wgslsmith_add_u32(~(~74011u), max(max(20717u, 35574u), 27531u)), ~0u, u_input.c.x) % vec4<u32>(32u));
    global0 = vec4<bool>(global0.x, select(arg_1, global0.x, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(-493f - 1664f))) == _wgslsmith_f_op_f32(-1f), true);
    var_0 = countOneBits(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, var_0.x, arg_0), vec4<u32>(4294967295u, arg_0, 4294967295u, 59873u)) << (~select(vec4<u32>(0u, u_input.c.x, var_0.x, arg_0), vec4<u32>(arg_0, arg_0, var_0.x, 0u), false) % vec4<u32>(32u))));
    let var_1 = -2147483647i;
    return true;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = 0u;
    let var_1 = Struct_3(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.c.x), ~u_input.c)) << (12613u % 32u), _wgslsmith_f_op_f32(178f - arg_1.b), min(max(arg_1.c, abs(max(arg_1.c, vec4<u32>(var_0, 658u, var_0, var_0)))), vec4<u32>(_wgslsmith_dot_vec2_u32(~arg_0.b.a.xx, firstTrailingBit(arg_0.b.a.xx)), abs(~4294967295u), u_input.c.x, ~_wgslsmith_add_u32(1u, arg_0.b.a.x))), arg_1.d, Struct_1(!vec4<bool>(arg_1.b < arg_1.b, true, arg_0.b.a.x <= 27309u, true), -u_input.a ^ u_input.a, arg_1.e.a.wz));
    var var_2 = var_1.e;
    let var_3 = Struct_2(vec3<u32>(4294967295u, 27936u, var_0));
    let var_4 = arg_1.e;
    return vec4<bool>(26657u <= var_3.a.x, var_1.e.a.x, any(vec3<bool>(var_2.c.x, any(select(global0.xyw, var_2.a.zzw, false)), 27585i <= firstTrailingBit(var_1.d.x))), var_2.c.x);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>) -> u32 {
    global0 = func_4(arg_0, Struct_3(~(1u << (0u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f) - 521f), ~vec4<u32>(23867u, 52610u, arg_0.b.a.x, arg_1.x) ^ (select(vec4<u32>(50255u, 4294967295u, arg_1.x, 1u), vec4<u32>(u_input.c.x, arg_1.x, arg_1.x, u_input.c.x), vec4<bool>(true, true, false, false)) | ~vec4<u32>(39636u, 4294967295u, 13338u, arg_1.x)), abs((u_input.a.xyx & vec3<i32>(-2147483647i, u_input.b, -1i)) | vec3<i32>(u_input.b, 49199i, arg_0.a)), Struct_1(vec4<bool>(global0.x, func_3(arg_0.b.a.x, false, global0.x), false, global0.x), vec4<i32>(u_input.b, -57690i, u_input.a.x, i32(-1i) * -27950i), select(!global0.zy, global0.wx, any(global0.ywz)))));
    var var_0 = Struct_4(~arg_0.a, Struct_2(_wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(95298u, arg_1.x, 73966u)), ~vec3<u32>(arg_0.b.a.x, 53568u, 0u))));
    var var_1 = Struct_1(!(!select(vec4<bool>(global0.x, true, false, true), select(vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, global0.x, false, true), true), !vec4<bool>(false, true, global0.x, true))), firstLeadingBit(~select(min(vec4<i32>(var_0.a, 4113i, arg_0.a, u_input.a.x), u_input.a), select(vec4<i32>(u_input.a.x, -12443i, 1i, u_input.a.x), u_input.a, false), true)), global0.yz);
    global0 = !(!vec4<bool>(global0.x, true, false, false));
    var var_2 = arg_0.b;
    return _wgslsmith_mult_u32(~firstLeadingBit(33555u), _wgslsmith_dot_vec2_u32(arg_1.xy, firstTrailingBit(vec2<u32>(0u, arg_0.b.a.x) ^ vec2<u32>(0u, 26424u))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec2<u32>) -> StorageBuffer {
    var var_0 = u_input.c.x & u_input.c.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1113f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(533f)))) + 1357f)));
    var var_2 = Struct_3(firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.c.x, 1u)), ~(~vec2<u32>(u_input.c.x, u_input.c.x)))), var_1, _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.c.x, func_2(Struct_4(-42772i, Struct_2(vec3<u32>(arg_2.x, u_input.c.x, 37477u))), firstLeadingBit(vec3<u32>(u_input.c.x, 17633u, arg_2.x))), ~_wgslsmith_add_u32(arg_2.x, 24793u), ~_wgslsmith_dot_vec2_u32(arg_2, arg_2)), _wgslsmith_sub_vec4_u32(abs(countOneBits(vec4<u32>(4294967295u, 1u, 4294967295u, u_input.c.x))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, 41964u, 30856u, arg_2.x), vec4<u32>(u_input.c.x, arg_2.x, u_input.c.x, u_input.c.x), vec4<bool>(true, true, global0.x, false)), min(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 59886u), vec4<u32>(9227u, 1u, 42000u, arg_2.x))))), min(~(vec3<i32>(-1i, u_input.b, 1i) ^ u_input.a.zzy), select(u_input.a.xyx, u_input.a.zww, !any(global0.xwx))), Struct_1(!(!vec4<bool>(true, false, arg_0, false)), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, -2147483647i, 78977i, u_input.a.x), u_input.a), !select(!vec2<bool>(false, global0.x), select(vec2<bool>(arg_1, true), global0.zy, false), global0.xy)));
    let var_3 = Struct_3(u_input.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -451f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), var_2.b, !arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, -296f, false)) + -1890f)), select(var_2.c, var_2.c, true), firstLeadingBit(u_input.a.yzx), var_2.e);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, var_3.b) + vec2<f32>(var_3.b, var_1)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(951f, 947f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1547f, var_1)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(730f, 1362f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-577f, -139f))), true)))));
    return StorageBuffer(vec3<u32>(~u_input.c.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_2.a, 23902u), abs(var_2.c.x), ~(~13330u)), ~_wgslsmith_clamp_u32(arg_2.x, ~0u, reverseBits(u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(!any(!(!vec4<bool>(global0.x, global0.x, global0.x, true))), !(!global0.x), ~(firstTrailingBit(select(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x), vec2<bool>(global0.x, global0.x))) & (_wgslsmith_add_vec2_u32(vec2<u32>(48182u, u_input.c.x), vec2<u32>(36097u, 4294967295u)) & vec2<u32>(u_input.c.x, 52984u))));
}

