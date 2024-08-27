struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_2,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1000f)))))), abs(~(-vec4<i32>(u_input.c, u_input.c, u_input.c, 1i)) >> (~(~vec4<u32>(u_input.a, u_input.d, u_input.d, u_input.b)) % vec4<u32>(32u))), Struct_2(0u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-735f, -1000f, 827f, -704f), vec4<f32>(381f, 2173f, -791f, -1132f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(982f, -487f, 243f, 707f) - vec4<f32>(1000f, -188f, 880f, -977f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, 166f, -886f)), vec4<f32>(421f, 269f, -1519f, -481f), true)), _wgslsmith_clamp_u32(4294967295u, ~u_input.d, _wgslsmith_div_u32(u_input.b, 1u)), vec3<bool>(true, true, true)), -1197f, 1087i), 0i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(935f, 566f, 568f, 378f))), vec4<f32>(174f, 334f, 1208f, -539f))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(1402f - 539f), -1213f, 1f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1317f, 355f, 951f, -1777f)))))), 1u, vec3<bool>(true, true, true)));
    let var_1 = var_0.c;
    var var_2 = !select(select(select(!vec4<bool>(false, var_1.b.d.x, false, var_1.b.d.x), select(vec4<bool>(false, var_0.e.d.x, true, false), vec4<bool>(var_0.c.b.d.x, false, true, false), vec4<bool>(var_1.b.d.x, true, var_1.b.d.x, var_0.c.b.d.x)), all(vec4<bool>(true, var_1.b.d.x, true, false))), !(!vec4<bool>(var_1.b.d.x, false, var_1.b.d.x, var_0.c.b.d.x)), vec4<bool>(true, true & var_0.c.b.d.x, var_0.c.b.d.x & false, var_0.e.d.x)), vec4<bool>(var_0.c.d < ~var_0.d, false, var_0.e.d.x, !any(vec3<bool>(var_0.e.d.x, var_1.b.d.x, true))), vec4<bool>(!(!var_0.e.d.x), !var_1.b.d.x, !(!var_0.e.d.x), !(!var_1.b.d.x)));
    var_0 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-211f, _wgslsmith_div_f32(var_1.b.b.x, 514f), var_1.b.d.x && true)))))), _wgslsmith_mult_vec4_i32(max(-vec4<i32>(1i, var_0.c.d, var_1.d, 2147483647i), -var_0.b | (vec4<i32>(2147483647i, var_1.d, var_1.d, u_input.c) | var_0.b)), var_0.b), var_0.c, var_0.b.x, var_1.b);
    let var_3 = var_1.c;
    return !select(!select(select(vec4<bool>(true, true, var_0.e.d.x, var_2.x), vec4<bool>(var_1.b.d.x, var_1.b.d.x, var_0.c.b.d.x, false), false), vec4<bool>(false, true, var_2.x, true), select(vec4<bool>(true, var_2.x, var_0.c.b.d.x, true), vec4<bool>(false, true, false, true), true)), vec4<bool>(true, !(var_2.x || var_2.x), !(var_1.c > var_1.c), (var_1.a << (var_0.e.c % 32u)) == _wgslsmith_mult_u32(var_0.e.c, u_input.b)), select(select(select(vec4<bool>(true, false, var_1.b.d.x, true), vec4<bool>(var_1.b.d.x, false, false, var_1.b.d.x), var_1.b.d.x), vec4<bool>(true, false, false, false), true), select(!vec4<bool>(var_0.e.d.x, true, var_2.x, var_1.b.d.x), select(vec4<bool>(var_0.c.b.d.x, var_1.b.d.x, var_1.b.d.x, var_1.b.d.x), vec4<bool>(true, var_0.e.d.x, var_1.b.d.x, var_0.c.b.d.x), vec4<bool>(var_2.x, var_0.e.d.x, false, true)), vec4<bool>(var_0.c.b.d.x, var_1.b.d.x, var_2.x, var_0.e.d.x)), select(vec4<bool>(var_1.b.d.x, var_0.c.b.d.x, var_0.e.d.x, false), vec4<bool>(false, true, false, var_1.b.d.x), 1u >= var_1.a)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> vec2<u32> {
    var var_0 = abs(arg_0.d) >> (79361u % 32u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_1.e.b.yx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_1.c.c)))))));
    let var_2 = select(!select(!func_3(), !func_3(), func_3()), select(!vec4<bool>(arg_0.b.d.x, arg_1.c.b.d.x, true, arg_0.b.d.x), !(!vec4<bool>(arg_1.c.b.d.x, false, false, true)), arg_0.b.d.x), var_1.x > _wgslsmith_f_op_f32(f32(-1f) * -713f));
    var_0 = u_input.c;
    let var_3 = Struct_2(0u, Struct_1(_wgslsmith_div_vec4_f32(arg_0.b.a, arg_1.c.b.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-706f, arg_1.c.c, var_2.x)) - -1649f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.b.x) + _wgslsmith_f_op_f32(var_1.x * arg_0.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c - 236f) + _wgslsmith_div_f32(arg_1.c.c, var_1.x)), arg_0.b.b.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.b.c, arg_2, 1u, u_input.d), vec4<u32>(0u, u_input.d, ~1u, 22598u)), var_2.yzy), var_1.x, -2147483647i);
    return vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u << (u_input.d % 32u), 3328u, arg_1.c.a >> (arg_1.e.c % 32u)), max(~vec3<u32>(u_input.a, var_3.b.c, var_3.a), vec3<u32>(arg_2, var_3.b.c, var_3.a))) & _wgslsmith_add_u32(arg_2, 4294967295u), u_input.d);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_3) -> bool {
    let var_0 = abs(~_wgslsmith_clamp_vec2_u32(vec2<u32>(~7283u, 0u & arg_1), ~abs(vec2<u32>(u_input.a, u_input.d)), func_2(arg_2.c, Struct_3(arg_2.e.b.x, arg_2.b, Struct_2(arg_1, arg_2.c.b, arg_2.a, 1i), arg_0.x, arg_2.e), 1u) ^ vec2<u32>(4294967295u, 42117u)));
    return arg_2.e.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true, (select(u_input.a, 40660u, false) << (u_input.d % 32u)) == u_input.d, 0i != u_input.c);
    var var_1 = !vec4<bool>(true, !select(var_0.x, func_1(vec2<i32>(u_input.c, -5269i), u_input.d, Struct_3(-361f, vec4<i32>(16579i, -40032i, -12616i, u_input.c), Struct_2(u_input.d, Struct_1(vec4<f32>(617f, 322f, 262f, 581f), vec4<f32>(1000f, 923f, -1000f, 1367f), 81150u, var_0), 777f, -24271i), 66942i, Struct_1(vec4<f32>(276f, -1000f, -1649f, 1253f), vec4<f32>(-243f, 371f, 897f, -206f), 1u, var_0))), var_0.x), true, var_0.x);
    var var_2 = Struct_2(_wgslsmith_div_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(0u, u_input.d))), 20714u), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2625f * 111f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(-994f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-156f, -662f) - _wgslsmith_f_op_f32(f32(-1f) * -1434f)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(-883f)), _wgslsmith_f_op_f32(-809f * -209f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2836f, -1795f), _wgslsmith_f_op_f32(step(-105f, -1000f)))), -1092f), u_input.a, func_3().zyz), -1533f, abs(_wgslsmith_mod_i32(u_input.c, 0i) & -32201i));
    var_2 = Struct_2(_wgslsmith_div_u32(101670u, countOneBits(~u_input.a)), var_2.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1523f, _wgslsmith_f_op_f32(-var_2.b.b.x))), -106f)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c ^ 1i), abs(-vec3<i32>(3707i, 0i, u_input.c))), ~(-abs(vec3<i32>(var_2.d, -57974i, var_2.d)))));
    let var_3 = firstLeadingBit(reverseBits(~(~vec2<u32>(0u, 1u)) << (_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, 0u), vec2<u32>(1u, 1u)) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1680f * var_2.b.b.x), var_2.b.b.x, var_2.b.b.x), vec3<f32>(-858f, var_2.b.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1262f + var_2.b.a.x))))), firstTrailingBit(~(~(vec4<u32>(12822u, var_3.x, 6024u, var_3.x) & vec4<u32>(1u, u_input.d, var_3.x, 107479u)))), -122f);
}

