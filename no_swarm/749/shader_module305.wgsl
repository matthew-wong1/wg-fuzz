struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = Struct_3(Struct_2(select((vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) | vec4<u32>(26277u, 1u, u_input.c, u_input.c)) >> (~vec4<u32>(u_input.c, u_input.c, u_input.c, 40157u) % vec4<u32>(32u)), vec4<u32>(0u, ~1u, u_input.c, u_input.c), all(vec4<bool>(true, true, true, true)))), Struct_1(~(u_input.c ^ u_input.c) > 4294967295u), 433f, Struct_1((0i << ((1u ^ u_input.c) % 32u)) > 12619i), Struct_1(_wgslsmith_f_op_f32(select(-751f, _wgslsmith_f_op_f32(897f * -357f), true)) == arg_1));
    var_0 = Struct_3(var_0.a, Struct_1(false), var_0.c, Struct_1(!var_0.b.a), Struct_1(any(vec3<bool>(all(vec4<bool>(var_0.e.a, false, var_0.b.a, true)), u_input.a.x >= u_input.a.x, var_0.b.a))));
    let var_1 = var_0.b;
    var var_2 = -countOneBits(reverseBits(firstTrailingBit(-vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x))));
    var_0 = Struct_3(var_0.a, Struct_1(!(!(!var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * 221f), _wgslsmith_div_f32(613f, -1425f), var_0.e.a))) - -172f), var_0.b, Struct_1(true));
    return countOneBits(_wgslsmith_dot_vec3_u32(~max(var_0.a.a.yzz, vec3<u32>(1u, u_input.c, u_input.c) << (vec3<u32>(4294967295u, 4294967295u, 1u) % vec3<u32>(32u))), ~countOneBits(var_0.a.a.zyz) >> (_wgslsmith_clamp_vec3_u32(var_0.a.a.xzy, ~var_0.a.a.yzz, select(var_0.a.a.yxx, vec3<u32>(var_0.a.a.x, 45331u, var_0.a.a.x), vec3<bool>(false, var_1.a, var_0.e.a))) % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 1u, 2268u, 54824u), abs(vec4<u32>(u_input.c, u_input.c, u_input.c, 7402u))), select(~vec4<u32>(0u, 45581u, u_input.c, 55840u), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 68382u), arg_0.a)), countOneBits(_wgslsmith_clamp_u32(1u, 6883u >> (u_input.c % 32u), 43239u ^ u_input.c))) >> (u_input.c % 32u);
    var var_1 = vec3<u32>(u_input.c, max(u_input.c, _wgslsmith_sub_u32(_wgslsmith_sub_u32(max(4294967295u, 86917u), 1u), _wgslsmith_clamp_u32(u_input.c, func_3(643f, -1199f), ~1u))), _wgslsmith_div_u32(~u_input.c, _wgslsmith_clamp_u32(4294967295u, ~(u_input.c ^ u_input.c), 0u)));
    var var_2 = reverseBits(~_wgslsmith_mod_u32(firstLeadingBit(select(var_1.x, var_1.x, false)), ~(~u_input.c)));
    let var_3 = Struct_2(vec4<u32>(41075u, abs(~u_input.c << (1u % 32u)), 35833u, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1120f), 1592f) >> (u_input.c % 32u)));
    var_0 = (4294967295u | var_3.a.x) & 4294967295u;
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = !vec2<bool>(true & !any(vec3<bool>(arg_1.a, false, true)), false);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1030f * -992f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1158f - _wgslsmith_div_f32(1000f, 206f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -841f)))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(364f))))) - -1230f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(921f)))))));
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(853f, 448f), _wgslsmith_f_op_f32(-1000f + -118f))))))), 724f));
    var_1 = 1f;
    return Struct_2(~vec4<u32>(1u, 0u, ~u_input.c | 4294967295u, max(4646u, arg_0.x)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    var var_0 = reverseBits(u_input.c);
    var var_1 = Struct_3(func_4(~abs(vec2<u32>(4294967295u, u_input.c) >> (arg_0.a.zz % vec2<u32>(32u))), func_2(Struct_1(true))), func_2(func_2(Struct_1(any(vec3<bool>(true, false, true))))), -279f, func_2(func_2(func_2(Struct_1(true)))), func_2(func_2(func_2(Struct_1(true)))));
    var_0 = ~var_1.a.a.x;
    var_1 = Struct_3(var_1.a, func_2(Struct_1(~u_input.b.x == abs(72866i))), 217f, var_1.b, func_2(var_1.b));
    var_0 = reverseBits(4294967295u);
    return func_2(Struct_1(any(select(vec3<bool>(var_1.e.a, false, false), select(vec3<bool>(var_1.e.a, true, var_1.d.a), vec3<bool>(var_1.e.a, var_1.b.a, var_1.e.a), var_1.e.a), var_1.d.a & false))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3) -> bool {
    var var_0 = select(arg_1.a.a.zwy, _wgslsmith_mult_vec3_u32(vec3<u32>(35415u, u_input.c, firstTrailingBit(min(33687u, arg_1.a.a.x))), _wgslsmith_clamp_vec3_u32(arg_1.a.a.zxx, arg_1.a.a.xyy, ~arg_1.a.a.zwx << (~arg_1.a.a.www % vec3<u32>(32u)))), (arg_1.e.a | true) || !(arg_1.e.a | any(vec4<bool>(arg_1.b.a, arg_1.b.a, arg_1.e.a, true))));
    var var_1 = arg_0;
    let var_2 = u_input.c;
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(min(abs(0u), 28880u), u_input.c & 33995u), var_2), 45655u);
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(arg_0 + vec4<f32>(-238f, var_1.x, -1095f, arg_1.c))))) + arg_0), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-826f + 1205f), _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(select(1623f, arg_1.c, true)), 715f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)), arg_1.d.a)), !select(vec4<bool>(all(vec2<bool>(false, false)), true, true, arg_1.b.a), vec4<bool>(false, arg_1.b.a, true, false), false)));
    return !(u_input.b.x != _wgslsmith_dot_vec4_i32(~min(u_input.a, u_input.a), vec4<i32>(u_input.a.x, 2147483647i, -10086i, u_input.a.x) << (~vec4<u32>(75191u, var_3, 0u, var_0.x) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, func_5(vec4<f32>(1f, 1f, 1f, 1f), Struct_3(Struct_2(~vec4<u32>(31508u, u_input.c, 1u, 26560u)), func_1(Struct_2(vec4<u32>(u_input.c, u_input.c, u_input.c, 0u))), 1500f, Struct_1(true), func_2(Struct_1(false)))));
    let var_1 = firstTrailingBit(1i) ^ -(u_input.b.x ^ (_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, u_input.a.x, -1i, u_input.a.x)) | _wgslsmith_add_i32(-2147483647i, 0i)));
    var_0 = !select(select(select(!vec2<bool>(var_0.x, false), !vec2<bool>(var_0.x, false), var_0.x), select(vec2<bool>(true, var_0.x), select(vec2<bool>(false, true), vec2<bool>(true, var_0.x), var_0.x), any(vec4<bool>(false, false, var_0.x, var_0.x))), all(!vec4<bool>(var_0.x, true, false, var_0.x))), vec2<bool>(false, false), vec2<bool>(!var_0.x, var_0.x));
    var_0 = !vec2<bool>(all(select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x), false), vec3<bool>(var_0.x, var_0.x, false), select(vec3<bool>(var_0.x, false, true), vec3<bool>(false, true, true), true))), any(!select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, var_0.x))));
    let var_2 = select(select(!select(select(vec2<bool>(false, true), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false)), !vec2<bool>(var_0.x, var_0.x), false), select(select(vec2<bool>(true, false), vec2<bool>(true, var_0.x), false), vec2<bool>(!var_0.x, var_0.x), var_0.x), !vec2<bool>(true | var_0.x, true)), vec2<bool>(var_0.x != var_0.x, false), select(select(select(!vec2<bool>(false, var_0.x), !vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(false, var_0.x), select(true, !var_0.x, func_1(Struct_2(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c))).a)), !(!select(vec2<bool>(false, var_0.x), vec2<bool>(true, true), vec2<bool>(false, var_0.x))), select(vec2<bool>(false, false), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), var_0.x), vec2<bool>(false, false)), vec2<bool>(u_input.c <= u_input.c, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4377u, u_input.c, 0u, u_input.c), vec4<u32>(10556u, u_input.c, 0u, 1u), vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c))) >> (~(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) ^ vec4<u32>(1u, 1u, u_input.c, 1u)) % vec4<u32>(32u)), max(vec4<u32>(u_input.c << (u_input.c % 32u), 1u, u_input.c, u_input.c), max(reverseBits(vec4<u32>(50932u, 0u, 68369u, 63378u)), select(vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u), vec4<u32>(u_input.c, u_input.c, 4294967295u, 27687u), vec4<bool>(var_2.x, var_0.x, var_2.x, var_2.x))))), _wgslsmith_mod_u32(~(_wgslsmith_add_u32(4294967295u, u_input.c) << (4294967295u % 32u)), max(~u_input.c, 26084u)), vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, -35618i) << (16920u % 32u)), countOneBits(-1i), ~var_1), u_input.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-267f, 1655f, -884f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2137f, 109f, 919f)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-805f, -144f, -1964f))))));
}

