struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = arg_1.b.zzx;
    var var_1 = min(-var_0.xx, (select(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.c, var_0.x), vec2<i32>(var_0.x, -1i)), vec2<i32>(4414i, arg_1.b.x) ^ vec2<i32>(arg_1.c, arg_1.c), false) & arg_1.b.yw) >> (~firstLeadingBit(u_input.a.xz ^ vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u)));
    var_1 = ~vec2<i32>(arg_1.c, var_0.x) ^ vec2<i32>(~(i32(-1i) * -21153i), _wgslsmith_sub_i32(1i, -1i & select(arg_1.b.x, -40884i, false)));
    var_1 = -(vec2<i32>(-3621i, -1i) << (vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, abs(4294967295u)), 4294967295u) % vec2<u32>(32u)));
    var var_2 = Struct_2(arg_1, vec2<f32>(-171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -155f) + _wgslsmith_f_op_f32(f32(-1f) * -708f)))));
    return _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(0u, ~_wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.zx), u_input.a.x, 65621u)), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(0u, 42721u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)) ^ ~vec4<u32>(4294967295u, u_input.a.x, 27144u, u_input.a.x), vec4<u32>(max(33587u, 38927u), u_input.a.x, u_input.a.x >> (u_input.a.x % 32u), 0u), vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), abs(17345u), 3640u, 1948u)) | vec4<u32>(~(u_input.a.x | u_input.a.x), ~0u, select(u_input.a.x, 0u, true), countOneBits(_wgslsmith_mod_u32(u_input.a.x, 12150u))));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~firstTrailingBit(u_input.a.x), u_input.a.x, ~(~_wgslsmith_sub_u32(1u, u_input.a.x))), min(abs(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 43411u)), vec4<u32>(1u, ~11888u, _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.yy), 62131u)) | _wgslsmith_div_vec4_u32(func_3(true, arg_0.a), vec4<u32>(u_input.a.x, u_input.a.x, ~1u, 0u << (u_input.a.x % 32u))));
    var var_2 = max(vec4<u32>(16642u, ~u_input.a.x, ~_wgslsmith_add_u32(59802u, u_input.a.x) << (abs(0u) % 32u), 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, ~u_input.a.x, 1u) >> (vec4<u32>(u_input.a.x, 25716u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 99508u)) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(30289u, u_input.a.x, 11588u, 14079u), vec4<u32>(4294967295u, 0u, 14484u, 1u)), vec4<u32>(u_input.a.x, u_input.a.x, 32124u, 0u), vec4<u32>(93196u, u_input.a.x, u_input.a.x, u_input.a.x))));
    var_0 = Struct_2(arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b.x + var_0.b.x))), 1169f)), _wgslsmith_div_f32(var_0.b.x, 1343f)));
    var var_3 = true;
    return 490f;
}

fn func_1() -> bool {
    let var_0 = select(-1i, -1i & ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-51115i, -15148i)), vec2<i32>(1i, -62556i) >> (u_input.a.xx % vec2<u32>(32u))), false);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(919f)) + _wgslsmith_f_op_f32(round(-995f))), _wgslsmith_f_op_f32(-1482f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(174f * -1309f))), 1145f, _wgslsmith_f_op_f32(904f - -267f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1452f, _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, var_0, 16921i, -1i), var_0, false, vec2<bool>(true, false)), vec2<f32>(-1000f, 168f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2020f), _wgslsmith_f_op_f32(min(817f, -1000f)))), _wgslsmith_f_op_f32(1032f + _wgslsmith_f_op_f32(f32(-1f) * -1332f)), 408f, 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, 390f, true)), _wgslsmith_f_op_f32(min(-876f, -138f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-231f * -547f))) * _wgslsmith_f_op_f32(step(1821f, _wgslsmith_f_op_f32(-331f + -409f))))));
    let var_2 = true;
    var var_3 = min(_wgslsmith_dot_vec2_u32(vec2<u32>(21950u, ~(~u_input.a.x)), u_input.a.zz ^ ~(~vec2<u32>(u_input.a.x, 4294967295u))), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 1u, 0u)), firstTrailingBit(vec3<u32>(3368u, u_input.a.x, u_input.a.x))) | u_input.a.x);
    var var_4 = _wgslsmith_sub_vec2_u32(firstLeadingBit(~u_input.a.yz), ~((vec2<u32>(4294967295u, 4294967295u) ^ u_input.a.yz) << (u_input.a.xz % vec2<u32>(32u))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(false, !any(vec3<bool>(true, true, true)), true, firstLeadingBit(0u) > _wgslsmith_sub_u32(1u, u_input.a.x)), vec4<bool>(true, u_input.a.x > u_input.a.x, true, true), func_1());
    let var_1 = Struct_1(!select(vec2<bool>(false, false), select(!var_0.wx, vec2<bool>(true, true), any(vec4<bool>(var_0.x, var_0.x, true, true))), false), vec4<i32>(1i, 1i, 1i, 1i), abs(~(-1i)), var_0.x, var_0.wx);
    var_0 = vec4<bool>(!var_1.e.x, var_0.x, !var_0.x, true);
    var_0 = select(vec4<bool>(true, true, !(!any(var_0.xwy)), true), select(select(!select(vec4<bool>(false, true, var_0.x, var_1.e.x), vec4<bool>(false, var_1.a.x, var_1.d, var_0.x), vec4<bool>(var_1.e.x, true, true, var_0.x)), vec4<bool>(var_0.x, true, var_1.a.x, u_input.a.x > 34024u), var_0.x), select(select(!vec4<bool>(var_1.d, var_0.x, var_1.d, true), vec4<bool>(var_1.a.x, var_1.e.x, var_0.x, var_1.d), vec4<bool>(var_0.x, var_1.a.x, false, var_0.x)), vec4<bool>(false, true, var_1.d | true, select(false, var_0.x, var_0.x)), var_0.x), vec4<bool>(!var_1.d != true, any(!vec3<bool>(false, true, var_0.x)), var_1.d, any(var_0.yyz))), !var_1.d);
    var_0 = vec4<bool>(var_1.a.x, true, false, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_add_u32(~u_input.a.x, ~u_input.a.x), u_input.a.x));
}

