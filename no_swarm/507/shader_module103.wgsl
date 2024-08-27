struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> vec2<u32> {
    var var_0 = true;
    let var_1 = max(arg_0.xz, _wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, 0u ^ arg_0.x), ~(arg_0.zy & vec2<u32>(67266u, u_input.a.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(select(u_input.b.x, u_input.a.x, false), 1u), vec2<u32>(4294967295u, u_input.b.x))));
    var_0 = all(!select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true), true));
    var var_2 = Struct_2(_wgslsmith_mult_u32(~var_1.x, _wgslsmith_mult_u32(arg_0.x, ~u_input.a.x)) & ~arg_0.x);
    let var_3 = -1313f;
    return ~(~var_1);
}

fn func_2() -> i32 {
    let var_0 = u_input.a.x;
    var var_1 = true;
    let var_2 = func_3(u_input.a);
    let var_3 = vec2<i32>(1i, u_input.d.x);
    let var_4 = Struct_2(reverseBits(var_0));
    return u_input.d.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, -1290f, arg_2.x)), vec4<f32>(arg_2.x, 718f, -1000f, arg_2.x), vec4<bool>(true, false, arg_0.x, arg_1.a.x))) * vec4<f32>(_wgslsmith_div_f32(446f, -1406f), _wgslsmith_f_op_f32(1928f + arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x * arg_2.x))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, arg_2.x) - 642f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1449f), _wgslsmith_div_f32(-559f, -1103f)), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(618f)) - _wgslsmith_f_op_f32(arg_2.x + arg_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2404f, 239f, 168f, 1000f) + vec4<f32>(-429f, 2068f, arg_2.x, 646f)))))));
    let var_1 = Struct_1(select(vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_1.a.x, arg_3.a.x, arg_0.x), false)), true, !all(arg_1.a.xy)), select(!arg_3.a, !(!arg_1.a), vec3<bool>(arg_3.a.x, false, arg_1.a.x)), select(!arg_0.x, all(vec3<bool>(arg_3.a.x, false, false)), false)), max(1u, 1u), ~9688u);
    let var_2 = _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.d.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.d.x, u_input.d.x)), vec2<i32>(0i, -1i) >> (u_input.c.yy % vec2<u32>(32u))), ~u_input.d.x)), u_input.d.xxz);
    var var_3 = !(!(4294967295u > var_1.c));
    let var_4 = Struct_2(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_1.b, var_1.c), ~firstLeadingBit(14471u)));
    return var_1;
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.d.zwy;
    let var_1 = (~(~u_input.a.zx | vec2<u32>(u_input.b.x, u_input.b.x)) ^ (countOneBits(firstLeadingBit(u_input.b.zz)) << (u_input.a.zz % vec2<u32>(32u)))) ^ ~(~u_input.a.xy);
    var var_2 = ~max(~((vec2<u32>(var_1.x, var_1.x) & u_input.c.yw) ^ u_input.b.xz), _wgslsmith_add_vec2_u32(min(var_1, vec2<u32>(20498u, 31944u)), u_input.c.xy));
    var var_3 = func_4(select(vec3<bool>(true & select(false, false, false), true, false), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), func_2() == -u_input.d.x), vec3<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), true)), Struct_1(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), false), func_3(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(1u, 0u, 1u)), u_input.a)).x, ~var_1.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -736f), _wgslsmith_f_op_f32(trunc(1780f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -157f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1008f, 171f)))))), Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), ~func_3(reverseBits(u_input.c.wxw)).x, ~u_input.c.x));
    var var_4 = var_3.a.zy;
    return Struct_2(var_3.b);
}

fn func_5(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = vec2<i32>(-(~abs(max(u_input.d.x, u_input.d.x))), func_2());
    let var_1 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec2<bool>(true, true));
    var_0 = vec2<i32>(select(min(max(~(-18557i), firstTrailingBit(10036i)), -45390i), ~abs(var_0.x), select(any(select(vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x))), var_1.x, !var_1.x)), -26188i);
    var_0 = abs(vec2<i32>(var_0.x, -_wgslsmith_add_i32(2321i, ~(-1i))));
    var_0 = vec2<i32>(~(-(i32(-1i) * -2147483647i)) | max(var_0.x, ~(-var_0.x)), 0i);
    return !vec4<bool>(var_1.x, any(vec2<bool>(false, var_1.x)), true, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(2337f)))) > -718f, ~(~u_input.c.x) >= min(~u_input.a.x, firstLeadingBit(u_input.a.x)), true), select(func_5(func_1()), !vec4<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true)), 1i <= u_input.d.x, true), func_5(func_1()).x), false);
    var var_1 = Struct_1(!func_4(vec3<bool>(!var_0.x, !var_0.x, all(vec4<bool>(var_0.x, var_0.x, false, false))), Struct_1(select(var_0.wxy, vec3<bool>(true, false, false), var_0.x), u_input.a.x, u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(342f, 560f)))), Struct_1(vec3<bool>(var_0.x, var_0.x, false), max(0u, 1u), _wgslsmith_mod_u32(u_input.c.x, 50283u))).a, ~(~60179u | u_input.b.x), 4294967295u);
    var_1 = Struct_1(func_4(var_1.a, func_4(vec3<bool>(var_1.b <= 12332u, any(var_0.yy), !var_1.a.x), Struct_1(vec3<bool>(true, false, true), var_1.b >> (4294967295u % 32u), abs(6706u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1128f, -232f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1099f), vec2<f32>(600f, 546f), var_0.x))), func_4(select(var_0.yzx, vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, true, var_1.a.x)), Struct_1(vec3<bool>(true, var_0.x, true), var_1.b, 28846u), _wgslsmith_div_vec2_f32(vec2<f32>(-359f, -1061f), vec2<f32>(326f, -789f)), Struct_1(var_0.xzz, u_input.a.x, 32783u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(671f, -850f)), vec2<f32>(_wgslsmith_f_op_f32(-178f + -377f), _wgslsmith_f_op_f32(-1344f - 488f))), func_4(!select(vec3<bool>(true, var_0.x, true), var_0.xwx, var_0.x), func_4(select(vec3<bool>(true, var_1.a.x, false), var_1.a, var_1.a.x), func_4(vec3<bool>(true, var_1.a.x, var_0.x), Struct_1(var_0.zww, 0u, 67826u), vec2<f32>(797f, -1350f), Struct_1(vec3<bool>(true, var_1.a.x, var_1.a.x), 0u, 21172u)), vec2<f32>(-138f, -1000f), func_4(vec3<bool>(var_0.x, var_1.a.x, var_1.a.x), Struct_1(var_0.xxx, var_1.c, u_input.c.x), vec2<f32>(1418f, -1336f), Struct_1(vec3<bool>(true, var_1.a.x, false), u_input.a.x, var_1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1065f, 413f)))), func_4(!var_0.ywx, func_4(var_0.xwx, Struct_1(var_0.yyz, 66203u, var_1.c), vec2<f32>(196f, 491f), Struct_1(vec3<bool>(var_0.x, var_0.x, var_1.a.x), 0u, var_1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(133f, 873f)), func_4(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), Struct_1(var_1.a, 134270u, u_input.a.x), vec2<f32>(-328f, 829f), Struct_1(var_1.a, var_1.c, u_input.a.x))))).a, var_1.b, _wgslsmith_clamp_u32(var_1.b, 4294967295u >> ((~1u & _wgslsmith_add_u32(1u, var_1.b)) % 32u), 38517u));
    var_1 = func_4(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), var_0.xww)), var_1.a.x, !(true || var_1.a.x)), func_4(!select(select(var_1.a, var_1.a, vec3<bool>(true, var_0.x, true)), vec3<bool>(true, var_1.a.x, var_0.x), var_0.x || var_0.x), func_4(!var_0.www, func_4(vec3<bool>(false, var_1.a.x, var_1.a.x), func_4(vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, var_0.x, false), 1u, var_1.b), vec2<f32>(-964f, 505f), Struct_1(vec3<bool>(var_1.a.x, var_0.x, false), u_input.b.x, u_input.c.x)), vec2<f32>(-1046f, 1452f), func_4(var_1.a, Struct_1(vec3<bool>(true, true, var_1.a.x), u_input.c.x, var_1.c), vec2<f32>(-1157f, 403f), Struct_1(var_0.xzw, u_input.a.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -970f))), Struct_1(var_0.xxz, ~u_input.a.x, 1u)), vec2<f32>(_wgslsmith_f_op_f32(step(-508f, -865f)), _wgslsmith_f_op_f32(round(-864f))), func_4(vec3<bool>(-36220i >= u_input.d.x, all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)), !var_0.x), Struct_1(vec3<bool>(var_1.a.x, false, true), 0u, var_1.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(606f, 870f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 1818f)))), func_4(var_0.www, func_4(vec3<bool>(true, true, false), Struct_1(var_0.yxw, var_1.b, 1u), vec2<f32>(-1358f, -1512f), Struct_1(vec3<bool>(var_1.a.x, true, true), 4294967295u, 3854u)), vec2<f32>(199f, -120f), func_4(var_1.a, Struct_1(vec3<bool>(true, false, var_0.x), u_input.c.x, 76284u), vec2<f32>(1000f, 1023f), Struct_1(var_1.a, var_1.b, var_1.c))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(253f - _wgslsmith_f_op_f32(sign(-1539f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -801f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2160f + 1827f)))), func_4(func_4(func_4(!var_1.a, Struct_1(var_1.a, 4902u, 0u), vec2<f32>(1060f, -1966f), func_4(var_1.a, Struct_1(var_1.a, var_1.b, 4294967295u), vec2<f32>(-366f, -787f), Struct_1(vec3<bool>(true, false, true), 46574u, 0u))).a, func_4(var_1.a, Struct_1(vec3<bool>(true, true, var_1.a.x), var_1.c, var_1.b), vec2<f32>(1389f, 250f), Struct_1(vec3<bool>(false, true, var_1.a.x), u_input.b.x, u_input.c.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1249f, -245f))))), Struct_1(!var_0.xxy, abs(u_input.b.x), ~1u)).a, func_4(var_1.a, Struct_1(vec3<bool>(var_0.x, var_0.x, false), ~4294967295u, select(var_1.b, var_1.c, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2252f, 1171f) * vec2<f32>(2278f, -1073f))), func_4(vec3<bool>(true, true, false), func_4(var_0.zwy, Struct_1(vec3<bool>(false, var_0.x, var_1.a.x), 4294967295u, 4294967295u), vec2<f32>(2117f, 2003f), Struct_1(vec3<bool>(var_1.a.x, var_0.x, var_0.x), var_1.c, u_input.b.x)), vec2<f32>(329f, -725f), func_4(vec3<bool>(true, var_0.x, true), Struct_1(var_0.xwz, 13084u, 1u), vec2<f32>(608f, -791f), Struct_1(var_0.xzz, u_input.a.x, var_1.c)))), vec2<f32>(1f, 1f), func_4(var_0.yzw, Struct_1(var_1.a, _wgslsmith_div_u32(var_1.b, u_input.c.x), func_4(var_0.xxx, Struct_1(vec3<bool>(var_1.a.x, var_0.x, var_1.a.x), 54880u, 117286u), vec2<f32>(-1616f, 1000f), Struct_1(vec3<bool>(var_1.a.x, true, false), 0u, u_input.c.x)).c), vec2<f32>(_wgslsmith_f_op_f32(min(1586f, -445f)), _wgslsmith_f_op_f32(f32(-1f) * -579f)), Struct_1(vec3<bool>(true, false, var_1.a.x), select(var_1.c, 30367u, true), var_1.c))));
    var_1 = Struct_1(var_0.zzx, ~reverseBits(_wgslsmith_mod_u32(var_1.c, 82601u)), ~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(func_3((vec3<u32>(23929u, u_input.c.x, 24491u) ^ u_input.c.wwx) >> (vec3<u32>(1u, 1623u, var_1.b) % vec3<u32>(32u))).x, ~4656u), ~20180u, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1272f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f)), _wgslsmith_f_op_f32(1764f - -794f)))), _wgslsmith_f_op_f32(select(-2006f, 154f, false)));
}

