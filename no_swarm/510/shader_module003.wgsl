struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<bool>) -> f32 {
    var var_0 = u_input.e;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1636f) + _wgslsmith_f_op_f32(-966f * 470f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1514f - _wgslsmith_f_op_f32(677f - -138f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1721f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1459f)) + _wgslsmith_div_f32(-425f, 850f)), true))) - 230f);
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.c, vec4<bool>(true, true, true, false), vec3<bool>(true, true, false))))), _wgslsmith_f_op_f32(-684f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1096f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(abs(108f)), min(_wgslsmith_div_vec3_i32(u_input.d.wzz, vec3<i32>(-1i, u_input.c, abs(u_input.c))), vec3<i32>(~(-206i), abs(-1i), -67101i) << (max(~vec3<u32>(23795u, 41033u, u_input.e), ~vec3<u32>(u_input.b.x, 4294967295u, u_input.e)) % vec3<u32>(32u))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_0.x, 684f), vec3<f32>(1206f, 474f, var_0.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(-1008f, 689f, 782f)))), Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 1u), ~vec2<u32>(68834u, u_input.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, var_0.x))), u_input.e, vec2<bool>(true, true), vec3<i32>(-1i, 3042i, u_input.d.x) & u_input.d.wyy, vec4<bool>(false, false, true, false)), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(445f, var_0.x))), u_input.e, select(vec2<bool>(false, true), vec2<bool>(false, true), false), _wgslsmith_mod_vec3_i32(u_input.d.zzy, u_input.d.wxx), vec4<bool>(true, true, false, true)), u_input.b.x), Struct_2(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.e), Struct_1(vec2<f32>(var_0.x, 1202f), u_input.b.x, vec2<bool>(true, false), min(u_input.d.xzy, vec3<i32>(u_input.a.x, u_input.d.x, u_input.c)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-329f, -1000f) * vec2<f32>(997f, 1536f)), u_input.b.x, vec2<bool>(true, true), vec3<i32>(87742i, -4458i, 23800i), vec4<bool>(true, true, true, true)), _wgslsmith_add_u32(~77154u, u_input.b.x)), vec3<f32>(2099f, 1544f, var_0.x)));
    var var_2 = !select(vec3<bool>(true, var_1.c.b.b.c.x, true), vec3<bool>(!var_1.c.c.c.e.x && any(var_1.c.b.c.e), true, select(!var_1.c.c.b.e.x, var_1.c.c.c.e.x, var_1.c.b.b.e.x)), select(select(!var_1.c.b.c.e.yxz, vec3<bool>(false, false, true), select(var_1.c.b.b.e.zzx, var_1.c.c.b.e.zzw, var_1.c.b.b.c.x)), select(vec3<bool>(var_1.c.b.c.e.x, false, var_1.c.c.b.c.x), var_1.c.b.c.e.wxy, !var_1.c.c.b.e.x), var_1.c.c.b.e.yxz));
    let var_3 = ~(~u_input.b.x);
    var var_4 = Struct_2(select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, var_1.c.c.a, ~0u, 4294967295u), _wgslsmith_sub_vec4_u32(~u_input.b, u_input.b & u_input.b)), _wgslsmith_mod_u32(reverseBits(0u | u_input.b.x), ~_wgslsmith_mod_u32(4294967295u, 4294967295u)), !(u_input.e == 47990u)), var_1.c.b.b, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(152f, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.d.x, 623f) + var_1.c.d.yy) + _wgslsmith_div_vec2_f32(var_1.c.b.c.a, var_1.c.c.b.a))), var_1.c.c.d & 4294967295u, !vec2<bool>(var_1.a < var_0.x, var_1.c.c.b.e.x), _wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, -31578i, -2147483647i) << ((u_input.b.xwx << (vec3<u32>(u_input.e, 48811u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.a.x), var_1.b))), vec4<bool>(var_1.b.x <= abs(u_input.c), !var_2.x, false, all(vec3<bool>(var_1.c.c.c.c.x, var_1.c.c.b.e.x, true)) | select(true, var_2.x, var_1.c.b.c.e.x))), ~select(abs(var_1.c.b.a << (var_1.c.c.d % 32u)), 4294967295u, false));
    return Struct_4(vec2<u32>(~var_4.c.b, var_3), -select(countOneBits(select(vec2<i32>(-1i, 0i), vec2<i32>(var_4.b.d.x, u_input.a.x), var_4.c.c)), u_input.d.wy, select(vec2<bool>(false, false), vec2<bool>(var_2.x, false), vec2<bool>(false, true))));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-902f, _wgslsmith_div_f32(948f, arg_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-209f, arg_0) - vec2<f32>(arg_0, arg_0))))))), arg_2 << (max(8885u, 1u) % 32u), select(vec2<bool>(false, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))), firstLeadingBit(u_input.d.yzz), !vec4<bool>(false, true, select(true, 86967u < arg_1.a.x, true), any(vec3<bool>(true, true, true))));
    var var_1 = arg_1;
    let var_2 = Struct_4(vec2<u32>(~0u & var_0.b, arg_2) & vec2<u32>(~arg_1.a.x, _wgslsmith_dot_vec2_u32(arg_1.a, vec2<u32>(var_0.b, 1u))), ~vec2<i32>(_wgslsmith_add_i32(~0i, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(var_1.b.x, var_0.d.x, -1i, 42516i))), firstTrailingBit(~49861i)));
    let var_3 = Struct_2(17238u, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(639f, var_0.a.x), _wgslsmith_f_op_vec2_f32(step(var_0.a, var_0.a)))))), var_0.b, vec2<bool>(any(!var_0.e.wzw), any(!vec2<bool>(var_0.e.x, var_0.e.x))), var_0.d, select(var_0.e, !select(var_0.e, vec4<bool>(var_0.e.x, false, false, false), var_0.e), var_0.c.x)), Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.x, -1652f))), var_0.b, select(select(!var_0.c, !var_0.e.zx, var_0.c.x), select(select(var_0.e.yy, vec2<bool>(true, var_0.e.x), var_0.e.ww), vec2<bool>(var_0.c.x, var_0.c.x), true), _wgslsmith_f_op_f32(floor(var_0.a.x)) < _wgslsmith_f_op_f32(max(-442f, -558f))), vec3<i32>(var_2.b.x, _wgslsmith_sub_i32(-arg_1.b.x, _wgslsmith_mult_i32(var_1.b.x, arg_1.b.x)), ~(-2147483647i)), select(vec4<bool>(false, true, true, arg_0 > 666f), !(!var_0.e), var_0.c.x)), ~arg_1.a.x);
    let var_4 = var_2.a.x;
    return ~(~countOneBits(~_wgslsmith_add_u32(30542u, var_4)));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = ~func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1335f - _wgslsmith_f_op_f32(-322f - 372f))), func_2(), 4294967295u);
    var var_1 = abs(abs(arg_1.wyz));
    let var_2 = ~vec3<i32>(min(33638i, func_2().b.x), abs(660i), _wgslsmith_dot_vec3_i32(~u_input.d.yxw, ~u_input.d.zww));
    var var_3 = !(false || arg_2.c.b.e.x);
    var_3 = arg_2.c.b.e.x;
    return abs(~vec4<u32>(func_2().a.x, 27827u, max(var_0, 0u | var_0), countOneBits(~var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-207f + _wgslsmith_f_op_f32(1733f + 1219f)))), -189f), _wgslsmith_f_op_f32(-740f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(924f + 578f) * _wgslsmith_f_op_f32(max(851f, 772f)))))), -657f);
    var var_1 = _wgslsmith_dot_vec4_u32(~((func_1(-2147483647i, u_input.b, Struct_3(vec3<f32>(1254f, -582f, var_0.x), Struct_2(1u, Struct_1(vec2<f32>(var_0.x, var_0.x), 0u, vec2<bool>(false, true), u_input.d.zyy, vec4<bool>(true, false, true, true)), Struct_1(var_0.xx, 3895u, vec2<bool>(true, false), vec3<i32>(u_input.a.x, -50670i, u_input.c), vec4<bool>(true, true, true, true)), u_input.e), Struct_2(u_input.b.x, Struct_1(var_0.yz, u_input.e, vec2<bool>(false, true), u_input.d.yzy, vec4<bool>(true, false, false, false)), Struct_1(var_0.yz, 4294967295u, vec2<bool>(false, true), vec3<i32>(37793i, -16887i, -2147483647i), vec4<bool>(false, false, true, false)), 1u), vec3<f32>(var_0.x, -1263f, var_0.x))) | _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(1u, u_input.e, 50752u, 7019u))) << (_wgslsmith_div_vec4_u32(u_input.b, u_input.b >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))), abs(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b.x, 4294967295u), ~vec3<u32>(8299u, u_input.b.x, 18944u)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(41568u, u_input.b.x, 4294967295u, u_input.e), u_input.b), 4355u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(u_input.e, u_input.e, 0u)), vec3<u32>(28604u, u_input.e, u_input.b.x) & vec3<u32>(u_input.e, 67479u, u_input.e)), 1u)));
    var var_2 = vec3<u32>(30554u, ~(~1u), u_input.b.x);
    var var_3 = u_input.d.zw;
    var_2 = u_input.b.yzz;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec3<u32>(~4294967295u, _wgslsmith_mod_u32(var_2.x, var_2.x), ~var_2.x)), u_input.b.x);
}

