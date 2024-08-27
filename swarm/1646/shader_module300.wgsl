struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1238f, -685f), vec2<f32>(-744f, -1000f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-675f, -1072f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-587f, -279f))))));
    let var_1 = arg_3.d.x;
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_3.a, select(1u, ~45373u, any(!vec4<bool>(arg_2.d.x, arg_2.d.x, arg_2.d.x, arg_2.d.x))), select(~(arg_0 ^ arg_2.a), 1u >> (~arg_3.c.x % 32u), !select(true, arg_3.d.x, arg_3.d.x)), 28982u), ~(select(vec4<u32>(46688u, arg_0, arg_3.c.x, 4294967295u) >> (vec4<u32>(arg_3.c.x, arg_3.a, 0u, 25862u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 0u, 0u) >> (vec4<u32>(arg_3.c.x, arg_2.a, arg_2.c.x, 1u) % vec4<u32>(32u)), vec4<bool>(true, false, arg_3.d.x, arg_2.d.x)) << (~(~vec4<u32>(arg_3.c.x, 47480u, arg_2.a, 0u)) % vec4<u32>(32u))));
    let var_3 = -1439f;
    let var_4 = arg_3;
    return u_input.a.x;
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = Struct_1(10109u, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, u_input.a.x) >> (~vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u)), u_input.a), u_input.a.x, u_input.a.x, func_3(1u, -(vec3<i32>(19038i, 0i, 2147483647i) | vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), Struct_1(~1u, ~vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), ~vec2<u32>(0u, 19389u), vec2<bool>(arg_0, arg_0)), Struct_1(min(4294967295u, 4754u), vec4<i32>(-8337i, u_input.a.x, u_input.a.x, -1i), ~vec2<u32>(0u, 1u), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, true))))), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(98224u, 91794u)) >> ((vec2<u32>(1u, 1u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)), abs(~vec2<u32>(4294967295u, 4294967295u))), !vec2<bool>(true, any(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, false)))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_mod_vec4_u32(abs(select(~vec4<u32>(var_1.a, var_1.c.x, 26348u, var_1.a), countOneBits(vec4<u32>(var_1.c.x, var_0.a, var_0.a, 0u)), !vec4<bool>(true, true, true, var_0.d.x))) ^ ~(~(~vec4<u32>(var_1.a, var_0.c.x, var_1.c.x, var_0.c.x))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(0u, var_1.c.x, 23852u, 1u)), (vec4<u32>(var_1.c.x, 0u, var_1.c.x, var_1.c.x) ^ vec4<u32>(51400u, 1u, var_0.c.x, var_0.c.x)) >> (vec4<u32>(var_1.c.x, 1u, 0u, var_0.a) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(81040u, 4294967295u, var_1.a, var_0.c.x), vec4<u32>(var_1.c.x, var_1.a, 1u, 1u)) ^ _wgslsmith_mod_vec4_u32(min(vec4<u32>(var_0.c.x, 0u, 1u, var_1.a), vec4<u32>(4294967295u, var_0.a, var_0.c.x, var_0.a)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.a, 4294967295u, var_0.c.x), vec4<u32>(var_0.a, var_0.a, 82240u, var_0.a)))));
    var var_3 = vec3<bool>(select(select(true, !all(vec2<bool>(false, var_1.d.x)), any(var_1.d)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1065f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(775f - 1573f)), any(var_0.d) & ((var_1.d.x | var_0.d.x) && true)), var_0.d.x, false);
    var_3 = !(!vec3<bool>(any(!vec4<bool>(false, true, false, arg_0)), all(select(vec2<bool>(var_3.x, arg_0), vec2<bool>(arg_0, var_1.d.x), vec2<bool>(true, false))), any(vec4<bool>(var_3.x, var_1.d.x, var_0.d.x, var_0.d.x))));
    return 11017i;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-204f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(622f * _wgslsmith_f_op_f32(floor(303f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1096f, -1335f)) + _wgslsmith_f_op_f32(705f * -1694f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-987f, -315f, arg_1.d.x)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(672f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f - -1000f)), -1014f, _wgslsmith_f_op_f32(2208f * _wgslsmith_f_op_f32(2300f - 1008f))))), vec4<bool>(true, arg_1.d.x, all(select(vec3<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x), vec3<bool>(arg_1.d.x, false, arg_1.d.x), false)) | true, select(false, arg_1.d.x, all(vec3<bool>(arg_1.d.x, arg_1.d.x, true))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -526f, var_0.x, 1223f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -843f, 998f, -572f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -605f), _wgslsmith_f_op_f32(step(var_0.x, -1358f)))) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f * _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1331f, -559f) * -1204f)))), vec4<bool>(true, all(vec3<bool>(!arg_1.d.x, any(vec3<bool>(arg_1.d.x, true, false)), any(vec4<bool>(true, arg_1.d.x, arg_1.d.x, arg_1.d.x)))), true, _wgslsmith_f_op_f32(abs(1000f)) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * -1427f), _wgslsmith_div_f32(var_0.x, -988f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, 612f, 435f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, -1000f, -900f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(694f, 429f, 945f, -1653f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, var_0.x, 1452f), vec4<f32>(var_0.x, 1000f, 419f, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-493f, var_0.x, -1000f, var_0.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(104f, var_0.x, 610f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-241f, 275f, 192f, 275f)))), !select(vec4<bool>(arg_1.d.x, arg_1.d.x, false, arg_1.d.x), vec4<bool>(arg_1.d.x, false, false, arg_1.d.x), vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.d.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(327f - var_0.x))), var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1685f + -776f))), _wgslsmith_f_op_f32(972f + 163f)) * vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * -2329f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1234f - var_0.x))), var_0.x)), select(select(vec4<bool>(true, true, arg_1.d.x, true), !(!vec4<bool>(false, arg_1.d.x, arg_1.d.x, arg_1.d.x)), true || arg_1.d.x), select(vec4<bool>(-9383i > u_input.a.x, arg_1.d.x & arg_1.d.x, false, arg_1.d.x), !select(vec4<bool>(false, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<bool>(arg_1.d.x, true, arg_1.d.x, arg_1.d.x), false), !select(vec4<bool>(false, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<bool>(arg_1.d.x, false, false, arg_1.d.x), vec4<bool>(false, false, false, arg_1.d.x))), vec4<bool>(false, false, !all(arg_1.d), all(select(vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, true), vec4<bool>(arg_1.d.x, arg_1.d.x, false, false), vec4<bool>(arg_1.d.x, arg_1.d.x, false, false)))))));
    let var_1 = vec4<bool>(arg_1.d.x, max(arg_1.a, ~(0u << (arg_1.a % 32u))) == arg_1.a, !arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(var_0.x + var_0.x)) + var_0.x) != -995f);
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 989f, _wgslsmith_f_op_f32(-461f * _wgslsmith_f_op_f32(-var_0.x)), var_0.x)));
    return u_input.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>) -> u32 {
    var var_0 = func_4(_wgslsmith_add_i32(firstLeadingBit(u_input.a.x), -func_2(true)), Struct_1(_wgslsmith_add_u32(1u & arg_0.x, ~_wgslsmith_sub_u32(arg_0.x, 24515u)), -vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -9631i), -17093i, 1i >> (arg_0.x % 32u), ~(-30979i)), vec2<u32>(~arg_0.x, arg_0.x & arg_0.x) & countOneBits(_wgslsmith_sub_vec2_u32(arg_0, arg_0)), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1395f, 1054f))))), arg_1, select(select(vec2<bool>(select(true, true, true), arg_1.x > arg_1.x), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), true), vec2<bool>(true, all(vec3<bool>(false, false, true))), vec2<bool>(select(arg_1.x >= 1395f, any(vec2<bool>(true, true)), all(vec3<bool>(false, false, true))), any(vec4<bool>(true, true, true, true))))));
    let var_2 = Struct_1(arg_0.x, -abs(-(~vec4<i32>(-2147483647i, 2147483647i, var_0.x, -2147483647i))), min(arg_0 ^ _wgslsmith_clamp_vec2_u32(arg_0, arg_0, ~vec2<u32>(4294967295u, arg_0.x)), arg_0), select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false)), vec2<bool>(true, select(true, false, false)), vec2<bool>(any(vec2<bool>(false, false)), false)), !vec2<bool>(all(vec3<bool>(false, false, false)), true), true | (_wgslsmith_dot_vec2_u32(arg_0, arg_0) < _wgslsmith_mult_u32(57437u, arg_0.x))));
    let var_3 = 678f;
    var var_4 = vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, false, var_2.d.x, false)))) || (~(arg_0.x & var_2.a) >= 55758u), true, true, var_2.d.x);
    return ~1u;
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(4294967295u, firstTrailingBit(arg_3.b), vec2<u32>(~_wgslsmith_div_u32(arg_3.a, 4294967295u), arg_3.c.x) | vec2<u32>(4294967295u, reverseBits(firstTrailingBit(27822u))), arg_3.d);
    var var_1 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(40534u, var_0.c.x << (arg_3.a % 32u)), _wgslsmith_sub_u32(firstTrailingBit(var_0.a), 4294967295u)), var_0.b, arg_2.c, !arg_3.d);
    let var_2 = u_input.a.zx;
    var var_3 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 891f) * _wgslsmith_f_op_f32(f32(-1f) * -595f)) + arg_1), !all(select(vec3<bool>(arg_2.d.x, false, arg_3.d.x), !vec3<bool>(var_1.d.x, var_1.d.x, true), arg_3.d.x)), true, var_1.d.x | true);
    var var_4 = !(!select(vec4<bool>(var_3.x, u_input.a.x == var_2.x, true, false), select(!vec4<bool>(arg_3.d.x, arg_0.x, false, false), vec4<bool>(true, true, true, arg_3.d.x), select(vec4<bool>(false, arg_0.x, true, true), vec4<bool>(arg_3.d.x, var_0.d.x, false, arg_3.d.x), true)), select(vec4<bool>(false, arg_0.x, var_0.d.x, false), select(vec4<bool>(var_1.d.x, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_3.d.x, false, true), arg_2.d.x), var_0.b.x >= arg_2.b.x)));
    return arg_3;
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_div_i32(u_input.a.x, arg_1.b.x), ~u_input.a.x, _wgslsmith_add_i32(-1i, 1i)) & ~(-arg_1.b.xzy), vec3<i32>(0i ^ countOneBits(u_input.a.x), firstLeadingBit(1i), _wgslsmith_add_i32(1i, arg_1.b.x))));
    let var_1 = _wgslsmith_f_op_f32(ceil(2410f));
    var var_2 = arg_1.c.x;
    var var_3 = func_5(!(!(!arg_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1772f - arg_0) * -1320f)) * var_1), Struct_1(abs(4294967295u), vec4<i32>(-4386i, min(-1i | arg_1.b.x, u_input.a.x), ~(~(-14597i)), func_2(arg_1.d.x)), vec2<u32>(1u, 1954u), vec2<bool>(false, false)), Struct_1(arg_1.c.x, vec4<i32>(func_2(true), -_wgslsmith_add_i32(var_0.x, var_0.x), abs(13759i), 1i), arg_1.c, select(vec2<bool>(arg_1.d.x, any(vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, false))), func_5(arg_1.d, -484f, arg_1, Struct_1(arg_1.c.x, vec4<i32>(var_0.x, arg_1.b.x, u_input.a.x, u_input.a.x), vec2<u32>(33537u, 4294967295u), arg_1.d)).d, true)));
    let var_4 = arg_1;
    return Struct_1(var_4.a, max(arg_1.b, var_4.b), (~var_4.c & vec2<u32>(select(23488u, 24775u, false), _wgslsmith_add_u32(85467u, 24581u))) ^ ~vec2<u32>(~47418u, ~0u), var_3.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(715f, func_5(vec2<bool>((u_input.a.x & u_input.a.x) < u_input.a.x, func_1(vec2<u32>(56264u, 8153u), vec2<f32>(-1017f, 264f)) != _wgslsmith_mult_u32(0u, 0u)), _wgslsmith_f_op_f32(trunc(-1388f)), Struct_1(firstLeadingBit(1u), vec4<i32>(~0i, u_input.a.x, func_3(4294967295u, vec3<i32>(2147483647i, -1i, u_input.a.x), Struct_1(1u, vec4<i32>(u_input.a.x, u_input.a.x, -28560i, -2147483647i), vec2<u32>(31530u, 1u), vec2<bool>(true, true)), Struct_1(79934u, vec4<i32>(1i, 2147483647i, 2147483647i, -32866i), vec2<u32>(1u, 1u), vec2<bool>(false, false))), 2147483647i), ~(~vec2<u32>(30655u, 0u)), vec2<bool>(true, false)), Struct_1(~125025u, -vec4<i32>(u_input.a.x, u_input.a.x, -20122i, -2147483647i), min(~vec2<u32>(78111u, 2668u), ~vec2<u32>(8680u, 0u)), vec2<bool>(true, u_input.a.x != 2147483647i))), _wgslsmith_f_op_f32(f32(-1f) * -1311f));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(964f)) - _wgslsmith_f_op_f32(f32(-1f) * -709f)), -2456f, var_0.d.x))), -761f, false));
    let var_2 = select(vec3<bool>(true, true, true), select(select(!select(vec3<bool>(var_0.d.x, true, false), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), var_0.d.x), vec3<bool>(true, !var_0.d.x, var_0.a != var_0.c.x), select(!vec3<bool>(true, false, var_0.d.x), vec3<bool>(true, false, var_0.d.x), !vec3<bool>(true, false, var_0.d.x))), vec3<bool>(func_6(_wgslsmith_f_op_f32(f32(-1f) * -643f), func_5(var_0.d, -2457f, Struct_1(var_0.a, var_0.b, vec2<u32>(1u, 61332u), vec2<bool>(true, var_0.d.x)), Struct_1(var_0.c.x, var_0.b, var_0.c, var_0.d)), _wgslsmith_f_op_f32(round(-1527f))).d.x, any(select(var_0.d, var_0.d, vec2<bool>(var_0.d.x, false))), func_5(func_6(504f, Struct_1(4294967295u, vec4<i32>(u_input.a.x, 1i, -2147483647i, 0i), var_0.c, vec2<bool>(true, true)), 814f).d, _wgslsmith_f_op_f32(903f + 498f), func_5(var_0.d, -488f, Struct_1(85119u, var_0.b, var_0.c, vec2<bool>(false, var_0.d.x)), Struct_1(22551u, var_0.b, vec2<u32>(var_0.c.x, var_0.c.x), vec2<bool>(true, var_0.d.x))), func_5(var_0.d, -338f, Struct_1(20940u, vec4<i32>(var_0.b.x, -22798i, u_input.a.x, -26292i), var_0.c, var_0.d), Struct_1(var_0.a, var_0.b, vec2<u32>(1u, 1u), var_0.d))).d.x), !((var_0.b.x ^ 33424i) > ~var_0.b.x)), true & var_0.d.x);
    var_1 = -1194f;
    var var_3 = ~firstLeadingBit(~func_6(497f, Struct_1(4294967295u, vec4<i32>(1i, 14777i, u_input.a.x, 9348i), var_0.c, var_2.yy), -695f).c) & (vec2<u32>(~35923u >> (var_0.a % 32u), var_0.a) << (var_0.c % vec2<u32>(32u)));
    var_0 = func_5(!var_2.xy, -701f, func_5(select(var_2.yx, !vec2<bool>(var_0.d.x, var_0.d.x), func_6(-589f, Struct_1(var_0.c.x, var_0.b, var_0.c, vec2<bool>(true, var_2.x)), -1193f).d), -869f, func_6(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-360f, 1483f) + _wgslsmith_f_op_f32(100f - -1486f)), Struct_1(~56874u, var_0.b & vec4<i32>(20658i, -1i, var_0.b.x, u_input.a.x), ~vec2<u32>(4294967295u, 30879u), var_0.d), -537f), Struct_1(~var_0.a, ~(var_0.b << (vec4<u32>(48133u, 4294967295u, var_0.a, var_0.c.x) % vec4<u32>(32u))), min(~var_0.c, vec2<u32>(var_0.a, 4294967295u)), vec2<bool>(var_2.x, true))), Struct_1(var_3.x, vec4<i32>(var_0.b.x, ~countOneBits(1i), ~(-2147483647i), 2147483647i), ~(~vec2<u32>(432u, var_0.a)), select(vec2<bool>(var_2.x, all(vec4<bool>(var_0.d.x, var_2.x, var_2.x, true))), func_6(_wgslsmith_f_op_f32(f32(-1f) * -861f), func_6(-1283f, Struct_1(20862u, var_0.b, var_0.c, var_2.zx), -999f), _wgslsmith_f_op_f32(-1380f * 238f)).d, any(var_0.d))));
    let var_4 = _wgslsmith_mod_vec4_i32(var_0.b, -vec4<i32>(1i, var_0.b.x, min(895i, -36620i), ~var_0.b.x)) ^ ~min(~vec4<i32>(2147483647i, -21740i, u_input.a.x, var_0.b.x), select(vec4<i32>(66492i, var_0.b.x, 0i, var_0.b.x), var_0.b, var_0.d.x) & var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec4<i32>(var_0.b.x, var_4.x, var_4.x, -11988i) ^ var_4) ^ -vec4<i32>(_wgslsmith_div_i32(27587i, var_4.x), u_input.a.x, -20777i, countOneBits(2147483647i)));
}

