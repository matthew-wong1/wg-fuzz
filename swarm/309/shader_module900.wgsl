struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = arg_1.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_1.b);
    let var_2 = Struct_2(select(vec3<bool>(any(arg_1.a) && true, !var_0.e || any(arg_1.a), var_0.e), vec3<bool>(true && var_0.e, all(!vec4<bool>(var_0.e, arg_1.c.e, true, arg_1.a.x)), true), all(!(!vec4<bool>(false, arg_1.a.x, arg_1.c.e, arg_1.a.x)))), vec4<f32>(-1114f, _wgslsmith_f_op_f32(trunc(946f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -129f) * var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * _wgslsmith_f_op_f32(step(var_0.d.x, arg_1.b.x))))), Struct_1(countOneBits(-reverseBits(var_0.a)), -1i, ~max(~u_input.e.x, -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1265f, 705f) * arg_1.b.ywx) * vec3<f32>(-1453f, arg_0, arg_0))), !(!var_0.e)));
    var_0 = arg_1.c;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 917f)))))));
    return false;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_2(vec3<bool>(all(vec4<bool>(true, true, true, true)), !(!func_3(-726f, Struct_2(vec3<bool>(true, true, true), vec4<f32>(1162f, 782f, 984f, -231f), Struct_1(vec3<i32>(-32027i, 2147483647i, -69665i), -36267i, u_input.c.x, vec3<f32>(2676f, 1000f, -888f), false)))), func_3(_wgslsmith_f_op_f32(round(-1616f)), Struct_2(vec3<bool>(false, false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-883f, -1350f, 660f, 1402f)), Struct_1(vec3<i32>(-19817i, u_input.c.x, 2649i), u_input.e.x, 2147483647i, vec3<f32>(1043f, 1213f, -999f), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -385f, _wgslsmith_f_op_f32(f32(-1f) * -1651f), _wgslsmith_f_op_f32(f32(-1f) * -2170f)))), Struct_1(~vec3<i32>(u_input.c.x, -72476i, u_input.e.x | 47196i), _wgslsmith_dot_vec3_i32(-firstTrailingBit(vec3<i32>(u_input.e.x, u_input.e.x, 40702i)), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-23998i, u_input.d, -29089i), vec3<i32>(u_input.c.x, -15390i, u_input.e.x)), -vec3<i32>(u_input.c.x, 59301i, -31771i))), _wgslsmith_div_i32(~u_input.e.x, _wgslsmith_dot_vec2_i32(~u_input.c, vec2<i32>(6234i, u_input.d) | u_input.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1086f + -526f), -463f, 1f)), true));
    var_0 = Struct_2(var_0.a, var_0.b, var_0.c);
    var var_1 = var_0.c;
    var var_2 = var_0.c;
    var_0 = Struct_2(select(!(!(!var_0.a)), vec3<bool>(var_2.e, any(var_0.a.zy) | var_1.e, all(select(var_0.a.yx, var_0.a.zx, false))), var_1.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.c.d.x, 196f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -602f) - _wgslsmith_f_op_f32(step(var_2.d.x, var_0.c.d.x))))), Struct_1(vec3<i32>(~0i, countOneBits(var_1.a.x), reverseBits(0i)) << (countOneBits(u_input.b >> (vec3<u32>(11145u, 1u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), -reverseBits(-var_0.c.c), ~firstLeadingBit(53881i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), u_input.b.zx)) % 32u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(var_1.d, vec3<f32>(-1027f, -289f, var_1.d.x)))), func_3(_wgslsmith_f_op_f32(abs(-906f)), Struct_2(vec3<bool>(false, false, false), _wgslsmith_f_op_vec4_f32(var_0.b - var_0.b), Struct_1(var_0.c.a, u_input.d, -45552i, var_1.d, true)))));
    return !select(var_0.a, vec3<bool>(all(var_0.a.zz), !any(vec4<bool>(var_0.c.e, var_2.e, var_1.e, false)), var_1.e), _wgslsmith_f_op_f32(299f - var_1.d.x) < var_2.d.x);
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<bool>(false, !(_wgslsmith_sub_i32(-18988i, _wgslsmith_sub_i32(u_input.e.x, u_input.d)) < u_input.d), true);
    var_0 = !(!vec3<bool>(true, ~u_input.a > ~u_input.b.x, !(false && var_0.x)));
    let var_1 = Struct_2(!func_2(), vec4<f32>(287f, _wgslsmith_div_f32(-270f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(503f, -1919f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-319f + _wgslsmith_f_op_f32(127f * _wgslsmith_f_op_f32(f32(-1f) * -524f)))), Struct_1(_wgslsmith_sub_vec3_i32(~max(vec3<i32>(u_input.d, u_input.e.x, u_input.c.x), vec3<i32>(56850i, 13623i, 41051i)), vec3<i32>(u_input.d, -1i, -4509i) | vec3<i32>(u_input.d, u_input.e.x, -57835i)), 9884i, _wgslsmith_mod_i32(u_input.e.x, -(u_input.e.x << (u_input.b.x % 32u))), vec3<f32>(_wgslsmith_f_op_f32(-1699f - -854f), _wgslsmith_f_op_f32(-541f - _wgslsmith_f_op_f32(abs(1000f))), -475f), true));
    var var_2 = reverseBits(_wgslsmith_mod_vec4_i32(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.e.x, var_1.c.a.x, u_input.d), vec4<i32>(4265i, -7952i, -2147483647i, var_1.c.a.x), vec4<i32>(2147483647i, -1i, -47215i, 34126i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e.x, var_1.c.b, 1i, 2147483647i), vec4<i32>(2147483647i, var_1.c.b, 2147483647i, var_1.c.c), vec4<i32>(var_1.c.b, -24406i, -1i, -1i))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_1.c.b, var_1.c.b, -2821i), ~vec4<i32>(var_1.c.c, u_input.d, u_input.c.x, 0i)), ~vec4<i32>(var_1.c.c, u_input.e.x, u_input.d, u_input.d))));
    var_2 = vec4<i32>(reverseBits(-(~(var_1.c.c | 73106i))), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c.x, ~(-5908i)), firstLeadingBit(u_input.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(u_input.c.x), firstLeadingBit(~2147483647i), _wgslsmith_mod_i32(max(0i, -1i), 1i)), var_2.zww), ~_wgslsmith_div_i32(i32(-1i) * -2147483647i, -2147483647i));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1203f, -355f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-222f - 363f))))))));
    var var_2 = func_1();
    let var_3 = 42771i;
    var var_4 = u_input.b.x;
    let var_5 = Struct_1(vec3<i32>(u_input.e.x, -func_1().c.c, -2147483647i) & vec3<i32>(var_2.c.b, var_2.c.c, ~0i), ~_wgslsmith_mod_i32(select(1i, select(-19769i, u_input.d, var_2.c.e), !var_2.c.e), 2147483647i), _wgslsmith_sub_i32(40776i, 12485i << ((~u_input.b.x | u_input.a) % 32u)), var_2.c.d, var_2.c.e);
    let var_6 = Struct_1(var_5.a, -47894i, ~var_5.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(449f * var_5.d.x), 223f, _wgslsmith_f_op_f32(f32(-1f) * -221f)))), !(!var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-354f, _wgslsmith_clamp_vec3_i32(var_2.c.a, var_2.c.a, vec3<i32>(var_2.c.b, ~(-2147483647i), var_5.c)), countOneBits(firstTrailingBit((u_input.b.x ^ u_input.b.x) & u_input.b.x)), vec3<i32>(-max(-1i, var_2.c.c), func_1().c.b, max(min(u_input.c.x, 7831i), i32(-1i) * -1i)) >> ((~(~u_input.b) | ((u_input.b ^ u_input.b) | u_input.b)) % vec3<u32>(32u)));
}

