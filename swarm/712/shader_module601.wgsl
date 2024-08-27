struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_2(select(u_input.d.yx, _wgslsmith_sub_vec2_i32(countOneBits(-u_input.d.wz), _wgslsmith_div_vec2_i32(u_input.d.xw, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, -1i), u_input.d.ww, vec2<i32>(-1i, 2147483647i)))), 0i >= u_input.d.x), true);
    var var_1 = select(!(!select(!vec3<bool>(var_0.b, var_0.b, arg_0), select(vec3<bool>(true, true, var_0.b), vec3<bool>(var_0.b, true, arg_0), vec3<bool>(var_0.b, false, true)), select(vec3<bool>(arg_0, false, var_0.b), vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(true, true, var_0.b)))), vec3<bool>(all(!(!vec4<bool>(var_0.b, arg_0, false, false))), var_0.b, all(select(vec3<bool>(true, true, false), vec3<bool>(var_0.b, false, var_0.b), var_0.b)) || !(arg_0 | var_0.b)), any(select(!vec2<bool>(arg_0, true), vec2<bool>(true, !var_0.b), true)));
    var var_2 = !(false | !arg_0);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1411f)), _wgslsmith_f_op_f32(f32(-1f) * -1145f)))))));
    return !(~(~(~15083i)) < max(2147483647i, _wgslsmith_dot_vec2_i32(u_input.d.yx, vec2<i32>(u_input.b, 2266i))));
}

fn func_2() -> bool {
    let var_0 = Struct_2(~_wgslsmith_mod_vec2_i32(u_input.d.zx, _wgslsmith_div_vec2_i32(u_input.d.yx, u_input.d.ww) ^ _wgslsmith_add_vec2_i32(u_input.d.xw, u_input.d.ww)), true);
    var var_1 = Struct_5(func_3(var_0.b), -291f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-192f, -488f, var_0.b)), -605f, -670f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(182f, -213f, -106f) - vec3<f32>(793f, -237f, -706f)))), vec3<f32>(-583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f)), 1494f))));
    var var_2 = Struct_4(_wgslsmith_mod_u32(u_input.a.x | firstLeadingBit(u_input.a.x), _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x | firstTrailingBit(u_input.a.x))), !func_3(_wgslsmith_f_op_f32(-var_1.c.x) > _wgslsmith_f_op_f32(891f * -615f)), vec3<i32>(~u_input.c, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-1i, var_0.a.x, 1i, 2147483647i)), ~vec4<i32>(2147483647i, 23805i, var_0.a.x, -10810i)), -u_input.c), select(vec4<bool>(false, !(var_1.b >= -192f), _wgslsmith_f_op_f32(trunc(-127f)) < -234f, true), !select(vec4<bool>(var_0.b, true, true, var_1.a), vec4<bool>(false, var_1.a, var_1.a, true), true != var_1.a), vec4<bool>(var_1.a, _wgslsmith_f_op_f32(var_1.b + 882f) == _wgslsmith_f_op_f32(floor(var_1.c.x)), var_1.a, any(select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_1.a), false)))));
    var_2 = Struct_4(var_2.a, _wgslsmith_mod_u32(14200u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), vec3<u32>(1u, 32020u, 76588u))) <= firstTrailingBit(13497u), select(reverseBits(_wgslsmith_mult_vec3_i32(var_2.c, u_input.d.wwz)), vec3<i32>(2147483647i, -2147483647i, firstLeadingBit(-37663i)), var_2.b) ^ ~(~select(var_2.c, vec3<i32>(-1i, -20517i, 1i), var_2.b)), !(!select(vec4<bool>(var_0.b, true, false, true), select(var_2.d, var_2.d, false), true)));
    var var_3 = ~reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.d, ~vec4<i32>(15379i, 0i, var_0.a.x, -43755i), u_input.d), _wgslsmith_add_vec4_i32(~vec4<i32>(var_2.c.x, var_2.c.x, var_2.c.x, 55523i), vec4<i32>(-1i, var_2.c.x, 0i, u_input.d.x))));
    return var_2.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<u32>) -> f32 {
    var var_0 = abs(~u_input.d);
    var var_1 = vec2<bool>(arg_0.a, !(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_3.x), u_input.a >> (vec2<u32>(53115u, u_input.a.x) % vec2<u32>(32u))) >= abs(1u)));
    var_0 = max(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(6203i, u_input.b), 1i, ~2147483647i, 0i), select(firstLeadingBit(vec4<i32>(arg_0.b, 2430i, 3689i, 1i)), -vec4<i32>(arg_0.b, 98198i, arg_0.b, var_0.x), true)), vec4<i32>(var_0.x, firstLeadingBit(1i), abs(var_0.x), arg_0.b) & ~vec4<i32>(var_0.x, u_input.b, 2147483647i, 12981i)) ^ countOneBits(-abs(max(u_input.d, u_input.d)));
    let var_2 = Struct_4(~firstLeadingBit(0u), arg_1.x, var_0.yxw, !select(arg_1, !vec4<bool>(true, true, var_1.x, arg_0.a), vec4<bool>(!var_1.x, true, true, true)));
    var_0 = -u_input.d;
    return 1038f;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec4<f32>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(select(arg_1 >= 1u, func_2(), true), u_input.b), vec4<bool>(all(vec2<bool>(true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, (729f == arg_0.x) == (155f < arg_2.x)), arg_1, _wgslsmith_mult_vec3_u32(min(vec3<u32>(4294967295u, 4294967295u, arg_1), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, arg_1, 2944u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), abs(~vec3<u32>(arg_1, u_input.a.x, 1u))))));
    var var_1 = vec4<bool>(!(_wgslsmith_f_op_f32(arg_2.x + arg_0.x) >= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-234f, -937f), 969f))), !func_3(select(true, true, all(vec4<bool>(true, true, false, false)))), func_3(min(36469i, -8710i) < _wgslsmith_clamp_i32(u_input.d.x, -1707i, 21876i)), true);
    var var_2 = arg_1;
    var_2 = ~8730u;
    let var_3 = vec4<bool>(((_wgslsmith_mod_u32(u_input.a.x, 1u) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_1, 56198u, 0u), vec4<u32>(arg_1, arg_1, 4013u, 4294967295u))) >= firstLeadingBit(0u)) && true, all(var_1.yxx), var_1.x | (_wgslsmith_f_op_f32(-arg_0.x) == 972f), _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, 2147483647i), _wgslsmith_clamp_i32(24909i, -2147483647i, _wgslsmith_mult_i32(2147483647i, u_input.b)), u_input.c & 1i) <= firstLeadingBit(_wgslsmith_div_i32(~1i, u_input.d.x << (arg_1 % 32u))));
    return Struct_5(true, 1006f, _wgslsmith_f_op_vec3_f32(vec3<f32>(1105f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_div_f32(arg_0.x, -891f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -1264f, _wgslsmith_f_op_f32(-arg_0.x)))));
}

fn func_5(arg_0: Struct_5, arg_1: vec4<f32>) -> Struct_4 {
    var var_0 = 1i;
    var_0 = ~(~_wgslsmith_dot_vec4_i32(-select(u_input.d, vec4<i32>(-2147483647i, u_input.c, 2147483647i, u_input.d.x), vec4<bool>(false, arg_0.a, false, false)), vec4<i32>(u_input.c >> (10669u % 32u), 1i, u_input.d.x | u_input.b, u_input.d.x)));
    var_0 = -u_input.c;
    let var_1 = func_3(!arg_0.a);
    let var_2 = vec3<u32>(1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x)), ~(vec4<u32>(29220u, 33935u, 26435u, 0u) << (vec4<u32>(0u, 79541u, u_input.a.x, 57009u) % vec4<u32>(32u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(21210u, u_input.a.x) ^ vec2<u32>(u_input.a.x, 7527u), _wgslsmith_clamp_vec2_u32(vec2<u32>(38231u, u_input.a.x), abs(vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a >> (u_input.a % vec2<u32>(32u))))) | ((_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 54944u, u_input.a.x), ~vec3<u32>(1u, u_input.a.x, 8814u)) >> ((~vec3<u32>(31812u, 50725u, u_input.a.x) ^ abs(vec3<u32>(6263u, 38697u, 0u))) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(u_input.a.x, 24332u, 49380u)), ~(~vec3<u32>(0u, u_input.a.x, u_input.a.x))) % vec3<u32>(32u)));
    return Struct_4(firstTrailingBit(_wgslsmith_div_u32(64599u, _wgslsmith_clamp_u32(var_2.x, 47625u, u_input.a.x & 0u))), var_1, -(u_input.d.yyz & select(vec3<i32>(u_input.d.x, -2147483647i, 1i), ~vec3<i32>(u_input.d.x, 0i, -2587i), arg_1.x <= -2292f)), !vec4<bool>(true, any(select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, false, arg_0.a), true)), !(u_input.a.x <= 1u), func_3(any(vec4<bool>(var_1, true, false, arg_0.a)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_4) -> vec3<f32> {
    let var_0 = vec4<i32>(arg_3.c.x, firstLeadingBit(arg_2.c.x), _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(u_input.d ^ u_input.d, vec4<i32>(0i, arg_0.b, -2147483647i, arg_2.c.x) >> (vec4<u32>(u_input.a.x, 1u, 3833u, arg_3.a) % vec4<u32>(32u))), -(arg_1.b & arg_2.c.x)), arg_3.c.x);
    let var_1 = Struct_2(_wgslsmith_add_vec2_i32(vec2<i32>(~arg_1.b, _wgslsmith_div_i32(1i, -2321i)) >> (_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(arg_3.a, 2130u)), _wgslsmith_clamp_vec2_u32(u_input.a, u_input.a, vec2<u32>(arg_3.a, 0u))) % vec2<u32>(32u)), ~_wgslsmith_div_vec2_i32(firstLeadingBit(arg_2.c.zy), arg_3.c.xz << (vec2<u32>(u_input.a.x, arg_2.a) % vec2<u32>(32u)))), false);
    var var_2 = Struct_5(~_wgslsmith_mod_i32(-21599i, i32(-1i) * -82155i) <= abs(-u_input.d.x), 1282f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-438f, _wgslsmith_f_op_f32(1000f * 1000f), -921f)))));
    let var_3 = -vec4<i32>(1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -29731i, u_input.c, 0i) << (vec4<u32>(4228u, 9553u, 75857u, arg_2.a) % vec4<u32>(32u)), countOneBits(vec4<i32>(2147483647i, -1i, u_input.b, arg_3.c.x))), -2147483647i, _wgslsmith_dot_vec3_i32(max(arg_2.c, countOneBits(vec3<i32>(var_0.x, 2147483647i, arg_1.b))), firstTrailingBit(vec3<i32>(2147483647i, arg_2.c.x, arg_2.c.x))));
    var_2 = Struct_5(arg_2.d.x, -905f, var_2.c);
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(var_2.c)))))), _wgslsmith_div_vec3_f32(var_2.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, var_2.b, var_2.b) - vec3<f32>(500f, var_2.b, var_2.c.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(false, 863f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(Struct_1(true, -2147483647i), Struct_1(any(vec2<bool>(true, false)), _wgslsmith_mult_i32(u_input.d.x, u_input.c)), func_5(func_1(vec2<f32>(1036f, -202f), 1u, vec4<f32>(-1000f, -1000f, 746f, -146f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(330f, -383f, -381f, -695f))), func_5(func_1(vec2<f32>(147f, 1776f), u_input.a.x, vec4<f32>(1000f, 1000f, -683f, 1031f)), vec4<f32>(2017f, -608f, -1723f, 1239f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(843f, 859f, -961f)) + vec3<f32>(-326f, -1000f, 378f)) * vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(-959f))))));
    var var_1 = _wgslsmith_f_op_f32(-func_1(var_0.c.xx, _wgslsmith_add_u32(u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)) ^ ~4294967295u, vec4<f32>(-1000f, -461f, _wgslsmith_f_op_f32(func_1(vec2<f32>(var_0.c.x, var_0.b), 58557u, vec4<f32>(-537f, 702f, var_0.c.x, 843f)).b + var_0.c.x), _wgslsmith_f_op_f32(-func_1(vec2<f32>(-2836f, 753f), 0u, vec4<f32>(var_0.b, 275f, -183f, -653f)).c.x))).b);
    var var_2 = !(!(!(var_0.a & var_0.a) | false));
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, 3030u), u_input.a.x)), u_input.a) << (u_input.a % vec2<u32>(32u));
    let var_4 = var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + -872f) * _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1049f)), 1634f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, var_0.b) - -1841f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(693f, var_0.c.x)) - _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1232f)))), var_0.c.x, 1u);
}

