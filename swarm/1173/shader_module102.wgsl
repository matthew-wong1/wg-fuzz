struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    var var_0 = vec2<i32>(~firstTrailingBit(1i), u_input.d.x);
    let var_1 = _wgslsmith_add_vec3_u32(~vec3<u32>(6806u | u_input.c, 4294967295u, arg_0.x) << (~max(~arg_0, ~arg_0) % vec3<u32>(32u)), ~arg_0);
    var var_2 = Struct_3(Struct_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c & 36725u, _wgslsmith_mod_u32(0u, arg_0.x)), arg_0.x), _wgslsmith_mult_i32(~_wgslsmith_sub_i32(u_input.a, -30843i), (var_0.x | var_0.x) >> (max(0u, 1u) % 32u)), Struct_1(-7274i, var_0.x, u_input.a)), ~vec4<u32>(_wgslsmith_mult_u32(arg_0.x, u_input.c), ~18933u, u_input.c, var_1.x), ~(~firstLeadingBit(var_1 << (vec3<u32>(1u, 1u, 50446u) % vec3<u32>(32u)))));
    var_0 = u_input.d.zy;
    var var_3 = vec2<bool>(all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), true)), vec4<bool>(all(vec3<bool>(false, false, false)), any(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, true, false, false)), any(vec3<bool>(false, true, false))), false)), !(true || (any(vec4<bool>(false, false, true, true)) | true)));
    return select(vec4<bool>(false, !(!any(vec2<bool>(false, var_3.x))), var_3.x, var_3.x), !select(vec4<bool>(all(vec3<bool>(var_3.x, true, true)), var_3.x, false, any(vec2<bool>(false, var_3.x))), vec4<bool>(4294967295u != var_1.x, true, var_3.x & false, false), vec4<bool>(true, true, true, true)), any(vec3<bool>(true, !(!var_3.x), var_3.x)));
}

fn func_2() -> vec4<bool> {
    return !(!(!select(vec4<bool>(true, true, true, true), func_3(vec3<u32>(u_input.c, u_input.c, 5885u)), vec4<bool>(true, true, false, false))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> Struct_2 {
    let var_0 = all(vec3<bool>(true, arg_0.x, true));
    var var_1 = Struct_3(Struct_2(select(~0u, _wgslsmith_div_u32(u_input.c, ~u_input.c), true), u_input.e.x, Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(26314i, arg_3, 2147483647i, arg_3), u_input.e), -max(u_input.e.x, -41701i), -2147483647i & u_input.e.x)), vec4<u32>(firstLeadingBit(0u), u_input.c, 26641u, ~(1u & _wgslsmith_sub_u32(u_input.c, u_input.c))), countOneBits(select(vec3<u32>(31265u, u_input.c, u_input.c) | vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(94327u, u_input.c, 0u) ^ vec3<u32>(42392u, 0u, u_input.c), !var_0)) | ~(~vec3<u32>(800u, u_input.c, 4294967295u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 88408u), vec3<u32>(32713u, u_input.c, u_input.c))));
    var_1 = Struct_3(var_1.a, _wgslsmith_sub_vec4_u32(min(~vec4<u32>(var_1.c.x, var_1.c.x, 8450u, u_input.c), ~var_1.b), reverseBits(vec4<u32>(max(1u, var_1.b.x), ~46075u, 1u, var_1.a.a))), countOneBits(abs(~var_1.b.xwx)) >> (_wgslsmith_clamp_vec3_u32(firstLeadingBit(select(var_1.b.yzz, var_1.c, var_0)), ~firstTrailingBit(var_1.c), var_1.b.xzx) % vec3<u32>(32u)));
    let var_2 = true;
    let var_3 = arg_1;
    return Struct_2(~_wgslsmith_sub_u32(49172u, 1u), arg_1.c, var_3);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(1511f * _wgslsmith_f_op_f32(f32(-1f) * -903f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-534f, -517f))))))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, -1289f))))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), var_0.x)))));
    let var_3 = vec3<bool>(!func_2().x, false, true);
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_2.yz * _wgslsmith_div_vec2_f32(var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2258f, 929f))))));
    return arg_0.c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = vec2<i32>(arg_0.c, u_input.b.x);
    var var_1 = func_4(func_3(reverseBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(36523u, 0u, 4294967295u), countOneBits(vec3<u32>(arg_1.a, arg_1.a, u_input.c)), ~vec3<u32>(46330u, u_input.c, 8533u)))), Struct_1(19481i << (_wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_1.a, 72564u, u_input.c, 0u), vec4<u32>(1u, 57207u, 52622u, arg_1.a)), ~vec4<u32>(29231u, u_input.c, 37238u, 65865u)) % 32u), _wgslsmith_clamp_i32(~(~(-30047i)), countOneBits(-2147483647i) >> (0u % 32u), 0i), 1i), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1254f, 199f, _wgslsmith_div_f32(arg_2, -386f)), vec3<f32>(-169f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, 1797f)) - 2383f)))), ~arg_1.c.a);
    let var_2 = false;
    var_0 = min(firstLeadingBit(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b, 0i), abs(vec2<i32>(arg_1.b, u_input.e.x))))), vec2<i32>(~4854i ^ arg_0.a, ~(-2147483647i)));
    var_0 = _wgslsmith_sub_vec2_i32(max(u_input.e.zz, vec2<i32>(1i, 1i)), u_input.e.wz);
    return func_4(!vec4<bool>(var_2, true, var_2, true), var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-294f, -560f, 818f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2, arg_2, -1091f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(623f, 657f, -757f))) * vec3<f32>(-944f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) + 752f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_2)))))), _wgslsmith_mod_i32(-33058i, firstLeadingBit(select(-13723i, _wgslsmith_mod_i32(-6342i, -73268i), !var_2))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(func_6(Struct_1(arg_2.c.a, arg_2.c.c, ~arg_1.b), Struct_2(1u, -14277i, arg_2.c), _wgslsmith_f_op_f32(-779f + arg_3.x)).c.c, -1i, u_input.b.x, u_input.e.x >> (countOneBits(arg_0.a) % 32u)), u_input.d);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - _wgslsmith_div_f32(arg_3.x, -1428f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + arg_3.x)))), arg_3.x);
    var var_2 = func_4(vec4<bool>(true, all(func_3(~vec3<u32>(arg_2.a, arg_0.a, 20718u)).xy), _wgslsmith_mult_i32(var_0, arg_2.b | arg_0.c.b) < arg_1.a, true), func_4(vec4<bool>(any(func_3(vec3<u32>(136376u, u_input.c, 0u))), any(vec3<bool>(true, true, false)), -308f > var_1.x, false), arg_2.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1476f, -365f, 375f), vec3<f32>(arg_3.x, 161f, 1731f))) * vec3<f32>(298f, var_1.x, -1000f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-541f, arg_3.x, var_1.x), vec3<f32>(arg_3.x, var_1.x, -907f))))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), func_5(arg_0, vec4<i32>(arg_0.c.a, reverseBits(2147483647i), arg_2.b, 2147483647i)).c).c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, -1320f, 459f) - vec3<f32>(-1118f, 103f, var_1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-135f, arg_3.x, var_1.x) - vec3<f32>(-981f, 544f, var_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1703f, var_1.x, -1000f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, arg_3.x) * vec3<f32>(983f, 285f, arg_3.x))), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !func_3(vec3<u32>(35368u, arg_2.a, 16949u)).x), func_6(Struct_1(_wgslsmith_sub_i32(-48369i, var_0), arg_0.c.c, -2147483647i), arg_0, -213f).c, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1861f), _wgslsmith_f_op_f32(-644f - -1000f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, 699f, arg_3.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.x, 566f, var_1.x))))), ~(-25474i)).c.c);
    var var_3 = vec2<bool>(true, false);
    var_2 = arg_2;
    return Struct_3(Struct_2(min(1u << (_wgslsmith_mod_u32(36542u, u_input.c) % 32u), 1391u), 9353i, func_5(func_4(!vec4<bool>(var_3.x, var_3.x, var_3.x, false), Struct_1(11337i, -1i, arg_0.c.c), _wgslsmith_div_vec3_f32(vec3<f32>(1530f, arg_3.x, -440f), vec3<f32>(arg_3.x, var_1.x, var_1.x)), ~(-33571i)), reverseBits(-vec4<i32>(-42870i, 7542i, 14122i, arg_1.b)))), ~abs(abs(vec4<u32>(arg_2.a, var_2.a, u_input.c, 23652u))) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, 4294967295u, 13100u, u_input.c), vec4<u32>(0u, u_input.c, arg_0.a, u_input.c)), ~(~4294967295u), ~30807u ^ u_input.c, 54369u), _wgslsmith_mult_vec3_u32(~countOneBits(vec3<u32>(30636u, var_2.a, u_input.c)) ^ vec3<u32>(1u, arg_2.a, countOneBits(u_input.c)), _wgslsmith_mod_vec3_u32(select(abs(vec3<u32>(76804u, arg_0.a, 0u)), vec3<u32>(57u, 1u, var_2.a), !vec3<bool>(var_3.x, true, var_3.x)), select(~vec3<u32>(u_input.c, 0u, 0u), firstTrailingBit(vec3<u32>(0u, arg_0.a, 1u)), vec3<bool>(var_3.x, false, false)))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = func_7(arg_1, Struct_1(10040i, arg_1.b, abs(~(-2889i))), func_6(func_5(func_4(func_2(), arg_1.c, vec3<f32>(-381f, -171f, -332f), 78683i), -select(u_input.d, vec4<i32>(-18224i, -61697i, u_input.e.x, -2147483647i), vec4<bool>(false, true, false, true))), func_4(!func_3(vec3<u32>(u_input.c, 0u, 11100u)), Struct_1(_wgslsmith_add_i32(arg_1.b, u_input.b.x), func_5(arg_1, u_input.e).a, _wgslsmith_mult_i32(-19179i, u_input.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-903f, -1000f, -1000f), vec3<f32>(508f, 749f, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1362f, 1458f, -570f))), reverseBits(u_input.d.x ^ -75244i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + -1196f))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-395f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -778f)))))));
    var_0 = Struct_3(var_0.a, ~reverseBits(var_0.b), ~(~(~var_0.c)));
    return Struct_3(func_6(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.b.x, 0i), u_input.b.x, func_4(vec4<bool>(false, false, false, true), Struct_1(1i, 0i, var_0.a.c.a), vec3<f32>(-1158f, 509f, 718f), -2147483647i).c.c), 0i, var_0.a.b), func_6(var_0.a.c, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1915f * -785f))), -805f), ~var_0.b, max(~(~var_0.c), ~firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(40435u, u_input.c, 78614u), var_0.b.xyy))));
}

fn func_8(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = arg_0.c.x;
    var var_1 = vec4<u32>(abs(arg_1.x), _wgslsmith_clamp_u32(73676u, 1u, abs(u_input.c >> (func_7(Struct_2(u_input.c, -8576i, arg_0.a.c), arg_0.a.c, Struct_2(74632u, arg_0.a.b, arg_0.a.c), vec2<f32>(-1524f, 663f)).a.a % 32u))), arg_1.x, func_7(arg_0.a, arg_0.a.c, Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_0.c.x, 1u, arg_1.x), arg_0.b), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_0.b.x, arg_1.x, 61181u), arg_0.b)), 33339i, arg_0.a.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -839f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(254f, 114f)))))).b.x);
    var var_2 = Struct_3(func_6(arg_0.a.c, arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(629f)))), _wgslsmith_f_op_f32(round(130f)), false))), abs(firstTrailingBit(func_7(Struct_2(37454u, arg_0.a.b, arg_0.a.c), arg_0.a.c, Struct_2(0u, arg_0.a.b, Struct_1(-65740i, 2147483647i, -2147483647i)), vec2<f32>(1424f, 1695f)).b)), _wgslsmith_add_vec3_u32(~(~(~vec3<u32>(4294967295u, var_1.x, arg_0.c.x))), max(~var_1.wyx, vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.zyy, vec3<u32>(0u, var_1.x, arg_0.a.a)), ~var_1.x, ~arg_0.a.a))));
    var_1 = max(vec4<u32>(_wgslsmith_div_u32(~1u, _wgslsmith_div_u32(arg_0.b.x, _wgslsmith_mod_u32(58114u, 75769u))), 0u, ~_wgslsmith_add_u32(arg_0.c.x, _wgslsmith_sub_u32(u_input.c, 4294967295u)), 40135u), ~vec4<u32>(var_2.b.x, ~_wgslsmith_clamp_u32(1u, 0u, 11061u), 85931u, 1u));
    var_1 = ~vec4<u32>(var_1.x, 4294967295u, 24729u, 34120u);
    return Struct_2(13392u, func_1(vec2<u32>(~(~arg_0.c.x), abs(4351u)), func_4(vec4<bool>(true, true, u_input.c < var_2.c.x, any(vec3<bool>(false, false, false))), func_4(vec4<bool>(true, true, true, true), Struct_1(2147483647i, -47428i, -2147483647i), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-119f, -1000f, 171f), vec3<f32>(-1937f, 732f, -2495f))), i32(-1i) * -22137i).c, vec3<f32>(_wgslsmith_f_op_f32(-968f - 1186f), _wgslsmith_f_op_f32(344f - -458f), _wgslsmith_f_op_f32(select(1750f, 284f, false))), _wgslsmith_mult_i32(~(-1i), ~u_input.d.x))).a.c.b, func_5(arg_0.a, u_input.d));
}

fn func_9(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_2 {
    let var_0 = func_1(vec2<u32>(~firstTrailingBit(~arg_2), _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_1.a, arg_1.a), arg_2 | 0u)), func_7(Struct_2(~(~0u), ~(arg_1.b ^ arg_0), arg_1.c), Struct_1((-41934i | arg_1.b) ^ (u_input.b.x << (u_input.c % 32u)), _wgslsmith_mult_i32(0i, 1i), firstLeadingBit(1i)), Struct_2(arg_2, arg_1.c.c, func_7(func_1(vec2<u32>(25061u, 4294967295u), Struct_2(35640u, -18160i, Struct_1(arg_0, -4766i, arg_0))).a, arg_1.c, Struct_2(52599u, arg_1.b, arg_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3))).a.c), vec2<f32>(arg_3, arg_3)).a);
    var var_1 = false;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_div_f32(-391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3, -1091f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), 755f))), -932f, arg_3);
    let var_3 = select(-u_input.e.xwx, -vec3<i32>(1i, 113032i ^ u_input.d.x, _wgslsmith_sub_i32(arg_1.c.b, -1i)) ^ u_input.e.wxy, vec3<bool>(true, true, func_3(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_2, 19714u), vec3<u32>(var_0.a.a, arg_1.a, 39292u) | vec3<u32>(4294967295u, arg_2, 67054u))).x));
    var_1 = !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1015f * -1322f))) <= _wgslsmith_f_op_f32(f32(-1f) * -1006f));
    return func_1(countOneBits(var_0.c.xx), arg_1).a;
}

fn func_10(arg_0: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(151f, -2025f) + vec2<f32>(-1000f, -301f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1589f, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1036f, 1f))));
    var var_1 = var_0;
    let var_2 = arg_0;
    var_1 = _wgslsmith_f_op_vec2_f32(var_0 * var_0);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1669f - 2136f), var_1.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-731f, 893f) - _wgslsmith_f_op_vec2_f32(-var_0)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2857f, -1163f), var_0)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(724f, -226f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0), var_0)))));
    return func_1(vec2<u32>(_wgslsmith_mod_u32(1u, countOneBits(~arg_0.a)), ~func_8(Struct_3(Struct_2(1u, -2147483647i, Struct_1(-1i, var_2.c.c, -21704i)), vec4<u32>(u_input.c, 1u, arg_0.a, var_2.a), vec3<u32>(0u, 0u, arg_0.a)), vec2<u32>(4804u, u_input.c)).a), func_6(var_2.c, func_6(func_7(Struct_2(u_input.c, var_2.b, Struct_1(arg_0.b, -1i, 12027i)), Struct_1(var_2.b, arg_0.c.c, u_input.e.x), arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-3000f, var_3.x))).a.c, func_8(Struct_3(var_2, vec4<u32>(1u, 113234u, u_input.c, 1u), vec3<u32>(1u, arg_0.a, 20128u)), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(336f, var_0.x), -1303f))), var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c | 0u;
    var var_1 = -u_input.b.x;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = func_10(func_9(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(22715i, u_input.a, u_input.b.x, u_input.e.x)), select(u_input.d, vec4<i32>(4793i, -2147483647i, 1i, 7677i), vec4<bool>(true, true, true, true))), 2147483647i), func_8(func_1(abs(vec2<u32>(53258u, 26201u)), Struct_2(var_0, 0i, Struct_1(2147483647i, u_input.e.x, 26363i))), vec2<u32>(0u, 4294967295u)), ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.c, 14040u, var_0, u_input.c)), ~vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)), -1150f));
    var_3 = func_10(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2, u_input.d ^ _wgslsmith_mod_vec4_i32(u_input.d, min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.a.c.a, u_input.d.x, -2147483647i, -1i), vec4<i32>(73176i, 21964i, var_3.a.c.a, u_input.b.x)), vec4<i32>(u_input.b.x, -4946i, u_input.e.x, 14965i))), ~var_3.b.zx);
}

