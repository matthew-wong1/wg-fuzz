struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: Struct_3,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<bool> {
    let var_0 = max(vec3<u32>(0u, ~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 1u)), ((countOneBits(u_input.b.zxw) << (arg_3 % vec3<u32>(32u))) >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, arg_3.x, arg_3.x)) & vec3<u32>(arg_3.x, 0u, arg_3.x)) % vec3<u32>(32u))) ^ vec3<u32>(~reverseBits(u_input.b.x), 55383u, _wgslsmith_mod_u32(0u, select(u_input.b.x, arg_3.x, arg_1.b.x))));
    var var_1 = ~1u;
    let var_2 = ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(arg_3.x, 45100u), ~0u, ~_wgslsmith_mod_u32(u_input.b.x, ~1u));
    var var_3 = Struct_4(vec2<u32>(u_input.b.x, _wgslsmith_add_u32(1u, 50456u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(432f, _wgslsmith_f_op_f32(sign(arg_2.d)))))), Struct_3(arg_2.a.x, -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_2.c, 3276i), arg_1.a), 1i, ~arg_1.a.x, select(u_input.a, arg_1.a.x, arg_1.b.x)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~u_input.b, u_input.b, u_input.b), ~u_input.b), select(arg_2.a.ww, !arg_1.b.zw, true)), !select(!select(vec3<bool>(arg_1.b.x, false, arg_2.a.x), vec3<bool>(true, false, arg_1.b.x), vec3<bool>(arg_2.a.x, true, arg_2.a.x)), select(!vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), arg_1.b.zzz, vec3<bool>(true, arg_1.b.x, false)), false));
    var_3 = Struct_4(_wgslsmith_add_vec2_u32(var_0.xx, u_input.b.wy), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(ceil(var_3.b))), var_3.c, vec3<bool>(false, var_3.d.x, !any(arg_2.a.wzz)));
    return vec3<bool>(13884u <= _wgslsmith_add_u32(1u, ~var_2), (u_input.a & -21795i) <= -_wgslsmith_sub_i32(u_input.a, arg_2.b.x), all(select(vec3<bool>(!arg_1.b.x, select(arg_1.b.x, var_3.d.x, false), true), vec3<bool>(!arg_1.b.x, arg_2.a.x & arg_2.a.x, !arg_2.a.x), arg_2.a.wzw)));
}

fn func_2() -> Struct_3 {
    var var_0 = select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), !(!any(vec2<bool>(false, false)))), select(select(select(func_3(vec4<f32>(941f, 1721f, -257f, 326f), Struct_5(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(u_input.a, u_input.a), 1i, -1297f), vec3<u32>(1u, 73708u, 1u)), vec3<bool>(false, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), true), any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)))), select(vec3<bool>(false, true, false), vec3<bool>(u_input.b.x == u_input.b.x, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(vec4<f32>(337f, 393f, -1185f, 160f), Struct_5(vec3<i32>(u_input.a, u_input.a, -1i), vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(u_input.a, u_input.a), 2236i, 383f), u_input.b.yww))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), select(false, any(vec2<bool>(true, true)), select(true, true, false)));
    var var_1 = -abs(vec4<i32>(-(u_input.a ^ u_input.a), _wgslsmith_mod_i32(u_input.a | -2147483647i, i32(-1i) * -10621i), -_wgslsmith_add_i32(u_input.a, u_input.a), ~0i | u_input.a));
    let var_2 = Struct_5(-select(vec3<i32>(-2147483647i, _wgslsmith_add_i32(-2325i, 61619i), _wgslsmith_div_i32(u_input.a, -12954i)), -(var_1.wyz | var_1.wxz), true != (u_input.a >= 1i)), !select(vec4<bool>(false, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, false), !all(var_0.yz)));
    var var_3 = Struct_2(u_input.b.x);
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(578f + -1167f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1585f * _wgslsmith_f_op_f32(trunc(195f))), _wgslsmith_f_op_f32(f32(-1f) * -291f)))));
    return Struct_3(var_2.b.x, ~(~vec4<i32>(u_input.a, 1i, 1i, var_2.a.x)) ^ -(~reverseBits(vec4<i32>(-2156i, 41422i, 2147483647i, u_input.a))), ~u_input.b, !func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_div_f32(1033f, 865f), -507f, 263f), Struct_5(vec3<i32>(0i, var_2.a.x, 0i) << (u_input.b.zzy % vec3<u32>(32u)), vec4<bool>(var_2.b.x, var_2.b.x, true, true)), Struct_1(var_2.b, var_2.a.zy, u_input.a ^ 27336i, _wgslsmith_f_op_f32(sign(-830f))), ~(vec3<u32>(var_3.a, 59193u, var_3.a) | u_input.b.xzy)).xx);
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_4(u_input.b.zy ^ ~(~vec2<u32>(u_input.b.x, 48849u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -229f)), func_2(), !(!vec3<bool>(u_input.a > u_input.a, true, 46945u != u_input.b.x)));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, 169f, var_0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, 748f) - vec3<f32>(var_0.b, var_0.b, -482f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.b, 296f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(227f, var_0.b, var_0.b))))));
    let var_2 = Struct_2(4294967295u);
    var_0 = Struct_4(_wgslsmith_mult_vec2_u32(vec2<u32>(~4294967295u, var_2.a) << ((_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_2.a), vec2<u32>(36195u, 1u)) << (firstLeadingBit(u_input.b.xw) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, u_input.b.x), ~49763u), _wgslsmith_dot_vec2_u32(var_0.c.c.yw ^ u_input.b.xz, ~u_input.b.yw))), var_1.x, Struct_3(var_0.b == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), select(var_0.c.b, var_0.c.b, !select(vec4<bool>(false, false, true, true), vec4<bool>(var_0.c.a, true, false, var_0.d.x), var_0.d.x)), vec4<u32>(_wgslsmith_mod_u32(60721u, firstTrailingBit(54616u)), 4294967295u, 1u, _wgslsmith_div_u32(var_0.a.x | u_input.b.x, min(40508u, u_input.b.x))), !select(!vec2<bool>(true, var_0.c.d.x), func_2().d, vec2<bool>(false, true))), !(!vec3<bool>(var_1.x < var_1.x, var_0.c.d.x, u_input.a == u_input.a)));
    let var_3 = Struct_5(vec3<i32>(max(u_input.a, 1i), u_input.a, abs(10489i)), vec4<bool>(true, true, all(select(!vec4<bool>(var_0.d.x, var_0.c.a, var_0.d.x, true), select(vec4<bool>(var_0.c.a, false, false, var_0.d.x), vec4<bool>(true, var_0.c.a, false, var_0.c.a), vec4<bool>(false, true, true, true)), vec4<bool>(true, var_0.d.x, false, true))), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, var_1.x) + vec4<f32>(var_0.b, 425f, -381f, 181f)), Struct_5(vec3<i32>(var_0.c.b.x, 2147483647i, u_input.a), vec4<bool>(false, false, var_0.d.x, var_0.c.d.x)), Struct_1(vec4<bool>(false, var_0.d.x, var_0.d.x, false), vec2<i32>(var_0.c.b.x, u_input.a), 2147483647i, -520f), u_input.b.xzw).x | var_0.d.x));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = 0i;
    var var_2 = select(func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(455f, 2514f, 1000f, 801f)))), func_1(), Struct_1(select(select(var_0.b, vec4<bool>(false, false, true, var_0.b.x), var_0.b.x), var_0.b, vec4<bool>(var_0.b.x, var_0.b.x, false, true)), var_0.a.yz >> (func_2().c.zy % vec2<u32>(32u)), ~(~var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1214f)))), select(~(~vec3<u32>(u_input.b.x, 1u, 19021u)), countOneBits(vec3<u32>(6021u, u_input.b.x, u_input.b.x)), var_0.b.yxw)).zx, !(!vec2<bool>(var_0.b.x | var_0.b.x, false)), !select(vec2<bool>(!var_0.b.x, false), vec2<bool>(true, true), var_0.b.wy));
    let var_3 = firstTrailingBit(u_input.a);
    let var_4 = func_2().a;
    let var_5 = ~min(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), ~u_input.b.zzx & u_input.b.wwy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1168f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1451f))))));
}

