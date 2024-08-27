struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_5) -> f32 {
    var var_0 = true;
    var var_1 = Struct_3(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -28633i, abs(arg_0), select(35171i, arg_1.c.x, true)), vec4<i32>(arg_1.c.x | arg_0, arg_0 >> (u_input.a % 32u), i32(-1i) * -2147483647i, arg_1.c.x))), _wgslsmith_f_op_f32(sign(549f)), arg_1.a.a, vec3<f32>(_wgslsmith_f_op_f32(2285f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -962f), _wgslsmith_f_op_f32(floor(276f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-799f)), _wgslsmith_f_op_f32(1000f * -448f))) + _wgslsmith_f_op_f32(max(-2409f, -715f))), 1f));
    var_0 = true;
    let var_2 = false;
    let var_3 = min(_wgslsmith_sub_vec4_i32(select(arg_1.a.a, ~vec4<i32>(12528i, -2147483647i, -4464i, 2147483647i), vec4<bool>(arg_1.a.a.x == -30641i, var_2, false, all(vec4<bool>(var_2, var_2, true, false)))), vec4<i32>(arg_0, abs(min(22871i, 0i)), ~_wgslsmith_dot_vec4_i32(var_1.a.a, vec4<i32>(var_1.a.a.x, -1i, var_1.a.a.x, 1017i)), ~abs(arg_1.a.a.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, 2147483647i, var_1.a.a.x)), arg_1.a.a.wzy), -arg_0, select(-9645i, _wgslsmith_sub_i32(var_1.a.a.x, arg_0), true), _wgslsmith_dot_vec2_i32(abs(arg_1.c.xz), max(vec2<i32>(-4337i, 2192i), var_1.c.yx))) & vec4<i32>(0i, 0i, -arg_0, -(~arg_1.c.x)));
    return var_1.d.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(411f, arg_1, arg_1, arg_1))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(991f, 813f, arg_1, 1293f), vec4<f32>(arg_1, -1581f, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 1375f, -213f) * vec4<f32>(arg_1, arg_1, 125f, arg_1))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1376f, arg_1, arg_1) + vec4<f32>(-847f, arg_1, -2320f, 1084f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, 135f, -310f, -727f), vec4<f32>(arg_1, arg_1, arg_1, arg_1))))))), Struct_1(~_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(arg_2, -8664i, arg_2, -25785i)), -vec4<i32>(arg_2, arg_2, arg_2, 2147483647i))), Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, arg_2, arg_2, arg_2), max(vec4<i32>(-1i, arg_2, -2147483647i, 17483i), vec4<i32>(-2147483647i, 24430i, -16676i, -2147483647i)))), Struct_1(_wgslsmith_div_vec4_i32(-min(vec4<i32>(2147483647i, -1i, -2147483647i, 12702i), vec4<i32>(arg_2, arg_2, 0i, arg_2)), vec4<i32>(-58231i, min(54392i, -2147483647i), arg_2 & arg_2, 8486i))));
    var var_2 = vec2<bool>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 35519u) | vec3<u32>(9844u, u_input.a, u_input.a), abs(vec3<u32>(u_input.a, 44047u, u_input.a))) > 4294967295u, select(false, arg_0.x, false));
    let var_3 = !(!(!(false || arg_0.x) || true));
    var_2 = select(select(arg_0.zy, vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, select(var_2.x, var_3, var_3))), select(select(select(select(arg_0.xx, arg_0.yz, arg_0.xy), select(arg_0.xx, arg_0.xz, true), arg_0.zx), select(select(arg_0.zz, vec2<bool>(var_3, var_3), arg_0.zx), select(arg_0.zz, vec2<bool>(false, false), var_2.x), vec2<bool>(arg_0.x, true)), !vec2<bool>(var_3, var_2.x)), !(!select(vec2<bool>(false, true), vec2<bool>(arg_0.x, var_2.x), arg_0.zy)), var_3), true);
    return _wgslsmith_div_i32(var_1.b.a.x, ~(-1i));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_5(Struct_1(-(-vec4<i32>(33963i, 31151i, 19462i, 53516i) | firstTrailingBit(vec4<i32>(1i, -29633i, 1i, 0i)))), 73629u, vec3<i32>(24852i, -2147483647i, func_4(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(func_3(-1i << (u_input.a % 32u), Struct_5(Struct_1(vec4<i32>(-54365i, 22350i, -68767i, 2147483647i)), u_input.a, vec3<i32>(2152i, -2147483647i, 1i)))), 1i)));
    let var_1 = Struct_1(~_wgslsmith_mult_vec4_i32(~var_0.a.a, min(var_0.a.a ^ var_0.a.a, vec4<i32>(var_0.c.x, 2147483647i, var_0.a.a.x, var_0.c.x) ^ var_0.a.a)));
    let var_2 = Struct_3(Struct_1(select(vec4<i32>(-var_0.a.a.x, _wgslsmith_sub_i32(1i, 48989i), select(var_0.c.x, -1i, false), i32(-1i) * -35921i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, 2147483647i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.x, -841i, var_0.c.x, var_1.a.x), var_0.a.a)), vec4<bool>(true, true, any(vec3<bool>(true, true, false)), any(vec2<bool>(false, false))))), -313f, var_1.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-879f + -874f)), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1200f)), _wgslsmith_f_op_f32(f32(-1f) * -152f)))))));
    var var_3 = _wgslsmith_add_i32(-1i, _wgslsmith_mult_i32(-_wgslsmith_sub_i32(-1i, ~var_2.c.x), ~(var_0.a.a.x | _wgslsmith_sub_i32(var_2.c.x, var_0.c.x))));
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>) -> vec4<f32> {
    let var_0 = Struct_1(arg_0.a.a);
    var var_1 = -1000f;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-454f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(func_2().b, _wgslsmith_f_op_f32(-arg_0.d.x), any(vec2<bool>(arg_1.x, true)))), arg_0.b)), 1000f, 571f));
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.a.x, Struct_5(Struct_1(arg_0.c), _wgslsmith_sub_u32(8915u, u_input.a), arg_0.a.a.zyy))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * 697f)))));
    let var_3 = countOneBits(select(_wgslsmith_add_vec4_i32(abs(~vec4<i32>(var_0.a.x, 4283i, -38434i, -23794i)), firstTrailingBit(_wgslsmith_add_vec4_i32(var_0.a, var_0.a))), arg_0.c, !select(!vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), !vec4<bool>(false, true, arg_1.x, true), vec4<bool>(false, true, arg_1.x, true))));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-589f - _wgslsmith_f_op_f32(-var_2.x)) - var_2.x), func_2().b, arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, -137f) - _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_2), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b + 129f)), func_2().b, 273f), arg_1.x)), vec4<bool>(true, true, !(!any(vec2<bool>(arg_1.x, arg_1.x))), !all(!vec4<bool>(false, arg_1.x, false, true)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec3_i32(arg_1.a.xzz, _wgslsmith_add_vec3_i32(-func_2().c.zwz, arg_1.a.zxy >> (~(vec3<u32>(1u, 4294967295u, u_input.a) << (vec3<u32>(0u, u_input.a, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = Struct_5(arg_1, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(3624u, u_input.a, 27068u, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)) & (~u_input.a >> (min(30887u, u_input.a) % 32u)), _wgslsmith_dot_vec2_u32(min(abs(vec2<u32>(u_input.a, 4294967295u)), firstLeadingBit(vec2<u32>(52839u, u_input.a))), ~(~vec2<u32>(u_input.a, 1u)))), ~arg_1.a.yxy);
    var var_2 = firstLeadingBit((var_0 << (~u_input.a % 32u)) << (firstTrailingBit(~var_1.b) % 32u)) & var_0;
    return vec4<bool>(true, true, true, !(!all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), true))));
}

fn func_1() -> i32 {
    var var_0 = select(vec4<bool>(all(vec3<bool>(true, true, true)), true, false, 4214i <= (-2147483647i << (_wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u) % 32u))), func_6(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_5(func_2(), vec2<bool>(false, false))))), func_2().a), true);
    var_0 = vec4<bool>((~(~u_input.a) | firstLeadingBit(~u_input.a)) != 0u, true, !var_0.x, !(!var_0.x));
    var_0 = !vec4<bool>(all(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-490f, 693f, 1000f, -837f)), func_2().a).zw), var_0.x, var_0.x && var_0.x, true);
    var_0 = func_6(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(459f, 1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-455f - -864f), _wgslsmith_f_op_f32(1505f - 352f))), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-254f, _wgslsmith_f_op_f32(trunc(723f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-171f, -241f)))), 1788f, func_2().b), func_2().a);
    var var_1 = -1073f;
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-9267i, 1i);
    var var_1 = 1876f;
    var_0 = -(~vec2<i32>(max(var_0.x, 39507i), _wgslsmith_mult_i32(-23697i << (1u % 32u), _wgslsmith_div_i32(-65467i, var_0.x))));
    let var_2 = 23887u;
    var_0 = vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(var_0.x, var_0.x), _wgslsmith_mod_i32(var_0.x, 16706i), var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-19643i, -56913i, 54274i, var_0.x), vec4<i32>(var_0.x, 2147483647i, var_0.x, 49072i))), vec4<i32>(func_1(), -select(var_0.x, var_0.x, true), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_add_i32(-2147483647i, var_0.x)), select(func_4(vec3<bool>(true, true, true), 1210f, var_0.x), -var_0.x, true))), _wgslsmith_sub_i32(-firstLeadingBit(2147483647i), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-979f, -508f)))))), var_2);
}

