struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.c.x, -619f)), arg_1.a.x);
    var var_1 = Struct_3(-1449f, Struct_1(arg_1.a, arg_1.d, _wgslsmith_f_op_vec2_f32(-arg_0.c.xy), u_input.b != ~_wgslsmith_add_u32(1u, u_input.b), _wgslsmith_f_op_vec4_f32(ceil(arg_1.e))), !select(select(select(vec4<bool>(false, false, arg_0.b, false), vec4<bool>(true, true, arg_0.b, false), false), select(vec4<bool>(true, arg_0.b, true, false), vec4<bool>(arg_1.d, true, true, arg_0.b), true), vec4<bool>(arg_0.b, true, arg_1.d, false)), !vec4<bool>(arg_0.b, true, arg_1.b, true), arg_0.b), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1421f)), _wgslsmith_f_op_f32(min(arg_1.e.x, var_0.x)), _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-arg_0.c.x)) + arg_1.e))), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(10020u, u_input.b, u_input.b, 4294967295u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 21990u, 59821u, 61708u), vec4<u32>(38469u, 4294967295u, 48483u, u_input.b))) ^ ~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.b, 46819u, u_input.b)), vec4<u32>(4294967295u, 14511u, 64219u, 4060u)));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.e.yy, max(~(~vec2<u32>(u_input.b, 22016u)), vec2<u32>(0u, ~1u))), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_1.e.x, u_input.b)), var_1.e.yw), abs(reverseBits(~74494u)));
    let var_3 = _wgslsmith_dot_vec4_i32(abs(-firstLeadingBit(vec4<i32>(arg_0.a, u_input.a.x, arg_0.a, u_input.a.x)) ^ vec4<i32>(u_input.a.x, -u_input.a.x, ~2147483647i, 2147483647i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(arg_0.a, arg_0.a, arg_0.a, u_input.a.x), vec4<i32>(u_input.a.x, arg_0.a, _wgslsmith_mult_i32(-56831i, u_input.a.x), 1i)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.e.x)), -778f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - 1f))), 1i == (1i << (_wgslsmith_mod_u32(1u & var_1.e.x, u_input.b) % 32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + 101f), _wgslsmith_f_op_f32(sign(var_1.d.x))) * arg_1.a.yz), !any(var_1.c.xy), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) + _wgslsmith_f_op_f32(select(-2245f, -755f, arg_0.b))), var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(488f, arg_0.c.x)))), 160f), _wgslsmith_f_op_vec4_f32(var_1.b.e - _wgslsmith_f_op_vec4_f32(exp2(var_1.b.e)))));
    return var_4.d;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = vec4<i32>(~(-_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(39524i, u_input.a.x, -1i) ^ vec3<i32>(24260i, 1i, -44836i), vec3<i32>(2147483647i, reverseBits(-33276i), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)))), u_input.a.x, ~abs(u_input.a.x)) << (vec4<u32>(66633u, _wgslsmith_sub_u32(~1u, arg_0.e.x), u_input.b | 31367u, ~(~(4294967295u >> (0u % 32u)))) % vec4<u32>(32u));
    var var_1 = Struct_2(_wgslsmith_add_i32(-2147483647i, 79i >> (arg_0.e.x % 32u)), arg_0.c.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1217f))) * _wgslsmith_f_op_f32(max(arg_0.d.x, -970f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a - -584f), arg_0.d.x)), arg_0.a));
    var_1 = Struct_2(var_1.a, (2147483647i > _wgslsmith_dot_vec2_i32(reverseBits(var_0.zz), min(vec2<i32>(-1270i, 34521i), vec2<i32>(var_0.x, -64329i)))) & ((func_3(Struct_2(var_1.a, false, vec3<f32>(arg_0.b.e.x, var_1.c.x, 1658f)), arg_0.b) || var_1.b) | true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.x, 1723f, -475f), arg_0.b.e.wxx) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-613f, arg_0.a, -539f) * var_1.c)))) - _wgslsmith_f_op_vec3_f32(arg_0.d.xzy + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(586f, var_1.c.x, 662f), vec3<f32>(arg_0.a, arg_0.a, 336f))))))));
    var_1 = Struct_2(_wgslsmith_div_i32(-2147483647i & select(-44022i << (1u % 32u), ~var_1.a, arg_0.b.d), firstTrailingBit(-7428i)), arg_0.b.d || true, arg_0.b.a);
    var var_2 = select(vec3<i32>((var_0.x & 1i) | _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a, 2147483647i), u_input.a), var_0.xx >> (vec2<u32>(29299u, u_input.b) % vec2<u32>(32u))), var_1.a, 0i), min(vec3<i32>(firstTrailingBit(46898i), 6086i ^ -var_1.a, ~1i), var_0.xwx), vec3<bool>(arg_0.b.d && true, all(vec2<bool>(var_1.b, any(vec2<bool>(true, false)))), all(arg_0.c)));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> vec4<i32> {
    let var_0 = arg_1.d.ww;
    let var_1 = arg_1.e.x;
    let var_2 = u_input.a.x;
    var var_3 = arg_1;
    var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-861f - var_0.x), any(!vec2<bool>(arg_1.b.b, arg_0))))), arg_1.b, select(vec4<bool>(var_3.b.d, var_3.b.b, arg_1.c.x, !(!var_3.c.x)), func_2(Struct_3(_wgslsmith_f_op_f32(-475f + arg_1.b.e.x), var_3.b, arg_1.c, _wgslsmith_f_op_vec4_f32(step(var_3.b.e, var_3.d)), arg_1.e)).c, !var_3.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(266f, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(exp2(arg_1.d.x))), _wgslsmith_f_op_f32(min(103f, _wgslsmith_f_op_f32(trunc(-296f)))), var_3.a)), arg_1.e);
    return -(~(~_wgslsmith_mod_vec4_i32(~vec4<i32>(-487i, 1i, u_input.a.x, var_2), firstLeadingBit(vec4<i32>(1i, -35479i, var_2, 0i)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: vec4<u32>) -> u32 {
    var var_0 = func_2(func_2(func_2(Struct_3(arg_2.b, func_2(Struct_3(arg_2.b, Struct_1(vec3<f32>(-217f, 351f, -446f), arg_1.x, vec2<f32>(arg_2.b, 211f), arg_1.x, vec4<f32>(arg_2.b, 706f, 577f, arg_2.b)), vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<f32>(-767f, arg_2.b, arg_2.b, 487f), vec4<u32>(18714u, arg_3.x, u_input.b, u_input.b))).b, !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<f32>(-1000f, arg_2.b, arg_2.b, arg_2.b), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, arg_2.a.x, arg_2.a.x, 25831u), arg_2.a)))));
    var_0 = func_2(Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(-arg_2.b)))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-170f, 411f, var_0.a))), 1i < arg_0.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(var_0.b.e.zy)))), any(!vec4<bool>(true, true, arg_1.x, true)), vec4<f32>(_wgslsmith_f_op_f32(select(1423f, arg_2.b, false)), -1765f, _wgslsmith_f_op_f32(round(1659f)), -177f)), vec4<bool>(false, any(func_2(Struct_3(3275f, var_0.b, vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<f32>(arg_2.b, 888f, -355f, var_0.d.x), vec4<u32>(arg_3.x, 14082u, 33877u, u_input.b))).c.zwy), !var_0.b.d, any(vec4<bool>(var_0.b.d, false, var_0.b.b, arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) * var_0.d), ~select(var_0.e, vec4<u32>(u_input.b, arg_2.a.x, 4294967295u, u_input.b), true) | max(select(vec4<u32>(var_0.e.x, 21184u, arg_2.a.x, 124736u), vec4<u32>(4294967295u, arg_2.a.x, var_0.e.x, arg_2.a.x), vec4<bool>(arg_1.x, var_0.c.x, var_0.b.d, arg_1.x)), firstTrailingBit(vec4<u32>(var_0.e.x, 25153u, 2803u, arg_2.a.x)))));
    var var_1 = var_0.b.a.xx;
    var_0 = func_2(Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)))), func_2(Struct_3(-637f, var_0.b, !vec4<bool>(arg_1.x, true, arg_1.x, false), _wgslsmith_f_op_vec4_f32(select(var_0.d, var_0.d, true)), _wgslsmith_mod_vec4_u32(arg_3, var_0.e))).b, var_0.c, vec4<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(896f, 842f)), _wgslsmith_f_op_f32(-1326f + var_0.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(min(-556f, _wgslsmith_f_op_f32(f32(-1f) * -1963f)))), ~(~arg_3)));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b.c, var_0.b.c)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(889f, 148f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -652f), var_0.a), var_0.b.c))));
    return ~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(58539u, arg_2.a.x, 27359u, arg_2.a.x)), vec4<u32>(1u, arg_2.a.x, 4294967295u, var_0.e.x) >> (arg_2.a % vec4<u32>(32u))), ~4294967295u, 1u);
}

fn func_1(arg_0: Struct_4) -> vec3<f32> {
    let var_0 = vec3<u32>(arg_0.a.x, func_5(func_4(true, func_2(Struct_3(1360f, Struct_1(vec3<f32>(arg_0.b, -1064f, arg_0.b), false, vec2<f32>(1714f, -1000f), false, vec4<f32>(arg_0.b, 679f, -601f, 157f)), vec4<bool>(false, true, false, false), vec4<f32>(-794f, -1483f, 1052f, arg_0.b), vec4<u32>(u_input.b, 4294967295u, u_input.b, arg_0.a.x))), arg_0.b), !vec2<bool>(func_3(Struct_2(1i, false, vec3<f32>(473f, -1677f, arg_0.b)), Struct_1(vec3<f32>(arg_0.b, -535f, arg_0.b), true, vec2<f32>(-479f, 187f), true, vec4<f32>(arg_0.b, arg_0.b, 1758f, arg_0.b))), any(vec3<bool>(true, true, true))), Struct_4(arg_0.a, _wgslsmith_f_op_f32(596f - arg_0.b)), ~vec4<u32>(u_input.b, 2515u, 30909u, 56095u)), arg_0.a.x);
    let var_1 = vec3<u32>(arg_0.a.x, firstLeadingBit(u_input.b), 17014u) >> (max(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(var_0, var_0), ~(~var_0)), ~var_0) % vec3<u32>(32u));
    var var_2 = abs(select(select(-_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), max(u_input.a.x >> (4294967295u % 32u), _wgslsmith_mod_i32(u_input.a.x, -2147483647i)), any(vec3<bool>(true, true, true))), ~1i, true));
    var var_3 = vec3<bool>(true, true, true);
    var var_4 = 684f;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(floor(arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1444f, arg_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(select(!all(vec2<bool>(true, true)), true, true), true, !(!any(vec4<bool>(true, true, true, true))), true);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -121f);
    let var_2 = _wgslsmith_f_op_vec3_f32(func_1(Struct_4(vec4<u32>(4294967295u, u_input.b, 54169u, u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-656f, _wgslsmith_f_op_f32(floor(-475f)))) - 915f))));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -1i) ^ (u_input.a.x | (i32(-1i) * -11690i));
    var var_4 = func_2(func_2(Struct_3(var_2.x, func_2(func_2(Struct_3(var_2.x, Struct_1(vec3<f32>(var_2.x, -1464f, 204f), true, var_2.xz, false, vec4<f32>(var_2.x, var_2.x, var_2.x, -822f)), var_0, vec4<f32>(-610f, var_2.x, -556f, var_2.x), vec4<u32>(58658u, 4294967295u, u_input.b, 24796u)))).b, vec4<bool>(var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true, true), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(sign(var_2.x)), var_2.x), vec4<u32>(~u_input.b, u_input.b, ~3310u, ~0u))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~1u, 36898u & _wgslsmith_mult_u32(1u >> (u_input.b % 32u), ~u_input.b)));
}

