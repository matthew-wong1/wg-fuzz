struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> bool {
    var var_0 = ~vec4<i32>(arg_1.x, (~1i >> (abs(u_input.b) % 32u)) << (u_input.a % 32u), _wgslsmith_sub_i32(abs(-5867i), 1i), arg_1.x);
    var var_1 = u_input.a;
    var_1 = u_input.c.x;
    var_1 = firstLeadingBit(_wgslsmith_clamp_u32(42206u, ~firstTrailingBit(u_input.a), u_input.b));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-2387f, -205f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-488f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 1365f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -668f)))))));
    return !(!any(vec3<bool>(!arg_0, arg_0, !arg_0)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = 4294967295u;
    var var_1 = vec4<bool>(true, false, any(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), _wgslsmith_mod_i32(16178i, -14436i) >= ~u_input.e)), !any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, false))));
    var_1 = !vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0.x)), arg_0.x, !var_1.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(arg_0.x, 397f)), func_2((var_0 << (20857u % 32u)) > select(u_input.a, 1u, var_1.x), ~(-vec2<i32>(2147483647i, 27697i))), ((true && var_1.x) && true) | var_1.x, !any(!var_1.zx));
    var_1 = vec4<bool>(var_1.x, arg_0.x >= _wgslsmith_f_op_f32(-arg_0.x), false, any(vec2<bool>(true, !var_1.x)));
    var var_2 = Struct_2(vec4<bool>(any(vec2<bool>(!var_1.x, true)), false, var_1.x, var_1.x), ~vec4<u32>(~9928u << (abs(u_input.a) % 32u), arg_1.a << (~u_input.b % 32u), u_input.c.x, arg_2));
    return !var_1.x;
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -2246f) - _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(ceil(-518f))))))), -295f);
    var var_1 = arg_2.a.zxz;
    var_1 = select(arg_2.a.wyw, !(!arg_2.a.yzy), !vec3<bool>(!all(vec2<bool>(false, arg_2.a.x)), arg_2.b.x != select(arg_2.b.x, 4294967295u, false), true));
    var var_2 = vec2<bool>(true, true);
    let var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(~arg_2.b.zyx, _wgslsmith_mult_vec3_u32(vec3<u32>(max(arg_2.b.x, 51100u), _wgslsmith_sub_u32(arg_2.b.x, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, arg_2.b.x))), countOneBits(u_input.c.wyw))), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_2.b.yy, ~arg_2.b.zz), vec2<u32>(max(min(arg_2.b.x, 24860u), 29550u), abs(u_input.b))));
    return Struct_3(Struct_1(~(~u_input.c.x)), ~vec3<u32>(u_input.b, ~1u, ~abs(var_3.x)), -4997i);
}

fn func_1() -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(841f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f))))), firstLeadingBit(-(~vec3<i32>(1i, 15313i, 50501i))), Struct_2(vec4<bool>(true, func_2(true, -vec2<i32>(u_input.d, -2147483647i)), false, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-931f, -105f) - vec2<f32>(-724f, 1000f)), Struct_1(u_input.c.x), ~0u)), u_input.c));
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-255f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f + 1890f)))), countOneBits(vec3<i32>(u_input.d, _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, 2147483647i), var_0.c), ~9627i)), Struct_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, true))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), select(~u_input.c << ((u_input.c << (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(u_input.b | var_0.a.a, min(4294967295u, u_input.b), var_0.a.a ^ var_0.b.x, func_4(1000f, vec3<i32>(34934i, u_input.e, 1i), Struct_2(vec4<bool>(true, false, false, true), vec4<u32>(u_input.a, u_input.c.x, var_0.a.a, u_input.b))).b.x), true))).a;
    var var_2 = select(u_input.e, _wgslsmith_mod_i32(reverseBits(u_input.e), ~2147483647i), any(vec4<bool>(false, true, _wgslsmith_f_op_f32(trunc(-105f)) < 1373f, !select(false, true, true))));
    var var_3 = true;
    var_3 = false;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = ~firstTrailingBit(_wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(u_input.c.yxw, u_input.c.ywy), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, 4294967295u), u_input.c.yzz), true), countOneBits(vec3<u32>(u_input.a, 4294967295u, u_input.b) & u_input.c.wyy)));
    var_0 = all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), 3859u > u_input.a)));
    let var_2 = select(vec4<bool>(u_input.c.x <= func_1(), false, _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-54738i, 16376i, 0i, u_input.d), vec4<i32>(u_input.d, -2147483647i, u_input.e, 1i))) > 92278i, any(vec2<bool>(true, true))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, u_input.d != u_input.e, all(vec4<bool>(false, true, true, true))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false)), vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true), !(!any(vec3<bool>(true, true, false)))), true);
    var var_3 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1539f)) + _wgslsmith_f_op_f32(ceil(479f))))), _wgslsmith_f_op_f32(143f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1223f))))), -vec3<i32>(u_input.d, 1i, u_input.d ^ 9174i), Struct_2(select(select(!vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(true, true, false, true), !var_2), !select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), var_2, true), !select(true, var_2.x, var_2.x)), ~u_input.c)).a;
    let var_4 = Struct_2(vec4<bool>(all(var_2.wzz), true, !all(!var_2.xyx), true), ~(~(u_input.c | abs(u_input.c))));
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1000f - -808f), -1000f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-711f, 888f), vec2<f32>(-321f, -1098f), var_4.a.wz)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(241f, -2095f))))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-177f - -101f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(371f, -234f)) + _wgslsmith_f_op_f32(step(-396f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-573f, -1148f))))), !select(vec2<bool>(var_4.a.x, var_2.x), select(var_2.xw, vec2<bool>(var_4.a.x, var_4.a.x), vec2<bool>(var_2.x, var_4.a.x)), true))));
    var_3 = Struct_1(~(~(_wgslsmith_mod_u32(1u, var_4.b.x) >> (var_3.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<i32>(u_input.d, -24808i)) & vec2<i32>(-u_input.d, min(~2147483647i, reverseBits(-31643i))), _wgslsmith_add_vec4_u32(var_4.b, _wgslsmith_add_vec4_u32(var_4.b, vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_4.b.x, u_input.a, 80762u, var_4.b.x)), 48085u, ~21122u, var_4.b.x))));
}

