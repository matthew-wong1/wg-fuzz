struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: i32;

var<private> global1: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = Struct_1(~global1.x, vec2<bool>(global1.x < 15531u, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -104f));
    var_0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(34456u, 1u, arg_1.x, var_0.a), countOneBits(vec4<u32>(4294967295u, 57817u, 20083u, 5667u))), 6893u), ~(~4294967295u)), !vec2<bool>(all(var_0.b), true));
    global0 = arg_0.x;
    global1 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~(~0u), ~countOneBits(39485u)), var_0.a, ~_wgslsmith_clamp_u32(firstTrailingBit(71597u), 4294967295u, global1.x), 44628u), ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, 11623u, 1u, 0u), vec4<u32>(global1.x, u_input.c, u_input.c, u_input.c)))));
    return _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x & 31800u, 4294967295u, u_input.c, ~global1.x) << (reverseBits(select(vec4<u32>(u_input.c, u_input.c, arg_1.x, var_0.a), vec4<u32>(var_0.a, 47947u, arg_1.x, 1u), vec4<bool>(false, var_0.b.x, false, false))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(global1.x, global1.x, 4294967295u, global1.x), vec4<u32>(arg_1.x, 0u, global1.x, 4294967295u), false), vec4<u32>(var_0.a, global1.x, 0u, u_input.c) << (vec4<u32>(1u, u_input.c, 0u, 0u) % vec4<u32>(32u))), ~vec4<u32>(42519u, 0u, 4294967295u, global1.x))));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    var var_0 = Struct_1(~func_1(u_input.a, vec3<u32>(u_input.c, 4294967295u, 25457u)) & ~4294967295u, !arg_0.xz);
    let var_1 = ~_wgslsmith_clamp_i32(abs(-_wgslsmith_mult_i32(u_input.a.x, -50656i)), firstTrailingBit(-65729i), -2147483647i);
    global1 = ~((vec4<u32>(global1.x, countOneBits(84746u), 5994u, ~global1.x) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 87044u, 37788u, var_0.a), vec4<u32>(4294967295u, global1.x, 1u, global1.x) ^ vec4<u32>(var_0.a, 84987u, var_0.a, global1.x), ~vec4<u32>(global1.x, var_0.a, u_input.c, global1.x)) % vec4<u32>(32u))) ^ vec4<u32>(~select(47033u, global1.x, var_0.b.x), _wgslsmith_add_u32(global1.x << (0u % 32u), reverseBits(u_input.c)), 4294967295u, 1u));
    var var_2 = Struct_1(u_input.c, !vec2<bool>(any(select(arg_0.wyw, vec3<bool>(var_0.b.x, false, false), false)), !arg_0.x));
    var var_3 = var_1 != (u_input.b ^ 13772i);
    return global1.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: i32) -> u32 {
    global1 = vec4<u32>(global1.x, 0u, abs(global1.x << (func_3(vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x)) % 32u)), ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_0.a, global1.x, 0u, 9948u)) ^ reverseBits(vec4<u32>(global1.x, arg_0.a, 0u, 27651u)), ~abs(vec4<u32>(arg_0.a, 63051u, u_input.c, 71368u))));
    var var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(global1.yx, global1.yz), global1.zz, reverseBits(~vec2<u32>(_wgslsmith_mult_u32(103833u, arg_0.a), 0u)));
    let var_1 = abs(max(vec4<u32>(func_1(u_input.a << (vec4<u32>(u_input.c, 1u, arg_0.a, var_0.x) % vec4<u32>(32u)), global1.yxz), u_input.c, _wgslsmith_add_u32(1u, var_0.x), 25169u), ~(~min(vec4<u32>(4294967295u, u_input.c, var_0.x, 1u), vec4<u32>(var_0.x, 16756u, arg_0.a, arg_0.a)))));
    let var_2 = global1.x;
    global1 = vec4<u32>(7517u, abs(_wgslsmith_div_u32(reverseBits(~54680u), arg_0.a & abs(30020u))), arg_0.a, 51647u);
    return 53215u | var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.e;
    global1 = min(~firstLeadingBit(vec4<u32>(40911u, func_1(vec4<i32>(1i, u_input.e, u_input.d.x, 27525i), vec3<u32>(u_input.c, 4294967295u, u_input.c)), _wgslsmith_div_u32(0u, u_input.c), u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u & _wgslsmith_add_u32(u_input.c, global1.x), 982u, 1u, 4294967295u >> (func_2(Struct_1(64225u, vec2<bool>(false, false)), vec2<f32>(-589f, -1000f), vec2<f32>(272f, 1276f), u_input.a.x) % 32u)), _wgslsmith_add_vec4_u32(vec4<u32>(~global1.x, 15857u, abs(3522u), firstLeadingBit(63712u)), firstTrailingBit(max(vec4<u32>(4759u, 1u, global1.x, u_input.c), vec4<u32>(u_input.c, u_input.c, global1.x, global1.x))))));
    global1 = vec4<u32>(reverseBits(u_input.c), global1.x, u_input.c, ~(u_input.c | (u_input.c >> (u_input.c % 32u)))) << ((~(min(vec4<u32>(48619u, u_input.c, 51154u, 33991u), vec4<u32>(0u, 4294967295u, global1.x, u_input.c)) | _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.c, 1u, u_input.c), vec4<u32>(global1.x, 41216u, global1.x, u_input.c))) | ~(~vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u))) % vec4<u32>(32u));
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(694f, -938f), vec2<f32>(1432f, -853f)))), vec2<f32>(_wgslsmith_div_f32(1431f, 224f), _wgslsmith_f_op_f32(f32(-1f) * -982f)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))) + vec2<f32>(243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(168f))))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-152f, _wgslsmith_div_f32(-1000f, -936f))), -666f)), -810f), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, true), any(vec3<bool>(false, true, false)) || true)));
    var_0 = vec2<f32>(-2687f, -774f);
    global1 = ~(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(6189u, u_input.c, global1.x, u_input.c), vec4<u32>(19229u, 75438u, global1.x, 0u)) & ~vec4<u32>(16162u, 1u, 4294967295u, u_input.c)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1275f + var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))))) * var_0.x);
    var var_2 = vec4<bool>(all(select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), select(false, false, false)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) || !(!any(vec4<bool>(false, false, true, false))), global1.x >= ~288u);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 2049f, var_0.x) - vec4<f32>(var_0.x, 525f, var_0.x, -591f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, -129f, var_0.x))), var_2.x && var_2.x)), vec4<f32>(1000f, _wgslsmith_f_op_f32(1278f - var_0.x), _wgslsmith_f_op_f32(sign(-1564f)), -1000f), true)))));
}

