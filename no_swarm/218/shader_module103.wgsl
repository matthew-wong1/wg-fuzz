struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = any(arg_0.a);
    var_0 = any(arg_0.d.b);
    var var_1 = -14172i;
    var_1 = max(-abs(_wgslsmith_add_i32(arg_2.d.a.x, _wgslsmith_clamp_i32(arg_2.d.a.x, 0i, 1i))), arg_0.d.a.x ^ u_input.d.x);
    let var_2 = vec4<i32>(i32(-1i) * -_wgslsmith_add_i32(u_input.d.x, reverseBits(-67004i)), -arg_0.d.a.x, -27270i & arg_2.d.a.x, 0i);
    return vec2<i32>(~var_2.x, countOneBits(abs(-1i) | ~var_2.x));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_mod_vec3_i32(-vec3<i32>(1i, 47500i, 1i) & arg_0.a.yww, -arg_0.a.zxz), ~arg_0.a.wy, u_input.c, ~select(u_input.e, firstLeadingBit(1u), arg_0.b.x));
    var_0 = Struct_4(vec3<i32>(-9754i, _wgslsmith_mod_i32(1i, arg_0.a.x), ~var_0.b.x), ~_wgslsmith_mult_vec2_i32(arg_0.a.ww, func_3(Struct_3(vec3<bool>(arg_0.b.x, false, arg_0.b.x), arg_0.b.x, u_input.e, arg_0), true, Struct_3(vec3<bool>(arg_0.b.x, arg_0.b.x, true), true, 4294967295u, Struct_1(vec4<i32>(var_0.a.x, 0i, -3513i, arg_0.a.x), vec2<bool>(arg_0.b.x, true))))), u_input.c, u_input.c.x);
    return Struct_3(!(!select(select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<bool>(false, arg_0.b.x, false), arg_0.b.x), vec3<bool>(true, true, true), select(vec3<bool>(true, false, arg_0.b.x), vec3<bool>(arg_0.b.x, true, false), arg_0.b.x))), ~abs(firstLeadingBit(var_0.d)) <= _wgslsmith_clamp_u32(min(_wgslsmith_sub_u32(arg_1, 45978u), _wgslsmith_mod_u32(12985u, 6961u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(16980u, 39821u, u_input.c.x, 4294967295u)), ~vec4<u32>(27347u, arg_1, var_0.c.x, arg_1)), 83476u), 0u, Struct_1(max(vec4<i32>(arg_0.a.x, arg_0.a.x, var_0.a.x, u_input.d.x), arg_0.a) | arg_0.a, !arg_0.b));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_4(~arg_2.d.a.xyz, arg_0, vec2<u32>(~arg_2.c, ~firstLeadingBit(~u_input.e)), ~1u);
    let var_1 = -_wgslsmith_add_i32(-func_2(func_2(arg_2.d, 1u, vec3<f32>(974f, 291f, 437f)).d, arg_2.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(-931f, -1000f, 1159f) + vec3<f32>(-682f, -268f, -1180f))).d.a.x, _wgslsmith_clamp_i32(abs(1i), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0.a.x, arg_0.x, var_0.a.x, u_input.d.x)), ~arg_2.d.a), arg_1.a.x));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-623f, 944f, 584f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1383f, -1414f, 224f) * vec3<f32>(564f, -280f, 1665f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2295f, 619f, 975f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1343f, 673f, 560f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1830f, 849f, -484f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-556f, 139f, 388f))))));
    let var_3 = vec2<u32>(~1u, abs(_wgslsmith_clamp_u32(~var_0.d, 1u, ~arg_2.c) >> (reverseBits(arg_2.c) % 32u)));
    var var_4 = select(select(!vec2<bool>(all(arg_1.b), func_2(Struct_1(arg_1.e.a, arg_2.a.xx), 27171u, vec3<f32>(var_2.x, -519f, var_2.x)).d.b.x), select(!vec2<bool>(arg_1.e.b.x, arg_2.a.x), vec2<bool>(true, true), true), vec2<bool>(false, arg_2.b)), vec2<bool>(arg_1.e.b.x, any(arg_1.b)), vec2<bool>(false, true));
    return u_input.e;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_3 {
    let var_0 = func_2(Struct_1(abs(abs(arg_2.a)), arg_2.b), arg_3, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2453f, -1632f, 1229f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-796f, 1721f, 1199f), vec3<f32>(116f, 1310f, 1885f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1113f, 920f, -1350f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), vec3<f32>(-862f, -230f, 989f), true))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 924f, 180f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-508f, 1000f, -1000f))))))));
    let var_2 = func_2(Struct_1(var_0.d.a, vec2<bool>(true, true)), firstTrailingBit(var_0.c), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) * _wgslsmith_f_op_f32(var_1.x * var_1.x)), var_1.x, _wgslsmith_f_op_f32(var_1.x + var_1.x))))).d;
    let var_3 = var_2.b.x & !select(_wgslsmith_div_i32(arg_2.a.x, u_input.d.x) <= (var_2.a.x << (42166u % 32u)), arg_2.b.x, !(var_1.x > 604f));
    let var_4 = min(u_input.d.x, 69352i);
    return func_2(Struct_1(vec4<i32>(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(13806i, arg_2.a.x) & var_2.a.zy, _wgslsmith_clamp_vec2_i32(vec2<i32>(10261i, arg_0), u_input.d, vec2<i32>(u_input.d.x, arg_2.a.x))), 30517i, ~_wgslsmith_mult_i32(1i, 10681i)), vec2<bool>(var_3, false && (arg_2.b.x && false))), ~var_0.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, 573f, -161f))))))));
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = func_5(arg_0.x, ~(~func_4(u_input.d, Struct_2(arg_0, vec4<bool>(false, false, false, true), Struct_1(vec4<i32>(arg_0.x, u_input.d.x, 2147483647i, 29134i), vec2<bool>(false, true)), arg_0.x, Struct_1(vec4<i32>(-8388i, -2147483647i, 19546i, u_input.d.x), vec2<bool>(true, false))), func_2(Struct_1(vec4<i32>(-2147483647i, -18697i, arg_0.x, -5920i), vec2<bool>(true, false)), u_input.c.x, vec3<f32>(-2129f, -1954f, -458f)))), func_2(func_2(func_2(Struct_1(vec4<i32>(1i, arg_0.x, -44307i, 19239i), vec2<bool>(true, false)), _wgslsmith_div_u32(u_input.b, 27632u), vec3<f32>(1123f, 386f, 298f)).d, _wgslsmith_sub_u32(~0u, 15472u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(307f, -175f, 690f))).d, u_input.c.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-853f, -1418f, 555f)))))).d, min(_wgslsmith_sub_u32(u_input.a, 111609u), u_input.e));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-623f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-839f - _wgslsmith_f_op_f32(step(1099f, -627f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -411f), -434f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-630f * 743f)))), true));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 507f, -1000f, -1047f)), vec4<f32>(-446f, -637f, 666f, -200f))))), vec4<f32>(166f, -1000f, 1247f, 419f))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-804f + 412f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(298f - 620f) + -1137f)), -1473f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -709f)), _wgslsmith_f_op_f32(select(-150f, 2984f, var_0.b != true)), all(vec2<bool>(var_0.d.b.x, var_0.b))))));
    return Struct_2(min(~_wgslsmith_mod_vec3_i32(arg_0 >> (vec3<u32>(50712u, 4294967295u, 8953u) % vec3<u32>(32u)), var_0.d.a.xwz), arg_0), select(vec4<bool>(!func_2(var_0.d, 1u, vec3<f32>(var_2.x, var_2.x, var_2.x)).b, true, func_5(max(2147483647i, u_input.d.x), ~var_0.c, func_2(var_0.d, u_input.e, var_2.wyw).d, _wgslsmith_div_u32(4294967295u, u_input.e)).d.b.x, !(u_input.d.x >= arg_0.x)), select(!select(vec4<bool>(var_0.b, false, false, var_0.b), vec4<bool>(var_0.b, false, false, var_0.d.b.x), vec4<bool>(true, false, true, false)), !(!vec4<bool>(var_0.a.x, var_0.d.b.x, var_0.b, true)), false), select(!vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(!var_0.b, !var_0.a.x, !var_0.a.x, u_input.c.x >= u_input.c.x), !(!vec4<bool>(false, var_0.b, var_0.a.x, var_0.a.x)))), Struct_1(firstLeadingBit(vec4<i32>(countOneBits(arg_0.x), -arg_0.x, var_0.d.a.x, _wgslsmith_add_i32(2147483647i, u_input.d.x))), vec2<bool>(var_0.b, !var_0.d.b.x)), 40766i, func_5(arg_0.x, var_0.c, func_2(var_0.d, reverseBits(102868u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_2.yxw), _wgslsmith_f_op_vec3_f32(vec3<f32>(-129f, -1166f, var_2.x) + vec3<f32>(var_2.x, 967f, var_2.x)), vec3<bool>(var_0.b, false, var_0.b)))).d, abs(0u)).d);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = ~u_input.c.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(236f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-2146f, -594f, arg_0.b.x)), _wgslsmith_f_op_f32(step(-312f, 372f))))), -1075f)), 1341f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-814f, _wgslsmith_div_f32(1336f, 1285f), arg_0.e.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-523f))))));
    let var_2 = arg_2.x;
    var var_3 = select(arg_0.b, select(select(!vec4<bool>(true, arg_0.c.b.x, true, true), arg_0.b, true), select(!(!arg_0.b), arg_0.b, !arg_0.c.b.x), false), all(func_1(~(-vec3<i32>(u_input.d.x, u_input.d.x, 2647i))).c.b));
    var_3 = !arg_0.b;
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(vec3<i32>(u_input.d.x, ~firstTrailingBit(u_input.d.x), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-6762i, -2147483647i), firstLeadingBit(0i)))), -2147483647i, -(vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x), 16027i, -19673i, 1i) & -firstLeadingBit(vec4<i32>(-26389i, u_input.d.x, u_input.d.x, u_input.d.x))));
    let var_1 = func_6(func_1(countOneBits(func_6(func_1(var_0.a.yxx), ~var_0.a.x, var_0.a).a.yyw)), _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0.a.x << (select(u_input.a, u_input.b, var_0.b.x) % 32u), 2147483647i, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x) >> (u_input.b % 32u), var_0.a.x), -_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.a.x, 1i, 31328i, var_0.a.x), func_6(Struct_2(vec3<i32>(var_0.a.x, 0i, -2147483647i), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), Struct_1(var_0.a, var_0.b), u_input.d.x, var_0), 16237i, var_0.a).a)), var_0.a).b.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1143f, 1327f), -1358f, 883f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(548f, 1138f, -124f) - vec3<f32>(-1000f, 213f, -1056f)), _wgslsmith_div_vec3_f32(vec3<f32>(-458f, 1000f, 705f), vec3<f32>(-1309f, -1000f, 1272f)))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_f_op_f32(f32(-1f) * -1821f), 688f) + vec3<f32>(-1000f, -1489f, _wgslsmith_f_op_f32(min(716f, -536f)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.x * var_2.x))))), 528f, var_2.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * -633f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1300f, var_2.x)))), var_2.x) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(-var_2.x))))));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.x - var_2.x)));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(-var_2.x), 501f))));
    var var_4 = select(!select(!(!vec4<bool>(false, false, var_1, true)), select(!vec4<bool>(true, var_0.b.x, false, true), select(vec4<bool>(var_0.b.x, false, true, false), vec4<bool>(true, false, var_1, false), true), true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), var_2.x)) < _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(951f - 843f))), true, var_0.b.x), true);
    var var_5 = Struct_2(_wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(~var_0.a.wzw, firstLeadingBit(var_0.a.wxy)), vec3<i32>(var_0.a.x ^ var_0.a.x, u_input.d.x, (var_0.a.x | 0i) | -33995i)), func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(min(u_input.d.x, -1i), -u_input.d.x, var_0.a.x), func_2(var_0, _wgslsmith_mod_u32(0u, 1u), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, 1408f, var_2.x), vec3<f32>(-250f, var_2.x, var_2.x))).d.a.xwx)).b, Struct_1(func_1(_wgslsmith_clamp_vec3_i32(var_0.a.xxx, var_0.a.zxz, vec3<i32>(u_input.d.x, 17895i, var_0.a.x))).c.a | _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0.a.x, u_input.d.x, -1463i), -vec4<i32>(17344i, var_0.a.x, -11276i, var_0.a.x)), !(!vec2<bool>(var_4.x, false))), u_input.d.x, var_0);
    var var_6 = vec2<bool>(func_2(func_5(2443i, func_4(_wgslsmith_sub_vec2_i32(vec2<i32>(4269i, -2147483647i), vec2<i32>(var_5.e.a.x, -44403i)), Struct_2(vec3<i32>(var_0.a.x, 30881i, 22702i), var_5.b, var_0, -2147483647i, var_0), func_2(var_5.c, u_input.e, vec3<f32>(var_2.x, var_2.x, var_2.x))), Struct_1(-var_5.e.a, select(vec2<bool>(var_0.b.x, true), var_0.b, var_4.xz)), ~_wgslsmith_div_u32(1u, u_input.c.x)).d, u_input.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, var_2.x, var_2.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -115f, var_2.x) * vec3<f32>(1572f, var_2.x, var_2.x))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2172f, -180f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, var_2.x, var_2.x))))))).d.b.x, var_2.x >= _wgslsmith_f_op_f32(sign(var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x + 681f))))), var_0.a.x);
}

