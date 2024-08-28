struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: i32) -> vec3<u32> {
    let var_0 = ~vec4<u32>(61612u, 0u, 0u, u_input.b.x) ^ vec4<u32>(~countOneBits(~u_input.b.x), 1u | u_input.b.x, _wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x ^ u_input.b.x), ~_wgslsmith_mod_u32(7577u, 1u), reverseBits(_wgslsmith_add_u32(u_input.b.x, u_input.b.x))), ~0u);
    let var_1 = arg_1.x;
    let var_2 = Struct_2(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, u_input.b.x, u_input.b.x), var_0.zzy, vec3<u32>(u_input.b.x, u_input.b.x, var_0.x))) | vec3<u32>(~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), u_input.b.x >> (var_0.x % 32u), u_input.b.x), ~_wgslsmith_div_vec3_i32(abs(vec3<i32>(2147483647i, arg_0.x, -11970i)), vec3<i32>(u_input.a, 26736i, 4627i) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, arg_2), arg_0)), Struct_1(false, firstLeadingBit(44132i), ~(vec3<u32>(4294967295u, var_0.x, 20207u) | (vec3<u32>(0u, u_input.b.x, 0u) & var_0.yxz)), var_0.wzw, _wgslsmith_mod_vec2_u32(~select(u_input.b, u_input.b, var_1), firstTrailingBit(var_0.yy) >> (min(vec2<u32>(var_0.x, 0u), var_0.ww) % vec2<u32>(32u)))), ~arg_2 >> (27436u % 32u), Struct_1(false, -arg_0.x, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, var_0.x, var_0.x), vec3<u32>(_wgslsmith_div_u32(4294967295u, 44145u), ~u_input.b.x, ~24812u)), var_0.yyy, min(~u_input.b, vec2<u32>(u_input.b.x, abs(0u)))));
    let var_3 = var_2.c;
    var var_4 = Struct_3(Struct_2(var_3.c, vec3<i32>(arg_0.x, _wgslsmith_mult_i32(~var_2.b.x, _wgslsmith_dot_vec2_i32(var_2.b.yy, arg_0.yz)), -13992i), var_2.c, u_input.a, Struct_1(var_3.a, -countOneBits(var_3.b), var_0.zxw, _wgslsmith_sub_vec3_u32(var_2.a, ~vec3<u32>(var_3.e.x, 72709u, var_0.x)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.d.x, var_0.x), var_0.xy), countOneBits(vec2<u32>(60379u, 4294967295u))))), var_2.c, min(countOneBits(1u), 29624u), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(960f, 424f), vec2<f32>(166f, 700f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1540f, -1678f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(372f, 769f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-594f, 860f) - vec2<f32>(1181f, 1000f)), true))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1698f - -351f))), _wgslsmith_f_op_f32(878f * _wgslsmith_f_op_f32(ceil(-1816f))))));
    return _wgslsmith_mod_vec3_u32(max(~(~(var_0.wxw << (var_0.wyy % vec3<u32>(32u)))), var_3.c), min(~(~max(vec3<u32>(11232u, 52626u, 16810u), vec3<u32>(var_0.x, 1u, var_4.c))), var_4.b.c));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-626f - arg_0) - arg_1) != arg_1, arg_2.x ^ _wgslsmith_sub_i32(50353i, _wgslsmith_clamp_i32(u_input.a, arg_2.x, u_input.a)), _wgslsmith_add_vec3_u32(~func_3(vec3<i32>(arg_2.x, -8252i, -2147483647i), vec3<bool>(true, true, true), u_input.a), ~reverseBits(vec3<u32>(34261u, 38653u, u_input.b.x))), ~vec3<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 8525u)), _wgslsmith_sub_u32(u_input.b.x, 42738u)), vec2<u32>(15057u, 1u)), Struct_1(true, -2147483647i ^ arg_2.x, firstLeadingBit(vec3<u32>(0u, firstLeadingBit(15238u), ~u_input.b.x)), ~vec3<u32>(u_input.b.x, 1u, 10799u << (u_input.b.x % 32u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, u_input.b.x), ~u_input.b), _wgslsmith_sub_vec2_u32(u_input.b, ~vec2<u32>(99594u, u_input.b.x)))), vec4<bool>(!any(vec4<bool>(true, true, true, true)), true, true, true));
    var var_1 = func_3(vec3<i32>(var_0.a.b, ~_wgslsmith_clamp_i32(3211i, -33035i, -39069i), _wgslsmith_dot_vec2_i32(abs(arg_2) >> (~vec2<u32>(var_0.a.e.x, 34563u) % vec2<u32>(32u)), vec2<i32>(-25618i, -64376i))), select(vec3<bool>(all(var_0.c.wwz) | var_0.b.a, (var_0.c.x | true) | !var_0.b.a, any(vec3<bool>(false, false, var_0.a.a))), !select(select(vec3<bool>(false, var_0.c.x, true), var_0.c.yzw, vec3<bool>(var_0.b.a, var_0.b.a, true)), select(var_0.c.zwx, var_0.c.ywy, var_0.a.a), var_0.c.xyx), vec3<bool>(!var_0.b.a, true, var_0.c.x & var_0.b.a)), (~var_0.b.b & abs(0i)) << (8417u % 32u)).yx;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 941f, arg_1) - vec4<f32>(arg_0, arg_1, arg_1, -253f))))) - vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -838f), var_0.c.x)), -510f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(743f, arg_0, 429f, -563f)) * vec4<f32>(arg_1, -684f, arg_1, arg_0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_0, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -115f, -826f, arg_0))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, 956f, _wgslsmith_f_op_f32(abs(arg_0)), 766f)))));
    var_0 = Struct_4(var_0.b, Struct_1(true, arg_2.x, _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1766u, 53617u, u_input.b.x), vec3<u32>(0u, u_input.b.x, 56267u), min(vec3<u32>(u_input.b.x, 43941u, 4294967295u), var_0.a.d)), var_0.a.c), _wgslsmith_add_vec3_u32(vec3<u32>(~var_1.x, _wgslsmith_mult_u32(4294967295u, var_1.x), _wgslsmith_mod_u32(126711u, 4294967295u)), var_0.a.c), firstTrailingBit(vec2<u32>(~u_input.b.x, var_0.b.e.x))), var_0.c);
    var_1 = vec2<u32>(_wgslsmith_div_u32(var_0.a.e.x, firstTrailingBit(countOneBits(u_input.b.x | var_1.x))), _wgslsmith_dot_vec2_u32(func_3(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-47154i, arg_2.x), vec2<i32>(-4747i, arg_2.x)), 0i), vec3<bool>(true, var_0.a.a, var_0.c.x), ~arg_2.x).yx, vec2<u32>(func_3(vec3<i32>(u_input.a, u_input.a, 1i), vec3<bool>(true, false, false), -38721i).x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(35110u, 1u))) & ~var_0.b.d.xy));
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3.e.b | -14729i;
    let var_1 = 6598u;
    var_0 = u_input.a << (8548u % 32u);
    var_0 = select(arg_2.b, ~(firstTrailingBit(_wgslsmith_sub_i32(u_input.a, -77102i)) ^ -arg_2.b), arg_0.a);
    let var_2 = Struct_4(arg_2, Struct_1(!any(vec4<bool>(false, arg_3.c.a, true, true)) && true, _wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(-61427i, 1i, arg_1, arg_3.b.x)), countOneBits(~vec4<i32>(arg_3.c.b, arg_2.b, arg_1, -39516i))), vec3<u32>(arg_3.c.e.x, ~58852u, 37758u), vec3<u32>(_wgslsmith_add_u32(37146u, var_1 | 1u), arg_0.c.x, _wgslsmith_div_u32(22043u, 44153u)), select(select(vec2<u32>(4294967295u, 36493u), _wgslsmith_sub_vec2_u32(arg_3.a.yy, u_input.b), false && arg_0.a), ~(arg_2.d.yx | arg_0.c.zx), select(vec2<bool>(true, true), vec2<bool>(arg_2.a, true), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(true, false), arg_3.c.a)))), !select(select(!vec4<bool>(arg_2.a, true, arg_3.e.a, true), !vec4<bool>(arg_2.a, true, arg_3.c.a, arg_2.a), true), !select(vec4<bool>(arg_0.a, arg_0.a, true, false), vec4<bool>(arg_2.a, false, false, true), vec4<bool>(arg_2.a, arg_0.a, false, arg_0.a)), select(vec4<bool>(false, true, arg_3.c.a, arg_3.c.a), !vec4<bool>(true, true, arg_2.a, false), all(vec2<bool>(arg_2.a, arg_0.a)))));
    return var_2.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = select(!(!select(select(vec2<bool>(false, false), vec2<bool>(arg_0.c.a, true), true), vec2<bool>(false, arg_0.c.a), true)), vec2<bool>(!(!all(vec4<bool>(arg_1.x, arg_1.x, true, true))), !arg_1.x), select(select(!arg_1.zx, select(select(vec2<bool>(false, arg_1.x), vec2<bool>(true, true), arg_0.c.a), arg_1.zz, !vec2<bool>(arg_1.x, arg_1.x)), arg_0.c.a), !vec2<bool>(arg_0.c.a, arg_1.x), arg_1.zy));
    var_0 = arg_1.zx;
    var_0 = select(vec2<bool>(false, any(vec3<bool>(arg_0.c.a, false, false)) | true), vec2<bool>(!(arg_0.e.a || false) || all(vec3<bool>(false, arg_1.x, true)), true), arg_1.x);
    var var_1 = func_3(-arg_0.b, arg_1, ~firstLeadingBit(-_wgslsmith_mult_i32(arg_0.e.b, -2147483647i))).x;
    var var_2 = arg_1;
    return Struct_2(vec3<u32>(arg_0.c.d.x, u_input.b.x, ~u_input.b.x << (_wgslsmith_mult_u32(11074u, _wgslsmith_div_u32(arg_0.a.x, u_input.b.x)) % 32u)), ~arg_0.b, arg_0.e, arg_0.b.x, func_4(arg_0.e, _wgslsmith_sub_i32(arg_0.c.b, -1i << (max(arg_0.a.x, 0u) % 32u)), func_4(func_2(_wgslsmith_f_op_f32(ceil(-1704f)), _wgslsmith_div_f32(arg_2.x, arg_2.x), vec2<i32>(17293i, -19443i) >> (u_input.b % vec2<u32>(32u))), u_input.a, func_4(Struct_1(false, u_input.a, arg_0.e.d, arg_0.e.c, vec2<u32>(u_input.b.x, arg_0.a.x)), abs(u_input.a), func_4(arg_0.c, u_input.a, Struct_1(false, arg_0.d, vec3<u32>(18778u, u_input.b.x, arg_0.c.d.x), arg_0.c.c, arg_0.c.c.zz), Struct_2(vec3<u32>(33330u, u_input.b.x, 17926u), vec3<i32>(u_input.a, -2147483647i, 42884i), arg_0.c, -2147483647i, arg_0.c)), Struct_2(arg_0.e.c, vec3<i32>(2147483647i, -3790i, -1i), arg_0.e, -2147483647i, Struct_1(true, 2147483647i, vec3<u32>(u_input.b.x, u_input.b.x, 0u), arg_0.c.c, vec2<u32>(arg_0.e.d.x, arg_0.c.d.x)))), arg_0), arg_0));
}

fn func_1() -> Struct_1 {
    var var_0 = (i32(-1i) * -select(_wgslsmith_div_i32(u_input.a, 39382i), 0i, true)) ^ (u_input.a >> (21293u % 32u));
    let var_1 = Struct_3(func_5(Struct_2(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 0u), reverseBits(vec3<u32>(u_input.b.x, 0u, u_input.b.x))), vec3<i32>(~u_input.a, u_input.a ^ u_input.a, u_input.a), func_4(Struct_1(true, u_input.a, vec3<u32>(u_input.b.x, 67489u, 0u), vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), _wgslsmith_mult_i32(-2147483647i, -1i), func_2(-1212f, -170f, vec2<i32>(-1i, -9775i)), Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, 35443u), vec3<i32>(2147483647i, u_input.a, u_input.a), Struct_1(false, -10812i, vec3<u32>(u_input.b.x, 53527u, 0u), vec3<u32>(0u, u_input.b.x, 0u), u_input.b), u_input.a, Struct_1(true, 16124i, vec3<u32>(1u, u_input.b.x, 57763u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b))), 0i, func_4(Struct_1(true, u_input.a, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec3<u32>(1u, 4294967295u, 38638u), u_input.b), reverseBits(u_input.a), func_4(Struct_1(true, 2147483647i, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), u_input.a, Struct_1(false, u_input.a, vec3<u32>(4294967295u, 26817u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec2<u32>(1u, u_input.b.x)), Struct_2(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<i32>(24022i, u_input.a, u_input.a), Struct_1(false, 2147483647i, vec3<u32>(u_input.b.x, 4294967295u, 17928u), vec3<u32>(1u, 42533u, u_input.b.x), u_input.b), 19169i, Struct_1(true, -29447i, vec3<u32>(29420u, 0u, 4294967295u), vec3<u32>(3694u, 1u, 4294967295u), vec2<u32>(u_input.b.x, 4294967295u)))), Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(3411i, -2147483647i, u_input.a), Struct_1(false, u_input.a, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 22744u)), 1i, Struct_1(false, u_input.a, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 35713u, u_input.b.x), u_input.b)))), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(func_4(Struct_1(false, u_input.a, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x), vec2<u32>(u_input.b.x, 37785u)), u_input.a, Struct_1(true, -3513i, vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(0u, u_input.b.x, 35441u), vec2<u32>(u_input.b.x, 4294967295u)), Struct_2(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<i32>(u_input.a, u_input.a, 20147i), Struct_1(true, 1i, vec3<u32>(4294967295u, 0u, 11605u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u)), -36663i, Struct_1(true, -55547i, vec3<u32>(1u, 4939u, u_input.b.x), vec3<u32>(u_input.b.x, 26035u, 52303u), u_input.b))).a, false, true)), vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1647f + 114f) + 919f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -491f)))), Struct_1(false, -min(~2147483647i, _wgslsmith_add_i32(8738i, u_input.a)), countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, 60753u)), ~(~vec3<u32>(0u, u_input.b.x, 105010u)) >> (~(vec3<u32>(4294967295u, u_input.b.x, 1u) & vec3<u32>(1u, u_input.b.x, 1u)) % vec3<u32>(32u)), func_3(vec3<i32>(10611i, u_input.a, u_input.a), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), _wgslsmith_mult_i32(2147483647i, u_input.a)).xy & u_input.b), ~(~14920u & _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(36372u, 4294967295u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(874f, -2121f))), vec2<f32>(-2415f, _wgslsmith_f_op_f32(506f - 101f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(558f, 2381f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-950f, 770f)) - vec2<f32>(-1091f, 158f))), true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(465f * -516f))), 591f) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-714f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-675f - -661f), var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.d.x)), 434f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.d.x - var_1.d.x), var_1.d.x)))));
    var_0 = 0i ^ var_1.b.b;
    var var_3 = Struct_3(func_5(func_5(var_1.a, select(vec3<bool>(false, var_1.b.a, true), vec3<bool>(true, true, true), !var_1.a.e.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.d.x, var_2.x, 831f))) + vec3<f32>(var_1.d.x, var_2.x, 562f))), select(!(!vec3<bool>(var_1.b.a, false, var_1.a.e.a)), select(vec3<bool>(var_1.b.a, var_1.a.c.a, false), vec3<bool>(true, false, false), vec3<bool>(var_1.b.a, var_1.b.a, false)), select(!vec3<bool>(var_1.a.c.a, true, var_1.b.a), select(vec3<bool>(true, true, var_1.b.a), vec3<bool>(true, var_1.b.a, true), vec3<bool>(var_1.a.c.a, true, var_1.b.a)), select(vec3<bool>(var_1.a.c.a, true, var_1.b.a), vec3<bool>(var_1.a.c.a, true, var_1.a.e.a), false))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1622f, var_2.x, var_2.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.d.x, 1000f, var_2.x)))))))), Struct_1(!func_2(_wgslsmith_f_op_f32(333f * -180f), _wgslsmith_f_op_f32(abs(1956f)), vec2<i32>(var_1.b.b, u_input.a)).a, -var_1.a.d, func_4(Struct_1(true, i32(-1i) * -1i, vec3<u32>(5606u, 3413u, 4294967295u), vec3<u32>(17974u, 6683u, var_1.b.d.x), ~var_1.b.c.xx), 0i, func_5(Struct_2(var_1.a.e.c, vec3<i32>(0i, var_1.b.b, var_1.b.b), Struct_1(true, var_1.b.b, vec3<u32>(var_1.a.c.e.x, u_input.b.x, u_input.b.x), vec3<u32>(40741u, 0u, 51837u), var_1.a.c.c.xx), var_1.b.b, Struct_1(true, 2147483647i, var_1.b.c, vec3<u32>(4294967295u, 24171u, 16233u), vec2<u32>(u_input.b.x, 0u))), vec3<bool>(var_1.a.c.a, true, var_1.b.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-860f, 200f, -1825f))).c, func_5(var_1.a, vec3<bool>(false, var_1.b.a, var_1.b.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(827f, 1480f, var_1.d.x) * vec3<f32>(-1000f, var_2.x, -1516f)))).d, select(vec3<u32>(reverseBits(27835u), ~0u, u_input.b.x), vec3<u32>(30611u, u_input.b.x, _wgslsmith_add_u32(2845u, 61751u)), any(vec4<bool>(false, var_1.b.a, var_1.b.a, var_1.a.e.a))), _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.b, u_input.b), u_input.b & vec2<u32>(var_1.b.e.x, var_1.b.d.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(44908u, 1u, 51809u, 0u), ~vec4<u32>(4294967295u, var_1.c, u_input.b.x, 4294967295u)), max(_wgslsmith_mod_vec4_u32(vec4<u32>(48242u, var_1.a.e.d.x, u_input.b.x, 53922u), vec4<u32>(u_input.b.x, var_1.c, var_1.c, var_1.c)), ~vec4<u32>(var_1.c, u_input.b.x, u_input.b.x, var_1.b.c.x))), vec4<u32>(0u, func_4(var_1.a.c, var_1.a.b.x, var_1.a.c, Struct_2(vec3<u32>(u_input.b.x, u_input.b.x, 15614u), var_1.a.b, Struct_1(var_1.a.e.a, u_input.a, vec3<u32>(u_input.b.x, u_input.b.x, 1u), var_1.b.d, vec2<u32>(4294967295u, u_input.b.x)), -1i, var_1.b)).d.x ^ _wgslsmith_add_u32(u_input.b.x, var_1.b.e.x), 15444u, ~func_3(var_1.a.b, vec3<bool>(true, var_1.a.c.a, true), -19698i).x)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1518f, -166f), var_1.d), vec2<f32>(301f, var_1.d.x), true)), _wgslsmith_f_op_vec2_f32(exp2(var_2.xy)))))));
    return Struct_1(!var_1.b.a, var_1.b.b, ~(~vec3<u32>(_wgslsmith_mod_u32(var_1.a.a.x, u_input.b.x), max(var_1.b.e.x, 4294967295u), _wgslsmith_dot_vec2_u32(var_3.a.a.yz, vec2<u32>(var_3.b.e.x, var_3.b.e.x)))), (vec3<u32>(~1u, _wgslsmith_clamp_u32(var_1.a.a.x, 22503u, 62267u), func_5(var_3.a, vec3<bool>(var_3.a.e.a, true, var_1.a.c.a), vec3<f32>(var_1.d.x, -1411f, 1019f)).c.c.x) >> (_wgslsmith_clamp_vec3_u32(abs(var_1.b.c), var_1.a.c.c ^ var_1.b.d, select(var_1.b.c, vec3<u32>(u_input.b.x, 51809u, var_3.c), false)) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.b.x, 1u, 81307u) << (var_3.b.d % vec3<u32>(32u))), var_1.b.c & _wgslsmith_div_vec3_u32(var_3.a.a, vec3<u32>(var_3.a.c.e.x, var_1.b.d.x, var_1.a.a.x)), vec3<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), select(0u, 1u, var_3.b.a), u_input.b.x)) % vec3<u32>(32u)), ~(~abs(vec2<u32>(var_3.c, var_3.b.e.x))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32) -> Struct_1 {
    let var_0 = abs(_wgslsmith_sub_vec2_i32(func_5(func_5(Struct_2(arg_1.a.d, vec3<i32>(-2534i, 0i, 64799i), Struct_1(arg_0.c.x, -33109i, arg_0.a.c, arg_0.a.c, vec2<u32>(arg_0.a.c.x, arg_0.b.e.x)), u_input.a, arg_1.a), select(vec3<bool>(arg_0.c.x, arg_0.b.a, true), arg_0.c.zzw, false), vec3<f32>(-748f, 866f, -826f)), vec3<bool>(!arg_0.c.x, arg_1.c.x || false, any(vec2<bool>(false, false))), vec3<f32>(-1865f, _wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(round(-261f)))).b.zx, vec2<i32>(-max(1i, arg_0.b.b), 2147483647i)));
    var var_1 = Struct_3(Struct_2(arg_0.b.c, vec3<i32>(-1i) * -select(vec3<i32>(-1i, var_0.x, var_0.x), vec3<i32>(u_input.a, u_input.a, arg_0.a.b), arg_0.c.zwy), arg_1.b, 1i, arg_0.a), Struct_1(any(select(vec3<bool>(true, arg_1.a.a, arg_0.a.a), vec3<bool>(true, arg_1.a.a, false), vec3<bool>(false, arg_1.b.a, arg_0.c.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(-7393i, arg_0.a.b, 0i), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b.b, u_input.a, 2147483647i), vec3<i32>(u_input.a, arg_1.a.b, var_0.x))) << (1u % 32u), ~abs(vec3<u32>(4294967295u, arg_2, arg_2)), _wgslsmith_mod_vec3_u32(func_2(_wgslsmith_f_op_f32(1381f - 591f), _wgslsmith_f_op_f32(ceil(1387f)), var_0).c, arg_0.a.d), func_4(func_2(_wgslsmith_f_op_f32(1417f + -304f), _wgslsmith_f_op_f32(761f + -404f), vec2<i32>(-43994i, arg_1.a.b)), -abs(arg_1.a.b), func_1(), Struct_2(vec3<u32>(49899u, 79210u, arg_2), vec3<i32>(arg_1.a.b, arg_0.b.b, -1636i), arg_0.a, 1i, Struct_1(arg_0.a.a, arg_0.b.b, arg_1.b.c, vec3<u32>(u_input.b.x, arg_0.b.c.x, 4294967295u), u_input.b))).e), select(firstLeadingBit(firstTrailingBit(~arg_1.b.d.x)), firstTrailingBit(0u), false), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-495f, _wgslsmith_f_op_f32(-113f + -1209f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-360f, _wgslsmith_f_op_f32(1000f * -154f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(987f, -1292f) + vec2<f32>(-1000f, 1728f)))), true)), !arg_0.c.x)));
    var var_2 = Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.b.d, arg_0.b.c ^ vec3<u32>(71306u, arg_0.a.e.x, arg_0.a.c.x)), func_4(arg_0.b, arg_0.b.b, func_5(var_1.a, vec3<bool>(arg_0.a.a, false, false), vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x)).c, var_1.a).c), vec3<u32>(u_input.b.x, 10214u, 29441u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 35290u, u_input.b.x), ~arg_1.a.d, countOneBits(vec3<u32>(arg_1.a.e.x, arg_0.a.c.x, 0u))), arg_1.a.d), vec3<i32>(func_1().b, u_input.a, func_5(func_5(var_1.a, select(vec3<bool>(var_1.b.a, true, true), arg_0.c.xzy, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-291f, 1374f, var_1.d.x))), vec3<bool>(false, true, arg_1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x)))).e.b), Struct_1(var_1.b.a, 2147483647i, _wgslsmith_sub_vec3_u32(var_1.a.e.d, ~min(vec3<u32>(36131u, 4294967295u, arg_1.b.d.x), vec3<u32>(43241u, 4294967295u, 54181u))), arg_1.a.d, abs(max(~var_1.b.e, var_1.b.d.xy << (var_1.a.c.e % vec2<u32>(32u))))), -countOneBits(func_2(var_1.d.x, var_1.d.x, var_0).b | 2147483647i), Struct_1(arg_0.b.a, -func_2(var_1.d.x, _wgslsmith_f_op_f32(var_1.d.x - 1786f), vec2<i32>(45021i, arg_1.a.b)).b, ~vec3<u32>(func_4(Struct_1(arg_0.a.a, var_1.b.b, var_1.b.d, arg_0.a.d, vec2<u32>(arg_2, var_1.a.a.x)), var_1.b.b, var_1.b, Struct_2(vec3<u32>(u_input.b.x, 4294967295u, arg_2), var_1.a.b, Struct_1(true, 1i, var_1.a.a, vec3<u32>(15468u, 65409u, 28331u), vec2<u32>(arg_0.a.d.x, u_input.b.x)), -20814i, var_1.b)).c.x, u_input.b.x, ~56133u), func_3(select(vec3<i32>(-1i, -38557i, var_1.b.b) | vec3<i32>(arg_0.a.b, 2147483647i, 0i), vec3<i32>(-1i, arg_0.a.b, 0i), arg_1.c.www), !select(vec3<bool>(arg_1.a.a, arg_0.a.a, false), vec3<bool>(false, var_1.b.a, arg_0.a.a), true), var_1.a.d), ~vec2<u32>(~5361u, arg_1.b.c.x)));
    let var_3 = !select(!arg_0.c.zxx, !select(!vec3<bool>(false, false, var_2.c.a), vec3<bool>(true, true, true), true), !(!(-2147483647i > var_0.x)));
    var_1 = Struct_3(var_1.a, Struct_1(var_2.e.a || select(true, true, false), ~(i32(-1i) * -3626i) >> ((_wgslsmith_mod_u32(arg_0.a.e.x, 4294967295u) >> (var_1.b.e.x % 32u)) % 32u), ~var_1.b.d, arg_1.a.d, firstTrailingBit(vec2<u32>(abs(0u), ~var_2.a.x))), ~func_5(Struct_2(var_2.a, var_2.b, arg_0.b, 53265i, arg_1.b), !vec3<bool>(arg_0.a.a, arg_1.a.a, arg_0.b.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.x, -1044f, var_1.d.x), vec3<f32>(var_1.d.x, var_1.d.x, 1319f), arg_0.b.a))).a.x & var_2.e.d.x, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.d))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 16300i;
    var_0 = u_input.a;
    var_0 = _wgslsmith_add_i32(-10769i, u_input.a);
    let var_1 = !(!vec4<bool>(abs(u_input.a) >= (u_input.a >> (37504u % 32u)), true, all(vec2<bool>(true, true)), true));
    let var_2 = u_input.b.x;
    var_0 = 1i;
    let var_3 = func_6(Struct_4(func_1(), Struct_1(!var_1.x, 0i, vec3<u32>(~60548u, abs(u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, var_2)), _wgslsmith_add_vec3_u32(~vec3<u32>(var_2, 8077u, 25831u), vec3<u32>(var_2, var_2, u_input.b.x) << (vec3<u32>(var_2, u_input.b.x, var_2) % vec3<u32>(32u))), select(firstTrailingBit(vec2<u32>(u_input.b.x, var_2)), ~vec2<u32>(0u, u_input.b.x), vec2<bool>(true, var_1.x))), !vec4<bool>(!var_1.x, func_5(Struct_2(vec3<u32>(var_2, var_2, u_input.b.x), vec3<i32>(u_input.a, -13048i, 2147483647i), Struct_1(var_1.x, u_input.a, vec3<u32>(4294967295u, 22907u, 43029u), vec3<u32>(1u, 1u, 61501u), vec2<u32>(13418u, u_input.b.x)), -13947i, Struct_1(false, 1i, vec3<u32>(9508u, 4294967295u, u_input.b.x), vec3<u32>(94545u, 4294967295u, 4294967295u), vec2<u32>(62180u, var_2))), vec3<bool>(false, var_1.x, var_1.x), vec3<f32>(-1038f, 391f, 233f)).c.a, true, func_1().a)), Struct_4(Struct_1(var_1.x, abs(-6260i), select(vec3<u32>(0u, u_input.b.x, u_input.b.x), ~vec3<u32>(0u, 0u, 8817u), false), vec3<u32>(_wgslsmith_add_u32(0u, var_2), ~31027u, 4294967295u), vec2<u32>(u_input.b.x, func_3(vec3<i32>(u_input.a, 1i, u_input.a), vec3<bool>(var_1.x, var_1.x, true), u_input.a).x)), Struct_1(true, -2923i, _wgslsmith_mult_vec3_u32(~vec3<u32>(var_2, u_input.b.x, var_2), vec3<u32>(65401u, 85390u, var_2)), min(countOneBits(vec3<u32>(var_2, 4294967295u, 3994u)), vec3<u32>(var_2, 10744u, var_2)), (u_input.b ^ vec2<u32>(var_2, var_2)) ^ ~u_input.b), vec4<bool>(var_1.x, var_1.x, true, func_2(612f, -569f, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, u_input.a))).a)), _wgslsmith_sub_u32(var_2, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2, 25922u, 35856u, 1u), vec4<u32>(var_2, 1u, var_2, 0u) | vec4<u32>(var_2, var_2, u_input.b.x, u_input.b.x))) | func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-681f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-239f, 873f)), vec2<i32>(u_input.a, select(2147483647i, -1i, var_1.x))).c.x);
    var_0 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(0u, _wgslsmith_mod_u32(~(var_3.c.x >> (var_2 % 32u)), 4294967295u), false), -165f, _wgslsmith_f_op_f32(f32(-1f) * -321f), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 48668i, var_3.b, 37421i), ~vec4<i32>(2147483647i, u_input.a, -2147483647i, -14996i)), 25341i), u_input.a), vec3<f32>(-423f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1121f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-711f)), -1237f, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * 499f), _wgslsmith_f_op_f32(sign(276f))))))));
}

