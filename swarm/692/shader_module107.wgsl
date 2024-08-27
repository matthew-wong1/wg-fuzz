struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 21079u, 0u, arg_1.d.c), firstTrailingBit(vec4<u32>(arg_1.d.c, arg_1.d.c, 3004u, arg_1.d.c)), vec4<u32>(_wgslsmith_sub_u32(28286u, 0u), arg_1.a.c, 1u, ~arg_1.a.c)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.c, 49147u, 0u, arg_1.d.c), vec4<u32>(arg_1.a.c, arg_1.d.c, 1u, 1u)), arg_1.a.c, reverseBits(arg_1.a.c)), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, arg_1.a.c, arg_1.a.c, arg_1.a.c)), vec4<u32>(arg_1.a.c, arg_1.a.c, arg_1.d.c, 15545u)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(arg_1.a.b.x * -1098f)))) + _wgslsmith_f_op_f32(-arg_1.c.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = -548f;
    var var_1 = Struct_2(Struct_1(~vec3<i32>(-17490i << (1u % 32u), -u_input.a.x, 1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(171f * -436f), _wgslsmith_f_op_f32(sign(1314f))) * vec2<f32>(508f, _wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_2(Struct_1(vec3<i32>(1i, 67812i, u_input.a.x), vec2<f32>(-281f, 892f), 17331u, vec4<bool>(true, true, false, true), -2147483647i), vec3<bool>(false, true, true), vec3<f32>(906f, 1343f, 668f), Struct_1(vec3<i32>(3519i, 302i, 2292i), vec2<f32>(340f, -188f), 4294967295u, vec4<bool>(true, false, true, false), -31034i)))))), 1u, vec4<bool>(all(vec4<bool>(false, true, true, false)), !select(true, false, false), true, false), u_input.a.x), !vec3<bool>(true, !any(vec3<bool>(true, false, true)), u_input.a.x > _wgslsmith_div_i32(-2158i, -2147483647i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-669f, -1276f, -1160f) * vec3<f32>(-396f, 660f, -1276f)), vec3<f32>(-498f, 1030f, 601f))))), Struct_1(_wgslsmith_div_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, 34467i))), u_input.a.xxz), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), 1u, vec4<bool>(u_input.a.x >= u_input.a.x, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), true || (u_input.a.x != u_input.a.x), all(vec2<bool>(true, true))), 21971i));
    var_1 = Struct_2(Struct_1(~vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.a.a, u_input.a.ywz), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_1.a.a.x), vec2<i32>(var_1.a.a.x, 11661i)), firstLeadingBit(u_input.a.x)), var_1.c.yx, var_1.d.c, !vec4<bool>(all(var_1.b), !var_1.a.d.x, var_1.a.d.x, false), -(i32(-1i) * -1i)), !vec3<bool>(var_1.a.d.x, false || select(var_1.b.x, false, false), !(!var_1.b.x)), _wgslsmith_f_op_vec3_f32(-var_1.c), Struct_1(~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -14861i, var_1.d.a.x), vec3<i32>(u_input.a.x, u_input.a.x, var_1.d.a.x), var_1.d.a)), var_1.c.xx, var_1.d.c, select(!vec4<bool>(var_1.a.d.x, false, var_1.b.x, var_1.a.d.x), vec4<bool>(any(var_1.d.d), false, true, any(vec2<bool>(true, var_1.d.d.x))), false), (i32(-1i) * -u_input.a.x) << (var_1.a.c % 32u)));
    let var_2 = _wgslsmith_f_op_f32(round(2017f));
    var var_3 = vec3<u32>(select(var_1.d.c, 0u, any(!vec3<bool>(var_1.d.d.x, var_1.b.x, var_1.d.d.x))), 0u, 1u);
    return var_1.a;
}

fn func_4(arg_0: Struct_3) -> vec3<i32> {
    let var_0 = -vec3<i32>(u_input.a.x ^ ~arg_0.e.x, arg_0.a.a.e, _wgslsmith_div_i32(1i, ~_wgslsmith_sub_i32(arg_0.a.d.e, arg_0.a.a.e)));
    var var_1 = arg_0.a.d;
    let var_2 = vec2<u32>(~firstLeadingBit(countOneBits(var_1.c)), ~_wgslsmith_add_u32(var_1.c, max(4294967295u, var_1.c))) & firstLeadingBit(firstTrailingBit(countOneBits(vec2<u32>(0u, 41737u))));
    let var_3 = Struct_2(arg_0.a.d, vec3<bool>(var_1.d.x, false, func_2().d.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-655f, var_1.b.x, arg_0.a.d.b.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2236f, 161f, var_1.b.x)))), arg_0.a.c, vec3<bool>(any(vec2<bool>(false, arg_0.a.d.d.x)), !arg_0.d.x, var_1.d.x)))), arg_0.a.a);
    var var_4 = -48541i;
    return arg_0.c;
}

fn func_1() -> Struct_1 {
    return Struct_1(func_4(Struct_3(Struct_2(func_2(), vec3<bool>(true, true, true), vec3<f32>(970f, 284f, 1448f), Struct_1(vec3<i32>(1i, -2147483647i, 1i), vec2<f32>(-201f, -1757f), 23326u, vec4<bool>(false, false, false, false), u_input.a.x)), 1056f, vec3<i32>(u_input.a.x, abs(1i), -u_input.a.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), vec2<i32>(0i, abs(u_input.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(160f, _wgslsmith_f_op_f32(807f * -779f))))), ~(49016u << (select(275u, 59706u, true) % 32u)), !vec4<bool>(func_2().d.x, true, true, true), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(func_1(), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), all(vec2<bool>(true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-703f, -1000f, -1000f), vec3<f32>(-1000f, -191f, 2362f)))), Struct_1(u_input.a.wzw, vec2<f32>(1270f, _wgslsmith_f_op_f32(select(-334f, -382f, true))), 1u, func_2().d, _wgslsmith_add_i32(~u_input.a.x, -u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(711f + 1075f) - 297f)) - -555f), u_input.a.xwz, func_1().d, firstTrailingBit(u_input.a.zx ^ reverseBits(~u_input.a.xw)));
    var_0 = Struct_3(Struct_2(func_2(), vec3<bool>(var_0.a.d.d.x, func_2().d.x, any(vec4<bool>(var_0.a.a.d.x, var_0.d.x, var_0.a.b.x, var_0.a.b.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.a.d.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.c.x, -669f))), _wgslsmith_f_op_f32(-1f)), Struct_1(select(vec3<i32>(-26540i, u_input.a.x, u_input.a.x), firstLeadingBit(vec3<i32>(35990i, u_input.a.x, -1i)), false), _wgslsmith_f_op_vec2_f32(round(var_0.a.d.b)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.a.d.c, 58266u), func_2().c, ~86182u), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.a.b.x, var_0.a.b.x, var_0.d.x), var_0.a.d.d), var_0.e.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(func_2().a.x, -1i), Struct_2(Struct_1(vec3<i32>(u_input.a.x, 1i, var_0.e.x) ^ vec3<i32>(u_input.a.x, -18785i, 0i), _wgslsmith_f_op_vec2_f32(vec2<f32>(547f, var_0.a.a.b.x) + var_0.a.a.b), ~var_0.a.d.c, !vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.d.x), ~u_input.a.x), func_2().d.wxx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1055f, var_0.a.d.b.x, -114f))), var_0.a.d))), select(u_input.a.zww, -select(vec3<i32>(1i, -20838i, u_input.a.x), -vec3<i32>(0i, u_input.a.x, 65093i), var_0.d.zxx), all(!func_1().d)), var_0.a.a.d, -var_0.a.a.a.xy);
    var_0 = Struct_3(Struct_2(Struct_1(u_input.a.yzy, var_0.a.c.xy, _wgslsmith_mult_u32(var_0.a.d.c, var_0.a.d.c), select(vec4<bool>(var_0.a.d.d.x, var_0.d.x, var_0.a.b.x, true), !var_0.a.d.d, var_0.d), ~u_input.a.x & ~u_input.a.x), var_0.d.ywy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_0.a.c, var_0.a.c, vec3<bool>(false, true, false)))))), func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1439f), -431f, !(var_0.a.d.c == var_0.a.d.c)))), _wgslsmith_mod_vec3_i32(-max(u_input.a.yxz, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.a.a.x, -2147483647i, 17840i), vec3<i32>(u_input.a.x, var_0.e.x, 74667i))) ^ var_0.a.a.a, select(!vec4<bool>(var_0.a.d.d.x & true, var_0.d.x && true, select(var_0.d.x, var_0.a.b.x, var_0.a.a.d.x), false), !var_0.d, var_0.a.d.d.x), ~var_0.c.xy);
    var_0 = Struct_3(Struct_2(func_2(), vec3<bool>(all(var_0.a.d.d.wyx), false, var_0.d.x), var_0.a.c, func_1()), _wgslsmith_f_op_f32(-681f + var_0.a.d.b.x), vec3<i32>(~1i, _wgslsmith_sub_i32(-func_4(Struct_3(var_0.a, var_0.a.c.x, u_input.a.xzx, var_0.d, vec2<i32>(2147483647i, var_0.e.x))).x, var_0.c.x & _wgslsmith_div_i32(u_input.a.x, -54280i)), var_0.a.a.a.x), !var_0.d, select(vec2<i32>(_wgslsmith_mod_i32(~2147483647i, u_input.a.x >> (4294967295u % 32u)), 39190i), vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, var_0.c.x, -13163i, 1603i), vec4<i32>(0i, u_input.a.x, u_input.a.x, 0i))), vec2<bool>(false, true)));
    var_0 = Struct_3(Struct_2(var_0.a.a, !var_0.d.zxy, var_0.a.c, func_2()), _wgslsmith_f_op_f32(func_3(func_1().a.x, var_0.a)), reverseBits(vec3<i32>(~2147483647i, -4064i, abs(-u_input.a.x))), !vec4<bool>(!(var_0.a.d.d.x & var_0.a.a.d.x), true || (-234f < var_0.a.a.b.x), var_0.d.x, all(var_0.d)), vec2<i32>(var_0.e.x, var_0.e.x));
    var_0 = Struct_3(var_0.a, 105f, _wgslsmith_mod_vec3_i32(var_0.a.d.a, _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(var_0.a.a.a.x, var_0.c.x, -2770i)) ^ select(vec3<i32>(31523i, -1i, var_0.c.x), vec3<i32>(36272i, var_0.e.x, -40211i), vec3<bool>(var_0.a.a.d.x, var_0.d.x, var_0.a.d.d.x)), var_0.c)), func_1().d, _wgslsmith_mod_vec2_i32(abs(abs(var_0.a.a.a.yx) ^ abs(u_input.a.wy)), ~var_0.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(func_1().b.x, _wgslsmith_f_op_f32(-1154f - -279f), var_0.a.c.x, -381f) * vec4<f32>(-614f, var_0.a.d.b.x, -1245f, -887f))), var_0.a.a.c, var_0.c);
}

