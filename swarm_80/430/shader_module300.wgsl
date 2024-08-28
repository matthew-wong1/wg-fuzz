struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -952f)) + _wgslsmith_f_op_f32(f32(-1f) * -1168f));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(!arg_1.ww)) * _wgslsmith_f_op_f32(130f - arg_2.b.x))), Struct_1(abs(u_input.a.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-821f - arg_2.d), _wgslsmith_f_op_f32(-1000f + 170f)), arg_2.b), arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-995f)))))));
    let var_1 = var_0.b;
    var_0 = Struct_2(-1402f, var_0.b);
    var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1193f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -778f) - _wgslsmith_f_op_f32(-var_0.b.b.x)))))), Struct_1(~reverseBits(abs(arg_2.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.b.x, var_1.b.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1184f, arg_2.d))) + vec2<f32>(arg_2.d, _wgslsmith_f_op_f32(f32(-1f) * -865f))), var_0.b.c, 1000f));
    let var_2 = !((i32(-1i) * -2147483647i) <= _wgslsmith_sub_i32(arg_0.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(arg_0.x, -2350i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f - -741f)), -2661f)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(31475i, 20255i, 18894i), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), Struct_1(1u, vec2<f32>(1000f, 1543f), true, 773f)))))), 1624f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = Struct_3(_wgslsmith_add_vec3_u32(abs(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) & select(u_input.a.xzy, vec3<u32>(u_input.a.x, u_input.a.x, 99895u), arg_0.x)), ~_wgslsmith_clamp_vec3_u32(abs(u_input.a.wxz), u_input.a.xzw ^ vec3<u32>(4294967295u, 60840u, 26772u), u_input.a.wxw)), Struct_1(~(~32767u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-924f + -289f), _wgslsmith_f_op_f32(621f + var_0.x))), arg_0.x, var_0.x), select(!(!vec3<bool>(arg_0.x, true, false)), vec3<bool>(arg_0.x, false, true), !(reverseBits(u_input.a.x) != ~u_input.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_0)))), _wgslsmith_f_op_vec3_f32(var_0 - var_0)), -_wgslsmith_clamp_i32(max(_wgslsmith_dot_vec2_i32(vec2<i32>(-10171i, 2147483647i), vec2<i32>(0i, 5211i)), 1i), 1i, -_wgslsmith_mult_i32(-1i, 1i)));
    var var_2 = select(vec2<bool>(select(var_1.b.c, !any(vec3<bool>(arg_0.x, false, false)), var_1.c.x), var_1.b.c), vec2<bool>(all(vec3<bool>(arg_0.x, false, var_1.c.x)), !(!(!var_1.c.x))), true);
    var var_3 = true;
    var var_4 = var_1;
    return var_4.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = Struct_2(189f, arg_0);
    let var_1 = select(select(select(arg_3.c, select(arg_3.c, select(arg_3.c, vec3<bool>(true, arg_3.c.x, false), false), select(arg_3.c, arg_3.c, vec3<bool>(var_0.b.c, true, arg_3.b.c))), !select(false, var_0.b.c, var_0.b.c)), vec3<bool>(!(arg_0.c | arg_3.b.c), !any(arg_3.c.yx), arg_0.c), select(select(select(vec3<bool>(false, true, var_0.b.c), arg_3.c, var_0.b.c), select(arg_3.c, vec3<bool>(arg_3.c.x, false, arg_3.c.x), vec3<bool>(var_0.b.c, false, false)), !var_0.b.c), vec3<bool>(true, !var_0.b.c, var_0.b.c || true), !arg_0.c)), vec3<bool>(!(max(arg_2, 4294967295u) >= ~1u), var_0.b.c, any(arg_3.c)), arg_3.b.c);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(var_0.a, 1266f), _wgslsmith_f_op_f32(var_0.a + arg_3.b.d), _wgslsmith_div_f32(arg_3.d.x, var_0.a), _wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2080f, 715f, var_0.b.b.x, arg_0.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, -713f, arg_3.d.x, 1550f))))), any(!arg_3.c.zx))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -875f), _wgslsmith_f_op_f32(-arg_3.b.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(arg_0.d - -663f))), var_0.b.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1649f - 737f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-270f + arg_3.d.x) - _wgslsmith_f_op_f32(func_3(arg_3.c.xy))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(vec3<bool>(true, true, false)), firstLeadingBit(~vec4<i32>(-2147483647i, -32960i, -1i, -2147483647i)), ~abs(4294967295u), Struct_3(abs(u_input.a.xwx), func_1(vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-296f, -713f, -1715f) - vec3<f32>(311f, 1286f, 1568f)), firstLeadingBit(0i))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1046f + 904f), _wgslsmith_f_op_f32(477f * 1000f), -1349f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1087f, -1000f) + _wgslsmith_f_op_f32(min(1433f, 1412f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -278f), -686f), vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = vec4<i32>(-_wgslsmith_dot_vec2_i32(-(~vec2<i32>(1i, 2550i)), vec2<i32>(1i, 1i)), abs(~(~_wgslsmith_clamp_i32(-1i, -37888i, 2147483647i))), firstLeadingBit(countOneBits((24549i << (u_input.a.x % 32u)) ^ -2147483647i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(~4275i, i32(-1i) * -1i, ~30813i), firstTrailingBit(min(vec3<i32>(2732i, -2147483647i, 29452i), reverseBits(vec3<i32>(23568i, 0i, 35508i))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yww));
    var_1 = min(~(~select(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x), false)) << ((_wgslsmith_sub_vec4_u32(u_input.a << (vec4<u32>(u_input.a.x, 0u, 24345u, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)) << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, -22754i, var_1.x, var_1.x) << (u_input.a % vec4<u32>(32u)), ~vec4<i32>(var_1.x, var_1.x, var_1.x, -1i)), ~(vec4<i32>(var_1.x, var_1.x, 2147483647i, var_1.x) & vec4<i32>(38686i, var_1.x, var_1.x, var_1.x))), vec4<i32>(-17643i >> (u_input.a.x % 32u), ~var_1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, 2147483647i), var_1.ww), min(vec2<i32>(-1i, 10612i), vec2<i32>(var_1.x, var_1.x))), 43776i), _wgslsmith_clamp_vec4_i32((vec4<i32>(26212i, var_1.x, 2147483647i, var_1.x) & vec4<i32>(var_1.x, var_1.x, var_1.x, -8982i)) >> (_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), select(~vec4<i32>(-2147483647i, 23424i, var_1.x, var_1.x), vec4<i32>(0i, var_1.x, 2147483647i, 0i), false), vec4<i32>(var_1.x, min(34288i, var_1.x), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 409i), var_1.yxz)))));
    let var_3 = Struct_3(vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(7398u), _wgslsmith_clamp_u32(1u, min(4294967295u, u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))), u_input.a.x, ~(~(~u_input.a.x))), func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), true))), select(vec3<bool>((60738i & var_1.x) >= var_1.x, false, func_1(vec3<bool>(false, false, false)).c), !select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), true), 1u != _wgslsmith_mod_u32(_wgslsmith_mult_u32(53403u, 40614u), u_input.a.x)), vec3<f32>(-1332f, -516f, var_0.x), 0i);
    let var_4 = func_1(vec3<bool>(!(!(var_3.c.x || true)), false, any(!(!vec2<bool>(var_3.b.c, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -abs(1i), (select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4632u), u_input.a.zww), ~vec3<u32>(11136u, 1409u, var_3.b.a), true) | u_input.a.zxw) ^ u_input.a.wyz, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(989f, var_0.x, var_3.b.b.x, -1292f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_4.d, 310f, var_4.d), vec4<f32>(851f, -763f, var_3.d.x, var_3.d.x))))))));
}

