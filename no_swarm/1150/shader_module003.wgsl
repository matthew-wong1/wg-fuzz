struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(109f, 1651f)))), 1494f, 1f))));
    var var_1 = Struct_2(Struct_1(u_input.e), vec3<i32>(-1i) * -vec3<i32>(~u_input.b.x, 1i, 22148i), Struct_1(20562u), Struct_1(~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.c.x, 1u, 60500u), vec4<u32>(13613u, u_input.c.x, u_input.c.x, u_input.e)))), -14413i);
    var_1 = Struct_2(Struct_1(~u_input.c.x), vec3<i32>(var_1.e, 2147483647i, -1i), Struct_1(abs(max(firstTrailingBit(var_1.c.a), 1u))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.e, 0u, ~u_input.c.x, ~u_input.e), vec4<u32>(max(1u, var_1.a.a), u_input.c.x, var_1.a.a | var_1.d.a, _wgslsmith_dot_vec2_u32(u_input.c.zz, u_input.c.zy)))), 1i);
    var_1 = Struct_2(Struct_1(u_input.e), u_input.b.yww, Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, ~var_1.d.a), ~var_1.d.a)), Struct_1(select(36324u, firstLeadingBit(37666u), true) >> (min(u_input.e, 35788u << (u_input.e % 32u)) % 32u)), var_1.b.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1000f, 238f))))) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, -277f)) - _wgslsmith_f_op_f32(max(-1693f, -432f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x)))));
    return 20971u;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = arg_1;
    var var_1 = arg_1;
    var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, arg_1.x), arg_1), vec2<f32>(var_0.x, -267f))), false)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, var_1.x))), _wgslsmith_f_op_f32(var_1.x - arg_1.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(492f)))))))));
    let var_2 = ~select(~u_input.c << (firstLeadingBit(~vec3<u32>(arg_2.a.a, 4294967295u, u_input.c.x)) % vec3<u32>(32u)), u_input.c, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false))));
    return min(var_2, ~vec3<u32>(_wgslsmith_clamp_u32(35398u, arg_2.a.a, 15379u) >> (max(u_input.e, 29497u) % 32u), var_2.x, var_2.x));
}

fn func_2() -> vec4<u32> {
    var var_0 = func_4(Struct_2(Struct_1(select(56626u, 29589u, true)), ~_wgslsmith_div_vec3_i32(u_input.d.wyx, u_input.b.wyx), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.c.x), u_input.c.zz)), Struct_1(~u_input.e), u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1272f, 356f), vec2<f32>(-692f, 930f), vec2<bool>(true, false))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-408f, -204f)))) - vec2<f32>(_wgslsmith_f_op_f32(1126f + 1000f), -219f)), Struct_3(Struct_1(func_3()), vec4<i32>(_wgslsmith_mult_i32(35416i, 1i), max(-2147483647i, 35436i), u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.d.xzw, u_input.d.wxw)))) | ~select(vec3<u32>(~1u, 0u, 11628u), vec3<u32>(firstLeadingBit(u_input.e), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(0u, 4294967295u)), ~u_input.e), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), u_input.c.x == 4294967295u));
    var var_1 = Struct_2(Struct_1(func_4(Struct_2(Struct_1(u_input.c.x), u_input.d.wyx, Struct_1(4294967295u), Struct_1(var_0.x), _wgslsmith_add_i32(u_input.d.x, u_input.b.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2362f), -1000f), Struct_3(Struct_1(var_0.x), u_input.b & vec4<i32>(u_input.a, 2147483647i, 8494i, -1905i))).x), -_wgslsmith_mult_vec3_i32(select(~vec3<i32>(-2147483647i, u_input.a, u_input.b.x), vec3<i32>(1i, -40541i, u_input.d.x), vec3<bool>(true, true, true)), firstLeadingBit(min(u_input.b.zyz, u_input.b.zzz))), Struct_1(u_input.e), Struct_1(reverseBits(var_0.x)), -21246i);
    var_1 = Struct_2(var_1.a, firstTrailingBit(vec3<i32>(-1i) * -min(vec3<i32>(var_1.b.x, 2147483647i, u_input.b.x), vec3<i32>(-2895i, -25475i, 0i))), var_1.a, Struct_1(_wgslsmith_clamp_u32(86870u, var_0.x, 1u)), countOneBits(u_input.d.x << ((var_0.x ^ _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(41584u, 67461u, 37232u))) % 32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-466f * 258f))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(135f, -800f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1495f))), _wgslsmith_div_f32(-546f, _wgslsmith_f_op_f32(217f - -413f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1357f, -1000f, 952f, -1449f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(324f, 420f, -1928f, 561f)))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1411f), _wgslsmith_f_op_f32(max(-872f, 1000f)), 15654u >= var_0.x)), _wgslsmith_f_op_f32(abs(338f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1101f) - _wgslsmith_f_op_f32(sign(-195f))), -1292f)));
    var var_3 = true;
    return ~select(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(4294967295u, 0u, var_0.x, 4294967295u) | vec4<u32>(var_1.d.a, var_1.d.a, 4061u, 0u)), min(vec4<u32>(var_1.d.a, u_input.e, 30133u, 56319u), firstTrailingBit(vec4<u32>(var_1.c.a, 1u, var_1.a.a, 4294967295u)))), select(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(var_0.x, u_input.e, u_input.c.x, var_1.a.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_1.d.a, 79881u, 25656u), vec4<u32>(u_input.e, var_0.x, var_1.a.a, u_input.c.x)), vec4<u32>(u_input.e, 1u, var_1.d.a, 88235u)), vec4<u32>(u_input.c.x, abs(var_0.x), ~42388u, 1u), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
}

fn func_1() -> u32 {
    var var_0 = ~((~(~vec4<u32>(21308u, u_input.e, u_input.e, 18380u)) | func_2()) ^ (~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x) << (~firstLeadingBit(vec4<u32>(u_input.e, 49375u, u_input.e, 1u)) % vec4<u32>(32u))));
    return ~26162u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    let var_1 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true), vec4<bool>(17106i <= _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a, 2147483647i)), u_input.b.ww), any(vec4<bool>(true, true, true, true)), true, false), !(_wgslsmith_div_u32(~u_input.e, ~u_input.c.x) < _wgslsmith_div_u32(31345u, 36297u)));
    var_0 = min(76095u, ~func_1());
    var_0 = max(func_4(Struct_2(Struct_1(4294967295u), vec3<i32>(34761i, u_input.b.x, u_input.a), Struct_1(99353u), Struct_1(u_input.c.x), u_input.d.x & 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(630f, -276f) + vec2<f32>(870f, 1950f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(949f, 822f), vec2<f32>(-245f, 1000f)))), Struct_3(Struct_1(u_input.c.x), firstLeadingBit(vec4<i32>(u_input.d.x, 2147483647i, 2147483647i, u_input.a)))).x, func_3()) ^ (~(~u_input.e) & u_input.e);
    var var_2 = Struct_3(Struct_1(4294967295u), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, max(u_input.b.x, 8067i)), -u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.wyz);
}

