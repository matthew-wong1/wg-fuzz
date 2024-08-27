struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    var var_0 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_1 = !vec4<bool>(true, all(!var_0.zz), !(all(vec4<bool>(true, var_0.x, var_0.x, true)) == (true & var_0.x)), !any(vec3<bool>(false, var_0.x, var_0.x)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -578f);
    var var_3 = var_0.x;
    var_2 = 1396f;
    return arg_0.x;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> vec3<u32> {
    let var_0 = reverseBits(arg_1.e.a);
    var var_1 = !(!select(arg_1.d.yy, arg_3.xx, !arg_1.d.x | arg_3.x));
    var var_2 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.e, arg_1.e.a.x, 15060u), vec4<u32>(1u, arg_1.e.a.x, var_0.x, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.a, u_input.a.x), vec3<u32>(u_input.e, 16165u, 1u))), ~vec3<u32>(arg_1.e.a.x, u_input.e, u_input.a.x), ~arg_1.e.a)), arg_1.e, arg_1.e, Struct_1(~firstLeadingBit(arg_1.e.a)), -1i);
    var var_3 = ~select(-firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i) << (vec2<u32>(1u, u_input.e) % vec2<u32>(32u))), vec2<i32>(~(-u_input.d.x), -(~0i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_1.b.x)), arg_0, !var_1.x)) < _wgslsmith_div_f32(arg_1.b.x, -108f));
    var var_4 = _wgslsmith_mult_vec2_i32(u_input.d.xz, (vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c, arg_1.c), u_input.b), var_2.e | -19493i) | firstLeadingBit(u_input.b << (var_2.b.a.zx % vec2<u32>(32u)))) ^ (select(abs(u_input.c.wz), _wgslsmith_sub_vec2_i32(u_input.c.xw, vec2<i32>(10623i, u_input.d.x)), arg_1.d.wx) & _wgslsmith_sub_vec2_i32(~u_input.b, u_input.d.zx)));
    return ~vec3<u32>(var_0.x, 21099u, firstLeadingBit(var_2.d.a.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<u32>(0u, ~countOneBits(4294967295u), 1u)), Struct_1(~func_4(-648f, Struct_3(u_input.a.x, vec3<f32>(858f, 434f, 1167f), u_input.c.x, vec4<bool>(true, false, false, true), Struct_1(vec3<u32>(u_input.e, u_input.e, 4294967295u))), _wgslsmith_f_op_f32(func_3(vec3<f32>(-1745f, 753f, 912f))), vec3<bool>(true, true, true))), Struct_1(vec3<u32>(~countOneBits(u_input.e), 5303u, 1u)), Struct_1(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) ^ vec3<u32>(51792u, 1u, u_input.a.x), vec3<u32>(_wgslsmith_mod_u32(u_input.e, 0u), u_input.a.x, u_input.a.x))), 35792i);
    var_0 = Struct_2(var_0.c, Struct_1(vec3<u32>(u_input.e, min(var_0.c.a.x | var_0.c.a.x, ~var_0.a.a.x), 0u)), Struct_1(_wgslsmith_div_vec3_u32(max(vec3<u32>(71057u, u_input.e, u_input.a.x), ~vec3<u32>(var_0.d.a.x, u_input.e, 0u)), var_0.a.a)), var_0.b, reverseBits(-2147483647i));
    var_0 = Struct_2(Struct_1(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.a.x, var_0.d.a.x, var_0.c.a.x), min(vec3<u32>(4294967295u, u_input.e, var_0.a.a.x), vec3<u32>(1u, 4294967295u, var_0.b.a.x)), ~vec3<u32>(160345u, 8831u, var_0.b.a.x))), var_0.b, var_0.a, var_0.c, ~(-_wgslsmith_div_i32(u_input.b.x, 2147483647i) | firstLeadingBit(_wgslsmith_add_i32(38578i, u_input.c.x))));
    var var_1 = _wgslsmith_mod_u32(var_0.d.a.x, min(_wgslsmith_sub_u32(4294967295u, u_input.a.x), u_input.a.x) & ~(~var_0.b.a.x)) << (var_0.b.a.x % 32u);
    let var_2 = all(!select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), !all(vec3<bool>(true, true, true))));
    return Struct_1(var_0.d.a & ~func_4(_wgslsmith_f_op_f32(select(-1000f, -1000f, var_2)), Struct_3(0u, vec3<f32>(954f, 309f, 530f), 0i, vec4<bool>(var_2, true, false, true), var_0.a), _wgslsmith_f_op_f32(max(-1269f, -1876f)), select(vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, true, false), vec3<bool>(var_2, false, var_2))));
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    let var_0 = all(vec4<bool>(true, true, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), true));
    let var_1 = true;
    var var_2 = vec3<bool>(any(vec2<bool>(false, !(!var_1))), any(vec2<bool>(!var_1, true)), (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0.a.a.x, 0u, 66419u, arg_0.b.a.x)), min(vec4<u32>(arg_0.a.a.x, u_input.e, u_input.a.x, u_input.a.x), vec4<u32>(arg_0.d.a.x, u_input.a.x, 66110u, 50927u))) << (_wgslsmith_sub_u32(16800u, 1u) % 32u)) > firstLeadingBit(66122u));
    var var_3 = _wgslsmith_clamp_vec2_u32(~_wgslsmith_div_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.a.x, u_input.e), u_input.a)), firstTrailingBit(vec2<u32>(arg_0.b.a.x, 10584u)) >> (~arg_0.b.a.xx % vec2<u32>(32u))), vec2<u32>(~(~78808u), ~func_4(_wgslsmith_f_op_f32(2054f - -1010f), Struct_3(36118u, vec3<f32>(-482f, -651f, 1454f), arg_0.e, vec4<bool>(var_2.x, var_2.x, var_0, var_1), arg_0.b), _wgslsmith_div_f32(167f, -775f), !vec3<bool>(var_0, var_1, false)).x), u_input.a >> (~(~u_input.a) % vec2<u32>(32u)));
    let var_4 = _wgslsmith_sub_vec3_i32(u_input.c.wwy, u_input.d);
    return Struct_3(~(~1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-570f + 1000f), _wgslsmith_f_op_f32(-1175f - -407f), _wgslsmith_f_op_f32(abs(1641f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-703f, 893f, 1000f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-943f, 442f, 907f)))), vec3<f32>(1f, 1f, 1f))), _wgslsmith_sub_i32(48939i, -39109i), !select(select(!vec4<bool>(false, var_1, false, var_0), vec4<bool>(var_2.x, var_2.x, false, false), select(vec4<bool>(false, false, var_2.x, var_2.x), vec4<bool>(var_2.x, true, var_0, var_2.x), true)), select(select(vec4<bool>(var_0, var_2.x, var_2.x, var_0), vec4<bool>(var_0, var_0, var_2.x, var_0), vec4<bool>(var_2.x, false, false, true)), !vec4<bool>(var_1, var_2.x, false, var_2.x), false), any(select(var_2.yx, var_2.yx, var_1))), Struct_1(_wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, u_input.a.x, 36458u), arg_0.c.a, vec3<u32>(var_3.x, arg_0.d.a.x, 25110u)), firstTrailingBit(arg_0.b.a), arg_0.b.a)));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(924f * arg_0.b.x))) - _wgslsmith_f_op_f32(min(344f, -353f))))), -1094f);
    let var_1 = arg_0;
    var_0 = arg_0.b;
    let var_2 = Struct_3(countOneBits(_wgslsmith_mod_u32(abs(~arg_0.e.a.x), 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-297f, 613f, var_1.b.x), var_1.b)))))), 12672i, func_5(arg_1).d, Struct_1(~(~vec3<u32>(var_1.e.a.x, 5367u, 38012u))));
    var var_3 = Struct_2(func_5(Struct_2(Struct_1(arg_1.b.a), arg_0.e, func_2(), arg_1.d, -2147483647i)).e, func_5(arg_1).e, var_1.e, Struct_1(func_2().a), _wgslsmith_mult_i32(~var_2.c, reverseBits(var_1.c)));
    return var_2.e;
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_2(func_6(func_5(Struct_2(Struct_1(vec3<u32>(0u, u_input.a.x, 1u)), func_2(), Struct_1(vec3<u32>(u_input.a.x, 62525u, 4294967295u)), Struct_1(vec3<u32>(125754u, u_input.e, 0u)), select(-35436i, u_input.d.x, true))), Struct_2(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) | vec3<u32>(u_input.a.x, 0u, u_input.e)), func_2(), Struct_1(~vec3<u32>(0u, 1u, u_input.e)), Struct_1(func_2().a), u_input.b.x), _wgslsmith_mult_vec2_i32(~u_input.b << (vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<i32>(-u_input.d.x, 2147483647i))), Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(func_2().a.x, ~u_input.e, u_input.a.x), select(vec3<u32>(25754u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, u_input.e, u_input.e), all(vec3<bool>(false, false, true))))), Struct_1(vec3<u32>(countOneBits(abs(u_input.e)), min(u_input.a.x, ~u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.e) << (min(u_input.e, u_input.e) % 32u))), func_2(), 1i);
    let var_1 = func_5(Struct_2(var_0.b, Struct_1(_wgslsmith_add_vec3_u32(var_0.d.a, vec3<u32>(61299u, var_0.b.a.x, 1u))), Struct_1(vec3<u32>(968u, u_input.a.x, abs(u_input.e))), Struct_1(vec3<u32>(10701u, ~5427u, u_input.a.x)), u_input.b.x)).e;
    let var_2 = func_5(Struct_2(func_5(Struct_2(var_0.a, var_1, Struct_1(var_0.b.a), var_1, abs(-1i))).e, Struct_1(~var_0.d.a >> ((var_1.a ^ vec3<u32>(u_input.e, 76623u, var_0.d.a.x)) % vec3<u32>(32u))), func_2(), var_1, 32401i));
    let var_3 = var_2;
    let var_4 = Struct_2(Struct_1(select(max(vec3<u32>(var_2.a, var_0.d.a.x, var_3.a), vec3<u32>(9051u, 17012u, var_0.b.a.x)), _wgslsmith_sub_vec3_u32(func_4(var_3.b.x, var_2, var_3.b.x, var_3.d.zzx), var_2.e.a), vec3<bool>(false, var_2.d.x, var_3.d.x | var_3.d.x))), var_1, Struct_1(~func_5(var_0).e.a), Struct_1(vec3<u32>(~_wgslsmith_sub_u32(4294967295u, 1u), 2808u, ~u_input.e)), u_input.b.x);
    return ~vec4<u32>(~_wgslsmith_mod_u32(24484u, _wgslsmith_mod_u32(var_1.a.x, u_input.e)), 36245u, var_2.e.a.x, ~_wgslsmith_clamp_u32(65722u, _wgslsmith_mod_u32(u_input.a.x, var_2.a), _wgslsmith_mod_u32(var_4.c.a.x, 42751u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~func_1()));
    var var_1 = func_5(Struct_2(func_2(), func_5(Struct_2(func_2(), func_6(Struct_3(4294967295u, vec3<f32>(-673f, 452f, -538f), -2147483647i, vec4<bool>(true, true, false, false), Struct_1(vec3<u32>(65359u, 11470u, 41525u))), Struct_2(Struct_1(var_0.wzz), Struct_1(vec3<u32>(var_0.x, 33741u, 4628u)), Struct_1(vec3<u32>(u_input.a.x, 0u, 1u)), Struct_1(var_0.xww), -8741i), vec2<i32>(u_input.b.x, 20040i)), func_6(Struct_3(1u, vec3<f32>(599f, -930f, 1891f), u_input.c.x, vec4<bool>(false, false, false, true), Struct_1(var_0.wxw)), Struct_2(Struct_1(vec3<u32>(var_0.x, u_input.a.x, 1u)), Struct_1(vec3<u32>(78478u, var_0.x, u_input.e)), Struct_1(var_0.zyx), Struct_1(vec3<u32>(13085u, var_0.x, var_0.x)), 0i), u_input.c.yz), func_2(), 0i)).e, func_6(Struct_3(102194u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-301f, 1788f, 1398f)), ~(-2147483647i), vec4<bool>(true, true, true, true), Struct_1(var_0.zzy)), Struct_2(Struct_1(vec3<u32>(3114u, var_0.x, u_input.e)), func_6(Struct_3(0u, vec3<f32>(-489f, 1347f, 172f), 1i, vec4<bool>(false, false, true, true), Struct_1(vec3<u32>(u_input.e, u_input.e, 64912u))), Struct_2(Struct_1(var_0.zzw), Struct_1(vec3<u32>(0u, var_0.x, 5076u)), Struct_1(vec3<u32>(var_0.x, 0u, 53719u)), Struct_1(var_0.xyx), u_input.d.x), u_input.b), func_5(Struct_2(Struct_1(var_0.xxy), Struct_1(var_0.yyx), Struct_1(var_0.xzz), Struct_1(vec3<u32>(0u, 39157u, u_input.e)), u_input.b.x)).e, func_6(Struct_3(1u, vec3<f32>(-535f, 1136f, -1127f), -19865i, vec4<bool>(true, true, false, true), Struct_1(var_0.yxz)), Struct_2(Struct_1(vec3<u32>(var_0.x, var_0.x, 1u)), Struct_1(vec3<u32>(0u, var_0.x, 0u)), Struct_1(var_0.zzw), Struct_1(vec3<u32>(var_0.x, u_input.a.x, u_input.a.x)), u_input.c.x), vec2<i32>(u_input.d.x, 1i)), _wgslsmith_mult_i32(u_input.b.x, -36544i)), u_input.d.zz), func_5(Struct_2(func_6(Struct_3(26115u, vec3<f32>(-772f, 437f, 939f), -1248i, vec4<bool>(true, false, false, true), Struct_1(vec3<u32>(var_0.x, 0u, var_0.x))), Struct_2(Struct_1(var_0.zwz), Struct_1(vec3<u32>(75350u, 14156u, 43517u)), Struct_1(var_0.zyx), Struct_1(var_0.zxy), u_input.c.x), u_input.d.yy), Struct_1(vec3<u32>(var_0.x, var_0.x, u_input.a.x)), func_5(Struct_2(Struct_1(var_0.yzw), Struct_1(vec3<u32>(var_0.x, 78091u, 4294967295u)), Struct_1(vec3<u32>(39747u, 1u, 4294967295u)), Struct_1(var_0.yxx), 1i)).e, Struct_1(vec3<u32>(var_0.x, var_0.x, 19114u)), u_input.b.x << (24051u % 32u))).e, -2885i)).e;
    let var_2 = 477f;
    var var_3 = vec3<bool>(!(!func_5(Struct_2(Struct_1(vec3<u32>(var_0.x, var_1.a.x, var_1.a.x)), Struct_1(var_0.ywx), Struct_1(var_0.xzw), Struct_1(vec3<u32>(4294967295u, var_1.a.x, var_1.a.x)), u_input.c.x)).d.x && any(vec3<bool>(true, true, true))), _wgslsmith_dot_vec3_i32(u_input.d, abs(-vec3<i32>(-20981i, -60202i, 1i))) > max(~u_input.c.x, 1i), var_2 <= _wgslsmith_f_op_f32(sign(var_2)));
    let var_4 = func_5(Struct_2(Struct_1(~vec3<u32>(u_input.e, 16554u, 71763u)), func_5(Struct_2(func_6(Struct_3(u_input.a.x, vec3<f32>(-1379f, 684f, var_2), u_input.d.x, vec4<bool>(var_3.x, var_3.x, var_3.x, false), Struct_1(vec3<u32>(1u, u_input.e, 1u))), Struct_2(Struct_1(vec3<u32>(76219u, var_1.a.x, 0u)), Struct_1(var_1.a), Struct_1(var_1.a), Struct_1(vec3<u32>(1u, 14283u, 17931u)), 2147483647i), u_input.b), Struct_1(vec3<u32>(67750u, 1u, var_0.x)), func_2(), Struct_1(vec3<u32>(var_0.x, 40494u, 13697u)), 1i)).e, Struct_1(select(func_2().a, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.e, 74335u), vec3<u32>(6823u, 0u, 4294967295u)), true)), Struct_1(~vec3<u32>(var_0.x, u_input.a.x, u_input.a.x)), -11462i)).e;
    var var_5 = var_0.xy;
    let var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2729f, var_2) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2, var_2)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1400f, var_2) * vec2<f32>(var_2, -1044f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1235f, 2151f))))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(315f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_2))))));
    let var_7 = _wgslsmith_mult_i32(2147483647i | select(u_input.b.x, _wgslsmith_div_i32(u_input.c.x, _wgslsmith_div_i32(u_input.b.x, 2147483647i)), true), -17996i);
    let x = u_input.a;
    s_output = StorageBuffer(~60123u, _wgslsmith_f_op_f32(f32(-1f) * -977f));
}

