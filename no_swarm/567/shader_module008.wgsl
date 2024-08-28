struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-510f, -467f, -1399f, -2177f) + vec4<f32>(-1160f, -1121f, 1088f, 1000f))), vec4<f32>(-213f, 1823f, _wgslsmith_f_op_f32(min(-1230f, 195f)), _wgslsmith_f_op_f32(sign(870f))), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false)))) * vec4<f32>(365f, -915f, 503f, 1f)));
    let var_1 = select(select(vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, false, true, -1i != u_input.c.x), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), true), vec4<bool>(true, any(vec2<bool>(true, false)), true, true), !select(true, true, true))), !select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, all(vec3<bool>(true, false, true)), true, true)), true);
    var var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(-1i << (u_input.a % 32u)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, u_input.b.x, 0i, 13668i), vec4<i32>(0i, -1i, u_input.c.x, u_input.c.x), false), _wgslsmith_sub_vec4_i32(vec4<i32>(13487i, 72419i, u_input.b.x, -1i), vec4<i32>(-20414i, u_input.b.x, u_input.c.x, u_input.c.x))), _wgslsmith_dot_vec3_i32(u_input.c, min(u_input.c, vec3<i32>(u_input.b.x, 63502i, 3107i)))), u_input.c), u_input.c);
    var_2 = vec3<i32>(0i, -11799i, -2147483647i);
    let var_3 = Struct_4(Struct_1(u_input.a), var_2.x, Struct_2(select(vec4<bool>(var_1.x && false, var_1.x, !var_1.x, !var_1.x), select(var_1, !var_1, select(var_1, var_1, true)), select(!var_1, select(var_1, vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(false, false, var_1.x, true)), !var_1.x)), all(!vec2<bool>(var_1.x, var_1.x))));
    return ~abs(var_3.a.a);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(427f, arg_1.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.e.x)), arg_2.e.x))));
    let var_1 = !vec3<bool>(true, all(vec4<bool>(true, true, true, true)), false);
    var var_2 = vec4<u32>(~arg_2.a.a, 1u, func_3(), _wgslsmith_div_u32(arg_1.d, 78961u) >> (0u % 32u));
    let var_3 = -_wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), u_input.b), arg_0);
    var var_4 = 84613u;
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<f32> {
    var var_0 = func_2(_wgslsmith_sub_i32(u_input.b.x, i32(-1i) * -(~u_input.c.x)), Struct_3(func_2(1228i, Struct_3(Struct_1(arg_0.a.a), Struct_1(arg_0.a.a), u_input.a ^ u_input.a, ~1u, _wgslsmith_f_op_vec2_f32(-arg_2.yy)), func_2(22513i, Struct_3(Struct_1(arg_0.a.a), Struct_1(4294967295u), arg_0.c, arg_0.d, arg_2.zz), Struct_3(Struct_1(u_input.a), arg_0.b, 40682u, 4294967295u, vec2<f32>(arg_2.x, arg_2.x)))).a, Struct_1(1u & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.a, arg_0.d), vec2<u32>(u_input.a, 32999u))), ~24316u, _wgslsmith_mod_u32(arg_0.b.a, _wgslsmith_sub_u32(0u, u_input.a)) >> (1u % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-449f, arg_0.e.x)), _wgslsmith_f_op_vec2_f32(ceil(arg_0.e)), !vec2<bool>(arg_1.a.x, arg_1.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2102f, arg_2.x))))), func_2(-_wgslsmith_sub_i32(u_input.c.x, ~u_input.c.x), Struct_3(Struct_1(min(92487u, u_input.a)), func_2(-u_input.b.x, Struct_3(Struct_1(35796u), Struct_1(1u), 42608u, arg_0.a.a, vec2<f32>(arg_2.x, arg_0.e.x)), arg_0).b, 30982u, ~1u, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), arg_2.x)), func_2(-_wgslsmith_add_i32(2147483647i, -7307i), func_2(_wgslsmith_clamp_i32(0i, u_input.b.x, u_input.b.x), Struct_3(Struct_1(79016u), Struct_1(u_input.a), 4294967295u, 1u, vec2<f32>(arg_2.x, arg_0.e.x)), arg_0), Struct_3(func_2(-20198i, Struct_3(Struct_1(arg_0.d), arg_0.b, 1u, 1u, arg_0.e), Struct_3(arg_0.a, Struct_1(34562u), 19058u, u_input.a, vec2<f32>(184f, arg_0.e.x))).a, arg_0.a, _wgslsmith_sub_u32(arg_0.a.a, 13336u), arg_0.a.a, _wgslsmith_div_vec2_f32(arg_0.e, arg_2.xy))))).b;
    let var_1 = Struct_4(arg_0.b, _wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(u_input.b.x, u_input.c.x)), arg_1);
    let var_2 = arg_0;
    var_0 = func_2(max(29861i, var_1.b), Struct_3(arg_0.a, var_2.a, select(_wgslsmith_add_u32(22247u, 41188u) | var_2.a.a, var_2.a.a & ~var_1.a.a, var_1.c.a.x), arg_0.b.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-698f, arg_2.x)) + vec2<f32>(var_2.e.x, arg_0.e.x)))), arg_0).b;
    var_0 = func_2(max(max(firstTrailingBit(var_1.b), _wgslsmith_mod_i32(1i, 1i)) & u_input.c.x, ~(~2147483647i)), Struct_3(var_1.a, func_2(1i | firstTrailingBit(0i), Struct_3(var_1.a, Struct_1(var_0.a), ~var_0.a, ~u_input.a, arg_0.e), func_2(abs(u_input.b.x), arg_0, Struct_3(arg_0.a, Struct_1(var_0.a), 100740u, u_input.a, arg_2.xx))).a, 17270u, 4294967295u | ~(~var_1.a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.e.x, arg_0.e.x), var_2.e))) + arg_0.e)), func_2(5986i, func_2(_wgslsmith_mod_i32(54735i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, -45731i, 2147483647i, 22418i), vec4<i32>(u_input.c.x, -2147483647i, var_1.b, u_input.c.x))), func_2(min(34328i, u_input.b.x), Struct_3(arg_0.b, Struct_1(var_1.a.a), 4894u, 1u, arg_2.wy), Struct_3(var_2.a, arg_0.b, var_1.a.a, 14115u, var_2.e)), func_2(~2147483647i, func_2(u_input.b.x, var_2, arg_0), var_2)), arg_0)).b;
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_2.wyx, vec3<f32>(arg_0.e.x, var_2.e.x, arg_2.x), vec3<bool>(false, arg_1.a.x, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.zzw + vec3<f32>(arg_0.e.x, var_2.e.x, -1279f)))), vec3<f32>(_wgslsmith_f_op_f32(max(-448f, _wgslsmith_f_op_f32(arg_2.x + -325f))), -1058f, 744f)), _wgslsmith_f_op_vec3_f32(arg_2.yyz + arg_2.yyw)));
}

fn func_5(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_clamp_vec2_i32(u_input.b, abs(u_input.c.zz), u_input.c.xz);
    var var_1 = Struct_2(select(select(vec4<bool>(true, 43174i < u_input.b.x, true, var_0.x > var_0.x), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), true), true), vec4<bool>(true, true, true, true), any(vec2<bool>(var_0.x <= var_0.x, false))), false);
    let var_2 = 1i;
    var_1 = Struct_2(vec4<bool>(all(vec3<bool>(var_1.b, true, var_1.b)) && ((var_0.x ^ var_0.x) >= -u_input.c.x), false, false, false), any(var_1.a) && true);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x)));
    return abs(_wgslsmith_add_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(10819u, u_input.a), vec2<u32>(0u, u_input.a)) ^ ~vec2<u32>(u_input.a, u_input.a)), max(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)), ~vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, 15052u) << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(12562u, 4294967295u)) % vec2<u32>(32u)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> StorageBuffer {
    let var_0 = vec3<i32>(-52582i, _wgslsmith_sub_i32(0i, ~(u_input.c.x >> (arg_1 % 32u))) | u_input.b.x, ~(i32(-1i) * -_wgslsmith_div_i32(u_input.b.x, u_input.c.x)));
    var var_1 = var_0.x;
    var var_2 = abs(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, 896f, -309f)) * _wgslsmith_f_op_vec3_f32(func_4(func_2(1i, Struct_3(Struct_1(arg_1), Struct_1(0u), arg_1, arg_1, vec2<f32>(-284f, 886f)), Struct_3(Struct_1(u_input.a), Struct_1(arg_1), u_input.a, arg_1, vec2<f32>(510f, -1477f))), Struct_2(vec4<bool>(true, arg_0.x, false, arg_2), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(440f, 1600f, -849f, 1467f)))))));
    let var_3 = vec2<u32>(~_wgslsmith_mod_u32((25667u & var_2.x) | 20490u, _wgslsmith_mult_u32(~arg_1, arg_1)), var_2.x);
    var_2 = var_3;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2172f, 1168f) + vec2<f32>(-397f, 2763f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1091f, -1226f), vec2<f32>(608f, 1088f), false))) + vec2<f32>(-700f, _wgslsmith_f_op_f32(abs(669f))))), ~(var_3.x ^ _wgslsmith_mod_u32(_wgslsmith_mod_u32(24003u, var_3.x), var_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)))), max(~u_input.b.x, -20082i) != -(u_input.c.x & -55598i), true, true), 1u, true);
}

