struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> f32 {
    let var_0 = Struct_2(~abs(~(~vec2<i32>(5486i, u_input.c))), 54120u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(273f, -707f, -132f))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, 1060f, arg_2), vec3<f32>(-884f, 215f, arg_1.c.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, 1468f, arg_1.c.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(499f, arg_2, 1000f), vec3<f32>(arg_1.c.x, -193f, 1158f)))))), Struct_1(27159u, reverseBits(~u_input.b.zyy), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2731f))), -202f)), true);
    return -222f;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_3(vec4<bool>(false, any(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false))), select(false, -1140f != _wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), Struct_1(u_input.b.x, u_input.b.yyy, vec2<f32>(-135f, 1006f)), 546f)), !select(false, false, false)), !(_wgslsmith_f_op_f32(step(-291f, -1166f)) <= _wgslsmith_f_op_f32(f32(-1f) * -781f))), Struct_1(~(~2611u & firstTrailingBit(u_input.e.x)), firstTrailingBit(~u_input.d.wxx) << (vec3<u32>(16933u, 0u << (1u % 32u), 2472u << (u_input.d.x % 32u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(-1354f, -587f)), _wgslsmith_f_op_f32(step(606f, 451f)))))), Struct_1(22209u, ~((vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(56725u, u_input.b.x, 0u)) << (max(vec3<u32>(16016u, 15308u, 40680u), u_input.d.xwy) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(777f, -464f), vec2<f32>(491f, 684f))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1216f, -1500f), vec2<f32>(1100f, 1000f), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-527f, 1669f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-571f - 638f), _wgslsmith_f_op_f32(1000f * -1172f)) + vec2<f32>(_wgslsmith_f_op_f32(-698f + -441f), _wgslsmith_div_f32(1307f, -1000f))), !vec2<bool>(-5831i >= u_input.c, true))));
    var_0 = Struct_3(vec4<bool>(all(vec3<bool>(var_0.a.x == var_0.a.x, !var_0.a.x, true)), select(false, var_0.a.x, var_0.a.x), !var_0.a.x, true), Struct_1(2974u, u_input.d.xzz, _wgslsmith_f_op_vec2_f32(var_0.d + _wgslsmith_div_vec2_f32(var_0.b.c, vec2<f32>(var_0.b.c.x, var_0.b.c.x)))), var_0.c, vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_div_f32(var_0.b.c.x, _wgslsmith_div_f32(var_0.c.c.x, var_0.c.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d.x, var_0.b.c.x) * var_0.d.x)))));
    let var_1 = select(select(vec4<bool>(_wgslsmith_f_op_f32(-var_0.d.x) == 1075f, true, true, var_0.a.x), select(vec4<bool>(false, var_0.a.x != false, var_0.a.x && var_0.a.x, true), !(!vec4<bool>(var_0.a.x, true, false, var_0.a.x)), var_0.a.x), var_0.a), select(vec4<bool>(!any(var_0.a.zwy), select(var_0.b.c.x > 1611f, any(vec3<bool>(false, false, var_0.a.x)), var_0.a.x), var_0.a.x, var_0.d.x < _wgslsmith_f_op_f32(-222f * 304f)), var_0.a, all(var_0.a.yyz)), var_0.a.x | (~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -19146i, 0i, u_input.c), vec4<i32>(u_input.c, u_input.c, -32035i, u_input.c)) > _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c, u_input.c), u_input.c)));
    var_0 = Struct_3(select(vec4<bool>(var_1.x, true, !(var_0.b.b.x >= var_0.b.a), select(var_0.b.b.x <= var_0.b.a, !var_1.x, false)), !vec4<bool>(true, var_0.c.c.x <= -611f, var_1.x, var_1.x), var_0.a), var_0.b, Struct_1(select(min(0u, abs(var_0.b.a)), abs(var_0.b.b.x), true), reverseBits(vec3<u32>(4026u, u_input.b.x, var_0.c.a)) << (~vec3<u32>(u_input.e.x, u_input.e.x, 20141u) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(func_3(select(vec2<bool>(false, var_0.a.x), vec2<bool>(var_1.x, true), true), Struct_1(0u, vec3<u32>(1u, u_input.d.x, var_0.b.b.x), var_0.d), -1673f)), var_0.c.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1669f, -182f)) * vec2<f32>(-1003f, var_0.c.c.x)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.b.c.x, _wgslsmith_f_op_f32(1000f + var_0.d.x))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1326f), _wgslsmith_f_op_f32(-var_0.b.c.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.c.x, -837f, var_0.c.c.x, _wgslsmith_f_op_f32(-284f * var_0.c.c.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.c.x, 1980f, 926f, 143f), vec4<f32>(1352f, var_0.d.x, var_0.d.x, 355f))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = all(!(!vec4<bool>(u_input.c > 734i, true, true, false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2()).x;
    var_0 = false;
    var_1 = _wgslsmith_f_op_f32(exp2(arg_1.x));
    var var_2 = arg_1.x;
    return Struct_3(!vec4<bool>(true && (u_input.c > u_input.c), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true)), select(all(vec4<bool>(true, true, false, true)), true, true), all(vec3<bool>(false, true, true))), Struct_1(u_input.a, ~u_input.b.xyy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(808f, arg_1.x)))), Struct_1(min(_wgslsmith_mod_u32(1u, arg_0.x), select(u_input.b.x, u_input.e.x, true)) & 33862u, vec3<u32>(abs(4294967295u), arg_0.x, u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.x, arg_1.x))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(368f - arg_1.x), -1630f), arg_1.zz))));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_3 {
    let var_0 = vec3<u32>(arg_1, u_input.b.x, arg_3.d.b.x);
    var var_1 = Struct_1(arg_3.d.b.x, ~vec3<u32>(~_wgslsmith_add_u32(u_input.b.x, 1u), func_4(vec2<u32>(var_0.x, 7221u), arg_2).b.a >> (~arg_3.d.b.x % 32u), 16229u), _wgslsmith_div_vec2_f32(arg_0.c.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1451f, -1000f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.c.c.x, arg_2.x))))));
    var_1 = Struct_1(arg_1, vec3<u32>(1u, abs(33893u), ~(~1u)), vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_0.c.c.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_0.d.x)))));
    var var_2 = ~u_input.d;
    var_2 = u_input.d;
    return Struct_3(!(!select(vec4<bool>(true, true, arg_3.e, arg_3.e), !vec4<bool>(true, false, true, arg_3.e), vec4<bool>(true, true, true, true))), Struct_1(abs(arg_3.d.b.x), ~(~(vec3<u32>(4294967295u, arg_0.b.b.x, var_0.x) << (vec3<u32>(var_2.x, 83540u, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(553f - 1274f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-558f, arg_2.x) + vec2<f32>(arg_0.b.c.x, 1685f)) + _wgslsmith_f_op_vec2_f32(max(arg_2.wx, arg_3.d.c))), arg_3.e & !arg_0.a.x))), arg_3.d, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, arg_0.b.c.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.c.x, arg_3.d.c.x)))), arg_3.d.c)));
}

fn func_6(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = arg_0.a.x || true;
    var var_1 = -(firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 0i), vec4<i32>(u_input.c, u_input.c, -1i, 2147483647i)), u_input.c, firstLeadingBit(-49213i), u_input.c)) ^ _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, 0i, 0i, 0i)), ~firstLeadingBit(vec4<i32>(u_input.c, -2147483647i, u_input.c, -32673i))));
    var_1 = -firstTrailingBit(vec4<i32>(reverseBits(u_input.c), 36788i, ~_wgslsmith_sub_i32(0i, u_input.c), select(var_1.x, 0i, false) | ~0i));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(418f + arg_0.c.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(845f, 1616f)))) >= arg_0.d.x;
    var_1 = ((vec4<i32>(_wgslsmith_mod_i32(-6900i, u_input.c), ~(-1i), _wgslsmith_clamp_i32(-2147483647i, u_input.c, -54588i), ~(-1i)) << (vec4<u32>(~u_input.b.x, 18651u, u_input.e.x, ~1u) % vec4<u32>(32u))) | (vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_1.x, var_1.x, 12561i))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, _wgslsmith_clamp_i32(47515i, u_input.c, 3144i | var_1.x), 1i, u_input.c), -vec4<i32>(-14721i, 1i, var_1.x, ~(-1i)));
    return vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c.c.x, _wgslsmith_f_op_f32(trunc(arg_0.c.c.x)), all(vec3<bool>(arg_0.a.x, false, true))))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.c.x * arg_0.c.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_4(arg_0.c.b.zx, vec4<f32>(arg_0.c.c.x, 1553f, -1253f, arg_0.c.c.x)).a.wx, arg_0.c, arg_0.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2044f))), arg_0.c.a < u_input.d.x)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec2<u32>) -> vec3<f32> {
    var var_0 = !(!(!vec3<bool>(true, arg_1, arg_1)));
    let var_1 = Struct_1(~(~min(~arg_2.x, firstTrailingBit(u_input.d.x))), u_input.d.wyy, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-841f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_0 = vec3<bool>(arg_1, firstTrailingBit(_wgslsmith_clamp_u32(u_input.d.x, countOneBits(1u), 1u)) == _wgslsmith_dot_vec4_u32(~u_input.b, ~vec4<u32>(37875u, 4294967295u, arg_2.x, arg_2.x) << ((u_input.b & u_input.b) % vec4<u32>(32u))), var_0.x);
    var_0 = !vec3<bool>(var_0.x, var_0.x, false);
    var var_2 = true;
    return _wgslsmith_f_op_vec3_f32(func_6(func_5(func_4(var_1.b.yy ^ arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1869f, -1619f, -1049f, var_1.c.x) + vec4<f32>(var_1.c.x, 195f, 2648f, var_1.c.x)))), 24746u << (~max(62457u, var_1.b.x) % 32u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(508f)) + var_1.c.x), var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c.x, 762f)) * var_1.c.x)), Struct_2((vec2<i32>(41271i, u_input.c) >> (var_1.b.zz % vec2<u32>(32u))) >> (arg_2 % vec2<u32>(32u)), arg_0 ^ 14178u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1021f, 1000f, var_1.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1136f, -729f, var_1.c.x)), vec3<bool>(arg_1, arg_1, false))), func_4(var_1.b.zy, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(3122f, var_1.c.x, -1000f, 300f), vec4<f32>(var_1.c.x, var_1.c.x, 793f, var_1.c.x), vec4<bool>(true, var_0.x, var_0.x, true)))).b, !(u_input.c != u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-127f, 327f, _wgslsmith_f_op_f32(f32(-1f) * -1103f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-508f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1489f))), _wgslsmith_f_op_f32(floor(280f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(~0u, !(-395f != var_0.x), vec2<u32>(1u, ~u_input.d.x))))));
    let var_1 = func_5(func_4(u_input.b.yw, vec4<f32>(-1716f, 229f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x), 1282f)), u_input.e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(364f, var_0.x, var_0.x, -349f) * vec4<f32>(var_0.x, -1826f, 233f, -1000f))))))), Struct_2(-(~vec2<i32>(-2147483647i, 0i) << (_wgslsmith_div_vec2_u32(u_input.e, vec2<u32>(38131u, 1u)) % vec2<u32>(32u))), u_input.e.x >> (abs(u_input.a) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(549f, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, 252f))))), func_4(select(u_input.d.zz, reverseBits(vec2<u32>(35428u, 1u)), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 1106f, 372f, -1170f), vec4<f32>(var_0.x, var_0.x, 1276f, -156f), vec4<bool>(false, false, true, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(349f, var_0.x, var_0.x, var_0.x) * vec4<f32>(var_0.x, 845f, var_0.x, var_0.x)))).c, true)).c.b.x;
    var_0 = vec3<f32>(1000f, -464f, -294f);
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -702f)) * _wgslsmith_f_op_f32(-var_0.x)), -868f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))) * _wgslsmith_f_op_vec3_f32(func_1(~(~_wgslsmith_sub_u32(53845u, u_input.b.x)), true, u_input.e)));
    let var_2 = -1041f;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), select(vec3<i32>(u_input.c, u_input.c, -2147483647i), vec3<i32>(2147483647i, -22208i, u_input.c), vec3<bool>(true, false, true))), ~vec3<i32>(u_input.c, -2147483647i, 3054i) << (~vec3<u32>(15317u, 17438u, 4294967295u) % vec3<u32>(32u))) >> (u_input.b.yxz % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_6(Struct_3(vec4<bool>(true, false, false, false), func_5(Struct_3(vec4<bool>(false, true, false, false), Struct_1(var_1, u_input.d.yxx, vec2<f32>(var_2, var_0.x)), Struct_1(u_input.b.x, u_input.b.yyw, var_0.zx), var_0.xx), 53744u, vec4<f32>(var_0.x, -257f, var_2, 1420f), Struct_2(vec2<i32>(u_input.c, 0i), var_1, vec3<f32>(2067f, 846f, -480f), Struct_1(27996u, vec3<u32>(38230u, var_1, u_input.a), vec2<f32>(1290f, var_2)), true)).b, Struct_1(9838u, u_input.d.wwy, vec2<f32>(var_2, -429f)), _wgslsmith_f_op_vec2_f32(var_0.zx + vec2<f32>(var_0.x, 951f))))).x, -1000f, _wgslsmith_f_op_f32(-var_0.x)), ~firstLeadingBit(vec2<i32>(0i, -35160i)) >> ((~u_input.e ^ _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, 4294967295u), vec2<u32>(11554u, 37014u)), ~vec2<u32>(3137u, u_input.d.x))) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_sub_i32(abs(~u_input.c), ~u_input.c)));
}

