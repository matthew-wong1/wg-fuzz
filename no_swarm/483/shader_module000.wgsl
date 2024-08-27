struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<bool> {
    return arg_0;
}

fn func_2() -> Struct_1 {
    let var_0 = abs(firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(~u_input.c, countOneBits(84812i)), _wgslsmith_sub_i32(u_input.c ^ -2147483647i, abs(2147483647i)), -2718i, ~_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c))));
    let var_1 = var_0.yw;
    let var_2 = select(!vec4<bool>(!select(false, false, true), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false)), true, any(vec3<bool>(true, false, false))), select(select(vec4<bool>(true, true, true, true), func_3(vec4<bool>(true, true, true, true), Struct_1(14966i, vec4<bool>(true, true, false, true), u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.c), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), all(vec2<bool>(false, false))), vec4<bool>(any(vec3<bool>(true, true, false)), select(true, true, any(vec3<bool>(true, false, false))), all(vec3<bool>(true, false, false)), true), vec4<bool>(false, true, 1u > _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 65748u, u_input.d, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 101962u)), true)), vec4<bool>(!any(func_3(vec4<bool>(true, false, false, true), Struct_1(var_1.x, vec4<bool>(false, false, false, true), u_input.a, vec3<u32>(47250u, 0u, u_input.a.x), var_1.x), vec3<bool>(true, false, false)).xyw), all(vec3<bool>(select(true, false, true), true, true)), all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, select(true, true, true), true))));
    let var_3 = var_0.xzw;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(186f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-136f - 1000f), -690f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-642f, global1.x, global1.x, 1169f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(411f, 1779f, -1667f, -1474f) + vec4<f32>(459f, global1.x, 176f, 388f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.x, global1.x, global1.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global1.x, -1654f)), _wgslsmith_f_op_f32(-global1.x), 544f, global1.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 538f, 667f, global1.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-563f, global1.x, 337f, global1.x))), vec4<bool>(var_2.x, false, var_2.x, var_2.x))))));
    return Struct_1(abs(-u_input.c) << (u_input.d % 32u), vec4<bool>(any(!vec3<bool>(var_2.x, var_2.x, true)), !var_2.x, true, func_3(var_2, Struct_1(-var_0.x, select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2, var_2.x), u_input.a, min(vec3<u32>(1u, 38445u, u_input.a.x), u_input.a.xww), firstLeadingBit(1i)), vec3<bool>(var_2.x, !var_2.x, any(var_2))).x), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 23568u) & u_input.a.x), _wgslsmith_add_u32(~(~u_input.b.x), ~(~1u)), 43924u, 48336u), vec3<u32>(u_input.a.x, ~_wgslsmith_mod_u32(34426u, u_input.a.x) >> (u_input.b.x % 32u), 1u), countOneBits(var_0.x & _wgslsmith_add_i32(var_0.x, _wgslsmith_add_i32(12147i, 32896i))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-409f - _wgslsmith_f_op_f32(max(-330f, _wgslsmith_f_op_f32(-263f * global1.x)))), 493f, _wgslsmith_f_op_f32(-global1.x))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1291f, -2765f, -636f) - vec3<f32>(-1948f, 100f, global1.x)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(810f, global1.x, -1034f), vec3<f32>(var_0.x, -747f, var_0.x))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, 434f, -307f)))))));
    var var_1 = Struct_1(14578i, select(arg_1.b, arg_1.b, !arg_1.b), arg_1.c, vec3<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, arg_1.d.x, 61564u, 27908u), vec4<u32>(u_input.b.x, 6553u, arg_0, arg_0)) >> (arg_1.c.x % 32u)), u_input.a.x, u_input.a.x), arg_1.e);
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(arg_3, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.yz)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -261f)), _wgslsmith_f_op_f32(select(1000f, arg_3.x, var_2.d.x > 9671u)))), vec2<bool>(select(var_2.b.x, arg_2, var_1.b.x), true)));
    return any(select(!vec4<bool>(arg_1.b.x & var_2.b.x, arg_1.b.x, true, !var_2.b.x), vec4<bool>(~4294967295u >= ~arg_1.d.x, !(var_0.x <= var_3.x), !(!var_2.b.x), any(func_2().b)), select(vec4<bool>(!var_2.b.x, true, true, !arg_2), func_3(arg_1.b, Struct_1(var_1.e, var_2.b, vec4<u32>(24701u, arg_0, var_2.d.x, arg_0), var_1.c.zxw, var_2.a), arg_1.b.xzx), any(!arg_1.b))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mult_i32(u_input.c >> (~u_input.b.x % 32u), 1i) << (~(~16806u) % 32u), !select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, true), func_4(~47046u, func_2(), true, vec2<f32>(914f, global1.x))), _wgslsmith_div_vec4_u32(vec4<u32>(74999u, 31697u << (u_input.b.x % 32u), ~86444u, ~0u), ~(u_input.a | u_input.a)) ^ func_2().c, select(firstLeadingBit(~(~u_input.b)), vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 74734u), all(vec4<bool>(24580u <= u_input.a.x, all(vec2<bool>(true, true)), global1.x < -734f, true))), _wgslsmith_mult_i32(30932i, -11714i));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-881f, -1456f, global1.x))) + vec3<f32>(-1781f, global1.x, -1202f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1605f, 441f, 1583f) * vec3<f32>(global1.x, 1068f, global1.x))) * vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, global1.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, global1.x, 261f), vec3<f32>(-2185f, 623f, global1.x)))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2008f, 1193f, global1.x))))))));
    var var_1 = func_2();
    let var_2 = Struct_1(-21701i, vec4<bool>(var_1.b.x, var_0.b.x, any(func_2().b.wxx) && !var_0.b.x, any(func_3(var_0.b, var_0, vec3<bool>(var_1.b.x, false, var_0.b.x))) || true), _wgslsmith_div_vec4_u32(countOneBits(abs(vec4<u32>(17397u, var_0.d.x, 0u, var_0.c.x)) | ~vec4<u32>(0u, u_input.b.x, 1u, u_input.a.x)), countOneBits(select(~u_input.a, ~vec4<u32>(u_input.d, 1u, var_1.d.x, 1u), vec4<bool>(var_1.b.x, var_0.b.x, false, false)))), vec3<u32>(select(u_input.b.x, u_input.b.x, true), select(var_0.d.x, 0u, var_0.b.x), firstLeadingBit(min(_wgslsmith_clamp_u32(1u, var_0.d.x, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4514u, 1u, 1u), u_input.a)))), -1i);
    var var_3 = -vec4<i32>(_wgslsmith_mod_i32(-_wgslsmith_add_i32(51796i, var_2.a), ~(-u_input.c)), u_input.c, ~(var_1.a & var_0.a), countOneBits(-(0i | var_0.a)));
    return Struct_1(1i, func_2().b, min(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(max(var_1.c, var_1.c), u_input.a ^ vec4<u32>(1u, var_2.d.x, var_0.d.x, 82709u)), countOneBits(var_2.c) ^ vec4<u32>(var_0.d.x, 545u, 4294967295u, 0u)), ~countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d.x, 1u, var_0.d.x, u_input.a.x), var_0.c))), vec3<u32>(~_wgslsmith_dot_vec3_u32(reverseBits(var_2.d), u_input.b | var_1.c.yyx), ~(~_wgslsmith_div_u32(var_2.c.x, 1u)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~u_input.b.x, ~var_0.d.x), 1u, ~(4294967295u >> (0u % 32u)))), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x * global1.x), -1153f)), global1.x)), -1979f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.xx, global1.zy))))) + _wgslsmith_f_op_vec2_f32(-global1.zz)));
    var var_1 = func_1();
    var var_2 = Struct_1(u_input.c, vec4<bool>(var_1.b.x, false, all(func_3(!vec4<bool>(var_1.b.x, var_1.b.x, true, true), func_1(), !vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x))), any(!(!var_1.b))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(min(38668u, 0u), 46123u | var_1.d.x, var_1.d.x), var_1.d), ~4294967295u, ~abs(~52610u), ~4294967295u), var_1.d & vec3<u32>(~(~0u), 1u, reverseBits(var_1.d.x)), u_input.c);
    var_2 = func_2();
    var_1 = Struct_1(-(~(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 48944i, -1i, 1i), vec4<i32>(var_1.a, u_input.c, var_1.a, var_1.e)) << (~1u % 32u))), vec4<bool>(!((var_1.b.x && var_2.b.x) | all(vec4<bool>(true, var_2.b.x, false, true))), var_2.b.x, false, false), vec4<u32>(var_1.d.x, var_1.c.x, 1u, 12700u), ~select(var_2.d, ~vec3<u32>(0u, 6451u, 6847u), !(!var_1.b.x)), 13589i);
    var_2 = Struct_1(-(~max(var_1.e, var_1.e)), vec4<bool>(true, !func_4(var_1.d.x, Struct_1(-2147483647i, vec4<bool>(true, var_2.b.x, true, false), vec4<u32>(4294967295u, u_input.b.x, var_2.d.x, 1u), vec3<u32>(var_1.d.x, 68476u, 0u), var_1.e), all(var_2.b.wzz), _wgslsmith_f_op_vec2_f32(-global1.xx)), any(vec4<bool>(all(var_2.b), any(vec2<bool>(true, var_2.b.x)), !var_1.b.x, var_2.b.x)), !(1i <= (0i << (var_2.d.x % 32u)))), var_2.c, var_1.c.wyx, ~(~var_2.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * var_0.x) + _wgslsmith_f_op_f32(-global1.x)), -341f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -686f))))), _wgslsmith_f_op_f32(global1.x + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(845f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1655f * -565f) - _wgslsmith_f_op_f32(ceil(var_0.x))))), 32226u);
}

