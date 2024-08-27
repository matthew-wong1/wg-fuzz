struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = ~arg_0.c.xyw;
    let var_1 = arg_0.e.b.x;
    let var_2 = 4294967295u;
    var var_3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(var_1 - var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1286f - arg_0.a.x) * arg_0.a.x)))), _wgslsmith_clamp_vec2_u32(vec2<u32>(reverseBits(countOneBits(var_2)), ~(28497u & arg_0.c.x)), ~vec2<u32>(max(68954u, 0u), reverseBits(1u)), countOneBits(~arg_0.c.yz) ^ vec2<u32>(2421u, countOneBits(arg_0.c.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.a))), vec4<bool>(arg_0.d.a.x == any(!vec4<bool>(arg_0.d.a.x, true, false, arg_0.d.a.x)), !(!all(vec4<bool>(true, arg_0.d.a.x, false, true))), any(select(!vec3<bool>(false, false, arg_0.d.a.x), vec3<bool>(true, true, true), arg_0.d.a.x)), true), arg_0.e);
    var_3 = Struct_4(_wgslsmith_f_op_f32(round(var_3.e.b.x)), ~var_3.b, _wgslsmith_f_op_vec2_f32(-arg_0.e.b.xy), vec4<bool>(!(max(var_3.e.a, 22605i) > _wgslsmith_clamp_i32(arg_0.e.a, var_3.e.a, u_input.d)), false, false, false), Struct_1(~arg_0.e.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(var_1, arg_0.e.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1042f), -694f) * _wgslsmith_f_op_vec3_f32(-arg_0.e.b))));
    return -253f;
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> vec4<i32> {
    var var_0 = ~(arg_0.b | ((_wgslsmith_sub_vec2_u32(arg_0.b, vec2<u32>(4294967295u, 0u)) & u_input.e.yx) >> (arg_0.b % vec2<u32>(32u))));
    var var_1 = abs(abs(abs(vec4<u32>(1u, ~21164u, arg_0.b.x, ~4294967295u))));
    var var_2 = Struct_4(arg_0.c.x, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(min(var_1.wy, vec2<u32>(var_1.x, arg_0.b.x)), ~_wgslsmith_mod_vec2_u32(var_1.ww, u_input.e.yz)), vec2<u32>(var_0.x, ~0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.c))) - arg_0.c)), arg_0.d, Struct_1(_wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, u_input.d, u_input.a.x, arg_1), vec4<i32>(u_input.d, 2147483647i, arg_1, u_input.d), vec4<i32>(arg_1, -1i, u_input.a.x, 0i)), vec4<i32>(-1i, arg_1, -16832i, u_input.a.x) >> (vec4<u32>(u_input.e.x, 1190u, 1u, u_input.b) % vec4<u32>(32u)), true), -vec4<i32>(arg_1, u_input.d, -10902i, arg_0.e.a)), arg_0.e.b));
    let var_3 = ~(~(~(~vec4<u32>(var_1.x, 89906u, 0u, 48177u) << (min(vec4<u32>(25361u, arg_0.b.x, var_0.x, 0u), vec4<u32>(66333u, arg_0.b.x, 1u, 12574u)) % vec4<u32>(32u)))));
    var var_4 = false;
    return vec4<i32>(var_2.e.a, -(arg_0.e.a ^ arg_1), arg_0.e.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(2147483647i, arg_1, arg_1, -2147483647i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(9488u, var_3.x, 4294967295u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(74579u, 4294967295u, arg_0.b.x, 0u), vec4<u32>(var_3.x, 0u, var_0.x, u_input.b))) % vec4<u32>(32u)), vec4<i32>(1i, _wgslsmith_mod_i32(39693i, var_2.e.a), -1i, arg_0.e.a)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2) -> vec3<bool> {
    return !(!vec3<bool>(true, false, any(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x))));
}

fn func_2(arg_0: bool) -> Struct_4 {
    var var_0 = func_5(func_4(Struct_4(_wgslsmith_div_f32(-857f, _wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(346f, -1379f), vec2<f32>(-1733f, -1000f), vec4<u32>(u_input.c, u_input.e.x, 7631u, 2677u), Struct_2(vec2<bool>(false, arg_0)), Struct_1(u_input.a.x, vec3<f32>(530f, 1450f, -596f)))))), firstLeadingBit(u_input.e.zy >> (vec2<u32>(u_input.e.x, 33527u) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-415f, -189f) + vec2<f32>(-229f, -737f)), vec2<f32>(1977f, 587f))), select(!vec4<bool>(arg_0, arg_0, arg_0, false), !vec4<bool>(true, true, arg_0, arg_0), !vec4<bool>(arg_0, false, arg_0, arg_0)), Struct_1(u_input.a.x & 27039i, vec3<f32>(-298f, 1000f, -315f))), 0i), Struct_2(!select(vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), false), vec2<bool>(arg_0, false))));
    let var_1 = func_5(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-23040i, 34035i, u_input.a.x, -1i), vec4<i32>(u_input.d, -1i, 41776i, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.d, u_input.a.x, u_input.d)), select(vec4<i32>(u_input.d, u_input.d, 44648i, -9789i) & vec4<i32>(u_input.a.x, u_input.d, u_input.d, u_input.d), ~vec4<i32>(2147483647i, u_input.d, -1i, -2147483647i), true)), Struct_2(!(!vec2<bool>(false, var_0.x)))).x && arg_0;
    let var_2 = u_input.a;
    let var_3 = !arg_0;
    var var_4 = _wgslsmith_mult_vec2_i32(-(~firstTrailingBit(u_input.a)), -(~(vec2<i32>(0i, u_input.a.x) << (u_input.e.zz % vec2<u32>(32u))))) << (_wgslsmith_add_vec2_u32(~vec2<u32>(1u, u_input.b), vec2<u32>(~u_input.c, u_input.c)) % vec2<u32>(32u));
    return Struct_4(_wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(sign(-480f)), _wgslsmith_f_op_f32(f32(-1f) * -1037f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(353f, 174f), vec2<f32>(872f, -754f)))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 41808u, 0u), vec4<u32>(6542u, u_input.e.x, u_input.b, 3822u)) ^ ~vec4<u32>(4294967295u, 27669u, 4294967295u, u_input.c), Struct_2(!var_0.zz), Struct_1(~0i, vec3<f32>(193f, -833f, -771f))))), ~abs(countOneBits(vec2<u32>(63150u, u_input.e.x))), vec2<f32>(_wgslsmith_f_op_f32(round(-890f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-652f)) - _wgslsmith_f_op_f32(min(-1369f, -1071f))))), vec4<bool>(true, func_5(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(25250i, u_input.d, var_2.x, -1i), vec4<i32>(var_4.x, u_input.a.x, var_2.x, var_2.x))), Struct_2(!var_0.yx)).x, var_3, true), Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-968f, -234f, 183f), vec3<f32>(-1000f, 1000f, 420f))) + vec3<f32>(_wgslsmith_f_op_f32(sign(-497f)), _wgslsmith_f_op_f32(f32(-1f) * -1525f), 1000f))));
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = vec4<bool>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 0u) >> (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), arg_3.b)) > (0u << (arg_0 % 32u)), !(!func_2(arg_3.d.x).d.x), true | arg_3.d.x, arg_2.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.e.b.x, -630f, -883f, -542f), vec4<f32>(arg_3.a, arg_3.e.b.x, var_1, arg_3.e.b.x))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, -968f, -683f, 368f))))));
    let var_3 = ~countOneBits(arg_0);
    var var_4 = func_2(_wgslsmith_add_i32(arg_3.e.a, u_input.a.x) > 1i).e;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1501f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(floor(-1540f)), var_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1287f, 553f, var_2.x, 417f)))) + vec4<f32>(arg_3.e.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_4.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2803f, 481f), 1169f)) - _wgslsmith_f_op_f32(trunc(-648f))), _wgslsmith_f_op_f32(func_3(Struct_3(var_2.zw, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-656f, var_4.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, 4294967295u, var_3), vec4<u32>(u_input.e.x, 46830u, var_3, 28930u), vec4<u32>(1u, 0u, u_input.c, arg_0)), Struct_2(arg_2.xy), func_2(true).e)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    let var_0 = (i32(-1i) * -86537i) << (_wgslsmith_mod_u32(~1u, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(83325u, 14727u), ~arg_2.x)) % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(abs(_wgslsmith_sub_u32(u_input.c, 1u)), true, select(vec4<bool>(false, false, arg_0.x, arg_0.x), select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(false, true, arg_0.x, false), true), false || arg_0.x), func_2(arg_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(579f, 752f, arg_3.b.x, arg_3.b.x))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -1040f, arg_3.b.x, 173f) + vec4<f32>(arg_3.b.x, -1372f, 118f, arg_3.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.b.x, arg_3.b.x, -162f, arg_3.b.x), vec4<f32>(arg_1.b.x, arg_3.b.x, arg_1.b.x, -507f), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))))))));
    let var_2 = true;
    var var_3 = func_2(!all(vec3<bool>(var_2, arg_0.x, !arg_0.x))).d.ww;
    var_3 = func_2(var_2).d.yz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), Struct_1(0i, vec3<f32>(610f, -445f, 330f)), vec3<u32>(10489u, u_input.b, u_input.e.x), Struct_1(u_input.d, vec3<f32>(-974f, 1000f, 1438f)))))) != func_2(true).c.x, u_input.d > u_input.d), func_2(true).d.xy, true);
    let var_1 = u_input.a.x > firstLeadingBit(u_input.d);
    var var_2 = !(!((true & (u_input.a.x >= u_input.d)) | func_5(vec4<i32>(2147483647i, -2147483647i, u_input.a.x, u_input.a.x), Struct_2(vec2<bool>(var_0.x, var_0.x))).x));
    var_0 = vec2<bool>(var_0.x, reverseBits(firstTrailingBit(-1i)) > u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.zy, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(4294967295u, u_input.e.x, u_input.b, u_input.e.x)), max(vec4<u32>(24197u, 12975u, u_input.c, 46974u), reverseBits(vec4<u32>(u_input.c, 0u, u_input.e.x, 43361u))), vec4<u32>(1u, u_input.e.x, ~1u, ~10413u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 0u, 1u), ~vec4<u32>(u_input.c, 0u, 0u, u_input.b))), ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.e.yy, u_input.e.zx), ~u_input.e.xx)));
}

