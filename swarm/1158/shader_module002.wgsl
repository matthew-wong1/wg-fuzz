struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(u_input.b.zzz, u_input.b.wzy | _wgslsmith_sub_vec3_u32(countOneBits(firstTrailingBit(u_input.b.zzz)), abs(vec3<u32>(u_input.b.x, u_input.a, u_input.a)) << (~u_input.b.xyy % vec3<u32>(32u))));
    let var_1 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(225f, 1467f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-331f * arg_0) + arg_0), _wgslsmith_f_op_f32(arg_0 - 170f))), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(var_1.a)), vec2<bool>(true, var_1.b.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2175f * var_1.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))), arg_0, _wgslsmith_f_op_f32(abs(-1331f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-479f, 1194f, _wgslsmith_f_op_f32(f32(-1f) * -1263f), _wgslsmith_f_op_f32(step(var_1.a.x, -847f)))))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.a, _wgslsmith_f_op_vec2_f32(step(var_1.a, vec2<f32>(-2082f, 263f))), any(vec2<bool>(false, false))))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-581f + arg_0))))), ~(~(-vec4<i32>(1i, 1i, 1i, 1i))), Struct_1(vec2<u32>(~(0u >> (1u % 32u)), 9835u), _wgslsmith_div_f32(-579f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.x)) + 1f)), var_1.a), firstLeadingBit(firstTrailingBit(~vec4<i32>(1i, 1i, 1i, 1i))));
    return _wgslsmith_add_i32(13518i, -(~_wgslsmith_mult_i32(min(var_4.b.x, -77448i), -2147483647i)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_sub_vec2_u32(~u_input.b.yy, abs(vec2<u32>(u_input.a, 40563u ^ u_input.b.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2236f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(817f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1028f + -1703f)), false))));
    var var_2 = vec4<i32>(~func_3(-780f, 23614u), -63898i, _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(-20225i), i32(-1i) * -1i), select(firstLeadingBit(vec2<i32>(-25188i, 32664i)), reverseBits(vec2<i32>(1i, 40790i)), false) >> (~(~u_input.b.yx) % vec2<u32>(32u))), _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-2147483647i, 0i, 0i))), min(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i) * -vec3<i32>(1i, -6861i, -29880i))));
    var_2 = vec4<i32>(~var_2.x, ~4993i, -2147483647i | -abs(-20558i | var_2.x), 1i);
    var_2 = _wgslsmith_div_vec4_i32(min(vec4<i32>(var_2.x, 5470i & var_2.x, 0i, _wgslsmith_add_i32(var_2.x, 30844i)), ~countOneBits(vec4<i32>(0i, 2147483647i, -2147483647i, var_2.x))) ^ min(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_2.x, var_2.x, -11405i, -1i), ~vec4<i32>(26012i, var_2.x, -1i, -1i)), vec4<i32>(0i, _wgslsmith_add_i32(-1i, 0i), -var_2.x, _wgslsmith_add_i32(var_2.x, var_2.x))), -vec4<i32>(i32(-1i) * -var_2.x, i32(-1i) * -63467i, ~var_2.x & var_2.x, var_2.x));
    return Struct_1(~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), var_0.a))), var_1.x, var_1);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = vec3<u32>(arg_1.a.x | ~(~(39423u >> (arg_1.a.x % 32u))), abs(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b.x, 4294967295u)), ~(arg_1.a | vec2<u32>(0u, u_input.a)))), arg_1.a.x);
    var var_1 = Struct_3(vec2<u32>(arg_1.a.x, _wgslsmith_div_u32(_wgslsmith_div_u32(~35797u, _wgslsmith_add_u32(arg_1.a.x, var_0.x)), 4294967295u)));
    var_1 = Struct_3(firstLeadingBit(vec2<u32>(~_wgslsmith_mult_u32(var_0.x, u_input.b.x), _wgslsmith_mult_u32(arg_1.a.x, arg_1.a.x) >> (firstTrailingBit(arg_1.a.x) % 32u))));
    let var_2 = vec2<u32>(~(~u_input.a), 0u);
    var var_3 = select(min(vec3<u32>(~0u, ~4294967295u, reverseBits(arg_1.a.x)), countOneBits(vec3<u32>(var_1.a.x, 42110u, 35139u))), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(0u, 81976u, var_0.x)), u_input.b.zxw), !(_wgslsmith_mult_u32(1u, u_input.a) < (var_1.a.x | 29493u))) << (~vec3<u32>(var_2.x, ~37824u, arg_1.a.x) % vec3<u32>(32u));
    return func_2().b;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(198f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(749f))))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-122f, _wgslsmith_f_op_f32(485f - 272f)))), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-1449f + _wgslsmith_f_op_f32(f32(-1f) * -1556f)), func_2())))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, 532f), vec2<f32>(637f, 1000f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-592f, 375f), vec2<f32>(-248f, var_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-105f, var_0)))) - vec2<f32>(614f, _wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), min(vec4<i32>(select(46448i, 2147483647i, true), 1i, -2147483647i, countOneBits(18287i)), abs(vec4<i32>(1i, -2147483647i, 36753i, -2147483647i)))), func_2(), ~(-(~vec4<i32>(1i, 1i, 1i, 1i))));
    let var_2 = ~vec4<i32>(var_1.b.x, var_1.b.x, -1i, var_1.d.x);
    let var_3 = arg_1;
    var var_4 = Struct_3(vec2<u32>(~(~(~4294967295u)), arg_0.a.x));
    return 1017f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, 4294967295u) | ~u_input.a, ~(~u_input.a), u_input.b.x), ~(vec3<u32>(4294967295u, 16157u, u_input.b.x) | vec3<u32>(u_input.a, u_input.a, u_input.a)) ^ (_wgslsmith_add_vec3_u32(u_input.b.wzz, vec3<u32>(41775u, u_input.b.x, u_input.b.x)) & vec3<u32>(1u, 0u, u_input.a))) & ~(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.yxz, vec3<u32>(19168u, 4294967295u, 1u)), ~u_input.b.wyw) ^ u_input.a);
    let var_1 = u_input.b.ww;
    let var_2 = _wgslsmith_f_op_f32(func_1(Struct_3(~var_1), Struct_3(var_1)));
    var var_3 = Struct_1(~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0, 1u), func_2().a)), _wgslsmith_f_op_f32(min(381f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2, 1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1459f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(var_2, var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2, 1169f, true)), var_2))), -1000f, -781f);
    var_3 = func_2();
    var var_5 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b & vec4<u32>(var_0, var_3.a.x, var_0, 57314u), min(u_input.b, u_input.b)), _wgslsmith_add_u32(var_1.x, var_3.a.x) & _wgslsmith_clamp_u32(1u, 4851u, 0u)), ~(~vec2<u32>(u_input.b.x, 30193u))), 1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(var_2 + -704f))))));
    var var_6 = _wgslsmith_sub_u32(4294967295u, 88426u);
    var var_7 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(-vec2<i32>(1i, -1i) >> (_wgslsmith_sub_vec2_u32(var_3.a, u_input.b.zw) % vec2<u32>(32u)))), 771f, -1150f);
}

