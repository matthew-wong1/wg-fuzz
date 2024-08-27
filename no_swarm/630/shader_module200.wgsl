struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = arg_0.b.x;
    let var_1 = arg_0.b;
    let var_2 = -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x) | arg_0.a, firstLeadingBit(reverseBits(vec4<i32>(17449i, arg_0.a.x, -2147483647i, arg_0.a.x)))) | 29785i;
    var var_3 = vec4<bool>(true, any(vec3<bool>(arg_0.a.x < var_2, true, all(arg_0.b.xzx))), var_0, 9722u == u_input.d.x);
    let var_4 = select(abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1374u, 128692u) << (u_input.c % vec3<u32>(32u)), vec3<u32>(41943u, 1u, 4294967295u), ~vec3<u32>(u_input.a.x, u_input.d.x, 60921u))), ~_wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.c.x, u_input.c.x, 44228u) ^ vec3<u32>(0u, u_input.c.x, u_input.b)), vec3<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.a.x), u_input.d.x, ~u_input.d.x)), arg_0.b.wyx);
    return u_input.b;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_dot_vec4_i32(arg_1.a, vec4<i32>(-64760i, abs(min(arg_1.a.x, min(-1i, arg_1.a.x))), max(-45703i, max(countOneBits(arg_1.a.x), -14184i)), arg_1.a.x));
    let var_2 = arg_1.a.wxy;
    var_1 = _wgslsmith_sub_i32(-arg_1.a.x, countOneBits(_wgslsmith_sub_i32(var_2.x, i32(-1i) * -2147483647i))) << (~u_input.d.x % 32u);
    var_0 = ~vec4<u32>(1u & arg_0, ~firstTrailingBit(~u_input.a.x), ~(~(~var_0.x)), 69441u);
    return vec4<bool>(!arg_1.b.x, true, true, false);
}

fn func_2() -> Struct_2 {
    var var_0 = false;
    var_0 = all(func_4(~abs(func_3(Struct_3(vec4<i32>(-29212i, -2147483647i, 5348i, -40647i), vec4<bool>(false, true, true, true)))), Struct_3(abs(-vec4<i32>(-1i, -2147483647i, -49172i, -2147483647i)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(220f)), -1129f, _wgslsmith_f_op_f32(565f + -431f), -608f)))));
    var_0 = !func_4(u_input.b, Struct_3(abs(-vec4<i32>(2147483647i, 20483i, 15644i, 4296i)), vec4<bool>(true, false, true, true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -604f)), _wgslsmith_f_op_f32(f32(-1f) * -757f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1420f + 638f) - -537f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -209f)))).x;
    var var_1 = 1i;
    var var_2 = ~_wgslsmith_clamp_vec2_u32(u_input.a & select(~u_input.a, firstTrailingBit(u_input.c.yx), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), u_input.d.yy, select(vec2<u32>(firstTrailingBit(u_input.b), u_input.a.x | 80459u), min(u_input.a, u_input.a & vec2<u32>(101351u, 5557u)), func_4(65677u, Struct_3(vec4<i32>(-1i, 0i, 46970i, 2147483647i), vec4<bool>(false, false, true, false)), _wgslsmith_div_vec4_f32(vec4<f32>(-777f, -615f, 624f, 346f), vec4<f32>(-459f, 1411f, -1171f, -1818f))).yw));
    return Struct_2(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), func_4(123399u, Struct_3(vec4<i32>(-65704i, -7370i, -415i, 0i), vec4<bool>(true, false, false, true)), vec4<f32>(-1019f, 1736f, 582f, 507f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(880f)), _wgslsmith_f_op_f32(f32(-1f) * -953f), true)))));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    let var_0 = -1262f;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(654f * -722f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * -247f) - 387f)), -1000f, _wgslsmith_f_op_f32(max(-667f, _wgslsmith_div_f32(arg_0, 1000f))));
    let var_2 = func_2();
    var var_3 = _wgslsmith_clamp_vec2_u32(~u_input.c.xy, ~max(_wgslsmith_add_vec2_u32(arg_1.zy, arg_1.yy), ~vec2<u32>(u_input.d.x, 1u)) ^ (arg_1.yz >> (~u_input.a % vec2<u32>(32u))), vec2<u32>(~1u, abs(u_input.c.x)));
    let var_4 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.c)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.c)) + arg_0), _wgslsmith_f_op_f32(-1110f * 1185f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 315f, -2978f, 1950f) - vec4<f32>(324f, arg_2.c, arg_0, -142f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-214f, -1129f, var_2.b, var_0), vec4<f32>(-1700f, 628f, -1590f, -1133f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1157f, arg_2.c, 320f, 686f)))))), vec2<bool>(any(func_4(23185u, Struct_3(vec4<i32>(2147483647i, 13015i, -1i, -2887i), var_2.a), vec4<f32>(arg_2.b, var_0, var_2.b, arg_2.b)).wxw), true), func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1016f, -1000f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, var_1.x), _wgslsmith_f_op_vec2_f32(var_1.wy + vec2<f32>(239f, var_2.c)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1187f, 356f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, -703f), vec2<f32>(1570f, 446f))))))), Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -21489i, i32(-1i) * -2147483647i, 1i, 16753i), vec4<i32>(1i, reverseBits(38009i), -2147483647i, 1i)), vec4<bool>(any(!var_2.a), _wgslsmith_f_op_f32(step(var_0, var_1.x)) > _wgslsmith_f_op_f32(arg_2.c * var_1.x), true, arg_3)));
    return var_4.e;
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(587f + arg_1.b.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_1.b.a.x)))), -1325f, _wgslsmith_div_f32(arg_1.b.a.x, -455f)), select(arg_1.a.b.zz, func_2().a.wy, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) + _wgslsmith_f_op_f32(exp2(arg_1.b.a.x))), select(vec3<u32>(u_input.c.x, 4294967295u, 1u), vec3<u32>(31116u, 11959u, arg_0) << (vec3<u32>(arg_2, 0u, arg_2) % vec3<u32>(32u)), true), func_2(), arg_1.a.b.x).b.x), Struct_2(vec4<bool>(false, arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x), 1f, -932f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a.x * arg_1.b.a.x) + _wgslsmith_f_op_f32(max(-1000f, arg_1.b.a.x)))), arg_1.b.a.x), func_1(arg_1.b.a.x, vec3<u32>(arg_0, abs(arg_0), 4294967295u) | (u_input.d.yxx ^ u_input.c), Struct_2(!(!arg_1.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.b.a.x, arg_1.b.a.x))), func_2().c), !select(true, func_2().a.x, arg_1.a.b.x)));
    let var_1 = Struct_3(arg_1.a.a, !(!select(!var_0.e.b, !arg_1.a.b, arg_1.a.b.x)));
    var var_2 = abs(vec4<i32>(-2147483647i, -41980i ^ _wgslsmith_add_i32(arg_1.a.a.x, arg_1.a.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.a.a.yy, arg_1.a.a.wy, vec2<i32>(-13815i, 50025i)), var_1.a.wx), _wgslsmith_add_i32(arg_1.a.a.x >> (18966u % 32u), ~var_0.e.a.x)) | (var_1.a ^ _wgslsmith_sub_vec4_i32(var_1.a, ~arg_1.a.a)));
    var_2 = -(~vec4<i32>(func_1(_wgslsmith_f_op_f32(-arg_1.b.a.x), u_input.d.xwy, Struct_2(var_0.c.a, var_0.a.x, -285f), var_1.b.x && var_0.b.x).a.x, _wgslsmith_sub_i32(~arg_1.a.a.x, var_1.a.x), firstTrailingBit(firstLeadingBit(var_0.e.a.x)), arg_1.a.a.x & var_1.a.x));
    var_2 = (~min(func_1(-412f, u_input.c, var_0.c, arg_1.a.b.x).a, reverseBits(vec4<i32>(-56933i, 0i, 61669i, var_0.e.a.x))) ^ arg_1.a.a) << (_wgslsmith_mod_vec4_u32(~(~u_input.d >> (_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(4294967295u, arg_0, arg_2, u_input.c.x), u_input.d) % vec4<u32>(32u))), vec4<u32>(16325u, _wgslsmith_div_u32(select(4294967295u, 0u, true), ~4319u), 0u, 4294967295u)) % vec4<u32>(32u));
    return func_1(_wgslsmith_f_op_f32(-var_0.a.x), vec3<u32>(u_input.a.x, 0u, arg_2), Struct_2(!func_4(_wgslsmith_mod_u32(arg_0, 1u), Struct_3(vec4<i32>(-2147483647i, 26643i, arg_1.a.a.x, 788i), var_0.c.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b, arg_1.b.a.x, 501f, var_0.d.x))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -3199f), _wgslsmith_f_op_f32(select(397f, -1149f, true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -1043f))), !(!arg_1.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(4294967295u, Struct_5(func_1(_wgslsmith_f_op_f32(f32(-1f) * -262f), min(~u_input.c, vec3<u32>(u_input.a.x, 0u, 4294967295u)), Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(min(1906f, -222f)), -2225f), true), Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-975f, -378f)), _wgslsmith_div_vec2_f32(vec2<f32>(370f, 1003f), vec2<f32>(-1187f, -1491f)))))), u_input.b);
    var var_1 = false;
    var var_2 = func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-642f, _wgslsmith_f_op_f32(min(-1000f, -2089f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f + -792f)))), ~abs(vec3<u32>(u_input.d.x, u_input.d.x, 10884u)) >> (vec3<u32>(~0u, 343u, firstLeadingBit(0u)) % vec3<u32>(32u)), Struct_2(vec4<bool>(var_0.b.x, true, !var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1319f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - -877f)))), var_0.a.x == -2147483647i).a.zzy >> (u_input.d.wyw % vec3<u32>(32u));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-351f, 712f))), vec2<f32>(1000f, -1367f))))))));
    var_2 = var_0.a.wxw;
    var_2 = _wgslsmith_div_vec3_i32(func_5(min(~0u, 15676u << (0u % 32u)), Struct_5(var_0, Struct_1(_wgslsmith_div_vec2_f32(var_3.a, vec2<f32>(-496f, var_3.a.x)))), 0u).a.ywx, var_0.a.zwz);
    var_1 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-169f * _wgslsmith_f_op_f32(-2328f * var_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x + var_3.a.x) + _wgslsmith_f_op_f32(sign(var_3.a.x))), var_3.a.x));
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_div_i32(50005i, var_0.a.x), u_input.d, _wgslsmith_div_f32(-1051f, var_3.a.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.x, var_0.a.x), vec2<i32>(0i, abs(-2147483647i))) >> (firstTrailingBit(u_input.c.x) % 32u));
}

