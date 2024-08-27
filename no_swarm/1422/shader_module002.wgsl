struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<i32>, arg_3: f32) -> vec4<f32> {
    let var_0 = select(vec3<bool>(any(vec4<bool>(!arg_0, all(vec3<bool>(false, false, arg_0)), all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(true, arg_0, arg_0))), !arg_0, false), !select(vec3<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true, true), !select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, arg_0, true), false), !(!vec3<bool>(false, arg_0, arg_0))), true);
    let var_1 = u_input.a;
    var var_2 = true;
    var var_3 = 282u;
    var_2 = false;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-519f * -1430f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1268f - 183f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1637f - _wgslsmith_f_op_f32(f32(-1f) * -1161f)))), _wgslsmith_f_op_f32(exp2(arg_3)));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(false, 17996u, vec2<i32>(u_input.c.x, 0i), -1000f))))) - vec4<f32>(-168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f * -1433f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(118f, -775f)))), ~u_input.c.x, ~(u_input.b >> ((firstTrailingBit(vec4<u32>(0u, u_input.a, 4294967295u, 42341u)) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -428f), -138f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -988f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(var_0.b.wyw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.xzy), var_0.b.xxz))));
    let var_2 = var_0.a;
    let var_3 = Struct_3(!any(vec3<bool>(any(vec4<bool>(var_0.a, var_2, true, true)), var_2, true)), Struct_2(var_0), vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a), ~_wgslsmith_clamp_u32(1u, reverseBits(u_input.a), u_input.a), _wgslsmith_mult_u32(~4732u, u_input.a), u_input.a), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(52021u, 1u, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a) | vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) ^ vec4<u32>(u_input.a | 11917u, u_input.a, min(4294967295u, 36264u), u_input.a)));
    var_1 = var_3.b.a.b.yww;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.b.a.e, 1711f)) - _wgslsmith_f_op_f32(var_1.x - 1432f))), 128f));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    let var_0 = 8041u;
    let var_1 = _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, 3742u), vec3<u32>(0u, u_input.a, 31794u)), vec3<u32>(4294967295u, var_0, 117836u) & vec3<u32>(var_0, u_input.a, 34429u)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 61547u, 25829u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(var_0, u_input.a, 9857u))), ~select(vec3<u32>(var_0, u_input.a, 18313u), vec3<u32>(0u, 0u, u_input.a), vec3<bool>(arg_0.x, false, arg_0.x)), select(true, arg_0.x, arg_0.x))) << (vec3<u32>(var_0, 4294967295u, _wgslsmith_add_u32(abs(u_input.a << (var_0 % 32u)), 4294967295u)) % vec3<u32>(32u));
    var var_2 = Struct_1(false, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1189f, arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(785f, 695f)) - 1748f))), -1000f, arg_1, -1000f), _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(u_input.c.x), _wgslsmith_dot_vec3_i32(~u_input.b.xyz, _wgslsmith_clamp_vec3_i32(u_input.b.wyw, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(2147483647i, 0i, u_input.c.x)))), u_input.c), ~(-vec4<i32>(~1i, 35878i, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 11988i), i32(-1i) * -1i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(832f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(773f)) + 893f)) - arg_1));
    var_2 = Struct_1(arg_0.x, vec4<f32>(_wgslsmith_div_f32(-225f, _wgslsmith_f_op_f32(round(1455f))), _wgslsmith_f_op_f32(arg_1 - var_2.e), 495f, var_2.b.x), var_2.c, var_2.d, -888f);
    let var_3 = _wgslsmith_sub_vec4_u32(min(~_wgslsmith_mult_vec4_u32(vec4<u32>(107972u, u_input.a, 4294967295u, 4294967295u), ~vec4<u32>(1u, var_0, var_1.x, 4294967295u)), vec4<u32>(~(var_1.x >> (4382u % 32u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, var_0, u_input.a, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0, 0u), vec4<u32>(var_0, var_1.x, var_1.x, 32815u), vec4<u32>(52316u, 61800u, u_input.a, 37360u))), ~1u, 75789u)), vec4<u32>(var_0, min(14091u, ~firstLeadingBit(var_1.x)), u_input.a, ~_wgslsmith_mult_u32(u_input.a, 1u) & u_input.a));
    return 42085u;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<u32>) -> vec3<u32> {
    let var_0 = ~1u << (countOneBits(~(~(~u_input.a))) % 32u);
    var var_1 = vec3<u32>(firstLeadingBit(reverseBits(0u & ~arg_2.x)), func_4(vec3<bool>(true, true | all(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(round(-180f)) > _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1038f), _wgslsmith_f_op_vec4_f32(func_3(false, var_0, u_input.c, -1031f)).x))))), 4294967295u);
    let var_2 = !select(vec2<bool>(true, true), vec2<bool>(true, true), true);
    var_1 = arg_1;
    var var_3 = countOneBits(select(_wgslsmith_div_vec2_u32(~arg_2.xw << (_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_2.x), vec2<u32>(arg_0, 58122u)) % vec2<u32>(32u)), var_1.yz), abs(arg_2.zy) ^ arg_1.yz, select(select(select(var_2, var_2, false), select(vec2<bool>(false, false), var_2, false), false), vec2<bool>(var_2.x, true), !(!var_2.x))));
    return vec3<u32>(u_input.a, 44848u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(arg_2 ^ arg_2, arg_2), 1u ^ ~arg_1.x), ~((vec2<u32>(arg_2.x, 1u) & vec2<u32>(arg_2.x, 0u)) >> (vec2<u32>(36303u, arg_1.x) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_vec2_i32(-(u_input.c ^ u_input.b.yz), -vec2<i32>(u_input.b.x, u_input.c.x)) | u_input.b.zw;
    var_0 = vec2<i32>(-(~8624i), ~(-var_0.x));
    var_0 = vec2<i32>(2147483647i, countOneBits(-firstLeadingBit(var_0.x)));
    var var_1 = (~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 86627u, u_input.a), vec3<u32>(u_input.a, 32162u, u_input.a))) << (func_1(0u, firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(0u, 1232u, 31212u))), vec4<u32>(u_input.a, _wgslsmith_mult_u32(33511u, u_input.a), _wgslsmith_mod_u32(u_input.a, 5156u), 1u)) % vec3<u32>(32u))) >> ((abs(vec3<u32>(~29770u, _wgslsmith_sub_u32(4294967295u, u_input.a), ~u_input.a)) << ((~(~vec3<u32>(u_input.a, 0u, u_input.a)) >> (~vec3<u32>(15555u, u_input.a, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = u_input.c;
    let var_2 = _wgslsmith_add_vec3_u32(firstTrailingBit(select(~select(vec3<u32>(var_1.x, 32998u, u_input.a), vec3<u32>(1u, var_1.x, u_input.a), vec3<bool>(false, false, true)), vec3<u32>(~0u, 4294967295u, countOneBits(0u)), vec3<bool>(true, true, true))), vec3<u32>(4294967295u, func_4(vec3<bool>(true, true, true), -710f), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~(min(vec3<u32>(var_2.x, 1u, 0u) | vec3<u32>(var_1.x, var_1.x, u_input.a), countOneBits(var_2)) & (var_2 >> (vec3<u32>(8649u, var_1.x, u_input.a) % vec3<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1175f + 656f))), _wgslsmith_f_op_f32(549f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f)))));
}

