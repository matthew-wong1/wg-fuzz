struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: i32,
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_add_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(-15667i, -1182i, 7828i), vec3<i32>(50541i, -36615i, 16884i))), ~abs(vec3<i32>(21822i, -53014i, -1i)))), true, -28990i, (~abs(vec4<i32>(-1i, -6406i, -633i, 2671i)) ^ select(vec4<i32>(-6207i, -17273i, -2147483647i, 1i), abs(vec4<i32>(-25545i, 2147483647i, -1i, -58564i)), select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(false, true, arg_0.x, true)))) << (_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a.x, 68632u, u_input.a.x, 15115u), abs(vec4<u32>(u_input.a.x, 83451u, 19568u, u_input.a.x)), arg_0.x), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 5197u)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-383f, 840f) * _wgslsmith_f_op_f32(1345f - -1191f))), -171f, var_0.b))));
    var var_2 = firstLeadingBit(select(select(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 29984u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 60950u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(3236u, 23936u, 0u, 1u))), true), vec4<u32>(124480u, 4294967295u & (1u | u_input.a.x), ~u_input.a.x | u_input.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 74804u), u_input.a.xx)), select(vec4<bool>(any(vec3<bool>(var_0.b, arg_0.x, false)), arg_0.x, any(vec4<bool>(arg_0.x, true, arg_0.x, var_0.b)), arg_0.x), !(!vec4<bool>(true, false, var_0.b, true)), true)));
    var_1 = -529f;
    var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(~var_2.x, 1u, _wgslsmith_sub_u32(u_input.a.x, ~(~72682u)), ~var_2.x), abs(min(vec4<u32>(~1u, var_2.x, u_input.a.x, _wgslsmith_clamp_u32(13303u, var_2.x, 70703u)), ~vec4<u32>(52117u, u_input.a.x, var_2.x, 4294967295u))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1191f))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 489f;
    let var_1 = select(firstLeadingBit(~select(~vec4<u32>(4294967295u, 5639u, u_input.a.x, 49259u), vec4<u32>(u_input.a.x, 984u, 5331u, 25095u) | vec4<u32>(43457u, u_input.a.x, u_input.a.x, 1u), select(vec4<bool>(true, arg_0.b, true, arg_0.b), vec4<bool>(true, arg_0.b, false, arg_0.b), false))), abs(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a.x, 27812u, 0u, 15408u), vec4<u32>(u_input.a.x, 9076u, u_input.a.x, 86771u), vec4<bool>(false, arg_0.b, arg_0.b, true)), vec4<u32>(45043u, u_input.a.x, 65781u, 62960u)) ^ vec4<u32>(~u_input.a.x, ~u_input.a.x, 1u, 1u)), false);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(929f)), _wgslsmith_f_op_f32(func_3(select(!(!vec3<bool>(true, arg_0.b, false)), select(!vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(true, arg_0.b, arg_0.b), !arg_0.b), !(false | arg_0.b)))));
    let var_2 = arg_0;
    let var_3 = -110f;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = Struct_1(vec3<i32>(arg_1.c, firstLeadingBit(0i), arg_0.d.x), arg_0.b, abs(i32(-1i) * -17193i), vec4<i32>(_wgslsmith_dot_vec2_i32(-var_0.a.zz, firstLeadingBit(countOneBits(vec2<i32>(var_0.c, -1i)))), ~(var_0.c << (1u % 32u)), max(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), arg_1.a.xy) & -17947i, 1i), arg_1.d.x));
    var var_1 = abs(var_0.d.xz);
    var_1 = vec2<i32>(-reverseBits(min(countOneBits(63936i), arg_1.d.x)), -1i);
    let var_2 = arg_3.xwx;
    return func_2(Struct_1(arg_0.d.xwz, arg_3.x, firstTrailingBit(-(11467i << (u_input.a.x % 32u))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.a.x, arg_1.d.x, var_0.a.x, arg_1.c) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(var_0.d, min(vec4<i32>(var_1.x, -1i, var_0.c, arg_0.a.x), vec4<i32>(-39044i, 2147483647i, 2889i, 0i))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.x, 1i, var_1.x), arg_1.d), reverseBits(-1i), 1i ^ arg_1.a.x, var_0.c ^ var_0.c))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(false, arg_0.b, u_input.a.x <= 0u);
    var var_1 = func_4(func_4(func_2(func_4(arg_0, func_2(arg_0), vec2<f32>(658f, 521f), select(vec4<bool>(true, var_0.x, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, var_0.x, arg_0.b, true), false))), Struct_1(arg_0.a, true, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, arg_0.c), vec2<i32>(2147483647i, arg_0.a.x)), vec4<i32>(1i, 1i, 1i, 1i)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(455f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-587f, 530f, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), !(!(!vec4<bool>(var_0.x, false, true, false)))), arg_0, vec2<f32>(-523f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-897f, -658f), 244f, !var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2268f, -2169f))))), select(vec4<bool>(true, var_0.x, arg_0.b, true), select(vec4<bool>(arg_0.b, true & var_0.x, arg_0.b, arg_0.b), vec4<bool>(true, all(vec3<bool>(false, arg_0.b, arg_0.b)), !arg_0.b, false), !vec4<bool>(false, false, var_0.x, true)), !(!vec4<bool>(var_0.x, true, var_0.x, false))));
    let var_2 = Struct_1((_wgslsmith_div_vec3_i32(var_1.a, vec3<i32>(var_1.c, -1i, var_1.c)) << (~(~u_input.a) % vec3<u32>(32u))) | _wgslsmith_div_vec3_i32(vec3<i32>(abs(var_1.a.x), _wgslsmith_sub_i32(44857i, 0i), 0i), var_1.d.xwz), false, var_1.c, firstTrailingBit(abs(vec4<i32>(var_1.c, -7197i, -45655i, var_1.c) | func_4(arg_0, arg_0, vec2<f32>(1587f, 842f), vec4<bool>(var_1.b, false, true, false)).d)));
    var var_3 = select(!select(!select(vec4<bool>(true, var_1.b, var_0.x, var_2.b), vec4<bool>(true, var_0.x, var_1.b, arg_0.b), vec4<bool>(var_0.x, var_1.b, var_1.b, false)), select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(false, false, var_0.x, true), !vec4<bool>(arg_0.b, true, var_0.x, var_0.x)), true), !(!(!select(vec4<bool>(var_0.x, var_2.b, true, false), vec4<bool>(true, var_2.b, true, var_0.x), var_2.b))), (_wgslsmith_add_u32(_wgslsmith_div_u32(4246u, 4294967295u), ~u_input.a.x) != u_input.a.x) & var_1.b);
    var var_4 = Struct_1(~vec3<i32>(-(34089i & var_1.c), _wgslsmith_mult_i32(-2147483647i, ~(-1i)), max(_wgslsmith_add_i32(37913i, arg_0.a.x), -1i)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(30598u, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x)) < (60235u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, 37222u) | u_input.a.yx)), 1i, var_1.d);
    return Struct_1(vec3<i32>(2147483647i, -var_4.c, _wgslsmith_dot_vec4_i32(arg_0.d, var_4.d)), all(!vec2<bool>(all(vec4<bool>(true, var_4.b, var_0.x, false)), var_4.b)), max(arg_0.c, _wgslsmith_mult_i32(-7133i, ~(~var_1.d.x))), -(~(-_wgslsmith_add_vec4_i32(var_2.d, var_4.d))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(8694i, arg_0.a.x, -2147483647i), -vec3<i32>(arg_3.d.x, 1i, 1i)), arg_3.b, _wgslsmith_dot_vec2_i32((-arg_2.d.zz << (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))) << (~min(vec2<u32>(3211u, 0u), vec2<u32>(u_input.a.x, 37571u)) % vec2<u32>(32u)), arg_0.d.yx), reverseBits(vec4<i32>(arg_1.c, 0i, arg_3.c, select(arg_0.a.x | 0i, min(arg_3.d.x, 1i), arg_0.b))));
}

fn func_7(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = true;
    return Struct_1(-arg_2.a, false, -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_2.d.wy, var_0.a.xy) << (~arg_1 % 32u), -_wgslsmith_dot_vec2_i32(var_0.a.xy, vec2<i32>(-36733i, var_0.c))), vec4<i32>(-_wgslsmith_clamp_i32(_wgslsmith_mod_i32(6259i, arg_2.d.x), _wgslsmith_add_i32(arg_2.c, arg_2.c), var_0.d.x), _wgslsmith_dot_vec2_i32(countOneBits(arg_2.a.xz), ~vec2<i32>(var_0.c, 26580i)), -(~(~(-19545i))), _wgslsmith_sub_i32(-arg_2.c & -11621i, _wgslsmith_dot_vec3_i32(abs(arg_2.a), _wgslsmith_add_vec3_i32(var_0.d.wxy, var_0.d.zzy)))));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1726f) + _wgslsmith_f_op_f32(abs(-1000f)))), -360f)));
    var var_1 = func_7(_wgslsmith_f_op_f32(f32(-1f) * -1391f), u_input.a.x, func_6(func_5(func_4(func_2(Struct_1(vec3<i32>(0i, 1i, -1i), true, -1i, vec4<i32>(1i, 1i, -2147483647i, -1i))), func_2(Struct_1(vec3<i32>(28060i, -1i, 26425i), false, 36916i, vec4<i32>(38267i, 33089i, -3295i, -20284i))), _wgslsmith_div_vec2_f32(vec2<f32>(124f, var_0), vec2<f32>(var_0, var_0)), vec4<bool>(false, false, false, false))), func_2(func_2(Struct_1(vec3<i32>(2147483647i, 25316i, -33479i), true, 28455i, vec4<i32>(7303i, -2147483647i, 7554i, -1i)))), Struct_1(-vec3<i32>(1372i, 2147483647i, 0i), true, abs(0i), vec4<i32>(abs(2147483647i), firstTrailingBit(0i), 81240i, func_4(Struct_1(vec3<i32>(0i, 77755i, 11669i), false, -16442i, vec4<i32>(2147483647i, 1i, -2147483647i, 1i)), Struct_1(vec3<i32>(-14395i, -16733i, -25116i), false, 59367i, vec4<i32>(2147483647i, 27543i, 1i, 0i)), vec2<f32>(var_0, var_0), vec4<bool>(false, false, true, false)).d.x)), Struct_1(select(vec3<i32>(-18496i, -1423i, 2147483647i), ~vec3<i32>(781i, -2147483647i, -19218i), true), true, -28230i, vec4<i32>(reverseBits(0i), ~(-76764i), -755i >> (1u % 32u), func_5(Struct_1(vec3<i32>(0i, 0i, -8270i), true, -13218i, vec4<i32>(-1i, -5047i, -11371i, 2147483647i))).c))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 + var_0)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1000f, var_0)), _wgslsmith_div_f32(var_0, var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * -450f), _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 + 1690f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -504f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, var_0))))));
    var var_2 = vec4<bool>(all(!vec4<bool>(false, all(vec4<bool>(var_1.b, true, var_1.b, false)), var_1.b, var_1.b)), func_4(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.a.x, 65116i, -55674i), var_1.d.zww), var_1.b, -2147483647i, vec4<i32>(var_1.a.x, var_1.a.x, var_1.d.x, var_1.d.x)), Struct_1(vec3<i32>(11152i, 1i, -2147483647i), !var_1.b, -211i, var_1.d), vec2<f32>(_wgslsmith_f_op_f32(-1625f + var_0), _wgslsmith_f_op_f32(ceil(-2684f))), vec4<bool>(false, func_4(Struct_1(var_1.d.wyz, true, 12476i, vec4<i32>(-2147483647i, -11795i, -1i, -2147483647i)), Struct_1(vec3<i32>(11291i, -47011i, var_1.a.x), false, var_1.a.x, var_1.d), vec2<f32>(-2332f, var_0), vec4<bool>(true, true, true, var_1.b)).b, var_1.b, true)).b | true, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 346f)) <= var_0);
    let var_3 = ~(~(~select(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, 2026u, 17847u), u_input.a.x < 52944u)));
    let var_4 = var_1.d.x;
    return 524f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 170f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = firstTrailingBit(min(max(var_0, var_0 << (_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.xx) % 32u)), 1i));
    var_1 = 1i;
    var_1 = -1i;
    var_1 = -_wgslsmith_mult_i32(_wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, -2147483647i, var_0), vec4<i32>(12334i, -17013i, 620i, var_0)), ~countOneBits(1i)), ~(-1i));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(844f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) * _wgslsmith_f_op_f32(step(-1640f, -1301f)))) - -1041f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1167f, -352f)) + -1000f))))), 492f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1426f), -1237f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -296f))));
    var var_3 = func_1() && !(!(true == all(vec3<bool>(false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1799f)), vec2<f32>(892f, -1430f), 27821u, -2147483647i);
}

