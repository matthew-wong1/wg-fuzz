struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = vec3<u32>(firstTrailingBit(59043u), _wgslsmith_clamp_u32(select(firstTrailingBit(8625u), firstLeadingBit(~u_input.a.x), arg_0), _wgslsmith_dot_vec4_u32(~vec4<u32>(39684u, u_input.a.x, 1u, 4522u), u_input.a), _wgslsmith_add_u32(0u, u_input.a.x)), firstLeadingBit(~4294967295u));
    var var_1 = !(!vec4<bool>(true, arg_0, arg_0 | any(vec4<bool>(arg_0, false, false, true)), !arg_0));
    var var_2 = ~(~_wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -39478i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), -vec3<i32>(-11075i, 13216i, 43663i)));
    var_2 = vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(~u_input.c.x, u_input.c.x | 34757i), ~_wgslsmith_mult_i32(-17873i, _wgslsmith_div_i32(1i, u_input.c.x))), ~1i);
    var_0 = u_input.a.yyy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))) * -2364f);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-674f + -430f) + _wgslsmith_div_f32(1901f, -1389f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true)) + _wgslsmith_f_op_f32(trunc(438f)))) - _wgslsmith_f_op_f32(-454f - _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1613f, 2701f) + _wgslsmith_f_op_f32(873f * _wgslsmith_f_op_f32(trunc(-630f))))));
    var var_1 = firstLeadingBit(1u);
    var_1 = ~1u;
    var var_2 = 34439i;
    var var_3 = all(select(vec4<bool>(u_input.b != u_input.a.x, true, false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)))), vec4<bool>(all(vec4<bool>(true, true, true, true)) & true, true, any(vec2<bool>(true, true)), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    return Struct_1(!any(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !vec2<bool>(all(vec3<bool>(true, true, true)), -33021i >= u_input.c.x), u_input.a.yyw, vec4<u32>(~(~_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, 1u))), 37496u, reverseBits(~1u), 1u));
}

fn func_1() -> f32 {
    var var_0 = func_2();
    var var_1 = true;
    let var_2 = Struct_1(var_0.a, !select(!func_2().b, select(vec2<bool>(false, var_0.a), vec2<bool>(true, true), var_0.b), vec2<bool>(var_0.b.x, u_input.a.x > u_input.b)), u_input.a.wzy, vec4<u32>(var_0.c.x, u_input.a.x, min(var_0.d.x, ~u_input.a.x), min(func_2().c.x, var_0.c.x)));
    let var_3 = Struct_1(!var_0.a, select(!func_2().b, var_0.b, !vec2<bool>(select(var_0.a, false, var_0.a), false)), vec3<u32>(var_0.c.x, 17540u << ((_wgslsmith_sub_u32(var_0.c.x, var_0.d.x) & firstTrailingBit(var_0.d.x)) % 32u), u_input.b), _wgslsmith_mult_vec4_u32(select(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.c.xz, vec2<u32>(u_input.b, var_2.c.x)), 72406u, 1u, 30404u), ~vec4<u32>(4294967295u, var_0.d.x, var_2.c.x, var_2.d.x), ~var_2.d.x <= 11649u), vec4<u32>(_wgslsmith_mod_u32(~0u, _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)), _wgslsmith_div_u32(u_input.b, u_input.a.x), abs(var_2.c.x >> (u_input.b % 32u)), reverseBits(var_2.c.x) & (var_2.c.x & var_2.c.x))));
    var_0 = Struct_1(!all(!select(vec4<bool>(false, var_0.b.x, true, true), vec4<bool>(true, var_3.b.x, var_0.b.x, false), vec4<bool>(var_3.a, true, var_2.b.x, true))), select(vec2<bool>(!var_0.a, true | all(var_0.b)), func_2().b, var_3.b), abs(firstTrailingBit(min(var_3.d.xzy, vec3<u32>(1u, 0u, var_2.d.x)))) & ~countOneBits(~var_0.c), firstTrailingBit(func_2().d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(31474u <= (var_0.d.x >> (4294967295u % 32u)))) * _wgslsmith_f_op_f32(-1f)));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = -_wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, -19077i, arg_1.x, 1i) | arg_1, arg_1));
    var var_1 = ~(~reverseBits(vec4<u32>(_wgslsmith_mult_u32(u_input.b, arg_3.c.x), _wgslsmith_add_u32(0u, arg_3.d.x), 7498u, 4294967295u)));
    var_0 = u_input.c.x;
    let var_2 = func_2();
    var_1 = arg_2.d;
    return ~reverseBits(_wgslsmith_mod_i32(1i, firstTrailingBit(2147483647i) | abs(2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(func_1()), ~abs(vec4<i32>(~u_input.c.x, 2147483647i, firstLeadingBit(u_input.c.x), max(1i, u_input.c.x))), Struct_1(true & !any(vec2<bool>(true, true)), !func_2().b, ~vec3<u32>(4294967295u, u_input.a.x, ~u_input.a.x), u_input.a), func_2());
    let var_1 = !(!all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))));
    let var_2 = vec2<bool>(!all(select(select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, true)), func_2().b, vec2<bool>(false, true))), all(select(!(!vec3<bool>(false, false, var_1)), vec3<bool>(u_input.a.x == 40057u, false, true), !var_1)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1132f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(842f, -704f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1381f)) + -899f), _wgslsmith_f_op_f32(f32(-1f) * -1687f)), true)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_4 = Struct_1(!all(func_2().b), func_2().b, ~_wgslsmith_add_vec3_u32(~abs(u_input.a.xzz), vec3<u32>(0u, 26040u, 1u) ^ u_input.a.yxw), vec4<u32>(~u_input.a.x, ~(~u_input.a.x), 57930u, _wgslsmith_mod_u32(_wgslsmith_div_u32(46897u, u_input.b), 49651u) << (_wgslsmith_div_u32(abs(73306u), ~u_input.a.x) % 32u)));
    var_4 = Struct_1(!var_2.x, var_4.b, ~vec3<u32>(4294967295u, var_4.d.x, _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 74329u, var_4.c.x, 47162u), u_input.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(abs(_wgslsmith_add_u32(var_4.c.x, 4294967295u)), ~(~1u), _wgslsmith_dot_vec2_u32(~u_input.a.wx, var_4.c.xy), _wgslsmith_clamp_u32(~u_input.a.x, max(u_input.b, 16683u), firstLeadingBit(var_4.d.x))), vec4<u32>(~(~4294967295u), ~(var_4.c.x << (1u % 32u)), var_4.c.x, 0u)));
    var var_5 = 34800i;
    let var_6 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(u_input.c, u_input.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(-var_3), var_3) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(438f + var_3) * var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1191f)), var_3)), vec2<u32>(u_input.b, 1u));
}

