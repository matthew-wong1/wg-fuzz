struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = Struct_1(arg_1.a, 1u >= (reverseBits(_wgslsmith_sub_u32(arg_1.a.x, arg_1.a.x)) ^ 0u), select(arg_1.b, false, !arg_1.b), 269f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(957f))));
    var var_1 = Struct_2(arg_0.a);
    let var_2 = arg_1;
    var var_3 = var_2.a;
    let var_4 = select(vec4<bool>(!arg_1.c, var_0.c, any(select(vec3<bool>(var_2.b, true, arg_1.b), select(vec3<bool>(arg_1.d, false, var_0.d), vec3<bool>(var_2.c, true, var_0.c), arg_1.c), false)), arg_1.b), vec4<bool>(countOneBits(_wgslsmith_clamp_u32(arg_2, 22929u, 35497u)) > ~1u, !(!(u_input.e != u_input.c.x)), any(!(!vec3<bool>(var_0.c, true, false))), arg_1.b), select(vec4<bool>(all(vec3<bool>(false, arg_1.d, true)) & all(vec4<bool>(true, arg_1.b, var_0.d, true)), true, any(vec2<bool>(true, true)), true), vec4<bool>(all(!vec4<bool>(var_2.c, true, true, arg_1.c)), !any(vec2<bool>(false, var_0.b)), u_input.d > abs(-26904i), !all(vec3<bool>(false, arg_1.d, var_2.d))), !select(select(vec4<bool>(var_2.d, arg_1.b, false, var_2.c), vec4<bool>(false, false, var_2.c, false), true), vec4<bool>(true, var_2.d, var_0.d, var_0.b), any(vec2<bool>(var_2.c, true)))));
    return _wgslsmith_sub_u32(~(~0u), arg_1.a.x) ^ var_2.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<f32>) -> vec2<i32> {
    var var_0 = reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), arg_0.a.x, arg_0.a.x, arg_0.a.x), countOneBits(~vec4<u32>(4294967295u, 7599u, arg_0.a.x, 4294967295u)))) ^ vec4<u32>(4294967295u, arg_0.a.x, ~_wgslsmith_mod_u32(1u | arg_0.a.x, _wgslsmith_dot_vec3_u32(arg_0.a, arg_0.a)), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x), ~func_3(Struct_2(arg_3.x), arg_0, 1u)));
    let var_1 = arg_0;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(floor(arg_3.x)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(-150f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(var_2.a + -465f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a - -1108f), _wgslsmith_f_op_f32(trunc(arg_3.x)), all(vec4<bool>(false, var_1.c, var_1.b, true)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(165f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a), arg_3.x)), _wgslsmith_f_op_f32(sign(arg_3.x)))));
    var var_4 = vec4<i32>(max(abs(_wgslsmith_add_i32(arg_1, 41976i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, u_input.e, u_input.a.x, u_input.c.x), vec4<i32>(-2147483647i, 0i, arg_1, arg_1) >> (vec4<u32>(4294967295u, arg_0.a.x, 0u, var_0.x) % vec4<u32>(32u)))), 9120i, u_input.b, 1i) ^ abs(vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 6584i), u_input.c), u_input.c.x, _wgslsmith_mult_i32(-1i, arg_1)) | firstTrailingBit(vec4<i32>(arg_1, 49088i, 22069i, 2147483647i) | vec4<i32>(3342i, arg_1, -1i, 63700i)));
    return u_input.a;
}

fn func_4(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = !select(select(vec2<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(true, true, false)), true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), false), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-2078f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1214f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-283f, _wgslsmith_f_op_f32(abs(2375f)), var_0.x)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -2464f), _wgslsmith_f_op_f32(f32(-1f) * -1285f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1261f, 1004f, 1226f) + vec3<f32>(-751f, -341f, -622f)))), var_0.x)));
    let var_2 = vec4<i32>(firstLeadingBit((u_input.a.x & -870i) & (u_input.a.x | arg_0.x)), _wgslsmith_mod_i32(~u_input.d, 2147483647i), abs(i32(-1i) * -2147483647i), max(1i, u_input.c.x)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), -578f);
    let var_3 = select(select(vec4<bool>(true, select(var_0.x | var_0.x, any(vec2<bool>(false, var_0.x)), var_0.x), true, true), vec4<bool>(all(!vec3<bool>(false, var_0.x, false)), true, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x), any(vec4<bool>(var_0.x, true, any(vec3<bool>(false, var_0.x, var_0.x)), any(vec4<bool>(true, true, false, false))))), vec4<bool>(var_0.x, var_0.x, all(select(vec2<bool>(true, var_0.x), select(vec2<bool>(true, true), vec2<bool>(var_0.x, true), var_0.x), any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), all(!vec4<bool>(true, var_0.x, false, var_0.x))), vec4<bool>(!(!var_0.x), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-398f * var_1.x), 901f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) * _wgslsmith_f_op_f32(var_1.x * var_1.x)), false));
    return Struct_2(-1000f);
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = Struct_2(1039f);
    let var_1 = firstTrailingBit(18121u);
    var var_2 = Struct_2(var_0.a);
    var_2 = func_4(u_input.c ^ ((select(u_input.c, vec2<i32>(1i, 2147483647i), arg_0.d) & func_2(Struct_1(arg_0.a, false, false, true), u_input.b, vec4<bool>(false, arg_0.c, arg_0.c, false), vec3<f32>(1924f, var_0.a, var_2.a))) << (arg_0.a.xx % vec2<u32>(32u))));
    var var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 46506i | _wgslsmith_sub_i32(u_input.d, 30593i), u_input.a.x, 0i), select(~firstTrailingBit(vec4<i32>(u_input.e, -12545i, 1i, u_input.b)), (vec4<i32>(-15560i, -2349i, -1i, u_input.a.x) << (vec4<u32>(0u, 4294967295u, var_1, var_1) % vec4<u32>(32u))) & vec4<i32>(2147483647i, -2147483647i, -51464i, u_input.d), select(vec4<bool>(arg_0.c, true, arg_0.d, false), !vec4<bool>(true, false, true, arg_0.c), !vec4<bool>(false, arg_0.b, arg_0.d, false)))) << ((~abs(~vec4<u32>(var_1, arg_0.a.x, 4294967295u, 59489u)) | vec4<u32>(~41629u, 76233u, 47577u, var_1)) % vec4<u32>(32u));
    return ~abs(~_wgslsmith_add_vec4_u32(vec4<u32>(var_1, var_1, var_1, var_1), vec4<u32>(arg_0.a.x, 4294967295u, arg_0.a.x, 1u))) | countOneBits(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), arg_0.a.xx), 1u, 1u, var_1));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>) -> vec2<u32> {
    let var_0 = func_4(u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, -346f, 1556f, 101f), vec4<f32>(794f, 447f, var_0.a, -1000f), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a, -2061f, var_0.a)))))));
    let var_2 = select(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, ~_wgslsmith_sub_u32(arg_1.x, arg_1.x), _wgslsmith_sub_u32(arg_1.x, 1u)), vec3<u32>(~reverseBits(arg_1.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, 0u, arg_1.x, 4294967295u), arg_1), arg_1.x)), min(vec3<u32>(61527u, abs(func_1(Struct_1(vec3<u32>(arg_1.x, arg_1.x, 4294967295u), true, true, false)).x), abs(45233u)), vec3<u32>(~(~arg_1.x), abs(72800u), reverseBits(_wgslsmith_mod_u32(arg_1.x, 29183u)))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, false)), vec3<bool>(any(vec4<bool>(true, false, true, true)), true, u_input.b <= u_input.d), vec3<bool>(true, true, true)));
    var var_3 = vec3<bool>(any(select(vec4<bool>(true, true, all(vec3<bool>(false, false, true)), true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true)))), !all(vec2<bool>(true, true)), true);
    var var_4 = Struct_1(~_wgslsmith_sub_vec3_u32(var_2, select(reverseBits(arg_1.zzy), var_2 | vec3<u32>(22372u, var_2.x, arg_1.x), true)), !var_3.x, !any(select(var_3.zz, vec2<bool>(var_3.x, var_3.x), var_3.zz)) & select(!var_3.x, false, false), !any(!(!vec3<bool>(false, var_3.x, var_3.x))));
    return arg_1.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -854f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-266f, -810f)) - _wgslsmith_f_op_f32(f32(-1f) * -1062f)))), _wgslsmith_clamp_vec4_u32(abs(reverseBits(func_1(Struct_1(vec3<u32>(69043u, 10816u, 26088u), false, false, true)))), ~(~vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_2 = _wgslsmith_f_op_f32(floor(-684f));
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-742f, -153f, -776f, 264f) * vec4<f32>(1234f, 175f, -841f, 1033f))), vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_4 = func_4(func_2(Struct_1(~vec3<u32>(var_1.x, 1u, var_1.x), true, true, false), u_input.a.x, !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false)), var_3.zwx));
    let var_5 = Struct_2(-297f);
    var_2 = -1918f;
    var var_6 = func_4(vec2<i32>(max(_wgslsmith_clamp_i32(u_input.b, u_input.d, -1i ^ u_input.c.x), 1i), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec4<i32>(7088i, _wgslsmith_mult_i32(-17423i, u_input.c.x), u_input.e, ~(~(~(-1i)))), ~(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.c.x, -2147483647i, -1i)) ^ abs(vec4<i32>(u_input.b, ~u_input.c.x, _wgslsmith_add_i32(u_input.c.x, u_input.b), u_input.b)), ~(~u_input.e));
}

