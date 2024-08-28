struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = ~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(-36808i, u_input.c, u_input.a), vec3<i32>(-1i, 36777i, -1i)) >> (~(~vec3<u32>(1u, 51740u, arg_1)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(2147483647i, -6353i, u_input.a)), ~(vec3<i32>(u_input.a, u_input.a, -1i) | vec3<i32>(1i, u_input.c, 3442i))));
    var var_1 = Struct_1(reverseBits(countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, 30355u, arg_1), vec4<u32>(0u, 47562u, u_input.e.x, 1u)), abs(vec4<u32>(u_input.e.x, u_input.e.x, 0u, 4294967295u))))), ~(-var_0.x >> (~(arg_1 ^ 19852u) % 32u)), arg_0, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_3, arg_3) + vec3<f32>(arg_0, arg_2, 295f))))))), vec3<i32>(-_wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, -1i), u_input.a | u_input.d), -3104i, u_input.a));
    var_1 = Struct_1(firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(74962u, 4294967295u), 36228u, _wgslsmith_mod_u32(var_1.a.x, 1u), 33125u) >> (var_1.a % vec4<u32>(32u))), _wgslsmith_sub_i32(0i, _wgslsmith_add_i32(u_input.d, var_0.x)), var_1.d.x, var_1.d, min(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, var_1.b), vec3<i32>(var_1.b, 24633i, u_input.c) << (var_1.a.wyy % vec3<u32>(32u)))), var_1.e));
    var_0 = vec3<i32>(var_1.e.x, -5284i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, var_0.x), abs(-18837i), i32(-1i) * -2147483647i), vec3<i32>(-1i, _wgslsmith_mod_i32(u_input.a, var_0.x), -37314i))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1367f - var_1.c)), arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1117f, -649f, arg_0)))), var_1.d))));
    return 108410u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = arg_0;
    var var_1 = Struct_1(arg_2.a, arg_2.b, arg_0.d.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.d * vec3<f32>(-1259f, 803f, -1430f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, arg_2.c, arg_2.d.x)))))), vec3<i32>(~1i, max(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_0.b, -18062i), -39577i), u_input.c << (var_0.a.x % 32u)), _wgslsmith_div_i32(-44493i, ~_wgslsmith_mod_i32(arg_0.e.x, arg_2.e.x))));
    var_1 = Struct_1(~vec4<u32>(var_1.a.x, ~func_3(arg_0.c, 71208u, var_1.c, 918f), arg_1.x, _wgslsmith_mod_u32(firstTrailingBit(56183u), 47080u)), _wgslsmith_sub_i32(abs(-4736i), u_input.d), 1559f, arg_2.d, arg_0.e);
    var_1 = Struct_1(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(~22798u, ~arg_0.a.x, _wgslsmith_sub_u32(0u, u_input.b), ~0u)), reverseBits(var_0.a)), var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c)) + _wgslsmith_f_op_f32(1649f * var_0.c)), vec3<f32>(var_0.c, arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.c, var_0.c)), _wgslsmith_f_op_f32(step(2151f, arg_2.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c + arg_0.d.x), -1478f))), arg_0.e);
    let var_2 = var_0.a;
    return vec4<i32>(-1i) * -abs(-abs(vec4<i32>(var_1.b, -2147483647i, 16826i, 0i)));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(929f - arg_3.c))));
    var var_2 = arg_3;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1103f))));
    let var_3 = _wgslsmith_f_op_f32(-var_0.d.x);
    return -1116f;
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(arg_2.a, vec4<u32>(u_input.e.x, 17638u, arg_0.x, 47417u) ^ var_0.a), firstLeadingBit(~vec4<u32>(var_0.a.x, 17948u, 70960u, 4294967295u)), firstLeadingBit(vec4<u32>(87967u, 1u, arg_2.a.x, 38026u))), abs(vec4<u32>(326u, _wgslsmith_add_u32(var_0.a.x, 26846u), ~71619u, 56573u))), 29574i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_2.c, _wgslsmith_div_f32(arg_1, -1000f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d * vec3<f32>(arg_2.c, 1413f, arg_2.d.x)), vec3<f32>(var_0.d.x, var_0.c, var_0.d.x))) - arg_2.d), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(arg_2.e, arg_2.e), _wgslsmith_sub_vec3_i32(-(var_0.e << (var_0.a.wzz % vec3<u32>(32u))), ~(~arg_2.e))));
    var var_2 = !(!(!vec2<bool>(all(vec4<bool>(false, false, true, false)), true)));
    return Struct_1(vec4<u32>(~(~countOneBits(23607u)), select(~0u, 1u, _wgslsmith_f_op_f32(exp2(arg_1)) > _wgslsmith_f_op_f32(-1511f - var_1.d.x)), ~reverseBits(func_3(arg_1, u_input.b, -1152f, -456f)), ~0u), _wgslsmith_mult_i32(u_input.d, -1422i), var_0.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.d + _wgslsmith_f_op_vec3_f32(step(var_0.d, vec3<f32>(-1000f, var_0.c, var_1.c))))), vec3<f32>(_wgslsmith_f_op_f32(func_4(abs(var_0.a.x), min(vec4<i32>(var_1.e.x, 2147483647i, 0i, u_input.c), vec4<i32>(28317i, var_1.e.x, arg_2.b, u_input.d)), arg_2.e.yy, Struct_1(var_1.a, 25744i, arg_1, vec3<f32>(-1627f, arg_1, arg_2.c), var_1.e))), 1000f, _wgslsmith_f_op_f32(arg_2.d.x - -649f)))), var_1.e);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    let var_0 = func_5(u_input.e, _wgslsmith_f_op_f32(func_4(~(firstLeadingBit(4294967295u) >> (arg_1.x % 32u)), func_2(Struct_1(vec4<u32>(4294967295u, 0u, arg_1.x, u_input.e.x), 1389i, 720f, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(184f, -1202f, arg_0), vec3<f32>(arg_0, arg_0, arg_0))), vec3<i32>(u_input.d, -2147483647i, u_input.a)), arg_1.zyz, Struct_1(select(vec4<u32>(33782u, 4294967295u, u_input.b, 19079u), vec4<u32>(arg_1.x, arg_1.x, 34886u, arg_1.x), vec4<bool>(false, true, false, true)), -51922i, _wgslsmith_f_op_f32(abs(1031f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1000f, 336f)), vec3<i32>(arg_2, arg_2, 66013i))), vec2<i32>(~2147483647i, ~(-1i)), Struct_1(~arg_1, select(10803i, -1i, u_input.b <= 0u), -203f, _wgslsmith_f_op_vec3_f32(vec3<f32>(177f, -2101f, -857f) * vec3<f32>(-584f, -527f, arg_0)), _wgslsmith_mult_vec3_i32(func_2(Struct_1(arg_1, arg_2, -1000f, vec3<f32>(-1061f, arg_0, 489f), vec3<i32>(arg_2, u_input.c, u_input.a)), vec3<u32>(arg_1.x, u_input.e.x, 58016u), Struct_1(vec4<u32>(3870u, u_input.b, 1u, 106564u), -1i, arg_0, vec3<f32>(arg_0, arg_0, arg_0), vec3<i32>(1i, 0i, 1i))).zzx, vec3<i32>(1i, arg_2, 11059i))))), Struct_1(firstLeadingBit(_wgslsmith_sub_vec4_u32(arg_1 << (vec4<u32>(u_input.b, arg_1.x, 66272u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(52263u, 1u, 37996u, arg_1.x))), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-307f * arg_0)) - _wgslsmith_f_op_f32(-555f + _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(169f, arg_0, arg_0)))), reverseBits(vec3<i32>(-60590i, arg_2, u_input.a)) >> (~countOneBits(vec3<u32>(u_input.b, 88497u, u_input.e.x)) % vec3<u32>(32u))));
    var var_1 = func_5(var_0.a.zz, 661f, func_5(_wgslsmith_sub_vec2_u32(select(arg_1.xz, ~arg_1.zy, false), countOneBits(u_input.e) ^ ~vec2<u32>(arg_1.x, u_input.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(select(-1423f, -693f, true))))), var_0));
    var_1 = func_5(~(~_wgslsmith_add_vec2_u32(vec2<u32>(60615u, u_input.e.x), var_1.a.zy)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.c)))), Struct_1(select(vec4<u32>(u_input.e.x, 139722u, ~arg_1.x, 1746u), var_1.a, false), -2147483647i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(818f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f), var_0.c)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.d.x)))), -2346f, arg_0), vec3<i32>(_wgslsmith_div_i32(var_0.e.x, arg_2) | u_input.a, arg_2, ~0i)));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(903f, _wgslsmith_f_op_f32(abs(-207f)))));
    var var_3 = !any(!vec4<bool>(true, false, true, all(vec3<bool>(true, true, true))));
    return 1i;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = select(vec3<bool>(!all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), u_input.a >= (_wgslsmith_sub_i32(0i, u_input.d) << (2487u % 32u)), false && !any(vec3<bool>(true, false, true))), vec3<bool>(true, all(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)) && (_wgslsmith_clamp_i32(48932i, var_0.e.x, arg_1.b) < _wgslsmith_sub_i32(49084i, u_input.c))), !(!vec3<bool>(any(vec4<bool>(true, false, true, false)), true, true)));
    var var_2 = arg_0;
    let var_3 = Struct_1(vec4<u32>(~u_input.b, ~firstTrailingBit(~1u), _wgslsmith_dot_vec4_u32(arg_0.a, arg_0.a) >> (4294967295u % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.e, func_5(arg_0.a.wz, -530f, arg_1).a.yz), 1u)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(firstTrailingBit(u_input.d), abs(7131i), 56745i), abs(select(vec3<i32>(14878i, 46025i, -2147483647i), var_2.e, var_1.x))), var_2.e), var_0.d.x, _wgslsmith_f_op_vec3_f32(exp2(arg_1.d)), arg_0.e);
    var_0 = var_3;
    return func_5(_wgslsmith_add_vec2_u32(var_2.a.xw, ~arg_1.a.yz), 1315f, func_5(var_3.a.zw, _wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(arg_0.c - arg_0.c)), arg_1));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = !select(vec4<bool>(any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), !any(arg_1.zx), any(!vec4<bool>(arg_1.x, true, arg_1.x, false)), select(arg_1.x, !arg_1.x, true)), vec4<bool>(-u_input.d >= ~(-1i), false, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, false));
    var_0 = select(vec4<bool>(!all(!arg_1), true, true, false), select(!(!(!vec4<bool>(arg_1.x, true, var_0.x, false))), vec4<bool>(true, !any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, var_0.x)), var_0.x, true), vec4<bool>(false, u_input.c == (u_input.a ^ 50810i), (false & var_0.x) & false, all(select(vec3<bool>(var_0.x, var_0.x, arg_1.x), var_0.wyw, vec3<bool>(arg_1.x, false, true))))), false);
    var var_1 = ~_wgslsmith_sub_u32(firstTrailingBit(0u), func_5(func_6(Struct_1(arg_0.a, 36316i, arg_3.x, arg_0.d, arg_0.e), func_6(Struct_1(arg_0.a, arg_0.e.x, 1694f, vec3<f32>(arg_3.x, -793f, arg_0.c), vec3<i32>(-5562i, arg_0.e.x, -1i)), arg_0)).a.ww, 2015f, Struct_1(arg_0.a, -16520i, _wgslsmith_f_op_f32(-arg_0.d.x), vec3<f32>(1186f, arg_3.x, 721f), ~arg_0.e)).a.x);
    var_0 = vec4<bool>(!var_0.x, false != select(!all(vec4<bool>(arg_1.x, var_0.x, true, false)), select(any(vec2<bool>(true, true)), true, !var_0.x), any(select(vec4<bool>(false, arg_1.x, false, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), var_0.x))), var_0.x, true);
    var_0 = !select(vec4<bool>(any(!vec4<bool>(false, true, arg_1.x, var_0.x)), false, var_0.x, var_0.x), select(vec4<bool>(arg_1.x, true, true, arg_1.x), select(vec4<bool>(false, true, true, true), !vec4<bool>(false, var_0.x, false, false), vec4<bool>(true, true, true, arg_1.x)), vec4<bool>(all(arg_1.xz), any(vec2<bool>(arg_1.x, true)), var_0.x | false, var_0.x)), var_0.x);
    return Struct_1(min(vec4<u32>(arg_0.a.x, arg_2.x, u_input.b, 0u), vec4<u32>(abs(u_input.e.x), arg_2.x, arg_2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(71278u, 4294967295u), max(arg_2, vec2<u32>(arg_0.a.x, arg_0.a.x))))), u_input.a, 421f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d * arg_3.xww))))), _wgslsmith_add_vec3_i32(firstLeadingBit(-(~vec3<i32>(-18744i, u_input.a, -8514i))), ~_wgslsmith_mod_vec3_i32(firstLeadingBit(arg_0.e), arg_0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_1(vec4<u32>(u_input.e.x, 19151u, u_input.b, 74090u) | vec4<u32>(4135u, 4294967295u, 47448u, 75786u), func_1(-442f, select(vec4<u32>(u_input.b, 44494u, 31149u, 4294967295u), vec4<u32>(u_input.e.x, 69488u, u_input.b, 22536u), vec4<bool>(false, true, false, true)), 1i), 1f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(734f, 1411f, 173f), vec3<f32>(-1362f, -1000f, -402f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1293f, 330f, -459f)))), countOneBits(vec3<i32>(-1i, 1i, 1i))), func_5(countOneBits(_wgslsmith_sub_vec2_u32(u_input.e, vec2<u32>(u_input.b, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(888f, 1347f)), Struct_1(vec4<u32>(63432u, u_input.e.x, u_input.b, u_input.e.x), abs(u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1216f, -873f, 112f) - vec3<f32>(2276f, -905f, -331f)), -vec3<i32>(-47043i, u_input.c, u_input.d)))), select(vec3<bool>(true, true, true), vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false)), true), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, false), true))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, ~(~u_input.e.x)), vec2<u32>(u_input.e.x, _wgslsmith_clamp_u32(67503u << (0u % 32u), 1u, u_input.e.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1791f, 1000f, -152f, -371f), vec4<f32>(2365f, -1000f, 550f, -623f), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = func_6(var_0, Struct_1(var_0.a, -1i, -526f, var_0.d, func_2(func_5(var_0.a.wy, var_0.c, Struct_1(vec4<u32>(u_input.e.x, var_0.a.x, 12177u, var_0.a.x), var_0.e.x, 1407f, var_0.d, var_0.e)), func_7(var_0, vec3<bool>(false, false, false), u_input.e, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c, 1001f, -1647f, 482f)))).a.yzw, func_5(abs(u_input.e), _wgslsmith_f_op_f32(-var_0.d.x), Struct_1(var_0.a, 2147483647i, var_0.d.x, var_0.d, vec3<i32>(50711i, u_input.d, u_input.a)))).zwz)).d;
    let var_2 = var_0;
    var_1 = var_2.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(var_0.d)), _wgslsmith_f_op_vec3_f32(func_5(~vec2<u32>(var_2.a.x, var_0.a.x), var_2.d.x, var_2).d * vec3<f32>(-536f, -1376f, var_2.d.x)), select(true, false, (var_2.a.x == var_0.a.x) & (var_2.b >= u_input.c)) && all(vec2<bool>(true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_sub_u32(~u_input.e.x, _wgslsmith_sub_u32(60738u, u_input.e.x)), _wgslsmith_mod_i32(var_2.e.x << (_wgslsmith_mod_u32(~39293u, ~37189u) % 32u), abs(func_7(Struct_1(vec4<u32>(11908u, var_0.a.x, var_2.a.x, 4294967295u), 0i, var_1.x, vec3<f32>(856f, var_1.x, -1248f), vec3<i32>(1i, 2147483647i, var_2.e.x)), vec3<bool>(false, true, true), vec2<u32>(20728u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(573f, -252f, var_3.x, var_2.c) * vec4<f32>(var_3.x, -721f, -165f, var_0.d.x))).b)));
}

