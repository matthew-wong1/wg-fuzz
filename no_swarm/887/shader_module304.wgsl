struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f), 1f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1355f, -1009f), _wgslsmith_f_op_f32(round(304f)))))))), -335f, -374f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(394f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -411f)))))));
    var_0 = vec4<f32>(1000f, 836f, _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(max(312f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, 1321f)), _wgslsmith_f_op_f32(-1414f + _wgslsmith_f_op_f32(trunc(var_0.x))), -817f, var_0.x), select(select(vec4<bool>(any(vec2<bool>(true, false)), all(vec2<bool>(true, false)), any(vec3<bool>(false, true, true)), any(vec3<bool>(false, false, true))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), false), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false)), !vec4<bool>(any(vec3<bool>(false, true, true)), any(vec4<bool>(false, false, true, false)), true, var_0.x > var_0.x), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)))), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1337f, -831f)))))), !vec2<bool>(!all(vec2<bool>(true, false)), true));
    var_1 = Struct_2(130f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(907f, var_0.x, -1928f, 1000f)), _wgslsmith_f_op_vec4_f32(sign(var_1.b))))))), select(!var_1.c, select(vec4<bool>(true, true, any(vec3<bool>(var_1.c.x, true, var_1.e.x)), all(vec4<bool>(var_1.e.x, true, false, true))), var_1.c, any(var_1.c.zwx)), select(var_1.c, var_1.c, var_1.c)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.xw)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(530f, 445f) + var_1.d.a)))), !vec2<bool>(!(var_1.b.x > var_0.x), false));
    var_1 = Struct_2(var_0.x, _wgslsmith_div_vec4_f32(vec4<f32>(-169f, var_0.x, -358f, _wgslsmith_f_op_f32(var_0.x - -2063f)), vec4<f32>(978f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_1.a)) + _wgslsmith_f_op_f32(sign(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_1.d.a.x)), var_1.a)), !select(!var_1.c, var_1.c, vec4<bool>(var_1.e.x && true, false, any(var_1.e), true)), var_1.d, !vec2<bool>(_wgslsmith_f_op_f32(var_0.x + var_0.x) >= _wgslsmith_f_op_f32(select(-345f, var_1.b.x, true)), all(var_1.c.xyy)));
    return i32(-1i) * -((54355i ^ _wgslsmith_add_i32(-1i, u_input.a.x)) << (_wgslsmith_dot_vec3_u32(~arg_0.zxz, arg_0.yyz) % 32u));
}

fn func_2(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(max((30149i & arg_0.x) ^ -27772i, ~abs(34206i)), arg_0.x << (_wgslsmith_dot_vec2_u32(~vec2<u32>(97031u, 4294967295u), ~vec2<u32>(8714u, 12829u)) % 32u)), func_3(_wgslsmith_mod_vec4_u32(~vec4<u32>(27236u, 12380u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 1u))) >> (4294967295u % 32u), u_input.a.x, -min(_wgslsmith_clamp_i32(u_input.a.x, ~(-1i), 1i), u_input.a.x));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(595f, 365f, 535f, -1062f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(355f, -850f, -577f, 2035f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, false)))))), vec4<bool>(true, true, select(true, true, any(vec4<bool>(false, true, true, true)) && all(vec3<bool>(true, true, false))), !all(vec2<bool>(false, true)) & true), Struct_1(vec2<f32>(1145f, 102f)), select(vec2<bool>(true, true), vec2<bool>(true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)))), true));
    var_1 = Struct_2(var_1.b.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.a.x) + _wgslsmith_f_op_f32(var_1.b.x - -1835f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1495f))))), _wgslsmith_f_op_f32(round(-108f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - var_1.a)), 134f), var_1.a), vec4<bool>(any(var_1.c), var_1.e.x, !(true | all(vec4<bool>(var_1.e.x, var_1.e.x, true, var_1.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(sign(var_1.b.x))) >= _wgslsmith_f_op_f32(-887f * _wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)))), var_1.d, vec2<bool>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.x, 64956i, 32320i), ~u_input.a) < u_input.a.x, var_1.e.x));
    return select(vec2<bool>(any(!var_1.c.wyw), var_1.c.x), select(var_1.e, !vec2<bool>(var_1.c.x, !var_1.c.x), !vec2<bool>(!var_1.c.x, true)), !select(!var_1.e, vec2<bool>(all(vec4<bool>(var_1.e.x, var_1.c.x, false, var_1.c.x)), true), var_1.e.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a * 125f) - _wgslsmith_f_op_f32(f32(-1f) * -171f)), _wgslsmith_f_op_f32(f32(-1f) * -172f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_3.d.a, arg_3.d.a, arg_3.c.xy))))));
    var var_1 = firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(firstTrailingBit(u_input.a.x), _wgslsmith_sub_i32(-26163i, u_input.a.x)) | (vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 1i)), u_input.a.xx | arg_0));
    return arg_1;
}

fn func_5(arg_0: f32, arg_1: f32) -> Struct_2 {
    let var_0 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(667f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0 - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, var_0.x), var_0))))), var_0)));
    let var_2 = Struct_1(vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 * var_0.x))) - _wgslsmith_f_op_f32(-var_1.a.x))));
    var var_3 = min(u_input.a.x << (_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(110949u, 1u, 70245u, 1u)), vec4<u32>(1u, ~37389u, ~6241u, select(0u, 46530u, true))) % 32u), _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(-1355i, -1i, 5662i)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-7507i, -5187i, -2147483647i), vec3<i32>(45060i, u_input.a.x, 0i)), abs(vec3<i32>(u_input.a.x, u_input.a.x, 1i)))) >> (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 1482u), vec3<u32>(0u, 7114u, 42062u))) % 32u));
    var var_4 = Struct_2(_wgslsmith_div_f32(1669f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(var_1.a.x - -990f)), 1014f)), vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(-1481f, 1801f))), _wgslsmith_f_op_f32(f32(-1f) * -161f), 1254f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1373f) - var_2.a.x)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), true), any(vec4<bool>(true, true, false, false))), var_2, vec2<bool>(true, true));
    return Struct_2(_wgslsmith_f_op_f32(-var_4.b.x), _wgslsmith_f_op_vec4_f32(trunc(var_4.b)), !(!select(!vec4<bool>(true, var_4.c.x, var_4.c.x, true), select(var_4.c, var_4.c, var_4.e.x), !var_4.c.x)), var_1, vec2<bool>(false, false));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(_wgslsmith_f_op_f32(func_4(max(u_input.a.yz, vec2<i32>(5195i, u_input.a.x) & u_input.a.zz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-622f, -101f))) - 704f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -208f))), Struct_2(837f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(407f, -141f, 590f, 962f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -579f, 848f, 780f) * vec4<f32>(-1561f, -204f, 718f, -203f)), true)), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), false), Struct_1(vec2<f32>(1545f, -1680f)), !func_2(vec2<i32>(2147483647i, u_input.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(284f + _wgslsmith_div_f32(945f, -597f)), _wgslsmith_f_op_f32(1f * 200f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-func_5(261f, _wgslsmith_f_op_f32(f32(-1f) * -319f)).b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) + _wgslsmith_f_op_vec4_f32(select(var_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.b.x, 336f, var_0.d.a.x) + vec4<f32>(-1000f, 1348f, -2363f, var_0.a)), !var_0.e.x))), !var_0.c)), vec4<f32>(_wgslsmith_div_f32(-1371f, var_0.a), -679f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * 1f) * _wgslsmith_div_f32(-154f, _wgslsmith_f_op_f32(var_0.b.x - var_0.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(1098f - -871f))))));
    var var_2 = select(-(~countOneBits(u_input.a.yx)), reverseBits(_wgslsmith_add_vec2_i32(max(u_input.a.xy | u_input.a.zy, u_input.a.xy >> (vec2<u32>(5387u, 22435u) % vec2<u32>(32u))), ~vec2<i32>(-26757i, 52185i))), !(!vec2<bool>(false, !var_0.c.x)));
    let var_3 = _wgslsmith_div_f32(var_1.x, var_1.x);
    let var_4 = func_5(-399f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_1.x, 1405f, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * 923f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a.x * _wgslsmith_f_op_f32(min(var_1.x, var_0.d.a.x))) - 1488f))).c;
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(select(vec2<i32>(1i, -2147483647i), u_input.a.zz, vec2<bool>(var_4.x, false)), _wgslsmith_f_op_f32(var_0.a - 437f), var_0.d.a.x, var_0)), _wgslsmith_div_f32(-1739f, var_0.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(~u_input.a.yz, _wgslsmith_div_f32(-663f, var_1.x), _wgslsmith_f_op_f32(var_3 - var_3), func_5(-710f, var_1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1422f - var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 1187f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(459f))))), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -503f) != _wgslsmith_div_f32(281f, _wgslsmith_f_op_f32(max(946f, var_3))), var_2.x >= -1i, (var_2.x & _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, u_input.a.x, -2147483647i), vec3<i32>(-2147483647i, u_input.a.x, 2147483647i))) >= 0i, !(!var_0.e.x || var_0.e.x)), Struct_1(_wgslsmith_f_op_vec2_f32(var_1.yy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.wz)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, var_1.x), var_0.d.a))))), vec2<bool>(all(!var_4.zx), any(!select(vec3<bool>(var_4.x, false, true), vec3<bool>(var_0.e.x, var_4.x, var_4.x), var_4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = func_1().d;
    var_0 = func_1();
    var var_2 = ~max(min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(77740u, 1u, 5955u)), vec3<u32>(1u, 1u, 1u));
    var var_3 = select(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(-u_input.a.yx), u_input.a.zy), max(~u_input.a.zz, -u_input.a.xy), vec2<i32>(-1i, 7457i)), _wgslsmith_mod_vec2_i32(~u_input.a.zy, -u_input.a.zz), var_0.e);
    var_3 = u_input.a.xx;
    let var_4 = max(var_2.x, ~var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_3.x, max(_wgslsmith_div_vec3_u32(max(countOneBits(vec3<u32>(1u, 4920u, var_2.x)), vec3<u32>(1u, var_2.x, 41445u)), vec3<u32>(min(9502u, var_4), min(1u, var_2.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.x), var_2.yx))), vec3<u32>(var_4, 4294967295u, ~(~var_4))), max(vec2<i32>(-2147483647i, max(2416i, u_input.a.x) & abs(8197i)), -firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(26668i, var_3.x), u_input.a.zx))));
}

