struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(max(_wgslsmith_mod_u32(4294967295u, 1u), countOneBits(reverseBits(1u))), min(reverseBits(-(i32(-1i) * -4825i)), ~arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_f_op_f32(f32(-1f) * -650f)) + arg_0.c));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.c * var_0.c), _wgslsmith_f_op_f32(sign(-655f)), _wgslsmith_f_op_f32(arg_0.c - arg_0.c)) + vec3<f32>(arg_0.c, -489f, -1591f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.c, 528f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 535f, var_0.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, 1176f, var_0.c)))), true)));
    var_0 = arg_0;
    var_0 = Struct_1(14912u, 2147483647i, var_1.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + arg_0.c) + arg_0.c);
    return ~countOneBits(firstLeadingBit(~select(vec4<u32>(4294967295u, 0u, 29397u, arg_0.a), vec4<u32>(4294967295u, 5618u, 40467u, var_0.a), vec4<bool>(true, false, true, false))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_4(vec2<bool>(true, true), ~_wgslsmith_div_vec4_u32(arg_0, ~vec4<u32>(62282u, u_input.a, arg_2.a, arg_1.a.a) & arg_0), max(~abs(reverseBits(vec3<i32>(arg_1.b, arg_1.a.b, -31684i))), abs(_wgslsmith_mult_vec3_i32(-vec3<i32>(15322i, arg_1.a.b, -1i), vec3<i32>(-1i, -2147483647i, -26997i)))), !vec2<bool>(arg_2.c != arg_1.a.c, arg_1.a.b > (-1i ^ arg_1.a.b)), vec2<bool>(any(vec2<bool>(true, select(true, false, true))), true));
    var_0 = Struct_4(var_0.d, vec4<u32>(4294967295u, arg_0.x, _wgslsmith_mod_u32(~(arg_0.x ^ u_input.a), select(u_input.a, 1u, all(vec3<bool>(var_0.e.x, var_0.e.x, false)))), arg_1.a.a), -_wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(var_0.c, var_0.c)), ~vec3<i32>(54181i, arg_2.b, arg_1.a.b)), !(!vec2<bool>(!var_0.a.x, true)), vec2<bool>(any(!(!vec3<bool>(false, var_0.d.x, var_0.a.x))), true));
    var_0 = Struct_4(!var_0.e, _wgslsmith_sub_vec4_u32(arg_0, ~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.b, vec4<u32>(var_0.b.x, 14966u, 1u, arg_0.x), vec4<u32>(u_input.a, u_input.a, 0u, arg_2.a)), _wgslsmith_clamp_vec4_u32(var_0.b, arg_0, vec4<u32>(arg_2.a, 4294967295u, var_0.b.x, 71966u)))), _wgslsmith_mult_vec3_i32(~(vec3<i32>(24044i, arg_2.b, var_0.c.x) & vec3<i32>(arg_1.b, var_0.c.x, 0i)), vec3<i32>(~24129i, 1i, arg_2.b)) | var_0.c, !vec2<bool>(true, select(all(var_0.a), -847f > arg_1.c, any(vec4<bool>(var_0.a.x, var_0.d.x, true, var_0.e.x)))), !var_0.e);
    return _wgslsmith_div_f32(arg_1.c, arg_2.c);
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(arg_3.b.x, arg_2.c.x, 177f), 0i, _wgslsmith_f_op_f32(func_4((arg_2.b | abs(arg_2.b)) & vec4<u32>(u_input.a << (u_input.a % 32u), arg_3.b.x, ~u_input.a, 0u), Struct_2(Struct_1(1u, 23873i, 849f), ~arg_3.c.x, -1167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1748f + -1536f))), Struct_1(arg_2.b.x, arg_2.c.x | ~2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1601f, -1000f)) + _wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_0.x)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) * vec2<f32>(1f, 1f)), arg_0)));
    var var_2 = -2147483647i;
    let var_3 = vec3<bool>(true, !any(!(!vec3<bool>(false, arg_2.a.x, arg_3.e.x))), arg_3.e.x);
    let var_4 = min(~_wgslsmith_sub_u32(min(16021u, _wgslsmith_mult_u32(var_0.a.a, arg_3.b.x)), ~firstTrailingBit(16399u)), 1u);
    return var_3;
}

fn func_2() -> f32 {
    var var_0 = select(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-579f, -356f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1482f), 1f)), _wgslsmith_f_op_f32(func_4(func_3(Struct_1(u_input.a, -24155i, -908f)), Struct_2(Struct_1(u_input.a, 54965i, 244f), ~1173i, _wgslsmith_f_op_f32(f32(-1f) * -924f), -1000f), Struct_1(55378u, 115026i, _wgslsmith_f_op_f32(f32(-1f) * -351f)))), Struct_4(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), any(vec3<bool>(true, true, false))), max(~vec4<u32>(37960u, 1u, 4294967295u, 4294967295u), vec4<u32>(u_input.a, u_input.a, 0u, 48036u)), vec3<i32>(-1i << (u_input.a % 32u), -2147483647i, countOneBits(13754i)), vec2<bool>(true, select(true, false, false)), vec2<bool>(true, all(vec3<bool>(true, true, true)))), Struct_4(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), ~vec4<u32>(31663u, u_input.a, u_input.a, 0u) ^ select(vec4<u32>(u_input.a, 39437u, 2342u, 2782u), vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), vec4<bool>(true, true, true, true)), _wgslsmith_mult_vec3_i32(-vec3<i32>(70989i, 1i, 16632i), _wgslsmith_clamp_vec3_i32(vec3<i32>(4959i, 47579i, -2046i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(-10973i, -17302i, 13771i))), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(false, true)), false))), !(!vec3<bool>(true, func_5(vec2<f32>(-1317f, -541f), -653f, Struct_4(vec2<bool>(false, true), vec4<u32>(u_input.a, 43461u, u_input.a, 86727u), vec3<i32>(4723i, -20230i, 0i), vec2<bool>(false, true), vec2<bool>(false, true)), Struct_4(vec2<bool>(false, false), vec4<u32>(u_input.a, 71773u, u_input.a, u_input.a), vec3<i32>(-1i, 23911i, 25153i), vec2<bool>(true, true), vec2<bool>(false, true))).x, true)), true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(129f, 988f, true)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 268f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-166f, -1324f))))));
    var_1 = 1000f;
    var_0 = select(func_5(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1736f, 620f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(652f - 1000f), _wgslsmith_f_op_f32(ceil(-2788f))))), Struct_4(!var_0.yy, ~vec4<u32>(1u, u_input.a, u_input.a, u_input.a), firstTrailingBit(vec3<i32>(1i, 1i, 1i)), func_5(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-824f, 710f))), _wgslsmith_f_op_f32(f32(-1f) * -358f), Struct_4(vec2<bool>(var_0.x, true), vec4<u32>(u_input.a, u_input.a, 1u, 44456u), vec3<i32>(-1875i, -2147483647i, 19644i), vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x)), Struct_4(var_0.xy, vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec3<i32>(34921i, 11185i, 1i), var_0.zz, vec2<bool>(var_0.x, true))).zy, vec2<bool>(var_0.x, true & var_0.x)), Struct_4(vec2<bool>(false, !var_0.x), select(~vec4<u32>(u_input.a, 1u, 13167u, 12024u), vec4<u32>(u_input.a, u_input.a, 38327u, u_input.a) ^ vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), false)), reverseBits(abs(vec3<i32>(-52703i, 1i, -2147483647i))), var_0.xy, vec2<bool>(!var_0.x, func_5(vec2<f32>(1751f, -1488f), 483f, Struct_4(var_0.xz, vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec3<i32>(2147483647i, -7038i, 2147483647i), var_0.yz, vec2<bool>(var_0.x, true)), Struct_4(vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 1u, u_input.a), vec3<i32>(-24903i, 11181i, 1i), var_0.yy, vec2<bool>(var_0.x, var_0.x))).x))), !func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-194f, -203f) - vec2<f32>(-500f, 1427f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-104f, 427f))), -1214f, Struct_4(!var_0.xz, firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 8061u, 0u)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 35159i, 2147483647i), vec3<i32>(52454i, 34509i, 21347i)), func_5(vec2<f32>(-566f, -128f), 375f, Struct_4(vec2<bool>(false, false), vec4<u32>(10617u, 4294967295u, 1148u, u_input.a), vec3<i32>(0i, 14657i, -38538i), var_0.zz, var_0.zx), Struct_4(vec2<bool>(false, var_0.x), vec4<u32>(u_input.a, u_input.a, 65107u, 0u), vec3<i32>(45133i, 20812i, -33060i), var_0.zy, vec2<bool>(var_0.x, true))).xz, !var_0.xy), Struct_4(!vec2<bool>(var_0.x, var_0.x), reverseBits(vec4<u32>(109517u, u_input.a, 0u, u_input.a)), vec3<i32>(-6070i, 2147483647i, 0i), !vec2<bool>(var_0.x, true), var_0.xx)), vec3<bool>((1u > u_input.a) || var_0.x, true, var_0.x));
    var_0 = !select(vec3<bool>(any(!var_0.zy), any(!vec3<bool>(true, var_0.x, false)), !var_0.x), select(select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), true), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_0.x)), all(var_0.xz)), vec3<bool>(true, var_0.x, true), !(!vec3<bool>(var_0.x, var_0.x, false))), true);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1234f) * -497f) - 1654f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = _wgslsmith_f_op_f32(-2329f * var_0);
    let var_2 = _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 17639u, u_input.a, u_input.a)), ~select(~vec4<u32>(113438u, 1u, u_input.a, u_input.a), (vec4<u32>(1006u, 1u, 50683u, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 1u, 16058u) % vec4<u32>(32u))) ^ vec4<u32>(u_input.a, 49750u, u_input.a, 0u), true));
    var var_3 = arg_0.yz;
    var_3 = vec2<f32>(_wgslsmith_f_op_f32(418f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(684f, var_3.x, true))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), -1541f)));
    return _wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-773f, var_1, true)) * var_3.x))), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(round(-1236f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1670f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(-1204f, -598f, -253f), vec3<i32>(0i, -12816i, 48751i)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(218f - 511f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), -1738f)))))));
    let var_1 = Struct_1(_wgslsmith_dot_vec2_u32(~(~(vec2<u32>(u_input.a, 51517u) >> (vec2<u32>(58861u, 1u) % vec2<u32>(32u)))), vec2<u32>(0u, u_input.a)), 35093i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-453f - _wgslsmith_f_op_f32(trunc(-139f)))) * var_0));
    let var_2 = Struct_4(func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-570f * var_1.c) + var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec4<u32>(81034u, var_1.a, var_1.a, 61232u), Struct_2(Struct_1(u_input.a, 28011i, var_0), 7882i, var_1.c, -671f), var_1)) * _wgslsmith_f_op_f32(1000f + 243f))), -529f, Struct_4(select(func_5(vec2<f32>(-1466f, -301f), 262f, Struct_4(vec2<bool>(false, true), vec4<u32>(3076u, 1u, u_input.a, 0u), vec3<i32>(26659i, -7624i, var_1.b), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_4(vec2<bool>(false, false), vec4<u32>(68357u, 4294967295u, var_1.a, u_input.a), vec3<i32>(var_1.b, 2147483647i, 1i), vec2<bool>(false, true), vec2<bool>(true, true))).yy, vec2<bool>(true, false), true), vec4<u32>(_wgslsmith_sub_u32(89604u, 5488u), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.a), vec2<u32>(1u, 4294967295u)), u_input.a), -abs(vec3<i32>(-28638i, 0i, var_1.b)), vec2<bool>(true, false), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), Struct_4(vec2<bool>(any(vec3<bool>(true, false, true)), true), ~vec4<u32>(var_1.a, 1u, u_input.a, var_1.a), firstLeadingBit(abs(vec3<i32>(var_1.b, var_1.b, var_1.b))), vec2<bool>(true, true), vec2<bool>(true, true))).yy, _wgslsmith_sub_vec4_u32(func_3(Struct_1(~var_1.a, -27275i, -1153f)), vec4<u32>(~8229u, 23144u, var_1.a, 0u)), _wgslsmith_div_vec3_i32(~(-(~vec3<i32>(var_1.b, 1i, -40485i))), min(countOneBits(firstTrailingBit(vec3<i32>(var_1.b, var_1.b, 1i))), vec3<i32>(var_1.b, var_1.b, ~var_1.b))), !vec2<bool>(true, _wgslsmith_f_op_f32(495f * 787f) == _wgslsmith_f_op_f32(var_0 + var_0)), !select(vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, any(vec3<bool>(true, true, false))), vec2<bool>(true, true)));
    let var_3 = var_2.c;
    let var_4 = select(select(vec4<bool>(all(var_2.a), true, var_2.a.x, (i32(-1i) * -2147483647i) != _wgslsmith_dot_vec2_i32(var_2.c.xz, var_2.c.xz)), vec4<bool>(all(!vec3<bool>(var_2.d.x, var_2.e.x, var_2.e.x)), false, true, func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, -695f)), _wgslsmith_f_op_f32(-var_0), Struct_4(var_2.a, vec4<u32>(var_2.b.x, 8042u, var_2.b.x, u_input.a), vec3<i32>(-55118i, 0i, var_2.c.x), var_2.d, var_2.d), Struct_4(vec2<bool>(var_2.e.x, var_2.d.x), var_2.b, vec3<i32>(-4928i, var_2.c.x, -2147483647i), vec2<bool>(var_2.e.x, var_2.a.x), vec2<bool>(var_2.a.x, true))).x), !(!vec4<bool>(true, var_2.e.x, var_2.e.x, var_2.e.x))), vec4<bool>((_wgslsmith_mod_u32(1u, var_2.b.x) | 0u) > u_input.a, all(select(var_2.a, vec2<bool>(var_2.d.x, var_2.e.x), var_2.e)), func_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(473f, -2048f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.c, -1267f))))), _wgslsmith_f_op_f32(-856f - _wgslsmith_f_op_f32(-var_0)), var_2, Struct_4(var_2.d, vec4<u32>(var_2.b.x, u_input.a, 111727u, u_input.a), select(vec3<i32>(-24322i, var_1.b, var_1.b), vec3<i32>(var_3.x, -2147483647i, -1i), var_2.e.x), var_2.e, var_2.a)).x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c.x, -25116i, -19301i, -2147483647i), vec4<i32>(-2147483647i, -276i, var_1.b, 0i) & vec4<i32>(var_2.c.x, var_3.x, var_2.c.x, 1i)) <= var_3.x), any(vec2<bool>(select(true, false, var_2.e.x), true)));
    let var_5 = Struct_1(~var_2.b.x, _wgslsmith_mult_i32(~45191i, max(-(var_3.x & 30127i), 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(587f))));
    var var_6 = countOneBits(~_wgslsmith_div_vec3_i32(var_2.c, vec3<i32>(i32(-1i) * -25629i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 29005i, 0i, var_2.c.x), vec4<i32>(0i, -55340i, -1492i, var_2.c.x)), var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) + var_5.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.c, 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 1115f)))), ~(var_2.b.yx ^ _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_2.b.x), var_2.b.zx)) & var_2.b.yx, _wgslsmith_sub_vec4_u32(var_2.b, var_2.b));
}

