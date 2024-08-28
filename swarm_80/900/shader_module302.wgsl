struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 0u, 1u);

var<private> global1: vec4<i32>;

var<private> global2: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_3(Struct_2(~abs(global0.x), true, true));
    global1 = firstLeadingBit(-((vec4<i32>(u_input.b, 30341i, global1.x, global1.x) << (vec4<u32>(10706u, var_0.a.a, 1u, 5741u) % vec4<u32>(32u))) ^ ~vec4<i32>(-20659i, 23449i, 47621i, 2147483647i))) ^ vec4<i32>(global1.x, -(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global1.x, u_input.b, -1i), vec4<i32>(u_input.b, 9542i, -5260i, u_input.b)) << (_wgslsmith_mod_u32(global0.x, 36869u) % 32u)), _wgslsmith_add_i32(_wgslsmith_div_i32(global1.x, 4001i), _wgslsmith_mult_i32(firstLeadingBit(global1.x), reverseBits(global1.x))), u_input.b);
    var_0 = Struct_3(Struct_2(~_wgslsmith_mult_u32(~1u, 1u), var_0.a.b, select(!var_0.a.c, any(!vec4<bool>(var_0.a.b, var_0.a.c, true, var_0.a.b)), !all(vec4<bool>(var_0.a.c, var_0.a.b, true, var_0.a.b)))));
    global1 = vec4<i32>(select(global1.x, _wgslsmith_add_i32(global1.x, _wgslsmith_mult_i32(global1.x, 1477i) & 2147483647i), false), countOneBits(2147483647i), countOneBits(abs(2147483647i)), u_input.b);
    global1 = vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(global1.yx, vec2<i32>(u_input.b, 14994i)), u_input.b, u_input.b, -1i), vec4<i32>(global1.x, u_input.b >> (u_input.a % 32u), u_input.b, max(1i, u_input.b))), _wgslsmith_sub_i32(min(reverseBits(select(-32686i, 2147483647i, var_0.a.c)), _wgslsmith_mod_i32(~0i, ~global1.x)), ~(-global1.x) & u_input.b), _wgslsmith_dot_vec2_i32(global1.yx, select(countOneBits(global1.wz), abs(vec2<i32>(global1.x, 18311i)), select(vec2<bool>(var_0.a.c, true), vec2<bool>(var_0.a.c, false), var_0.a.b)) | abs(-vec2<i32>(u_input.b, u_input.b))), -2147483647i);
    return global1.x << (_wgslsmith_sub_u32(select(2822u, ~28907u, !var_0.a.c || (arg_2.b.x >= arg_0.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.a, 43827u), vec2<u32>(12438u, 1u)), global0.x) << (u_input.a % 32u)) % 32u);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> i32 {
    global1 = ~vec4<i32>(u_input.b, (u_input.b ^ u_input.b) ^ ~u_input.b, func_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-136f, arg_0, -463f))), -1361f, Struct_1(vec2<f32>(-838f, -1001f), vec3<f32>(arg_0, 1718f, 714f), vec4<f32>(arg_0, arg_0, arg_0, -898f), 502f), Struct_1(vec2<f32>(-186f, arg_0), vec3<f32>(-306f, arg_0, arg_0), vec4<f32>(-2236f, arg_0, 1000f, arg_0), arg_0)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, global1.x, -2001i, global1.x)), vec4<i32>(-22267i, global1.x, u_input.b, global1.x) | vec4<i32>(42587i, global1.x, global1.x, arg_1.x))) >> (vec4<u32>(global0.x, 4294967295u, global0.x, 34761u) % vec4<u32>(32u));
    var var_0 = true;
    global0 = ~abs(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a) << (vec3<u32>(1u, global0.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 20396u, 0u), vec3<u32>(1u, 52354u, 0u))));
    global1 = firstTrailingBit(abs(reverseBits(vec4<i32>(1i, 1i, abs(-23827i), arg_1.x))));
    let var_1 = !(!vec2<bool>(~u_input.a > (global0.x << (0u % 32u)), any(vec4<bool>(false, false, false, true)) || any(vec3<bool>(true, false, true))));
    return global1.x;
}

fn func_1() -> Struct_1 {
    var var_0 = global1.x;
    global1 = vec4<i32>(_wgslsmith_div_i32(global1.x, -(~func_2(1560f, vec2<i32>(1i, -2147483647i)))), global1.x, _wgslsmith_dot_vec2_i32(~(global1.xx | global1.xx), firstTrailingBit(global1.zz)) & min(max(select(global1.x, -2147483647i, true), ~u_input.b), u_input.b), global1.x << (_wgslsmith_add_u32(global0.x, _wgslsmith_add_u32(u_input.a | global0.x, 10911u)) % 32u));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global0.yx, vec2<u32>(~18008u, 14757u)), global0.xy), false, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 0u, 22706u, u_input.a)) ^ reverseBits(vec4<u32>(global0.x, global0.x, 4744u, global0.x)), ~(~vec4<u32>(global0.x, u_input.a, u_input.a, u_input.a))) > 69738u);
    global2 = var_1.c;
    global1 = countOneBits(~((vec4<i32>(u_input.b, -36892i, u_input.b, -43213i) >> (vec4<u32>(u_input.a, 21749u, u_input.a, global0.x) % vec4<u32>(32u))) & vec4<i32>(13768i, 1i, global1.x, u_input.b)) >> (vec4<u32>(29731u, (51687u ^ var_1.a) ^ ~u_input.a, 37360u & _wgslsmith_dot_vec2_u32(global0.yz, global0.zx), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, 7484u, u_input.a)), vec3<u32>(global0.x, 15101u, 4294967295u) << (vec3<u32>(93186u, 28649u, 3961u) % vec3<u32>(32u)))) % vec4<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(666f, -1196f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(888f, 916f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(203f, -108f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2010f, 998f)))), vec2<f32>(_wgslsmith_div_f32(979f, -596f), _wgslsmith_f_op_f32(step(-1035f, -722f)))), true)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(1003f * -421f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-276f, -821f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(481f - 883f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-330f - -1000f), _wgslsmith_f_op_f32(1000f + -286f))) + _wgslsmith_f_op_f32(max(801f, -1557f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(295f + 1150f), _wgslsmith_f_op_f32(-1000f * 1000f), 1258f, _wgslsmith_f_op_f32(-114f + -2922f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-197f, -774f, -125f, -1021f) + vec4<f32>(-620f, -803f, 1138f, -670f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1180f - -1110f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f - -1000f)) - 1f), !any(vec2<bool>(var_1.b, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec2<bool>(u_input.b >= 2147483647i, true), vec2<bool>(true, true), false), vec2<bool>(true, (66117u <= global0.x) && true), select(vec2<bool>(any(vec4<bool>(false, true, true, true)), true), vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), u_input.a <= 0u)));
    global2 = 31628u == ~(~(11012u | (18817u | u_input.a)));
    global0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~countOneBits(u_input.a >> (u_input.a % 32u)), 45439u, u_input.a), vec3<u32>(_wgslsmith_sub_u32(u_input.a, ~select(4294967295u, u_input.a, true)), global0.x, _wgslsmith_mod_u32(~3792u, 4294967295u)));
    var var_1 = func_1();
    var var_2 = Struct_2(~global0.x ^ countOneBits(u_input.a), true, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~global1.zzw, _wgslsmith_mod_vec3_i32(global1.zwx, global1.wzz)), firstLeadingBit(global1.x)) < 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.b.x, var_1.b.x));
}

