struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: i32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = -956f;
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    return global0[_wgslsmith_index_u32(arg_1, 19u)];
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(1386f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))), _wgslsmith_f_op_f32(-1f), func_2(-465f, _wgslsmith_mod_u32(func_2(-531f, u_input.b, vec3<bool>(true, true, true)).a, ~u_input.b) & u_input.b, vec3<bool>(true, func_2(-256f, u_input.b, vec3<bool>(false, false, true)).c.x, all(vec3<bool>(false, false, false)))), select(-(countOneBits(u_input.a) & ~arg_0.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, -8803i, u_input.a) | vec3<i32>(u_input.a, 33561i, u_input.a), -vec3<i32>(u_input.a, arg_0.x, u_input.a)), ~(-vec3<i32>(u_input.a, arg_0.x, u_input.a))), all(vec2<bool>(false, false))), select(vec2<u32>(_wgslsmith_mod_u32(u_input.b | 1u, ~u_input.b), u_input.b), vec2<u32>(4294967295u, u_input.b), 0i >= _wgslsmith_mult_i32(~u_input.a, arg_0.x)));
    var var_1 = arg_0.x;
    var var_2 = ~_wgslsmith_mult_vec3_u32(select(select(vec3<u32>(u_input.b, 1u, 43043u), vec3<u32>(0u, u_input.b, 0u), vec3<bool>(var_0.c.c.x, var_0.c.c.x, false)), vec3<u32>(~0u, var_0.c.a, countOneBits(var_0.e.x)), var_0.c.c.xyx), var_0.c.e.zwx);
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-210f, -290f), var_0.a, true)) - var_0.c.d.x) * _wgslsmith_f_op_f32(trunc(var_0.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), var_0.c, i32(-1i) * -5621i, reverseBits(_wgslsmith_add_vec2_u32(var_0.e << (vec2<u32>(0u, var_0.e.x) % vec2<u32>(32u)), vec2<u32>(4294967295u, 60750u) >> (vec2<u32>(var_0.e.x, 20872u) % vec2<u32>(32u)))) & vec2<u32>(101u, 34905u));
    let var_3 = var_0.c.c;
    return min(5684u, select(14690u, ~countOneBits(~var_0.c.e.x), !var_3.x || !(var_0.e.x >= u_input.b)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_3(arg_1.c.b.zx, ~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(40971u, u_input.b), _wgslsmith_clamp_vec2_u32(arg_0.e, vec2<u32>(18151u, 13368u), arg_0.e)), ~arg_0.e << (abs(vec2<u32>(arg_0.e.x, u_input.b)) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-444f, arg_2.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-679f, arg_2.x)))), arg_0.c.d.x, func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-331f + arg_0.b), _wgslsmith_f_op_f32(floor(arg_1.a)), true)), 14594u, vec3<bool>(false | arg_0.c.c.x, false, !arg_1.c.c.x)), ~firstLeadingBit(-arg_0.d), ~vec2<u32>(0u, arg_1.c.e.x)), abs(vec4<i32>(_wgslsmith_sub_i32(-10494i >> (arg_1.c.b.x % 32u), -32689i | u_input.a), u_input.a, _wgslsmith_add_i32(arg_0.d, 1i), -(~45209i))));
    let var_1 = vec2<f32>(arg_2.x, _wgslsmith_div_f32(526f, 481f));
    let var_2 = -3973i;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -759f), 1000f, func_2(_wgslsmith_f_op_f32(-arg_1.c.d.x), 37820u, arg_3.wxy), 2147483647i, _wgslsmith_mult_vec2_u32(~(~vec2<u32>(var_0.b.x, 32982u)) ^ arg_0.c.b.ww, min(vec2<u32>(~arg_1.c.e.x, ~42619u), arg_0.e)));
    let var_4 = (var_0.c.b <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c.d.x), _wgslsmith_f_op_f32(f32(-1f) * -212f))))) || ((true || arg_3.x) & arg_3.x);
    return Struct_1(~(~abs(1u)), ~(~arg_1.c.e), vec4<bool>(false || arg_0.c.c.x, func_2(-369f, ~(var_0.c.c.a & 4294967295u), vec3<bool>(true, arg_0.c.c.x, true)).c.x, false, arg_0.c.c.x), arg_1.c.d, vec4<u32>(_wgslsmith_mod_u32(1u, select(arg_1.e.x, func_2(-1146f, 30985u, vec3<bool>(true, var_4, true)).a, true & var_3.c.c.x)), countOneBits(arg_0.c.a), var_0.a.x, select(~4442u, 1u, all(vec4<bool>(true, arg_3.x, var_3.c.c.x, var_0.c.c.c.x)) & arg_1.c.c.x)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_1, 19>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1668f) * -202f), 247f, func_4(Struct_2(1621f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-114f)), -1569f)), func_2(_wgslsmith_f_op_f32(-693f * -1857f), ~1u, !vec3<bool>(arg_0.x, true, arg_0.x)), u_input.a, ~vec2<u32>(35793u, u_input.b) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 26011u), vec2<u32>(u_input.b, 4993u))), Struct_2(-1021f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f * 636f)), Struct_1(~1u, vec4<u32>(0u, u_input.b, 63749u, u_input.b) & vec4<u32>(1u, u_input.b, u_input.b, 35178u), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1588f, -1300f)), ~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)), ~0i, select(~vec2<u32>(u_input.b, u_input.b), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(53028u, u_input.b)), func_2(1294f, u_input.b, vec3<bool>(false, arg_0.x, false)).c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(792f, 227f, _wgslsmith_f_op_f32(761f * -543f))), select(vec4<bool>(arg_0.x, any(vec3<bool>(arg_0.x, true, false)), arg_0.x, true), func_2(_wgslsmith_f_op_f32(floor(1293f)), func_3(vec3<i32>(2147483647i, u_input.a, u_input.a)), select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(false, true, arg_0.x), vec3<bool>(true, false, true))).c, select(func_2(409f, 4631u, vec3<bool>(false, arg_0.x, arg_0.x)).c.x, arg_0.x, all(vec4<bool>(true, true, arg_0.x, arg_0.x))))), _wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, firstTrailingBit(~(-1i))), ~(-44596i)), func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1460f)), _wgslsmith_f_op_f32(f32(-1f) * -1964f), arg_0.x)), ~1u, !(!select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, false, arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x)))).e.yw);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.d.x), -196f)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(var_0.c.d))))))));
    var var_2 = vec2<i32>(-503i, firstTrailingBit(-(2147483647i ^ min(var_0.d, u_input.a))));
    return func_2(-427f, 37792u, select(var_0.c.c.ywx, !(!(!var_0.c.c.zyy)), var_0.c.c.x));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_3) -> u32 {
    global0 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(800f)));
    var var_1 = 1270f;
    var var_2 = func_2(_wgslsmith_f_op_f32(-arg_3.c.a), func_1(arg_1.c.zz).b.x, vec3<bool>(!(14210u != func_4(arg_3.c, Struct_2(-725f, arg_0.x, global0[_wgslsmith_index_u32(u_input.b, 19u)], u_input.a, arg_3.b), vec3<f32>(763f, arg_0.x, arg_1.d.x), vec4<bool>(true, arg_3.c.c.c.x, false, arg_1.c.x)).e.x), true, !(arg_1.c.x && select(arg_3.c.c.c.x, true, false)))).c.yw;
    var var_3 = 355f;
    return arg_3.b.x;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1553f, arg_2.c.c.d.x, arg_0.d.x, arg_2.c.a))))))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-502f, arg_0.d.x, arg_2.c.a, -474f), vec4<f32>(-2296f, arg_2.c.c.d.x, -441f, -242f))))), vec4<f32>(590f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.a), 1023f)), arg_1.c.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-arg_2.c.b)))))));
    global0 = array<Struct_1, 19>();
    let var_1 = Struct_1(_wgslsmith_mult_u32(min(0u >> (arg_2.c.c.b.x % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_1.b.x), arg_1.c.c.e.zw)), arg_1.a.x), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(0u, 63630u), firstLeadingBit(0u), 36689u), arg_3.c.e)), vec4<bool>(!func_2(704f, func_3(vec3<i32>(-29873i, 1284i, u_input.a)), func_4(Struct_2(1000f, arg_0.d.x, arg_3.c, arg_2.d.x, vec2<u32>(arg_2.c.c.a, arg_3.c.e.x)), Struct_2(arg_0.d.x, -370f, global0[_wgslsmith_index_u32(1u, 19u)], -21609i, vec2<u32>(arg_0.a, 25049u)), vec3<f32>(-805f, var_0.x, arg_2.c.b), arg_1.c.c.c).c.xzw).c.x, arg_2.c.c.c.x, true, abs(-arg_2.c.d) == _wgslsmith_dot_vec2_i32(vec2<i32>(-44442i, arg_2.d.x), vec2<i32>(arg_1.c.d, arg_2.d.x))), var_0.wy, func_4(arg_1.c, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.c.d.x * arg_2.c.a)), _wgslsmith_f_op_f32(f32(-1f) * -696f), Struct_1(~arg_3.c.a, _wgslsmith_mod_vec4_u32(arg_2.c.c.e, arg_0.e), select(vec4<bool>(arg_1.c.c.c.x, false, arg_3.c.c.x, true), arg_1.c.c.c, false), _wgslsmith_f_op_vec2_f32(min(arg_1.c.c.d, arg_2.c.c.d)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.e.x, arg_2.c.c.e.x, arg_1.b.x, 39749u), vec4<u32>(0u, 0u, 0u, arg_0.b.x))), -(~5185i), countOneBits(vec2<u32>(u_input.b, 38432u))), vec3<f32>(289f, _wgslsmith_f_op_f32(-arg_0.d.x), -598f), select(arg_3.c.c, !select(vec4<bool>(arg_1.c.c.c.x, arg_0.c.x, arg_0.c.x, true), arg_3.c.c, arg_3.c.c.x), func_1(func_1(arg_0.c.zz).c.xw).c.x)).e);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_0.wxy)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.c.d.x, 312f, arg_2.c.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1766f, -261f) - var_0.yzy))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.yzy, _wgslsmith_f_op_vec3_f32(sign(var_2)))));
    return StorageBuffer(~reverseBits(max(vec3<i32>(u_input.a, arg_3.d, -11931i), arg_1.d.xzz)), arg_3.d, reverseBits(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a, 1i), vec2<i32>(arg_3.d, -1i) ^ arg_2.d.yz)) & ~arg_2.d.xw, -arg_1.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1076f * 2816f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(509f + 1185f) * _wgslsmith_f_op_f32(trunc(912f))), _wgslsmith_div_f32(700f, 386f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(752f, -228f, _wgslsmith_f_op_f32(-285f - 493f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2016f, -1563f, -417f) * vec3<f32>(-251f, 1099f, 316f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, -1450f, -173f))) - vec3<f32>(1000f, _wgslsmith_div_f32(-757f, 266f), _wgslsmith_f_op_f32(1712f + -509f)))));
    global0 = array<Struct_1, 19>();
    var var_1 = var_0.x;
    global0 = array<Struct_1, 19>();
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1655f);
    let var_2 = u_input.b;
    let var_3 = vec3<i32>(-2147483647i, ~(-_wgslsmith_mult_i32(~u_input.a, _wgslsmith_clamp_i32(u_input.a, -1i, u_input.a))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(-52563i, u_input.a, 89742i), vec3<i32>(u_input.a, u_input.a, -36847i)), -reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 22959i, 25381i), vec3<i32>(u_input.a, -11926i, u_input.a)))));
    let x = u_input.a;
    s_output = func_6(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_5(vec4<f32>(var_0.x, 1154f, var_0.x, var_0.x), func_1(vec2<bool>(false, false)), vec4<f32>(-575f, var_0.x, var_0.x, var_0.x), Struct_3(vec2<u32>(81680u, u_input.b), vec2<u32>(1u, 53096u), Struct_2(-631f, var_0.x, global0[_wgslsmith_index_u32(var_2, 19u)], u_input.a, vec2<u32>(u_input.b, u_input.b)), vec4<i32>(var_3.x, 17804i, -23024i, 0i))), max(abs(28165u), ~var_2)), 19u)], Struct_3(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(28290u, 38872u)), (vec2<u32>(var_2, 0u) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(49349u, 4777u), vec2<u32>(var_2, var_2))), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(u_input.b, 1u)), vec2<u32>(abs(19767u), select(1u, u_input.b, true))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x), var_0.x, global0[_wgslsmith_index_u32(u_input.b, 19u)], 1i << ((u_input.b ^ u_input.b) % 32u), vec2<u32>(min(var_2, 1u), max(var_2, 1u))), firstTrailingBit(vec4<i32>(~u_input.a, u_input.a, 5905i, 30712i))), Struct_3(~(~(~vec2<u32>(u_input.b, var_2))), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, u_input.b)), vec2<u32>(34192u, var_2)) | ~vec2<u32>(4294967295u, var_2), Struct_2(-683f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -786f)), func_2(-1267f, var_2, vec3<bool>(true, true, true)), -min(var_3.x, -1i), ~vec2<u32>(1u, 1u)), -vec4<i32>(-2147483647i, -2147483647i, var_3.x, 2147483647i) | ~(vec4<i32>(var_3.x, u_input.a, var_3.x, u_input.a) << (vec4<u32>(var_2, 0u, var_2, var_2) % vec4<u32>(32u)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(584f - var_0.x), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))), func_1(vec2<bool>(true, any(vec4<bool>(true, false, false, false)))), var_3.x, ~vec2<u32>(var_2, func_3(vec3<i32>(u_input.a, u_input.a, u_input.a)))));
}

