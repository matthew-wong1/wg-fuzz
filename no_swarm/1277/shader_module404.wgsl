struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    global0 = _wgslsmith_mult_u32(~(~firstTrailingBit(1u)), 68937u);
    var var_0 = Struct_1(select(vec3<u32>(3289u, countOneBits(select(20766u, 1u, true)), 0u), _wgslsmith_mult_vec3_u32(min(~vec3<u32>(15226u, 43823u, 1u), ~vec3<u32>(68530u, 16979u, 0u)), firstTrailingBit(vec3<u32>(1u, 4294967295u, 0u))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), false))), 887f);
    global0 = countOneBits(39649u);
    let var_1 = 1i;
    let var_2 = Struct_1(~max(firstTrailingBit(var_0.a), var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b, -1493f), -343f)))) * -1000f));
    return select(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), true)), select(select(vec3<bool>(arg_0 < arg_0, true, var_2.a.x == var_0.a.x), vec3<bool>(true, var_2.a.x == var_2.a.x, false), any(vec3<bool>(false, true, false))), !vec3<bool>(all(vec2<bool>(false, false)), true, true), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), true))), select(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), any(vec2<bool>(true, all(vec3<bool>(false, false, true))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: u32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = vec4<bool>(all(vec3<bool>(true, true, true)) | true, any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true)), any(!(!func_3(arg_0.x))), func_3(u_input.a.x).x | all(select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
    global0 = _wgslsmith_mod_u32(abs(_wgslsmith_add_u32(reverseBits(_wgslsmith_sub_u32(arg_2, arg_2)), abs(50226u))), ~arg_2);
    global0 = ~4294967295u ^ (arg_2 << (abs(arg_2) % 32u));
    let var_1 = _wgslsmith_clamp_vec4_u32(abs((vec4<u32>(1u, 13588u, arg_2, arg_2) >> ((vec4<u32>(arg_2, arg_2, arg_2, arg_2) | vec4<u32>(arg_2, 27126u, arg_2, arg_2)) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(64792u, arg_2, 4294967295u, 9204u), vec4<u32>(arg_2, 26103u, arg_2, 1u)), vec4<u32>(4294967295u, 9312u, 4294967295u, arg_2), _wgslsmith_mult_vec4_u32(vec4<u32>(93880u, arg_2, 28672u, arg_2), vec4<u32>(11582u, arg_2, arg_2, 29065u)))), (~(~vec4<u32>(1u, arg_2, arg_2, arg_2)) & vec4<u32>(_wgslsmith_div_u32(arg_2, 35383u), ~arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 0u), vec3<u32>(51110u, arg_2, 4294967295u)), 1u)) ^ ~(min(vec4<u32>(4294967295u, arg_2, 58209u, arg_2), vec4<u32>(arg_2, arg_2, 15925u, arg_2)) << ((vec4<u32>(arg_2, arg_2, arg_2, arg_2) ^ vec4<u32>(arg_2, arg_2, 22454u, arg_2)) % vec4<u32>(32u))), abs(firstLeadingBit(vec4<u32>(0u, 31587u, 2380u, arg_2))));
    let var_2 = 33219u;
    return Struct_1(var_1.zxy, _wgslsmith_f_op_f32(floor(1250f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2(vec2<i32>(countOneBits(u_input.a.x), -u_input.a.x), u_input.a.zy, _wgslsmith_clamp_u32(~(~4294967295u), 4294967295u ^ arg_1.a.x, 4294967295u << (arg_1.a.x % 32u)), _wgslsmith_clamp_vec4_i32(u_input.a & abs(-u_input.a), (vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)) | u_input.a, ~abs(vec4<i32>(u_input.a.x, -1i, 17010i, u_input.a.x)) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<u32>(arg_1.a.x, 0u, 0u)), 93090u, ~arg_1.a.x, arg_1.a.x) % vec4<u32>(32u))));
    global0 = arg_1.a.x;
    var var_1 = arg_1;
    var_1 = Struct_1(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(4237u, 21675u, 14319u), arg_1.a) & var_1.a, _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.a.x, arg_1.a.x, 15089u), var_1.a)), -259f);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0))));
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> bool {
    var var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(382f - _wgslsmith_div_f32(-1120f, 284f)), _wgslsmith_f_op_f32(min(-658f, -393f)), true)), _wgslsmith_f_op_f32(min(-412f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1317f)) + 495f)))), func_2(vec2<i32>(-1i, 14393i), u_input.a.yx, ~arg_1.x, vec4<i32>(_wgslsmith_add_i32(max(u_input.a.x, u_input.a.x), firstLeadingBit(u_input.a.x)), -15508i, u_input.a.x, u_input.a.x | _wgslsmith_dot_vec4_i32(vec4<i32>(19168i, u_input.a.x, u_input.a.x, 13816i), vec4<i32>(u_input.a.x, u_input.a.x, -17085i, -26528i)))));
    global0 = abs(~reverseBits(_wgslsmith_mod_u32(53611u, ~7799u)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b, 472f, -1834f), vec3<f32>(-1007f, var_0.b, var_0.b))), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, -664f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b)) - var_0.b), _wgslsmith_f_op_f32(max(-125f, _wgslsmith_f_op_f32(var_0.b - var_0.b))), _wgslsmith_f_op_f32(f32(-1f) * -120f)));
    var var_2 = Struct_1(var_0.a, -352f);
    var_0 = Struct_1(vec3<u32>(~_wgslsmith_sub_u32(27242u, 0u), var_0.a.x, ~8772u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b))))));
    return any(vec4<bool>(true, true == (true || all(vec3<bool>(false, true, true))), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), true)), any(vec3<bool>(var_0.a.x <= 4294967295u, true, var_0.b < -228f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(reverseBits(min(~1u, ~(~1u))), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(23123u, 13017u, 13968u), ~vec3<u32>(1u, 1u, 1u)), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~33641u, ~4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), 40508u));
    let var_1 = !vec2<bool>(true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), true)));
    let var_2 = _wgslsmith_f_op_f32(abs(-422f));
    var_0 = var_1.x;
    var_0 = all(select(vec2<bool>(var_1.x, var_1.x), var_1, select(var_1, vec2<bool>(true, !var_1.x), func_3(u_input.a.x).yz)));
    var var_3 = Struct_1(vec3<u32>(~(~14118u), 28316u, _wgslsmith_div_u32(select(1u, 1u, any(vec3<bool>(false, var_1.x, var_1.x))), ~_wgslsmith_div_u32(0u, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_2)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.a.x, ~u_input.a.x, firstTrailingBit(-2147483647i)), u_input.a.zwz >> (~var_3.a % vec3<u32>(32u)))));
}

