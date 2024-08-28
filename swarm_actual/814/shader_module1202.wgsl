struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = Struct_1(vec2<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(max(u_input.a.yzz, u_input.a.yxw), vec3<i32>(0i, 66024i, -1i)), _wgslsmith_dot_vec3_i32(u_input.a.wwy, ~u_input.a.xyy))), 35820i, arg_0.c);
    var var_1 = select(vec4<bool>(arg_2.x, arg_2.x, select(!(!arg_2.x), arg_2.x, !(!arg_2.x)), any(select(arg_2, arg_2, true))), select(select(select(select(vec4<bool>(false, false, arg_2.x, false), vec4<bool>(true, arg_2.x, arg_2.x, true), false), !vec4<bool>(true, arg_2.x, arg_2.x, false), select(vec4<bool>(true, arg_2.x, arg_2.x, true), vec4<bool>(true, false, arg_2.x, arg_2.x), arg_2.x)), select(!vec4<bool>(false, false, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), false), any(arg_2)), select(vec4<bool>(arg_2.x, true, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), !arg_2.x)), vec4<bool>(true, arg_2.x, _wgslsmith_f_op_f32(trunc(-138f)) == var_0.c.x, false), select(vec4<bool>(!arg_2.x, select(arg_2.x, true, arg_2.x), true, select(arg_2.x, true, arg_2.x)), select(vec4<bool>(true, false, false, true), vec4<bool>(arg_2.x, false, arg_2.x, true), var_0.c.x >= 400f), select(vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, false, false, false), select(vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), arg_2.x)))), vec4<bool>(all(vec3<bool>(true, false, u_input.b.x == 0u)), any(select(!vec3<bool>(true, arg_2.x, true), !vec3<bool>(true, false, arg_2.x), select(vec3<bool>(true, false, arg_2.x), vec3<bool>(true, false, false), arg_2.x))), ~reverseBits(48348u) <= arg_1.x, false));
    let var_2 = ~abs(u_input.c) | vec2<u32>(~_wgslsmith_clamp_u32(select(17822u, 12821u, false), ~4294967295u, abs(46377u)), firstLeadingBit(6472u));
    let var_3 = !(!vec2<bool>(!all(vec2<bool>(arg_2.x, arg_2.x)), !any(vec2<bool>(var_1.x, true))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.x, arg_0.c.x, -1272f, -1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, 912f, -765f, 1615f) - vec4<f32>(var_0.c.x, var_0.c.x, -838f, 741f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, arg_0.c.x, var_0.c.x, arg_0.c.x))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = 31714u;
    let var_1 = _wgslsmith_f_op_f32(519f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(-arg_1.a, 38478i, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.c.x, arg_1.c.x)))), vec4<u32>(countOneBits(var_0), var_0, u_input.c.x, _wgslsmith_add_u32(20322u, 36338u)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))).x));
    let var_2 = max(~(_wgslsmith_dot_vec2_i32(arg_1.a & arg_1.a, u_input.a.wz) << ((var_0 ^ 1u) % 32u)), u_input.a.x);
    let var_3 = arg_1;
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(select(-435f, -2081f, ~_wgslsmith_add_i32(_wgslsmith_mod_i32(var_3.b, -16492i), 62588i) >= -u_input.a.x));
}

fn func_5(arg_0: f32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_add_vec2_i32(countOneBits(-u_input.a.wz) ^ ~u_input.a.yw, _wgslsmith_clamp_vec2_i32(u_input.a.yy, ~u_input.a.zx, vec2<i32>(u_input.a.x, u_input.a.x)) >> (u_input.c % vec2<u32>(32u))), u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1679f, -1387f)) * vec2<f32>(arg_0, 405f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, arg_0)))))));
    var var_1 = var_0;
    var var_2 = u_input.b.x;
    var_2 = u_input.b.x;
    var var_3 = var_0;
    return vec3<f32>(-437f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c.x)) - arg_0) + 161f), arg_0);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = -1282f;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(arg_0, vec4<u32>(u_input.b.x, 1u, u_input.c.x, u_input.c.x), select(arg_3.xw, vec2<bool>(arg_3.x, false), vec2<bool>(arg_3.x, false)))), arg_0)))));
    let var_3 = u_input.b;
    let var_4 = true;
    return vec4<i32>(~(-2147483647i), -27339i, 9808i, -1520i);
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -u_input.a.www;
    var_0 = arg_0.zzz;
    var var_1 = Struct_1((vec2<i32>(-1i) * -vec2<i32>(arg_1.a.x, 0i)) << (u_input.b.zy % vec2<u32>(32u)), u_input.a.x, arg_1.c);
    let var_2 = _wgslsmith_f_op_f32(abs(1000f));
    var_1 = arg_1;
    return arg_1;
}

fn func_1() -> bool {
    var var_0 = abs(u_input.c.x);
    var var_1 = func_6(_wgslsmith_div_vec4_i32(-max(vec4<i32>(-2147483647i, u_input.a.x, 0i, 32072i), vec4<i32>(-5323i, u_input.a.x, -36212i, -2147483647i)), firstLeadingBit(func_2(Struct_1(vec2<i32>(1i, u_input.a.x), 7621i, vec2<f32>(-195f, 1095f)), Struct_1(u_input.a.wz, -2147483647i, vec2<f32>(-2186f, 291f)), Struct_1(vec2<i32>(u_input.a.x, 1i), u_input.a.x, vec2<f32>(796f, 1373f)), vec4<bool>(false, true, false, true)) & ~u_input.a)), Struct_1(-firstTrailingBit(-vec2<i32>(u_input.a.x, u_input.a.x)), u_input.d << ((_wgslsmith_mult_u32(u_input.c.x, 40485u) ^ (u_input.b.x >> (u_input.b.x % 32u))) % 32u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-275f + -574f) - _wgslsmith_f_op_f32(1530f + 705f)), 191f)));
    var_1 = Struct_1(~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, u_input.a.x) << (vec2<u32>(u_input.c.x, u_input.b.x) % vec2<u32>(32u)), ~var_1.a)), abs(-25452i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c * var_1.c)) + _wgslsmith_f_op_vec2_f32(var_1.c + _wgslsmith_f_op_vec2_f32(round(var_1.c)))) * _wgslsmith_f_op_vec2_f32(func_6(vec4<i32>(u_input.d, -45545i, -2147483647i, u_input.d), Struct_1(vec2<i32>(u_input.d, var_1.b), u_input.a.x, var_1.c)).c * _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(round(-185f)))).xz)));
    var_1 = func_6(~(~vec4<i32>(func_2(Struct_1(u_input.a.yz, -55941i, vec2<f32>(var_1.c.x, var_1.c.x)), Struct_1(var_1.a, var_1.a.x, var_1.c), Struct_1(u_input.a.xw, u_input.d, var_1.c), vec4<bool>(true, true, false, false)).x, ~var_1.b, _wgslsmith_div_i32(u_input.a.x, -10609i), 7994i)), func_6(vec4<i32>(var_1.b, -_wgslsmith_clamp_i32(u_input.d, var_1.a.x, u_input.d), var_1.a.x, ~_wgslsmith_mod_i32(u_input.a.x, -13360i)), Struct_1(vec2<i32>(~u_input.a.x, 1i), i32(-1i) * -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c * var_1.c)))));
    var_1 = Struct_1(max(u_input.a.xz, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-587i, var_1.b), var_1.a ^ vec2<i32>(0i, u_input.a.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(3095i, u_input.a.x), var_1.a) | -var_1.a)), u_input.d, vec2<f32>(-1409f, _wgslsmith_f_op_f32(trunc(-748f))));
    return false;
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~(i32(-1i) * -u_input.a.x), arg_1.a.x, -(-arg_1.a.x & arg_1.b), select(arg_1.b, -1i, _wgslsmith_f_op_f32(-arg_1.c.x) > _wgslsmith_f_op_f32(-arg_1.c.x))), vec4<i32>(2053i << ((var_0.x << (u_input.c.x % 32u)) % 32u), 0i ^ -(u_input.d & 25631i), ~arg_1.a.x, arg_1.a.x), ~(~(vec4<i32>(arg_1.b, 6279i, u_input.a.x, 26329i) & ~vec4<i32>(u_input.a.x, 1i, 11762i, arg_1.b))));
    var_1 = countOneBits(u_input.a);
    let var_2 = u_input.a;
    var var_3 = 4294967295u;
    return vec3<f32>(216f, _wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(sign(func_6(-u_input.a, func_6(u_input.a, Struct_1(vec2<i32>(4070i, 10091i), var_2.x, vec2<f32>(-1000f, -599f)))).c.x))), _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) + _wgslsmith_f_op_f32(abs(arg_1.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_7(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), func_1()), func_6(func_2(Struct_1(u_input.a.yx, 7030i, vec2<f32>(-1463f, -1088f)), Struct_1(vec2<i32>(u_input.a.x, 1370i), 8196i, vec2<f32>(1714f, 440f)), Struct_1(vec2<i32>(2147483647i, -2147483647i), u_input.a.x, vec2<f32>(-490f, -939f)), vec4<bool>(false, true, true, true)), func_6(u_input.a, Struct_1(vec2<i32>(1i, u_input.d), -5720i, vec2<f32>(-1666f, -605f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), -1107f, _wgslsmith_f_op_f32(f32(-1f) * -1907f)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, 892f, -375f) * vec3<f32>(-1201f, -408f, 1535f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, 1365f, 1075f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 877f, 737f), vec3<f32>(-1000f, -906f, 1074f))))));
    var var_1 = var_0.x;
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(1i, countOneBits(_wgslsmith_dot_vec2_i32(u_input.a.yz, u_input.a.xz))), -2147483647i), ~(~u_input.d), var_0.zz);
    var var_3 = reverseBits(_wgslsmith_add_i32(101716i, 0i));
    var var_4 = _wgslsmith_f_op_f32(1625f + _wgslsmith_f_op_f32(1637f * _wgslsmith_f_op_f32(var_2.c.x + -366f)));
    let var_5 = Struct_1(vec2<i32>(max(func_6(vec4<i32>(u_input.d, var_2.a.x, var_2.a.x, -9787i), func_6(vec4<i32>(0i, var_2.b, -2147483647i, -2147483647i), Struct_1(u_input.a.wy, var_2.a.x, vec2<f32>(var_2.c.x, var_0.x)))).b, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, u_input.a.x), u_input.a)), u_input.d), _wgslsmith_add_i32(var_2.b, -max(~var_2.b, reverseBits(u_input.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(471f, _wgslsmith_f_op_f32(trunc(-1299f)))));
    var var_6 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(115f, _wgslsmith_f_op_f32(ceil(691f)))))), -987f, -561f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_5.c.x)), 314f))));
    var var_7 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(293f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x * -308f)) - _wgslsmith_f_op_f32(trunc(var_6.x)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-var_5.a.x, ~2147483647i, _wgslsmith_mod_i32(60250i, 1i), _wgslsmith_clamp_i32(var_5.b, var_2.a.x, 60159i)) << (vec4<u32>(max(36486u, 4294967295u), ~1u, ~1u, 1u) % vec4<u32>(32u)), u_input.a, u_input.a), var_7.c.x, -u_input.a, _wgslsmith_f_op_vec2_f32(ceil(var_0.xx)));
}

