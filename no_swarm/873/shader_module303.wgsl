struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1855f))))), arg_1, Struct_1(~select(u_input.b.xw, vec2<i32>(u_input.b.x, u_input.b.x), arg_2.x) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, arg_1.a.x), arg_1.a), max(arg_1.a.x, arg_1.a.x)), arg_1.b));
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b.x, 24354i), u_input.b.x)), _wgslsmith_sub_i32(reverseBits(1i), var_0.c.a.x)), ~(~(~(-30471i))), min(_wgslsmith_dot_vec3_i32(-abs(u_input.b.zzy), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-18341i, arg_1.a.x, 2147483647i), u_input.b.xxz, vec3<i32>(0i, arg_1.a.x, var_0.c.a.x)), -u_input.b.yzw)), _wgslsmith_clamp_i32(u_input.b.x, -1065i, _wgslsmith_add_i32(u_input.b.x, -u_input.b.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(arg_0, 1577f)), _wgslsmith_f_op_f32(min(var_0.a.x, 363f))), vec2<f32>(_wgslsmith_f_op_f32(arg_0 * 700f), var_0.a.x))) + _wgslsmith_f_op_vec2_f32(round(var_0.a))), var_0.b, arg_1);
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(var_2.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(200f, arg_0), var_0.a, vec2<bool>(global1.x, arg_2.x))), !global1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(var_2.a.x, 1030f)) + vec2<f32>(-1000f, 1339f))))), Struct_1(vec2<i32>(~(-68178i), -3240i), ~var_2.c.b), Struct_1(u_input.b.yw, vec4<u32>(~_wgslsmith_add_u32(6267u, u_input.a.x), ~_wgslsmith_mult_u32(0u, 13078u), select(~8196u, arg_1.b.x, arg_2.x), arg_1.b.x)));
    var var_4 = true != all(vec3<bool>(abs(-1i) < _wgslsmith_clamp_i32(var_3.c.a.x, -6254i, 2147483647i), global1.x, false));
    return ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, ~0u, ~var_2.b.b.x), countOneBits(vec3<u32>(select(u_input.a.x, 0u, false), _wgslsmith_clamp_u32(var_3.b.b.x, 1u, 4657u), _wgslsmith_mult_u32(arg_1.b.x, arg_1.b.x))));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-362f, 1611f))), -311f))), Struct_1(countOneBits(min(vec2<i32>(u_input.b.x, -2147483647i), _wgslsmith_mult_vec2_i32(u_input.b.wz, vec2<i32>(u_input.b.x, -47649i)))), vec4<u32>(firstLeadingBit(56840u), select(u_input.a.x, 0u, true), func_3(189f, Struct_1(vec2<i32>(1i, u_input.b.x), vec4<u32>(u_input.a.x, u_input.a.x, 54117u, 1u)), vec3<bool>(global1.x, true, global1.x)), 8087u) << (~vec4<u32>(0u, 1u, u_input.a.x, 19629u) % vec4<u32>(32u))), Struct_1((vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, -1i)) >> (u_input.a.zz % vec2<u32>(32u)), select(vec4<u32>(1u, func_3(1000f, Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), vec4<u32>(0u, u_input.a.x, 545u, u_input.a.x)), vec3<bool>(true, global1.x, false)), _wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), select(vec4<u32>(54506u, 1u, 10709u, u_input.a.x), vec4<u32>(25852u, 4294967295u, u_input.a.x, 102230u) | vec4<u32>(0u, u_input.a.x, 54447u, 4294967295u), !vec4<bool>(global1.x, global1.x, false, true)), any(vec4<bool>(false, global1.x, false, global1.x)))));
    global1 = !vec2<bool>(true, true || global1.x);
    let var_1 = abs(73619u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)));
    global0 = false;
    return u_input.b.ywz;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(1928f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -298f), _wgslsmith_div_f32(1834f, 1070f)) * 1f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(421f * -103f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_f_op_f32(trunc(-882f)))))));
    var var_1 = arg_1;
    return all(vec2<bool>(any(select(!vec3<bool>(true, global1.x, false), !vec3<bool>(global1.x, global1.x, true), !vec3<bool>(true, global1.x, global1.x))), true));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool) -> bool {
    global0 = global1.x;
    var var_0 = vec4<u32>(arg_1.x, _wgslsmith_clamp_u32(u_input.a.x, ~(~_wgslsmith_add_u32(118599u, arg_1.x)), arg_1.x), 0u, max(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(~37890u, 37644u), 13377u)));
    var var_1 = vec3<bool>(func_4(arg_0 ^ _wgslsmith_add_vec3_i32(func_2(), -u_input.b.zyw), Struct_1(arg_0.xx, arg_1), ~u_input.b.zw, arg_0.x ^ 0i), false, true);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(251f, -226f, -1114f, -1000f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1666f, -407f, 1608f, -335f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 2326f, -1380f, 1256f), vec4<f32>(242f, 845f, -1000f, -891f), vec4<bool>(arg_2, global1.x, true, global1.x))))), global1.x)))));
    let var_3 = firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.a.zy, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(56761u, u_input.a.x, u_input.a.x), ~4294967295u), arg_1.zy)));
    return func_4(u_input.b.yzx, Struct_1(-max(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(2147483647i, arg_0.x)), ~(~vec4<u32>(10534u, 1u, 15645u, 1u) | firstTrailingBit(vec4<u32>(u_input.a.x, var_0.x, 29544u, var_0.x)))), _wgslsmith_mod_vec2_i32(~select(arg_0.zy, min(u_input.b.wx, vec2<i32>(u_input.b.x, 14327i)), select(var_1.yx, vec2<bool>(var_1.x, true), var_1.x)), -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(70904i, u_input.b.x, -2147483647i), vec3<i32>(0i, arg_0.x, u_input.b.x)), min(u_input.b.x, arg_0.x))), u_input.b.x ^ arg_0.x);
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(vec2<i32>(u_input.b.x, max(u_input.b.x << (_wgslsmith_div_u32(10278u, u_input.a.x) % 32u), _wgslsmith_dot_vec2_i32(func_2().xz, u_input.b.yz))), ~(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 95724u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 19104u, 5294u), vec4<u32>(1u, 32123u, 12967u, 4294967295u)), abs(vec4<u32>(54414u, 1u, u_input.a.x, u_input.a.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(690f, 1078f, 1173f), vec3<f32>(-728f, -1819f, -872f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b.x, -814f, -1600f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<f32>(arg_1.b.x, arg_1.b.x, 267f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.b.x, -2379f, 347f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-739f, arg_1.b.x, arg_1.b.x))))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.b, vec2<f32>(arg_1.b.x, 672f))) - arg_1.b)) * _wgslsmith_f_op_vec2_f32(-var_1.zy));
    let var_3 = all(vec4<bool>(any(select(vec2<bool>(false, true), !vec2<bool>(arg_1.a, arg_1.c), !arg_1.a)), true, false, false));
    var var_4 = select(!vec2<bool>(false, func_1(vec3<i32>(-27927i, u_input.b.x, u_input.b.x), abs(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 48558u)), true)), select(vec2<bool>(arg_0, true), vec2<bool>(all(!vec2<bool>(false, arg_0)), true), select(!select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), global1.x), !select(vec2<bool>(true, var_3), vec2<bool>(true, false), vec2<bool>(false, true)), true)), true);
    return Struct_2(arg_1.b, Struct_1(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b.x, var_0.a.x), firstLeadingBit(u_input.b.x)), 29980i), vec4<u32>(1u, u_input.a.x, 76904u, ~_wgslsmith_mult_u32(14571u, 55502u))), Struct_1(u_input.b.zz, vec4<u32>(abs(4294967295u), _wgslsmith_mod_u32(~21213u, _wgslsmith_add_u32(u_input.a.x, 56603u)), var_0.b.x, _wgslsmith_sub_u32(abs(u_input.a.x), _wgslsmith_dot_vec3_u32(var_0.b.ywx, vec3<u32>(u_input.a.x, 63699u, 0u))))));
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1255f)), _wgslsmith_f_op_f32(-arg_0.a.x)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -259f), arg_0.a.x, true == global1.x)))), _wgslsmith_div_f32(-1375f, arg_0.a.x)));
    var var_1 = func_5(all(select(arg_3, select(arg_3, arg_3, arg_3.x), func_4(max(vec3<i32>(arg_2, arg_0.b.a.x, arg_2), vec3<i32>(u_input.b.x, -60450i, 2147483647i)), Struct_1(vec2<i32>(arg_1, 2147483647i), arg_0.c.b), arg_0.c.a >> (vec2<u32>(u_input.a.x, 18728u) % vec2<u32>(32u)), firstLeadingBit(u_input.b.x)))), Struct_3(!select(any(vec4<bool>(true, false, global1.x, global1.x)), global1.x, false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, -1025f))), true));
    var var_2 = ~firstTrailingBit(arg_0.b.a.x >> (4294967295u % 32u)) != _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, arg_1), func_5(global1.x, Struct_3(global1.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -642f) + var_1.a), false)).c.a.x);
    global0 = global1.x;
    var var_3 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~arg_0.b.b, vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1u) & ~vec4<u32>(36151u, var_1.b.b.x, var_1.c.b.x, 305u)), var_1.c.b);
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    global1 = vec2<bool>(u_input.b.x >= 47420i, !any(select(select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, false), true), !vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x))));
    let var_1 = func_6(func_5(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a.xz % vec2<u32>(32u)), u_input.a.yz) <= abs(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), Struct_3(!global1.x & select(global1.x, global1.x, false), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(548f, -2432f), vec2<f32>(616f, 1301f)), vec2<f32>(184f, -449f))), func_1(abs(u_input.b.xxw), vec4<u32>(1102u, u_input.a.x, 0u, 0u), !global1.x))), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x) << (u_input.a.x % 32u), countOneBits(func_5(global1.x, Struct_3(u_input.a.x < 15757u, vec2<f32>(1756f, 1161f), func_4(vec3<i32>(-37724i, u_input.b.x, 0i), Struct_1(vec2<i32>(-1i, 24075i), vec4<u32>(22341u, u_input.a.x, u_input.a.x, u_input.a.x)), u_input.b.xx, u_input.b.x))).b.a.x), vec3<bool>(true, !(!global1.x) == false, false));
    var var_2 = ~(~func_5(true, Struct_3(u_input.a.x == u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-182f, -698f)), global1.x)).b.b.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) + 1737f), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1777f)), -1487f)))));
    var var_4 = !select(!select(select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), global1.x), !vec2<bool>(true, global1.x), !global1.x), !(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), vec2<bool>(true, false))), !vec2<bool>(select(false, true, global1.x), true));
    let var_5 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, -277f), vec2<f32>(var_3.x, 288f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-170f, -767f) * vec2<f32>(var_3.x, var_3.x))))), vec2<f32>(1f, var_3.x), true)), var_1, var_1);
    var var_6 = vec4<u32>(~_wgslsmith_mod_u32(u_input.a.x ^ 53787u, u_input.a.x), u_input.a.x, 0u, 4294967295u);
    let var_7 = Struct_3(var_5.a.x != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -562f), _wgslsmith_f_op_f32(max(var_5.a.x, var_5.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a.x)), -1000f), any(vec2<bool>(global1.x, var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, _wgslsmith_f_op_f32(1183f + -532f), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -165f) - var_7.b.x))), -1540f, _wgslsmith_f_op_f32(704f + var_7.b.x)));
}

