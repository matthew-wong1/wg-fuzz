struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_add_u32(27430u, abs(min(arg_1.x, u_input.b.x))) | u_input.b.x, !(-firstLeadingBit(u_input.a) <= abs(~u_input.a)), all(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), false), true), true)), firstLeadingBit(~(~(arg_1 & u_input.d.xw))), Struct_1(u_input.e, select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, true), vec2<bool>(true, false))), arg_2, vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))));
    let var_1 = select(!(!(!(!vec4<bool>(var_0.b, true, var_0.c, var_0.c)))), !select(select(vec4<bool>(var_0.e.e.x, var_0.b, var_0.e.e.x, var_0.e.b.x), !vec4<bool>(var_0.b, false, false, var_0.c), select(vec4<bool>(var_0.b, var_0.c, var_0.c, var_0.e.b.x), vec4<bool>(var_0.e.e.x, var_0.b, var_0.e.b.x, true), vec4<bool>(var_0.e.d.x, false, var_0.c, false))), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, var_0.c, true, var_0.b), true), !vec4<bool>(var_0.b, var_0.e.b.x, true, var_0.b), var_0.c), vec4<bool>(u_input.b.x < u_input.d.x, var_0.c, var_0.b, var_0.c == var_0.b)), !(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, var_0.e.d.x, false), vec4<bool>(var_0.c, var_0.b, true, var_0.b)), select(vec4<bool>(var_0.b, var_0.c, var_0.c, false), vec4<bool>(var_0.b, true, false, var_0.b), vec4<bool>(var_0.b, var_0.b, false, var_0.e.e.x)), vec4<bool>(var_0.c, var_0.b, false, false))));
    var var_2 = ~(~firstLeadingBit(vec4<i32>(arg_3.x, -22633i, u_input.e, -15846i)) | _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.a, u_input.c.x, -2147483647i, u_input.a)), vec4<i32>(-2147483647i, -2147483647i, -17366i, arg_3.x))) >> (abs(_wgslsmith_mod_vec4_u32(u_input.b, u_input.d)) % vec4<u32>(32u));
    var_2 = max(~(~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.e.a, u_input.c.x, -2147483647i, u_input.c.x), vec4<i32>(-34968i, -13945i, -12810i, var_0.e.a)), -vec4<i32>(-2147483647i, -63588i, u_input.a, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, 18544i, var_0.e.a, 11653i), vec4<i32>(6039i, u_input.a, arg_3.x, 40998i)))), _wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.e << (28689u % 32u), arg_3.x << (27019u % 32u), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, arg_3.x), vec2<i32>(arg_3.x, 15601i)))), firstTrailingBit(abs(vec4<i32>(var_0.e.a, u_input.c.x, -12226i, var_0.e.a))) | reverseBits(-vec4<i32>(81892i, -2147483647i, var_0.e.a, 1i))));
    var var_3 = Struct_2(var_0.d.x, any(select(var_1.yww, select(select(var_1.yyw, var_1.wyw, true), var_1.xzy, !vec3<bool>(true, var_0.b, var_0.c)), vec3<bool>(any(vec4<bool>(true, false, var_0.e.e.x, var_1.x)), var_1.x && false, true))), (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(652f)))) != 1324f) && (_wgslsmith_mod_u32(~8900u, abs(35967u)) <= u_input.b.x), _wgslsmith_add_vec2_u32(arg_1, _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.b.x, _wgslsmith_sub_u32(arg_1.x, arg_1.x)), ~arg_1 | _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(10083u, 1u)))), Struct_1(var_2.x, !vec2<bool>(select(true, false, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.c) + _wgslsmith_f_op_f32(min(-361f, arg_0)))), select(vec2<bool>(!var_0.e.e.x, arg_1.x >= 4294967295u), select(var_0.e.d, var_1.ww, !var_1.yw), vec2<bool>(all(var_0.e.e), var_0.d.x == u_input.d.x)), !var_1.yx));
    return ~(-arg_3.x) != var_2.x;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(-23170i, vec2<bool>(true, true), _wgslsmith_f_op_f32(-arg_0), !vec2<bool>(func_3(arg_0, vec2<u32>(1u, arg_1.x), arg_0, vec3<i32>(-2147483647i, -28886i, arg_3)) & all(vec4<bool>(true, false, false, false)), all(vec2<bool>(true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    var var_1 = Struct_1(~_wgslsmith_dot_vec4_i32((vec4<i32>(arg_3, -23959i, 9576i, u_input.c.x) >> (vec4<u32>(u_input.d.x, 1u, 74036u, u_input.b.x) % vec4<u32>(32u))) & -vec4<i32>(arg_3, u_input.e, 1i, -18840i), countOneBits(vec4<i32>(-1i, -1i, 1i, -2147483647i))), vec2<bool>(any(vec4<bool>(var_0.d.x, !var_0.d.x, arg_1.x == u_input.b.x, !var_0.e.x)), false), -256f, var_0.d, vec2<bool>(all(select(vec2<bool>(false, var_0.d.x), !vec2<bool>(var_0.e.x, true), vec2<bool>(var_0.b.x, true))), var_0.e.x));
    var_1 = Struct_1(37159i, select(select(var_1.d, !select(var_0.e, var_1.b, var_0.d), var_1.d), var_1.e, !var_0.b.x), -609f, var_1.d, vec2<bool>(all(vec2<bool>(false, !var_0.d.x)), arg_1.x >= 12034u));
    var_1 = Struct_1(_wgslsmith_mult_i32(-1i, var_1.a), vec2<bool>(false & var_0.d.x, !(-598f >= _wgslsmith_f_op_f32(ceil(-697f)))), -1009f, vec2<bool>(true, any(vec4<bool>(var_0.d.x, any(var_1.e), false, var_0.b.x))), !select(var_0.e, vec2<bool>(var_1.d.x, func_3(1459f, vec2<u32>(arg_2, arg_2), -445f, vec3<i32>(29275i, -1i, -2147483647i))), !vec2<bool>(var_1.b.x, var_0.e.x)));
    var_1 = Struct_1(1i, !vec2<bool>(!(var_0.b.x & true), ~u_input.b.x >= 66134u), var_0.c, var_1.e, !vec2<bool>(!var_0.b.x, -1152f <= _wgslsmith_f_op_f32(exp2(arg_0))));
    return Struct_1(-_wgslsmith_mod_i32(var_1.a & u_input.e, ~(-1i)), select(!vec2<bool>(var_1.e.x, func_3(var_0.c, vec2<u32>(45902u, arg_2), 1190f, u_input.c)), !vec2<bool>(1u > arg_2, true), (_wgslsmith_add_i32(arg_3, arg_3) == select(var_1.a, 0i, true)) && !var_1.e.x), 829f, var_1.e, vec2<bool>(false, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<u32>(abs(arg_1.x), _wgslsmith_add_u32(57648u, 1u)), _wgslsmith_f_op_f32(-928f * _wgslsmith_f_op_f32(-arg_0)), u_input.c)));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = -10140i;
    var var_1 = arg_1.e;
    let var_2 = abs(countOneBits(-u_input.e));
    var var_3 = vec2<bool>(!(_wgslsmith_dot_vec2_u32(arg_1.d, abs(u_input.d.zx)) >= arg_1.a), select(all(vec2<bool>(all(vec4<bool>(false, var_1.d.x, var_1.b.x, var_1.d.x)), select(arg_1.c, arg_1.e.b.x, false))), true, !((var_2 < 31990i) | (var_1.d.x != arg_1.c))));
    var var_4 = all(select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, arg_1.b), vec4<bool>(true, arg_1.c, true, false)), !vec4<bool>(arg_1.c, var_3.x, false, false), all(vec3<bool>(true, arg_1.b, var_3.x))), !vec4<bool>(false, false, var_1.b.x, false), select(select(vec4<bool>(var_1.e.x, var_3.x, true, true), vec4<bool>(false, var_1.b.x, var_3.x, var_3.x), vec4<bool>(var_3.x, true, var_3.x, false)), vec4<bool>(true, var_3.x, false, true), all(vec4<bool>(var_1.d.x, var_1.e.x, arg_1.b, var_3.x)))), vec4<bool>(!(false | arg_1.e.e.x), false, select(all(arg_1.e.e), true & var_3.x, arg_1.e.a > arg_1.e.a), var_1.d.x), select(vec4<bool>(any(vec3<bool>(false, arg_1.b, arg_1.c)), 27497u <= arg_1.d.x, 570f >= arg_0, all(vec4<bool>(var_3.x, arg_1.b, var_1.b.x, var_1.d.x))), vec4<bool>(false, true, false, true), !(!vec4<bool>(arg_1.c, var_3.x, var_1.b.x, var_1.b.x)))));
    return reverseBits(abs(~select(~vec2<u32>(arg_1.d.x, u_input.d.x), ~arg_1.d, !var_3.x)));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, firstLeadingBit(arg_0.d.x), min(abs(arg_0.a), 1621u), countOneBits(u_input.b.x)), reverseBits(u_input.d)), true, any(select(!(!vec4<bool>(true, true, true, arg_0.c)), select(select(vec4<bool>(true, arg_0.e.b.x, arg_0.b, arg_0.e.d.x), vec4<bool>(arg_0.e.b.x, arg_0.b, arg_0.c, true), arg_0.b), select(vec4<bool>(false, false, false, true), vec4<bool>(true, arg_0.e.d.x, false, false), vec4<bool>(true, false, false, arg_0.e.e.x)), vec4<bool>(false, false, arg_0.b, arg_0.e.d.x)), vec4<bool>(arg_0.b, true, arg_0.e.d.x & arg_0.c, true))), vec2<u32>(4294967295u, u_input.d.x), func_2(arg_0.e.c, u_input.d.zw, 1u, _wgslsmith_mult_i32(u_input.e, firstTrailingBit(2147483647i))));
    let var_1 = Struct_1(_wgslsmith_clamp_i32(u_input.a, ~var_0.e.a, _wgslsmith_sub_i32(~(-1i), ~u_input.c.x)) >> (1u % 32u), select(vec2<bool>(true, true), arg_0.e.b, (select(4294967295u, arg_0.d.x, arg_0.b) | ~1u) != _wgslsmith_dot_vec3_u32(~vec3<u32>(31881u, 4294967295u, var_0.d.x), ~vec3<u32>(u_input.d.x, var_0.a, arg_0.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.c))), arg_3)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), vec2<u32>(arg_0.d.x, select(10563u, var_0.a, false)) & func_4(_wgslsmith_f_op_f32(arg_2.x * arg_2.x), Struct_2(var_0.d.x, arg_0.b, true, vec2<u32>(var_0.d.x, 35546u), Struct_1(-5111i, var_0.e.e, 1408f, vec2<bool>(var_0.c, arg_0.c), arg_0.e.b))), max(var_0.a, ~50573u), max(~(~var_0.e.a), max(1i, _wgslsmith_add_i32(arg_0.e.a, -1i)))).d, vec2<bool>(arg_0.c, (all(vec2<bool>(false, arg_0.c)) | var_0.c) & var_0.b));
    var var_2 = firstLeadingBit(2147483647i >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_0.d.x, 34633u), _wgslsmith_mult_u32(1u, 4774u)) % 32u)) << ((_wgslsmith_div_u32(_wgslsmith_sub_u32(abs(84792u), 119469u & var_0.d.x), arg_0.d.x) << (arg_0.a % 32u)) % 32u);
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_2.yz)));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), arg_2.x), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.e.c), _wgslsmith_f_op_f32(max(arg_1, 1000f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.c, arg_1) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-265f, 132f), arg_2.wx))))));
    return func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, -1046f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-773f))))), vec2<u32>(_wgslsmith_mod_u32(arg_0.d.x, arg_0.d.x), var_0.d.x), _wgslsmith_dot_vec3_u32(u_input.d.zzz, u_input.b.wxx), select(abs(arg_0.e.a), func_2(var_1.c, u_input.b.wz, 55609u, arg_0.e.a | -1i).a, true) >> (var_0.a % 32u));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(-1664f));
    var var_1 = func_5(Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.b.x, 32387u) << (vec3<u32>(1u, 0u, 17725u) % vec3<u32>(32u)), min(u_input.b.wzw, u_input.b.yww)), (u_input.d.x & u_input.b.x) ^ _wgslsmith_clamp_u32(u_input.b.x, 10652u, u_input.d.x)), _wgslsmith_f_op_f32(sign(-103f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, 336f)) + arg_0), any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false)), func_4(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(arg_0 - arg_0)), Struct_2(~29871u, true, true, u_input.b.wz, func_2(arg_0, u_input.d.xy, 1u, 0i))), Struct_1(u_input.a, vec2<bool>(false, false), var_0, vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, false, true)), -2147483647i == u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1269f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, -299f)), -593f)) - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -2098f, var_0, -207f), vec4<f32>(-1247f, var_0, -494f, -1000f), vec4<bool>(false, false, false, false))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, arg_0, arg_0) - vec4<f32>(-1331f, -888f, 1471f, var_0)))))), 1f);
    var var_2 = Struct_2(~_wgslsmith_add_u32(abs(1u), _wgslsmith_div_u32(max(1u, 4026u), u_input.d.x)), func_5(Struct_2(_wgslsmith_mult_u32(u_input.b.x, u_input.d.x), true, false, ~vec2<u32>(71637u, 798u), func_2(1000f, vec2<u32>(4294967295u, 1u), 4294967295u, u_input.e)), var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1170f, arg_0, -1340f))), _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(f32(-1f) * -605f))).e.x | select(_wgslsmith_div_f32(var_1.c, var_1.c) <= _wgslsmith_f_op_f32(ceil(814f)), var_1.e.x, true | !var_1.e.x), true, vec2<u32>(_wgslsmith_div_u32(0u, u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d.x, u_input.d.x) & 39766u, ~max(u_input.b.x, 38759u))), Struct_1(_wgslsmith_div_i32(2147483647i, i32(-1i) * -1i) | firstLeadingBit(u_input.c.x), !var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1419f)) - _wgslsmith_f_op_f32(-func_2(var_1.c, u_input.d.wy, 37347u, var_1.a).c)), var_1.e, func_5(Struct_2(_wgslsmith_add_u32(4294967295u, u_input.d.x), !var_1.b.x, var_1.e.x, vec2<u32>(u_input.d.x, 1u), Struct_1(-16615i, var_1.d, var_1.c, var_1.d, vec2<bool>(var_1.e.x, var_1.e.x))), -757f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2712f, -131f, -364f, var_1.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, var_0, var_1.c, var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-837f)))).b));
    var var_3 = func_2(_wgslsmith_f_op_f32(select(-1377f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c))), !all(vec4<bool>(var_2.e.d.x, var_1.d.x, true, true)))), (~u_input.b.xw & abs(u_input.d.yy)) ^ vec2<u32>(var_2.a, 4294967295u), 1u, ~1i).a > ~u_input.e;
    var var_4 = var_1.a;
    return Struct_1(select(_wgslsmith_mod_i32(-2147483647i, reverseBits(u_input.e | 2399i)), ~0i, true), vec2<bool>(abs(u_input.d.x) >= _wgslsmith_add_u32(~var_2.a, ~u_input.d.x), var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1386f + 562f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0 + 420f))))), vec2<bool>(true, false), !(!vec2<bool>(any(vec3<bool>(var_1.b.x, false, false)), any(vec3<bool>(var_2.c, false, false)))));
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    var var_0 = arg_0.e;
    var var_1 = _wgslsmith_f_op_f32(floor(288f));
    let var_2 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, u_input.b.x, 1u, u_input.d.x), vec4<u32>(1u, 0u, ~42563u, 43695u)), ~108620u), ~(30627u ^ abs(~u_input.d.x)), 24498u, _wgslsmith_mod_u32(5763u << (1u % 32u), ~abs(~u_input.d.x)));
    var_1 = _wgslsmith_f_op_f32(-238f * func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -330f)), arg_0.c))).c);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c), 1852f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -767f) + 101f));
    return Struct_2(44244u >> (var_2.x % 32u), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b) <= _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d.x, u_input.b.x, var_2.x, var_2.x), vec4<u32>(var_2.x, 0u, var_2.x, var_2.x), vec4<bool>(false, true, arg_0.b.x, false)) << (var_2 % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(var_2.x, var_2.x, 38483u, 31134u)) << (~u_input.d % vec4<u32>(32u))), var_0.x, vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(1u), min(1u, ~0u)), 23837u), func_1(411f));
}

fn func_7(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = true;
    var var_1 = vec4<i32>(-1i) * -max(abs(vec4<i32>(arg_1, -3403i, 1i, 33004i) | vec4<i32>(0i, 0i, 0i, 2147483647i)), max(reverseBits(vec4<i32>(5019i, arg_1, 0i, 69398i)), reverseBits(vec4<i32>(2667i, 1i, 22682i, -2147483647i))));
    var var_2 = ~u_input.b;
    let var_3 = func_6(arg_0.e);
    var var_4 = false;
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -407f), _wgslsmith_f_op_f32(step(1050f, -1909f)))))));
    let var_1 = func_7(func_6(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))))), u_input.a & (u_input.e << (u_input.b.x % 32u)));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_0.x, func_5(Struct_2(136804u, true, var_1.b.x, u_input.d.ww, Struct_1(u_input.a, var_1.e, -1258f, vec2<bool>(var_1.b.x, false), var_1.b)), -994f, vec4<f32>(-286f, var_0.x, var_0.x, var_1.c), var_1.c).c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_div_f32(300f, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, -1261f) * vec2<f32>(1568f, -984f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(2211f, var_1.c)))))), true));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_1.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(129f, var_1.c) - vec2<f32>(var_1.c, var_1.c)))))));
    var var_2 = vec4<bool>(true, true, !(func_5(Struct_2(u_input.b.x, false, false, vec2<u32>(u_input.d.x, u_input.b.x), Struct_1(u_input.e, vec2<bool>(var_1.b.x, true), 360f, vec2<bool>(true, var_1.d.x), var_1.d)), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_div_vec4_f32(vec4<f32>(825f, var_1.c, 1000f, var_0.x), vec4<f32>(var_1.c, var_1.c, 1656f, -974f)), -815f).e.x & (var_0.x >= var_1.c)), var_1.b.x);
    let var_3 = firstTrailingBit(u_input.a);
    var var_4 = func_6(func_5(Struct_2(~60157u, false, true, ~(vec2<u32>(u_input.b.x, u_input.b.x) << (u_input.d.xy % vec2<u32>(32u))), Struct_1(firstTrailingBit(-1i), !var_1.d, _wgslsmith_f_op_f32(-var_1.c), select(var_2.zx, vec2<bool>(false, true), var_1.b), var_1.d)), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(453f, 518f, -202f, 750f)))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(740f)), var_0.x, _wgslsmith_f_op_f32(min(1173f, var_0.x)))), -668f));
    let var_5 = 2570f;
    var_0 = vec2<f32>(var_4.e.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1037f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(219f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_4.e.c + var_0.x), _wgslsmith_div_f32(178f, var_5), 3087f))), vec4<f32>(2020f, var_0.x, func_6(func_5(Struct_2(89124u, true, true, vec2<u32>(var_4.d.x, 83987u), Struct_1(var_1.a, vec2<bool>(var_2.x, true), var_4.e.c, vec2<bool>(var_2.x, false), var_2.wz)), _wgslsmith_div_f32(var_1.c, var_1.c), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.e.c, var_4.e.c, var_4.e.c, 1029f), vec4<f32>(var_4.e.c, -216f, var_1.c, -2284f), true)), -1000f)).e.c, -421f), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c), -2713f))), var_1.a);
}

