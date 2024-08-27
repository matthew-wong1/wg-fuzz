struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32> = vec4<u32>(23007u, 0u, 50672u, 0u);

var<private> global2: array<vec4<f32>, 17> = array<vec4<f32>, 17>(vec4<f32>(-201f, -1000f, 238f, -1167f), vec4<f32>(-1000f, -766f, 688f, 702f), vec4<f32>(-1389f, 102f, -1000f, -617f), vec4<f32>(-1357f, 900f, -1010f, -666f), vec4<f32>(1661f, -937f, 1583f, 1758f), vec4<f32>(662f, 1753f, -160f, 1559f), vec4<f32>(-964f, 1021f, 896f, -1000f), vec4<f32>(-1887f, -1791f, 821f, 149f), vec4<f32>(-490f, -1099f, -782f, 241f), vec4<f32>(-1552f, 110f, 128f, 1716f), vec4<f32>(138f, -328f, 1242f, -708f), vec4<f32>(-443f, -192f, -1911f, -930f), vec4<f32>(1329f, 1000f, 598f, -1091f), vec4<f32>(-2407f, -480f, 1057f, 655f), vec4<f32>(-1000f, -1096f, 268f, 701f), vec4<f32>(-310f, -1024f, -275f, 985f), vec4<f32>(485f, -618f, 748f, -1066f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    var var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(1167f, 1271f), true))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1149f, -1033f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -139f))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) + 847f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1262f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-163f - -1000f), _wgslsmith_f_op_f32(-var_1.x))))));
    let var_3 = global1.x;
    var var_4 = global1.x;
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, -360f, var_2.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1921f, 1018f, -1012f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -741f, var_2.x) - vec3<f32>(1000f, 653f, 773f)) + vec3<f32>(var_2.x, var_1.x, 401f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 469f, -1098f), vec3<f32>(var_1.x, -1502f, var_1.x))))), vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), var_1.x, -109f))))));
}

fn func_4(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = vec3<bool>(!all(vec2<bool>(false, true)), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-316f, arg_0.x), -1269f)) <= -462f);
    var var_1 = select(!select(vec4<bool>(any(vec3<bool>(true, var_0.x, var_0.x)), 4294967295u >= global1.x, var_0.x, all(vec3<bool>(var_0.x, var_0.x, var_0.x))), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, false, false, false)), true), vec4<bool>(select(false, !any(vec4<bool>(var_0.x, false, var_0.x, true)), true), true, var_0.x, var_0.x), any(select(select(vec3<bool>(true, var_0.x, true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x)), vec3<bool>(true, true, true)), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, false, var_0.x)), all(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x))))));
    let var_2 = global0.a.x;
    var var_3 = Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.x, _wgslsmith_mult_i32(global0.a.x, 70487i), global0.a.x, _wgslsmith_div_i32(u_input.b.x, -2147483647i)), ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, 7472i), vec4<i32>(-2196i, -2147483647i, u_input.a, u_input.b.x)))));
    var var_4 = var_3.a;
    return ~(~vec4<i32>(65583i, 57096i, 20205i, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, global0.a.x)));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = Struct_1(select(func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(106f, 121f, -1353f), vec3<f32>(406f, -818f, -1525f))), _wgslsmith_f_op_vec3_f32(func_3()), select(arg_0.wzz, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x)))), vec4<i32>(firstLeadingBit(1i), _wgslsmith_div_i32(u_input.b.x, abs(global0.a.x)), _wgslsmith_mod_i32(select(-1i, -1i, arg_0.x), _wgslsmith_div_i32(1i, 1i)), global0.a.x), vec4<bool>(!any(arg_0.xz), false, any(select(vec3<bool>(false, arg_0.x, arg_0.x), arg_0.xzz, vec3<bool>(arg_0.x, false, true))), true)));
    global1 = firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, 4294967295u, global1.x, global1.x) << (vec4<u32>(55590u, global1.x, global1.x, global1.x) % vec4<u32>(32u)), ~vec4<u32>(0u, global1.x, 14445u, global1.x)) | vec4<u32>(global1.x, _wgslsmith_div_u32(global1.x, 0u & global1.x), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 79088u, global1.x), ~vec4<u32>(global1.x, 4294967295u, 1u, global1.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1104f, 320f, -1750f))), vec3<f32>(266f, 1033f, -300f), true))))));
    let var_2 = vec3<f32>(var_1.x, var_1.x, var_1.x);
    global2 = array<vec4<f32>, 17>();
    return !(!vec3<bool>(arg_0.x, true, arg_0.x & !arg_0.x));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    var var_0 = !select(!vec4<bool>(false, true, false, !arg_3), !vec4<bool>(true, true, true, arg_3), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, arg_3, false, true), vec4<bool>(false, arg_3, false, false)), vec4<bool>(arg_3, true, true, false && arg_3), select(select(vec4<bool>(arg_3, arg_3, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, arg_3, arg_3, arg_3)), select(vec4<bool>(arg_3, false, arg_3, false), vec4<bool>(false, false, arg_3, false), vec4<bool>(true, true, false, arg_3)), !arg_3)));
    var_0 = vec4<bool>(any(select(select(vec3<bool>(false, var_0.x, arg_3), !vec3<bool>(var_0.x, true, true), !var_0.zwy), func_2(!vec4<bool>(arg_3, var_0.x, false, false)), func_2(!vec4<bool>(var_0.x, arg_3, false, var_0.x)))), true, var_0.x, arg_3 || true);
    let var_1 = -_wgslsmith_dot_vec3_i32(global0.a.zwy, -_wgslsmith_mod_vec3_i32(max(vec3<i32>(1i, 1i, 1i), vec3<i32>(global0.a.x, -2147483647i, -13445i)), arg_1.a.wwy));
    let var_2 = any(var_0.zzx) & !func_2(!select(vec4<bool>(false, false, true, arg_3), vec4<bool>(false, var_0.x, arg_3, arg_3), vec4<bool>(arg_3, var_0.x, true, arg_3))).x;
    global1 = ~vec4<u32>(4294967295u, ~80784u, global1.x, ~arg_0);
    return _wgslsmith_f_op_f32(abs(-363f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 369f, _wgslsmith_f_op_f32(select(1910f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-625f + 198f) * _wgslsmith_f_op_f32(func_1(4294967295u, Struct_1(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, u_input.a)), u_input.b.ww, true))), !all(vec2<bool>(true, false))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-341f, -1088f)) + _wgslsmith_f_op_vec3_f32(func_3()).x)), 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1370f), -239f) * -461f), _wgslsmith_f_op_f32(-424f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -3174f), -512f))))));
    let var_1 = var_0.x;
    global2 = array<vec4<f32>, 17>();
    var var_2 = !all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    global2 = array<vec4<f32>, 17>();
    var_2 = !select(!all(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true);
    let var_3 = global1.yw;
    var var_4 = !vec3<bool>((_wgslsmith_mod_i32(global0.a.x, -1i) ^ reverseBits(u_input.a)) <= (-u_input.a ^ 1i), !(_wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_div_f32(var_0.x, 1163f)), true);
    global0 = Struct_1(reverseBits(-_wgslsmith_div_vec4_i32(vec4<i32>(global0.a.x, u_input.b.x, 2147483647i, global0.a.x), global0.a) ^ u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yw, global0.a.x, var_0.wzz);
}

