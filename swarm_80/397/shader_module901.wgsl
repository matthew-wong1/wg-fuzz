struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = firstTrailingBit(46744u);
    var var_1 = select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), select(vec4<bool>(true, true, all(vec2<bool>(true, false)), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, true, false, true)), false, select(false, false, true), true)), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false)))), vec4<bool>(true, true, true, true), all(vec4<bool>(max(var_0, 4294967295u) < 1u, false, true, false)));
    var var_2 = Struct_2(-vec2<i32>(1i, 1i) ^ vec2<i32>(_wgslsmith_clamp_i32(1i, 1i, -2147483647i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-4704i, 27318i, -20598i)), vec3<i32>(1i, 1i, 1i))), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(358f - 859f), _wgslsmith_f_op_f32(step(-801f, 195f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(618f, 873f), vec2<f32>(-998f, -415f), var_1.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1123f, 562f) + vec2<f32>(-1361f, -205f))))), _wgslsmith_dot_vec3_u32(arg_0.xxw, _wgslsmith_mult_vec3_u32(arg_0.zyz | arg_0.yxz, ~vec3<u32>(u_input.a.x, 39410u, var_0))), -1281f, max(~vec4<u32>(44603u, var_0, 1u, 4294967295u), arg_0)));
    var_2 = Struct_2(_wgslsmith_sub_vec2_i32(var_2.a, ~(-var_2.a) ^ ((var_2.a & vec2<i32>(0i, -17668i)) & var_2.a)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(var_2.b.a.x)), var_2.b.c), var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(ceil(-1000f)))), ~(~(~arg_0))));
    let var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_2.a.x, var_2.a.x), var_2.a.x), ~var_2.a.x, 9394i) & vec3<i32>(-1i, -1i, i32(-1i) * -28692i), _wgslsmith_mult_vec3_i32(~vec3<i32>(var_2.a.x, 24754i, var_2.a.x) & vec3<i32>(var_2.a.x, var_2.a.x, var_2.a.x), select(vec3<i32>(1i, 0i, var_2.a.x), vec3<i32>(-7575i, var_2.a.x, 0i) << (vec3<u32>(u_input.a.x, arg_0.x, 21166u) % vec3<u32>(32u)), !vec3<bool>(true, false, var_1.x))) << (countOneBits(arg_0.yyw) % vec3<u32>(32u)), ~vec3<i32>(27328i, _wgslsmith_div_i32(~var_2.a.x, var_2.a.x), 0i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(718f, _wgslsmith_f_op_f32(-var_2.b.c))), -570f)))));
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1096f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, arg_1.x), vec4<u32>(93972u, 0u, 28997u, arg_1.x))))))));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-775f)) + -828f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -997f)))));
    let var_1 = select(vec2<u32>(arg_1.x, ~(arg_1.x << (u_input.a.x % 32u))), ~_wgslsmith_div_vec2_u32(arg_1.zz, _wgslsmith_div_vec2_u32(vec2<u32>(52206u, u_input.a.x) >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u)), vec2<u32>(27418u, 1u) << (vec2<u32>(u_input.a.x, 23509u) % vec2<u32>(32u)))), !any(!vec4<bool>(false, true, arg_0, true)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1015f - 1342f))) * 1000f))));
    var_0 = _wgslsmith_f_op_f32(-1125f * -735f);
    return Struct_3(arg_1.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> i32 {
    let var_0 = !vec4<bool>(true, !all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(false, true, false, true), u_input.a.x != 0u)), true | ((10532u <= arg_0.a) | select(true, true, false)));
    let var_1 = vec3<bool>(true, select(false, true, var_0.x) && !var_0.x, arg_1.a.x <= abs((-34366i >> (u_input.a.x % 32u)) | arg_1.a.x));
    let var_2 = vec3<bool>(false, false, !((~arg_1.a.x == firstTrailingBit(arg_1.a.x)) == var_1.x));
    let var_3 = Struct_2(select(_wgslsmith_sub_vec2_i32(arg_1.a, -_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a.x, 33172i), vec2<i32>(1i, arg_1.a.x))), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.a.x, 53541i), firstTrailingBit(arg_1.a)), var_0.x), arg_1.b);
    var var_4 = !var_0.zzw;
    return -16945i;
}

fn func_1() -> bool {
    var var_0 = Struct_2(select(select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(26250i, 1i, -33925i)), _wgslsmith_add_i32(2147483647i, -1i)), ~min(vec2<i32>(-20445i, 24262i), vec2<i32>(2147483647i, 2962i)), vec2<bool>(false, true)), vec2<i32>(abs(1i), func_4(func_2(true, vec3<u32>(u_input.a.x, 0u, u_input.a.x)), Struct_2(vec2<i32>(24181i, -5645i), Struct_1(vec2<f32>(180f, 895f), u_input.a.x, -926f, vec4<u32>(13018u, 4294967295u, u_input.a.x, u_input.a.x))))), vec2<bool>(true, true)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(-613f, 336f)), _wgslsmith_f_op_f32(func_3(min(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 6836u), vec4<u32>(25323u, u_input.a.x, u_input.a.x, 0u))))), u_input.a.x << ((~4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a)) % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(460f)))))), vec4<u32>(~abs(4294967295u), _wgslsmith_sub_u32(func_2(true, vec3<u32>(52317u, 17838u, u_input.a.x)).a, u_input.a.x), u_input.a.x & _wgslsmith_div_u32(u_input.a.x, u_input.a.x), 49081u)));
    var_0 = Struct_2(~(var_0.a >> (u_input.a % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1470f, _wgslsmith_f_op_f32(var_0.b.a.x * var_0.b.c)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.a * var_0.b.a))), u_input.a.x, -147f, var_0.b.d));
    var_0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.a, var_0.a), abs(-38689i ^ var_0.a.x)) ^ var_0.a, var_0.b);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c * _wgslsmith_f_op_f32(ceil(var_0.b.c)))));
    var var_2 = var_0.b;
    return all(vec4<bool>(true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), any(vec4<bool>(false, true, false, false)))), !all(vec2<bool>(true, true)), all(vec3<bool>(any(vec3<bool>(false, true, false)), true, all(vec4<bool>(true, true, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!vec4<bool>(all(vec4<bool>(false, true, false, false)) == true, true, func_1(), select(true, true, true)));
    let var_1 = vec3<u32>(u_input.a.x, countOneBits(~7803u) ^ firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 6727u, u_input.a.x), vec3<u32>(0u, 30791u, 1u))), countOneBits(~(0u << (u_input.a.x % 32u))));
    var_0 = (_wgslsmith_mult_i32(-39076i << (~var_1.x % 32u), 30688i) & 35773i) < _wgslsmith_dot_vec2_i32(vec2<i32>(-27704i, ~(-36093i)) << (~(vec2<u32>(var_1.x, var_1.x) | u_input.a) % vec2<u32>(32u)), ~countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-9695i, 0i), vec2<i32>(0i, 13684i))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(921f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1861f), _wgslsmith_f_op_f32(f32(-1f) * -646f), all(vec2<bool>(false, true)))))), 1935f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-175f - 326f))))));
    var var_3 = true;
    var_3 = any(select(vec4<bool>(true, true, _wgslsmith_f_op_f32(min(303f, var_2.x)) == var_2.x, true), vec4<bool>(true, true, true, true), !all(vec3<bool>(true, true, true)) && true));
    var var_4 = !(!select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(any(vec3<bool>(false, true, false)), any(vec3<bool>(false, false, true)), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))));
    var_2 = vec4<f32>(931f, _wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - 1000f), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(24214i, min(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(32682i, 2147483647i, 38736i), select(vec3<i32>(2147483647i, 0i, 10252i), vec3<i32>(-94461i, -2147483647i, 1i), false)) ^ select(0i, select(0i, 1i, var_4.x), true)), 0u, var_2.x, ~abs(select(var_1.x | var_1.x, reverseBits(var_1.x), true)));
}

