struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: f32, arg_3: u32) -> vec3<f32> {
    let var_0 = Struct_2(~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.b.x, u_input.b.x) ^ vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x), vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-1i, u_input.b.x, -2147483647i, 1i)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2086i, -33604i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1, u_input.c, ~71477u), ~_wgslsmith_sub_vec3_u32(u_input.d.yyw, u_input.d.www)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, arg_3), global0.x), reverseBits(~arg_3), ~arg_3)));
    global0 = vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(~var_0.b, var_0.b), 35284u), ~var_0.b.x);
    global0 = u_input.a.zz;
    global0 = _wgslsmith_mod_vec2_u32(~vec2<u32>(155401u, _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_0.x, arg_1), 4294967295u)), var_0.b.yx);
    let var_1 = vec4<i32>(firstLeadingBit(1i), -max(u_input.b.x, firstTrailingBit(u_input.b.x)), _wgslsmith_clamp_i32(abs(-1i), _wgslsmith_dot_vec3_i32(~var_0.a.xww, u_input.b) & ~1i, _wgslsmith_mult_i32(u_input.b.x, -(~60448i))), ~(~_wgslsmith_mod_i32(25203i & var_0.a.x, -u_input.b.x)));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(159f))), -754f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) * _wgslsmith_f_op_f32(max(arg_2, arg_2))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-372f * -1148f))), _wgslsmith_f_op_f32(ceil(390f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(ceil(arg_2))))), arg_2 >= 2183f));
}

fn func_3() -> vec3<f32> {
    var var_0 = u_input.d.wzw;
    var_0 = _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.ywz, u_input.a.yxx), vec3<u32>(~countOneBits(~var_0.x), 54748u, 6925u), min(vec3<u32>(~(var_0.x << (var_0.x % 32u)), var_0.x, _wgslsmith_div_u32(~var_0.x, 0u)), ~(~u_input.d.wyw)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(397f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-161f)))))), -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2146f, _wgslsmith_f_op_f32(-592f * -1258f)), vec2<f32>(-1121f, _wgslsmith_f_op_f32(select(1047f, -672f, true))), !select(vec2<bool>(true, false), vec2<bool>(true, false), false))))));
    let var_2 = 4294967295u >> (global0.x % 32u);
    global0 = var_0.yx;
    return vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(sign(-1000f)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(~arg_2 | _wgslsmith_mult_vec2_u32(arg_2 >> (vec2<u32>(1u, global0.x) % vec2<u32>(32u)), ~vec2<u32>(arg_1, global0.x)), 4294967295u, 755f, arg_2.x)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -1790f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - vec3<f32>(-1380f, -365f, -644f)) + vec3<f32>(_wgslsmith_div_f32(-1000f, -487f), _wgslsmith_div_f32(871f, -876f), arg_0)))));
    var var_1 = vec3<u32>(1u, arg_2.x, _wgslsmith_mult_u32(arg_2.x, firstTrailingBit(~57318u))) ^ vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(19499u, arg_1, global0.x, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, global0.x, arg_2.x, global0.x), vec4<u32>(11236u, u_input.a.x, 28887u, u_input.c), vec4<u32>(54510u, 1u, 32753u, arg_2.x))), _wgslsmith_add_u32(_wgslsmith_add_u32(firstLeadingBit(arg_2.x), _wgslsmith_sub_u32(arg_1, global0.x)), global0.x), _wgslsmith_dot_vec2_u32(arg_2, ~u_input.d.yx));
    var_1 = select(~firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(88276u, 0u, arg_1), vec3<u32>(arg_2.x, 4294967295u, 26200u)), vec3<u32>(4561u, global0.x, var_1.x))), countOneBits(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(16051u, var_1.x, 4294967295u) << (vec3<u32>(0u, 4294967295u, arg_1) % vec3<u32>(32u))), ~(u_input.d.wzx & vec3<u32>(0u, u_input.d.x, var_1.x)))), !(!select(true, true, true)));
    var var_2 = abs(u_input.d.x) | global0.x;
    var var_3 = vec2<bool>(false, all(vec4<bool>(all(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, false)) && all(vec2<bool>(true, false)))));
    return arg_0;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec3<bool> {
    let var_0 = Struct_3(Struct_2(vec4<i32>(-(u_input.b.x | 2147483647i), -countOneBits(u_input.b.x), _wgslsmith_add_i32(-1i | u_input.b.x, -2147483647i << (global0.x % 32u)), u_input.b.x), ~u_input.d.zyx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-335f))))), Struct_2(vec4<i32>(select(16566i, u_input.b.x, all(vec4<bool>(arg_1.a.x, arg_1.a.x, true, true))), ~(~u_input.b.x), ~u_input.b.x, u_input.b.x), (u_input.a.wwz | vec3<u32>(u_input.a.x, arg_1.c, u_input.a.x)) | abs(reverseBits(u_input.d.zzw))), ~14808u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(-arg_2), arg_1.b)));
    let var_1 = -1i;
    var var_2 = var_0;
    var var_3 = Struct_1(select(arg_1.a, select(select(vec3<bool>(arg_1.a.x, false, arg_1.a.x), arg_1.a, true || arg_1.a.x), vec3<bool>(arg_1.a.x, true, 0i >= var_1), arg_1.a), arg_1.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))))), ~8821u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3)) + arg_3));
    let var_4 = var_0;
    return !var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(-412f - 1306f), Struct_1(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), any(vec4<bool>(true, false, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(840f + 802f)), 0u, 200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1596f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(-1081f, 99682u, vec2<u32>(global0.x, global0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-304f))) * _wgslsmith_f_op_vec3_f32(func_2(u_input.a.zw, ~abs(u_input.a.x), 714f, select(1u, ~122850u, false))).x), _wgslsmith_mult_u32(1u, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-559f, -1616f))) - -557f)));
    let var_1 = -726f;
    let var_2 = max(countOneBits(120349u), u_input.d.x);
    let var_3 = abs(global0.x);
    global0 = vec2<u32>(0u, global0.x);
    let var_4 = 1i;
    global0 = ~firstLeadingBit(u_input.d.wz);
    var var_5 = Struct_1(select(var_0.a, vec3<bool>(any(!vec2<bool>(var_0.a.x, false)), true, var_0.a.x), vec3<bool>(var_0.a.x, true, any(vec4<bool>(var_0.a.x, false, var_0.a.x, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)))), 722f)), _wgslsmith_add_u32(27262u, 1u), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), ~(~var_2) ^ countOneBits(~var_3), u_input.a.zz)));
    let var_6 = !any(vec4<bool>(false, !var_5.a.x | true, var_5.a.x, var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(36503u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.b, 1000f, var_1)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.d, var_1, var_0.d)))))))));
}

