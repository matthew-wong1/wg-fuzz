struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = ~_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(arg_1, arg_1), vec2<i32>(13932i, i32(-1i) * -2147483647i)), ~vec2<i32>(-arg_1, arg_1));
    let var_1 = select(~_wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, var_0.x, arg_1), vec3<i32>(var_0.x, 46253i, -15703i), vec3<i32>(-3304i, var_0.x, var_0.x))), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(38254i, arg_1, arg_1)), vec3<i32>(31415i, -1735i, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x) & vec3<i32>(1i, var_0.x, -31231i)), -(vec3<i32>(45498i, arg_1, 904i) << (arg_3.xyy % vec3<u32>(32u)))), ~vec3<i32>(-reverseBits(var_0.x), -17165i, -1i), arg_0.a.x);
    var var_2 = Struct_1(vec3<bool>(arg_0.a.x, arg_0.a.x, any(!select(vec2<bool>(false, false), arg_0.a.xy, arg_0.a.zz))));
    var var_3 = countOneBits(4294967295u);
    let var_4 = true;
    return vec2<bool>(any(!(!arg_0.a.xx)) && select(false && (var_4 == false), !var_2.a.x, true), true);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(-291f, 966f))), -838f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f + -1281f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-730f, 172f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(544f - 2261f))), -171f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-934f, 1889f, 1051f, 1395f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-161f, -1012f, -1100f, -218f) + vec4<f32>(-521f, 1720f, 700f, -682f))))), vec4<bool>(func_3(Struct_1(select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, arg_0))), select(min(arg_1.x, -11521i), arg_1.x, all(vec3<bool>(true, true, true))), Struct_1(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, arg_0))), vec4<u32>(u_input.a.x ^ u_input.a.x, u_input.a.x, 0u, 0u)).x, true, !(!(u_input.a.x < 50702u)), all(!vec3<bool>(arg_0, arg_0, arg_0)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(step(-1889f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-611f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) + _wgslsmith_div_f32(204f, _wgslsmith_f_op_f32(var_0.x + var_0.x))) - var_0.x), _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-796f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(176f + var_0.x) - _wgslsmith_f_op_f32(max(var_0.x, 492f))))));
    var var_1 = 51865u;
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(605f, var_0.x, var_0.x, -626f), vec4<f32>(var_0.x, -544f, var_0.x, 427f))) + _wgslsmith_div_vec4_f32(vec4<f32>(618f, var_0.x, -816f, var_0.x), vec4<f32>(-1000f, -913f, 388f, -2292f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1207f, -1730f, var_0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(566f, 1000f, 273f, -707f), vec4<f32>(var_0.x, var_0.x, -653f, -364f)))))));
    var_1 = ~(~u_input.a.x);
    return var_0.xyy;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i), vec2<i32>(1i, 2147483647i)), vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, -32374i, -48010i, -36503i), vec4<i32>(-30989i, -86785i, -7775i, -30527i)), reverseBits(i32(-1i) * -1i))), -(max(-1i, 15581i) << (~_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u)));
    let var_1 = abs(~(~_wgslsmith_mult_u32(u_input.a.x, ~4294967295u)));
    var var_2 = u_input.a;
    let var_3 = arg_0;
    var_2 = u_input.a;
    return -1320f;
}

fn func_2() -> Struct_1 {
    let var_0 = ~(-_wgslsmith_add_vec3_i32(~vec3<i32>(-46870i, 14213i, 1i), -min(vec3<i32>(1i, 38776i, -19816i), vec3<i32>(2147483647i, -2147483647i, 33757i))));
    let var_1 = _wgslsmith_f_op_f32(func_5(Struct_1(vec3<bool>(!any(vec2<bool>(false, false)), true, all(vec2<bool>(true, false)) | select(false, false, true))), _wgslsmith_f_op_vec3_f32(func_4(true, select(-vec2<i32>(var_0.x, 1i), vec2<i32>(min(var_0.x, var_0.x), ~var_0.x), select(vec2<bool>(true, true), func_3(Struct_1(vec3<bool>(false, false, false)), -15412i, Struct_1(vec3<bool>(true, false, true)), vec4<u32>(u_input.a.x, 4294967295u, 0u, 0u)), func_3(Struct_1(vec3<bool>(false, true, true)), 48965i, Struct_1(vec3<bool>(true, false, true)), vec4<u32>(43673u, 53233u, u_input.a.x, u_input.a.x)))))), Struct_1(vec3<bool>(func_3(Struct_1(vec3<bool>(false, false, true)), var_0.x | 44418i, Struct_1(vec3<bool>(true, false, false)), select(u_input.a, u_input.a, vec4<bool>(false, false, true, true))).x, true, !all(vec2<bool>(true, false))))));
    var var_2 = true;
    var_2 = !(!(!all(vec3<bool>(false, false, false))) != any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))));
    var var_3 = -vec4<i32>(7683i, 44617i, ~_wgslsmith_mult_i32(0i, countOneBits(-13105i)), -1i);
    return Struct_1(select(vec3<bool>(any(vec4<bool>(false, false, true, false)), true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), all(vec3<bool>(false, false, false))), func_3(Struct_1(vec3<bool>(true, true, true)), ~1i, Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 25763u) << (u_input.a % vec4<u32>(32u))).x));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = select(!(!(!(!vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true)))), select(!select(vec4<bool>(true, arg_1.a.x, arg_1.a.x, false), !vec4<bool>(arg_1.a.x, arg_1.a.x, false, false), !vec4<bool>(arg_1.a.x, false, false, arg_1.a.x)), select(vec4<bool>(!arg_1.a.x, true, arg_1.a.x || true, true), vec4<bool>(func_2().a.x, all(vec4<bool>(false, true, true, arg_1.a.x)), arg_1.a.x & arg_1.a.x, arg_1.a.x | false), vec4<bool>(true, true, arg_1.a.x, true)), arg_1.a.x), arg_0.x >= ~(arg_0.x >> (~u_input.a.x % 32u)));
    var_0 = select(!select(select(select(vec4<bool>(false, true, arg_1.a.x, var_0.x), vec4<bool>(true, var_0.x, arg_1.a.x, var_0.x), vec4<bool>(arg_1.a.x, var_0.x, false, false)), !vec4<bool>(true, var_0.x, arg_1.a.x, var_0.x), vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x)), vec4<bool>(select(true, true, false), !arg_1.a.x, arg_1.a.x && var_0.x, select(true, false, var_0.x)), vec4<bool>(true, true, !var_0.x, true)), !select(select(select(vec4<bool>(false, arg_1.a.x, arg_1.a.x, false), vec4<bool>(false, arg_1.a.x, arg_1.a.x, true), vec4<bool>(arg_1.a.x, false, true, var_0.x)), vec4<bool>(arg_1.a.x, var_0.x, arg_1.a.x, false), true), vec4<bool>(true, true, true, true), true), arg_1.a.x);
    var var_1 = func_2();
    var var_2 = false;
    var var_3 = firstTrailingBit(arg_0.x);
    return func_2();
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = !select(select(!select(vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_1.a.x), vec4<bool>(true, false, arg_0.a.x, arg_1.a.x), vec4<bool>(false, false, arg_0.a.x, arg_0.a.x)), vec4<bool>(any(vec4<bool>(arg_0.a.x, arg_1.a.x, false, arg_0.a.x)), all(vec2<bool>(arg_1.a.x, true)), true, any(vec3<bool>(true, false, true))), false), vec4<bool>(0u > ~u_input.a.x, false, false, false), true);
    var_0 = select(vec4<bool>(any(select(select(vec4<bool>(false, false, var_0.x, arg_1.a.x), vec4<bool>(var_0.x, arg_1.a.x, var_0.x, arg_0.a.x), vec4<bool>(true, true, arg_1.a.x, true)), select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, false), vec4<bool>(true, false, var_0.x, arg_1.a.x), arg_1.a.x), var_0.x)), false, !any(vec3<bool>(true, true, var_0.x)), true | select(true, var_0.x, true)), !select(select(select(vec4<bool>(false, false, arg_1.a.x, arg_0.a.x), vec4<bool>(arg_1.a.x, var_0.x, arg_0.a.x, var_0.x), vec4<bool>(false, arg_1.a.x, arg_0.a.x, true)), !vec4<bool>(var_0.x, true, arg_1.a.x, arg_1.a.x), any(vec4<bool>(arg_0.a.x, false, true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, arg_1.a.x), vec4<bool>(true, arg_1.a.x, false, arg_0.a.x), var_0.x)), vec4<bool>(false & any(vec4<bool>(true, arg_1.a.x, true, arg_0.a.x)), func_2().a.x, false, !arg_0.a.x & true));
    var var_1 = Struct_1(var_0.wzw);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_4(all(select(vec4<bool>(arg_0.a.x, true, false, true), vec4<bool>(true, var_0.x, false, false), vec4<bool>(true, var_0.x, false, var_1.a.x))), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(41895i, -10136i), vec2<i32>(1i, -1i))))).zx));
    var var_3 = Struct_1(arg_0.a);
    return arg_0;
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = -_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(arg_2 ^ arg_2), abs(_wgslsmith_div_vec2_i32(arg_2, vec2<i32>(arg_2.x, -3529i)))), -2147483647i);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -254f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(252f))))));
    let var_2 = (false | arg_1.a.x) || any(select(!(!vec4<bool>(arg_0.a.x, arg_1.a.x, true, false)), select(!vec4<bool>(true, true, true, arg_0.a.x), !vec4<bool>(arg_0.a.x, false, arg_0.a.x, false), any(arg_1.a)), vec4<bool>(arg_0.a.x, !arg_1.a.x, true, func_6(u_input.a.xx, arg_0, 826f).a.x)));
    var_1 = _wgslsmith_f_op_f32(-425f * -543f);
    var var_3 = Struct_1(vec3<bool>(select(false, !(arg_3 >= arg_3), !var_2), true, !any(vec4<bool>(true, var_2, true, false)) | arg_0.a.x));
    return arg_0;
}

fn func_1() -> vec2<i32> {
    let var_0 = func_8(func_7(func_6(~(~u_input.a.xy), func_2(), 1f), func_2()), Struct_1(select(vec3<bool>(any(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)), func_3(Struct_1(vec3<bool>(false, false, true)), -44463i, Struct_1(vec3<bool>(true, false, true)), u_input.a).x), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false), all(vec3<bool>(false, true, false)))), ~_wgslsmith_add_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 1008i), vec3<i32>(-1i, -1i, 41705i)))), ~u_input.a.x);
    var var_1 = Struct_1(var_0.a);
    var var_2 = firstLeadingBit(-select(7887i, 0i, false));
    let var_3 = func_2();
    var_1 = Struct_1(vec3<bool>(all(vec3<bool>(true, var_0.a.x, var_0.a.x)), func_2().a.x, !var_3.a.x));
    return vec2<i32>(1i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 58858u)) << (4294967295u % 32u))), u_input.a.x);
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(216f, -323f, -545f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-136f, 593f, -523f) - vec3<f32>(-595f, -1000f, 1126f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1060f, 797f, -523f))))));
    let var_3 = Struct_1(vec3<bool>(true, var_1 <= (var_1 ^ var_1), false));
    let var_4 = _wgslsmith_div_vec2_i32(-_wgslsmith_clamp_vec2_i32(firstTrailingBit(-vec2<i32>(2147483647i, 2147483647i)), firstLeadingBit(func_1()), select(~vec2<i32>(var_1, -3574i), vec2<i32>(-21119i, -2147483647i), vec2<bool>(var_3.a.x, false))), vec2<i32>(-2147483647i, ~var_1 >> ((~u_input.a.x >> (~u_input.a.x % 32u)) % 32u)));
    let var_5 = _wgslsmith_f_op_f32(-258f * var_2.x);
    var var_6 = select(vec4<bool>(false, all(select(vec2<bool>(false, var_3.a.x), !var_3.a.yy, all(var_3.a.zz))), true, true), vec4<bool>(2147483647i > (2147483647i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, u_input.a.x), vec3<u32>(var_0.x, var_0.x, var_0.x)) % 32u)), !(true & any(vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, true))), all(vec2<bool>(!var_3.a.x, var_3.a.x)), func_7(var_3, var_3).a.x), false | any(select(var_3.a.zx, func_3(var_3, 0i, Struct_1(vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x)), vec4<u32>(var_0.x, var_0.x, u_input.a.x, u_input.a.x)), !var_3.a.x)));
    var var_7 = Struct_1(vec3<bool>(var_6.x, false, false && var_3.a.x));
    let var_8 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(select(u_input.a, vec4<u32>(63876u, 64948u, var_0.x, 1u), select(vec4<bool>(var_7.a.x, var_3.a.x, false, true), vec4<bool>(false, true, false, var_6.x), vec4<bool>(false, false, false, var_7.a.x))), ~abs(u_input.a)), firstTrailingBit(vec4<u32>(28576u, 4294967295u, var_0.x, var_0.x) | (u_input.a & u_input.a))), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(1u, _wgslsmith_mult_u32(var_0.x, ~var_8.x), _wgslsmith_sub_u32(max(1u, 61436u), ~u_input.a.x), select(var_0.x, u_input.a.x, true)), vec4<u32>(_wgslsmith_add_u32(~20205u, _wgslsmith_sub_u32(71548u, 55737u)), 4294967295u, ~(~var_8.x), _wgslsmith_dot_vec2_u32(var_8.wz, firstLeadingBit(var_8.wx)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(115f - 1236f)) - 1429f)), var_4.x);
}

