struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(7841u, 31931u), 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-767f, -1000f), vec2<f32>(-177f, -1000f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-1531f)), _wgslsmith_f_op_f32(step(-585f, -667f)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-971f, 225f))))));
    let var_1 = Struct_1(arg_0.a, 50480u ^ global1.b);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -463f), var_0.x, 802f));
    global1 = Struct_1(~vec2<u32>(countOneBits(~56619u), var_1.b), ~60759u);
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -198f, var_3.x, -389f) * vec4<f32>(265f, var_3.x, -863f, 1798f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.x, var_3.x, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(691f - 527f), _wgslsmith_f_op_f32(var_0.x + -1665f), _wgslsmith_f_op_f32(ceil(881f)), _wgslsmith_f_op_f32(sign(var_0.x))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))))))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    let var_0 = -1i >> (~firstTrailingBit(~global0.a.x & arg_2.x) % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(arg_1)))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1090f, -101f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(2046f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(944f, 270f)))), _wgslsmith_f_op_f32(f32(-1f) * -1136f), -322f));
    var var_2 = Struct_1(_wgslsmith_mod_vec2_u32(arg_1.a, _wgslsmith_mod_vec2_u32(abs(global0.a), vec2<u32>(0u, u_input.c))) & vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, 15132u, 4294967295u, 24852u), abs(vec4<u32>(global1.a.x, 4826u, global1.b, u_input.c)))), _wgslsmith_add_u32(u_input.b ^ _wgslsmith_mod_u32(global0.b & 70513u, _wgslsmith_dot_vec4_u32(vec4<u32>(22649u, global1.b, 4294967295u, arg_1.b), vec4<u32>(9887u, global1.b, 79491u, global0.b))), 7757u));
    var var_3 = !(!vec3<bool>(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x) < 58845i, arg_0, arg_0));
    global0 = Struct_1(max(vec2<u32>(u_input.b, arg_1.a.x), _wgslsmith_div_vec2_u32(max(_wgslsmith_sub_vec2_u32(arg_2.xy, vec2<u32>(4294967295u, 88900u)), vec2<u32>(30658u, 1u) << (vec2<u32>(u_input.c, arg_1.a.x) % vec2<u32>(32u))), vec2<u32>(~global1.a.x, max(arg_2.x, 0u)))), firstLeadingBit(firstLeadingBit(_wgslsmith_sub_u32(firstLeadingBit(u_input.a), ~4294967295u))));
    return min((global1.a.x & arg_2.x) >> (~1u % 32u), _wgslsmith_dot_vec3_u32(firstLeadingBit(~reverseBits(arg_2)), arg_2));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = abs(4294967295u);
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1120f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1043f + _wgslsmith_f_op_f32(round(702f))), -921f)))));
    let var_2 = Struct_1(vec2<u32>(_wgslsmith_div_u32(select(u_input.a, u_input.b, true), ~firstTrailingBit(0u)), arg_0.b), 1u);
    let var_3 = vec4<i32>(-10338i, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_div_vec4_i32(~vec4<i32>(605i, u_input.d.x, -1i, u_input.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-28036i, 1i, 1i, u_input.d.x), vec4<i32>(0i, u_input.d.x, u_input.d.x, -41649i)))), -vec4<i32>(~u_input.d.x, u_input.d.x, reverseBits(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 16268i, -1i), vec3<i32>(1i, u_input.d.x, 6581i)))), countOneBits(-(~(i32(-1i) * -50295i))), _wgslsmith_clamp_i32(-(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.d.x, u_input.d.x)) << (21011u % 32u)), -2147483647i, i32(-1i) * -(-2147483647i ^ u_input.d.x)));
    let var_4 = _wgslsmith_div_u32(_wgslsmith_div_u32(~(~1u), _wgslsmith_mult_u32(global1.b, _wgslsmith_add_u32(global1.b, countOneBits(10269u)))), countOneBits((global1.a.x << (func_2(false, Struct_1(global1.a, 44890u), vec3<u32>(global0.b, var_2.a.x, 0u)) % 32u)) | ~71901u));
    return _wgslsmith_clamp_i32(u_input.d.x, ~(~var_3.x | u_input.d.x), -58769i);
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_1 {
    global1 = Struct_1(arg_3.xz, firstTrailingBit(1u));
    global0 = Struct_1(max(~vec2<u32>(global1.b, 35373u) << (_wgslsmith_clamp_vec2_u32(global0.a, vec2<u32>(arg_3.x, u_input.a), vec2<u32>(arg_3.x, global1.b)) % vec2<u32>(32u)), ~select(arg_3.yy, vec2<u32>(arg_3.x, 4294967295u), vec2<bool>(false, arg_1))) | ~(arg_3.yy | select(vec2<u32>(49966u, 6363u), global1.a, arg_1)), ~(~_wgslsmith_sub_u32(u_input.a, 27986u)));
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(~(_wgslsmith_div_vec2_u32(global1.a, vec2<u32>(global1.b, 0u)) & ~vec2<u32>(0u, global0.b)), ~(~global1.a), ~_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(42614u, global1.a.x)), global0.a)), 1u | (4294967295u & ~global1.b));
    let var_1 = -_wgslsmith_div_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 2147483647i, 51831i, 1i) & vec4<i32>(24572i, arg_0.x, -5237i, 12310i), vec4<i32>(70216i, u_input.d.x, u_input.d.x, arg_0.x)), arg_0.x);
    global1 = Struct_1(~var_0.a, 0u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(countOneBits(countOneBits(vec3<i32>(u_input.d.x | 5233i, _wgslsmith_dot_vec2_i32(u_input.d, u_input.d), func_1(Struct_1(global0.a, global0.b))))), true, vec2<f32>(_wgslsmith_f_op_f32(ceil(841f)), _wgslsmith_f_op_f32(-1f)), vec3<u32>(7059u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 1250u, global0.b) >> (vec4<u32>(global0.b, 55539u, 1u, global1.a.x) % vec4<u32>(32u)), vec4<u32>(global1.a.x, 4294967295u, 122746u, 4294967295u) >> (vec4<u32>(global1.b, global0.b, 4294967295u, 40010u) % vec4<u32>(32u))), ~4294967295u));
    var var_1 = select(select(vec2<bool>(false, !any(vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true | any(vec4<bool>(false, false, false, false))), false), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    global1 = var_0;
    let var_2 = var_0;
    let var_3 = Struct_1(~_wgslsmith_sub_vec2_u32(var_2.a, _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 4296u), ~var_2.a)), ~43801u);
    var var_4 = func_4(reverseBits(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(-11008i, u_input.d.x, 1i), vec3<i32>(11708i, 23992i, u_input.d.x), vec3<i32>(-1829i, u_input.d.x, u_input.d.x)), vec3<i32>(502i, u_input.d.x, -26515i)) ^ vec3<i32>(-u_input.d.x, u_input.d.x, abs(50334i))), any(select(select(select(vec2<bool>(true, true), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x)), !vec2<bool>(var_1.x, var_1.x), true), !select(vec2<bool>(var_1.x, true), vec2<bool>(true, true), true), !(!vec2<bool>(var_1.x, true)))), vec2<f32>(486f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(733f - -385f), _wgslsmith_f_op_f32(floor(-471f))))))), vec3<u32>(func_4(firstLeadingBit(abs(vec3<i32>(-8817i, u_input.d.x, u_input.d.x))), var_1.x, vec2<f32>(1f, 1f), ~reverseBits(vec3<u32>(12112u, global0.b, u_input.c))).b, ~firstTrailingBit(1u), ~(~func_2(var_1.x, Struct_1(vec2<u32>(var_3.b, 1u), 44078u), vec3<u32>(global0.a.x, var_0.a.x, 72718u)))));
    var var_5 = any(vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-289f, -1408f)), _wgslsmith_f_op_f32(950f + -1929f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(436f)) + _wgslsmith_f_op_f32(min(-455f, -1066f))), any(!vec2<bool>(true, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-2265f, 1130f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_2)).x)))));
}

