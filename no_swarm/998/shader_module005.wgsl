struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec3<f32> {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 20476u, 1u), vec3<u32>(arg_0, 1u, arg_0)))), 8439u, Struct_1(_wgslsmith_div_u32(1u, 48090u))), Struct_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(5446u, 4294967295u, 105531u, arg_0), vec4<u32>(0u, u_input.a, 50688u, 17484u)))), arg_0, Struct_1(1u)), Struct_2(Struct_1(u_input.a >> (~u_input.a % 32u)), ~7174u, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(109064u, 1u, 49977u, arg_0), ~vec4<u32>(arg_0, u_input.a, u_input.a, arg_0)))), _wgslsmith_mult_vec4_u32(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_0, 40810u, 4294967295u), vec4<u32>(arg_0, 1u, 21640u, 4294967295u), vec4<u32>(arg_0, 19110u, u_input.a, u_input.a)) | vec4<u32>(79771u, u_input.a, u_input.a, 68689u)), _wgslsmith_sub_vec4_u32(firstTrailingBit(select(vec4<u32>(arg_0, u_input.a, u_input.a, 4294967295u), vec4<u32>(arg_0, u_input.a, arg_0, 1u), true)), select(select(vec4<u32>(arg_0, 34415u, arg_0, u_input.a), vec4<u32>(0u, arg_0, 0u, u_input.a), true), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 62656u, 80174u, arg_0), vec4<u32>(u_input.a, arg_0, u_input.a, arg_0)), true))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(48429u, u_input.a, arg_0, u_input.a) ^ (vec4<u32>(18407u, arg_0, 2998u, 1u) >> (vec4<u32>(arg_0, u_input.a, u_input.a, 0u) % vec4<u32>(32u)))), abs(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, 17868u, u_input.a, 19855u), vec4<u32>(arg_0, 1u, 0u, 0u) << (vec4<u32>(u_input.a, 36286u, arg_0, 56986u) % vec4<u32>(32u))))));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1549f - _wgslsmith_div_f32(1936f, 768f)) - _wgslsmith_f_op_f32(min(131f, -163f))), -137f), _wgslsmith_f_op_f32(round(-1499f)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(430f)), -290f);
    var var_2 = _wgslsmith_sub_vec3_i32(min(_wgslsmith_mod_vec3_i32(vec3<i32>(-30405i, 1i, 59640i), vec3<i32>(1i, -2147483647i, -2147483647i) << (vec3<u32>(u_input.a, 4294967295u, 1u) % vec3<u32>(32u))) ^ vec3<i32>(~0i, -2147483647i, -26389i), ~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(36956i, 0i, 46811i), vec3<i32>(33863i, 71672i, 44482i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2147483647i, 76554i), vec3<i32>(-2147483647i, 29131i, -1i), vec3<i32>(2147483647i, -12201i, -7316i)))), firstLeadingBit(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(16771i, 10810i, -39377i), vec3<i32>(1i, 1i, 1i)))));
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 655f)) - vec2<f32>(_wgslsmith_f_op_f32(select(-991f, _wgslsmith_f_op_f32(trunc(-1000f)), true)), 306f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(ceil(-332f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-362f * -1000f) - _wgslsmith_div_f32(1551f, -1114f))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-579f, -1159f, -115f) - vec3<f32>(var_1.x, var_1.x, -1000f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * vec3<f32>(1000f, var_1.x, -651f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-105f, var_1.x, var_1.x), vec3<f32>(471f, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-496f, var_1.x, -933f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    var var_0 = select(vec2<bool>(true, !(all(vec2<bool>(true, true)) & select(true, false, false))), select(select(vec2<bool>(arg_0.a < 1u, true), vec2<bool>(true, true), true), !vec2<bool>(true, -795f <= arg_1.x), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), true), vec2<bool>(true, true), vec2<bool>(true, true))), true);
    var_0 = !(!(!(!(!vec2<bool>(var_0.x, true)))));
    let var_1 = _wgslsmith_mult_u32(u_input.a, 33792u);
    let var_2 = Struct_3(Struct_2(Struct_1(20303u), arg_0.a, arg_0), Struct_2(arg_0, firstLeadingBit(~arg_0.a), Struct_1(14383u)), Struct_2(arg_0, countOneBits(155776u), arg_0), max(_wgslsmith_mod_vec4_u32(vec4<u32>(1u << (u_input.a % 32u), ~u_input.a, 39680u, 1u), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.a, 48712u, var_1, u_input.a)), vec4<u32>(4294967295u, u_input.a, 0u, arg_0.a) << (vec4<u32>(u_input.a, var_1, 16611u, 0u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 1u, u_input.a, 49515u))), _wgslsmith_mod_vec4_u32(vec4<u32>(~0u, ~arg_0.a, select(4294967295u, arg_0.a, var_0.x), u_input.a | var_1), vec4<u32>(~9525u, ~1u, u_input.a & 64200u, min(0u, 4294967295u)))), 44072u);
    let var_3 = var_2.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(291f, 1001f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(u_input.a), _wgslsmith_f_op_vec3_f32(func_3(4294967295u)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-727f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(608f)))) - 1092f));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, 1000f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(399f, 1375f))), any(arg_3.zzx) && any(vec2<bool>(arg_3.x, arg_1))))), vec2<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(137f, var_0.x, false)))), -917f));
    var var_1 = ~(~u_input.a | firstTrailingBit(47722u));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-858f * _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(821f, var_0.x) + _wgslsmith_f_op_vec3_f32(func_3(81245u)).zz))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x))))));
    var var_2 = 12678i;
    return Struct_2(Struct_1(7153u), 4294967295u, arg_2.a.c);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    var var_0 = ~vec2<u32>(0u, _wgslsmith_add_u32(~arg_1.b.a.a << (4294967295u % 32u), arg_1.b.b));
    let var_1 = 1u;
    let var_2 = any(vec2<bool>(~(~var_1) == _wgslsmith_dot_vec3_u32(~vec3<u32>(49578u, u_input.a, u_input.a), arg_1.d.yzw & vec3<u32>(0u, 47940u, 30527u)), false));
    var_0 = select(vec2<u32>(abs(4294967295u), 4294967295u) << (max(arg_1.d.ww, vec2<u32>(~7266u, 5833u)) % vec2<u32>(32u)), arg_1.d.yy, all(!select(!vec3<bool>(true, var_2, false), vec3<bool>(true, false, var_2), select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, true), false))));
    var_0 = firstTrailingBit(~(~(~arg_1.d.zz)) | ((arg_1.d.zx ^ select(vec2<u32>(arg_3.a, arg_3.a), vec2<u32>(4294967295u, u_input.a), vec2<bool>(true, var_2))) | _wgslsmith_mult_vec2_u32(arg_1.d.yz, vec2<u32>(arg_0.a.a, arg_3.a))));
    return var_2;
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.x ^ _wgslsmith_mod_u32(1u, u_input.a), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.x, 215u, 30750u), vec3<u32>(49259u, 48784u, 4294967295u))), ~39018u, ~arg_3.x), vec4<u32>(u_input.a, _wgslsmith_mult_u32(11862u, u_input.a), firstLeadingBit(0u), 23639u)))).x;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_2, arg_2))));
    var var_2 = vec2<u32>(u_input.a ^ 1u, ~74979u);
    let var_3 = arg_1.x;
    let var_4 = vec2<bool>(var_3 | !(!arg_1.x && true), var_3);
    return func_2(func_2(Struct_1(1u), arg_1.x, Struct_3(func_2(func_2(Struct_1(82153u), var_3, Struct_3(Struct_2(Struct_1(49370u), 29421u, Struct_1(var_2.x)), Struct_2(Struct_1(var_2.x), arg_3.x, Struct_1(arg_3.x)), Struct_2(Struct_1(var_2.x), arg_3.x, Struct_1(arg_3.x)), vec4<u32>(var_2.x, 0u, arg_3.x, u_input.a), var_2.x), vec4<bool>(var_3, arg_1.x, true, true)).a, false, Struct_3(Struct_2(Struct_1(u_input.a), var_2.x, Struct_1(1u)), Struct_2(Struct_1(0u), u_input.a, Struct_1(1u)), Struct_2(Struct_1(var_2.x), 0u, Struct_1(u_input.a)), vec4<u32>(19941u, 81605u, 0u, u_input.a), 59656u), !vec4<bool>(false, var_3, var_4.x, true)), func_2(func_2(Struct_1(arg_3.x), arg_1.x, Struct_3(Struct_2(Struct_1(arg_3.x), arg_3.x, Struct_1(u_input.a)), Struct_2(Struct_1(46933u), arg_3.x, Struct_1(0u)), Struct_2(Struct_1(14499u), 0u, Struct_1(var_2.x)), vec4<u32>(0u, 71893u, arg_3.x, 4294967295u), arg_3.x), vec4<bool>(true, arg_1.x, var_4.x, true)).c, var_4.x, Struct_3(Struct_2(Struct_1(arg_3.x), arg_3.x, Struct_1(u_input.a)), Struct_2(Struct_1(0u), arg_3.x, Struct_1(arg_3.x)), Struct_2(Struct_1(67948u), var_2.x, Struct_1(9388u)), vec4<u32>(2616u, u_input.a, 0u, u_input.a), var_2.x), vec4<bool>(true, true, var_3, false)), func_2(func_2(Struct_1(arg_3.x), false, Struct_3(Struct_2(Struct_1(92213u), 0u, Struct_1(75244u)), Struct_2(Struct_1(0u), 16200u, Struct_1(var_2.x)), Struct_2(Struct_1(0u), 67473u, Struct_1(4294967295u)), vec4<u32>(u_input.a, 20449u, arg_3.x, 67361u), 1u), vec4<bool>(false, false, var_3, false)).c, var_4.x, Struct_3(Struct_2(Struct_1(37660u), 4294967295u, Struct_1(var_2.x)), Struct_2(Struct_1(42851u), 17475u, Struct_1(0u)), Struct_2(Struct_1(arg_3.x), arg_3.x, Struct_1(var_2.x)), vec4<u32>(arg_3.x, u_input.a, arg_3.x, 13688u), 1u), vec4<bool>(false, arg_1.x, false, var_4.x)), vec4<u32>(func_2(Struct_1(42112u), true, Struct_3(Struct_2(Struct_1(u_input.a), u_input.a, Struct_1(44077u)), Struct_2(Struct_1(4294967295u), 2561u, Struct_1(37966u)), Struct_2(Struct_1(var_2.x), 1u, Struct_1(55896u)), vec4<u32>(var_2.x, 16792u, 0u, u_input.a), 0u), vec4<bool>(var_3, var_3, var_4.x, var_4.x)).b, ~0u, abs(u_input.a), abs(4294967295u)), ~arg_3.x), vec4<bool>(true, any(!vec4<bool>(arg_1.x, false, false, var_4.x)), !(var_3 && true), true)).c, arg_1.x, Struct_3(func_2(func_2(func_2(Struct_1(arg_3.x), var_3, Struct_3(Struct_2(Struct_1(1u), u_input.a, Struct_1(1u)), Struct_2(Struct_1(62756u), arg_3.x, Struct_1(var_2.x)), Struct_2(Struct_1(var_2.x), u_input.a, Struct_1(7922u)), vec4<u32>(arg_3.x, arg_3.x, u_input.a, u_input.a), var_2.x), vec4<bool>(var_3, false, var_3, var_3)).a, false, Struct_3(Struct_2(Struct_1(1u), 1u, Struct_1(u_input.a)), Struct_2(Struct_1(arg_3.x), u_input.a, Struct_1(arg_3.x)), Struct_2(Struct_1(4294967295u), u_input.a, Struct_1(1u)), vec4<u32>(29027u, arg_3.x, u_input.a, u_input.a), var_2.x), vec4<bool>(true, true, var_4.x, true)).c, !arg_1.x, Struct_3(Struct_2(Struct_1(25494u), u_input.a, Struct_1(26791u)), func_2(Struct_1(1u), true, Struct_3(Struct_2(Struct_1(u_input.a), 100611u, Struct_1(u_input.a)), Struct_2(Struct_1(42662u), 51155u, Struct_1(arg_3.x)), Struct_2(Struct_1(u_input.a), var_2.x, Struct_1(140776u)), vec4<u32>(var_2.x, arg_3.x, 51020u, 45888u), var_2.x), vec4<bool>(false, var_3, false, true)), Struct_2(Struct_1(arg_3.x), 62165u, Struct_1(69852u)), vec4<u32>(var_2.x, arg_3.x, var_2.x, var_2.x), var_2.x), vec4<bool>(select(true, false, arg_1.x), func_5(Struct_2(Struct_1(0u), 687u, Struct_1(u_input.a)), Struct_3(Struct_2(Struct_1(u_input.a), 55388u, Struct_1(var_2.x)), Struct_2(Struct_1(69834u), 4294967295u, Struct_1(var_2.x)), Struct_2(Struct_1(0u), 0u, Struct_1(42409u)), vec4<u32>(arg_3.x, var_2.x, 68349u, 1u), 0u), vec4<f32>(var_1, -1128f, arg_2, 1668f), Struct_1(3676u)), arg_1.x, var_4.x || false)), func_2(Struct_1(0u), all(!vec4<bool>(arg_1.x, true, true, arg_1.x)), Struct_3(func_2(Struct_1(u_input.a), var_4.x, Struct_3(Struct_2(Struct_1(77306u), arg_3.x, Struct_1(u_input.a)), Struct_2(Struct_1(48310u), var_2.x, Struct_1(0u)), Struct_2(Struct_1(20319u), u_input.a, Struct_1(53760u)), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), 1u), vec4<bool>(false, false, false, arg_1.x)), Struct_2(Struct_1(arg_3.x), var_2.x, Struct_1(arg_3.x)), Struct_2(Struct_1(1u), u_input.a, Struct_1(u_input.a)), vec4<u32>(5458u, var_2.x, 21497u, 1u), u_input.a ^ 1u), !vec4<bool>(var_3, false, var_3, arg_1.x)), func_2(Struct_1(~u_input.a), false, Struct_3(Struct_2(Struct_1(1u), var_2.x, Struct_1(arg_3.x)), Struct_2(Struct_1(u_input.a), arg_3.x, Struct_1(4294967295u)), Struct_2(Struct_1(arg_3.x), 0u, Struct_1(var_2.x)), ~vec4<u32>(var_2.x, 43091u, u_input.a, 1u), _wgslsmith_sub_u32(57907u, u_input.a)), vec4<bool>(false, var_4.x, var_4.x, true)), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.a, u_input.a, arg_3.x, arg_3.x)) & (vec4<u32>(68211u, 35933u, arg_3.x, arg_3.x) << (vec4<u32>(arg_3.x, arg_3.x, arg_3.x, var_2.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 1u, arg_3.x), ~vec4<u32>(4294967295u, var_2.x, 45061u, var_2.x))), _wgslsmith_mod_u32(16567u, reverseBits(max(1u, var_2.x)))), select(vec4<bool>(false, !arg_1.x, true, !(true | arg_1.x)), vec4<bool>(true, arg_1.x, any(arg_1), !all(vec4<bool>(false, true, true, var_3))), !(!vec4<bool>(false, var_3, true, arg_1.x)))).a;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(u_input.a, 9773u), 0u, u_input.a, ~u_input.a);
    return Struct_2(func_6(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 43795i, -1i), abs(vec3<i32>(2147483647i, -2147483647i, 40859i))), vec3<bool>(!any(vec4<bool>(true, false, true, false)), true, func_5(func_2(Struct_1(u_input.a), false, Struct_3(Struct_2(Struct_1(78056u), u_input.a, Struct_1(22162u)), Struct_2(Struct_1(1u), var_0.x, Struct_1(var_0.x)), Struct_2(Struct_1(u_input.a), 18665u, Struct_1(var_0.x)), vec4<u32>(64715u, 4294967295u, var_0.x, 2329u), u_input.a), vec4<bool>(false, true, true, false)), Struct_3(Struct_2(Struct_1(89078u), var_0.x, Struct_1(1u)), Struct_2(Struct_1(1u), 1u, Struct_1(var_0.x)), Struct_2(Struct_1(u_input.a), u_input.a, Struct_1(var_0.x)), vec4<u32>(var_0.x, 16341u, 4294967295u, var_0.x), 0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, arg_0.x, 1491f, arg_0.x)), func_2(Struct_1(165794u), true, Struct_3(Struct_2(Struct_1(var_0.x), 41412u, Struct_1(u_input.a)), Struct_2(Struct_1(var_0.x), 71517u, Struct_1(1u)), Struct_2(Struct_1(u_input.a), var_0.x, Struct_1(99415u)), vec4<u32>(9470u, u_input.a, 4294967295u, 32333u), 1u), vec4<bool>(true, false, true, false)).c)), -692f, var_0.wy), 0u, func_2(func_2(Struct_1(1u >> (0u % 32u)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false)), Struct_3(func_2(Struct_1(var_0.x), true, Struct_3(Struct_2(Struct_1(2635u), u_input.a, Struct_1(0u)), Struct_2(Struct_1(102027u), var_0.x, Struct_1(3632u)), Struct_2(Struct_1(u_input.a), 1u, Struct_1(var_0.x)), vec4<u32>(64672u, var_0.x, var_0.x, var_0.x), 0u), vec4<bool>(false, true, true, true)), func_2(Struct_1(0u), true, Struct_3(Struct_2(Struct_1(55914u), u_input.a, Struct_1(u_input.a)), Struct_2(Struct_1(0u), 71345u, Struct_1(var_0.x)), Struct_2(Struct_1(var_0.x), 18008u, Struct_1(20899u)), vec4<u32>(23042u, var_0.x, 0u, var_0.x), var_0.x), vec4<bool>(true, true, false, true)), func_2(Struct_1(u_input.a), false, Struct_3(Struct_2(Struct_1(var_0.x), 0u, Struct_1(var_0.x)), Struct_2(Struct_1(1u), 38534u, Struct_1(0u)), Struct_2(Struct_1(u_input.a), var_0.x, Struct_1(66980u)), vec4<u32>(25128u, 43854u, var_0.x, 0u), 3111u), vec4<bool>(true, true, false, true)), select(vec4<u32>(u_input.a, 0u, var_0.x, var_0.x), vec4<u32>(var_0.x, u_input.a, 15124u, u_input.a), vec4<bool>(false, true, true, true)), ~61151u), vec4<bool>(all(vec4<bool>(true, false, false, true)), select(false, true, false), true, true)).a, !any(vec3<bool>(true, true, true)), Struct_3(Struct_2(func_2(Struct_1(11723u), false, Struct_3(Struct_2(Struct_1(var_0.x), u_input.a, Struct_1(14904u)), Struct_2(Struct_1(2102u), u_input.a, Struct_1(u_input.a)), Struct_2(Struct_1(12369u), var_0.x, Struct_1(var_0.x)), vec4<u32>(4294967295u, var_0.x, 0u, 0u), u_input.a), vec4<bool>(true, true, true, true)).a, 2771u, Struct_1(var_0.x)), func_2(Struct_1(var_0.x), all(vec4<bool>(true, false, false, false)), Struct_3(Struct_2(Struct_1(var_0.x), var_0.x, Struct_1(4294967295u)), Struct_2(Struct_1(u_input.a), 41145u, Struct_1(var_0.x)), Struct_2(Struct_1(var_0.x), 1u, Struct_1(var_0.x)), vec4<u32>(u_input.a, 0u, 1u, var_0.x), 4294967295u), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true)), Struct_2(Struct_1(u_input.a), _wgslsmith_dot_vec3_u32(var_0.zwz, var_0.zyz), Struct_1(u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(11815u, 0u, 8303u, u_input.a) << (vec4<u32>(var_0.x, u_input.a, 1u, var_0.x) % vec4<u32>(32u)), vec4<u32>(u_input.a, 4294967295u, var_0.x, 33932u) | vec4<u32>(u_input.a, 30695u, 85862u, 39495u), vec4<u32>(0u, var_0.x, 1u, u_input.a)), u_input.a), select(vec4<bool>(u_input.a <= 18378u, true, all(vec3<bool>(true, false, true)), func_5(Struct_2(Struct_1(var_0.x), var_0.x, Struct_1(39603u)), Struct_3(Struct_2(Struct_1(var_0.x), 60872u, Struct_1(var_0.x)), Struct_2(Struct_1(0u), u_input.a, Struct_1(4294967295u)), Struct_2(Struct_1(u_input.a), u_input.a, Struct_1(u_input.a)), vec4<u32>(106973u, u_input.a, 4294967295u, var_0.x), var_0.x), vec4<f32>(arg_0.x, 1666f, arg_0.x, 612f), Struct_1(39644u))), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), true))).c);
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = select(vec2<bool>(any(vec2<bool>(arg_3.x && arg_3.x, true)), !(arg_3.x != arg_3.x)), select(arg_3, !select(arg_3, arg_3, !vec2<bool>(arg_3.x, arg_3.x)), vec2<bool>(arg_3.x, arg_3.x)), select(arg_3, arg_3, vec2<bool>(arg_3.x, !any(vec4<bool>(true, false, arg_3.x, arg_3.x)))));
    var_0 = select(select(select(!select(arg_3, vec2<bool>(arg_3.x, true), vec2<bool>(arg_3.x, var_0.x)), arg_3, true), !vec2<bool>(var_0.x, true), true), !vec2<bool>(var_0.x, !func_5(Struct_2(Struct_1(arg_1.c.a), u_input.a, Struct_1(u_input.a)), Struct_3(Struct_2(Struct_1(1u), 4294967295u, arg_2), Struct_2(arg_2, 0u, arg_1.c), Struct_2(Struct_1(4294967295u), 1u, arg_1.c), vec4<u32>(arg_2.a, 1u, u_input.a, 125250u), arg_2.a), vec4<f32>(115f, arg_0.x, 1028f, -726f), arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -869f) < _wgslsmith_f_op_f32(floor(392f)));
    let var_1 = func_2(arg_2, all(!vec3<bool>(var_0.x, all(vec3<bool>(false, arg_3.x, false)), false)), Struct_3(Struct_2(arg_1.c, 1u, arg_2), Struct_2(func_2(func_2(arg_1.c, arg_3.x, Struct_3(arg_1, arg_1, arg_1, vec4<u32>(46497u, 5377u, u_input.a, u_input.a), arg_1.c.a), vec4<bool>(var_0.x, var_0.x, false, true)).a, true, Struct_3(Struct_2(arg_1.a, arg_2.a, Struct_1(12539u)), arg_1, Struct_2(arg_2, 1u, arg_1.a), vec4<u32>(arg_2.a, arg_1.c.a, 4294967295u, u_input.a), arg_1.b), vec4<bool>(var_0.x, var_0.x, var_0.x, true)).a, _wgslsmith_mod_u32(48881u, arg_1.c.a) ^ _wgslsmith_mod_u32(8320u, arg_2.a), arg_2), Struct_2(arg_1.a, arg_2.a, func_6(vec3<i32>(-26980i, 29551i, -2147483647i), vec3<bool>(true, true, true), arg_0.x, firstLeadingBit(vec2<u32>(1u, arg_2.a)))), ~vec4<u32>(func_1(vec4<f32>(arg_0.x, -135f, 1722f, -1379f)).c.a, u_input.a, 6363u, u_input.a), arg_2.a), !select(vec4<bool>(true, true, true, arg_3.x), select(vec4<bool>(arg_3.x, arg_3.x, true, false), !vec4<bool>(true, false, true, arg_3.x), !vec4<bool>(arg_3.x, arg_3.x, false, false)), any(select(arg_3, arg_3, false))));
    var_0 = arg_3;
    let var_2 = vec4<bool>(all(select(vec3<bool>(true, arg_3.x, var_0.x), !select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, arg_3.x), vec3<bool>(arg_3.x, var_0.x, true)), !select(vec3<bool>(false, true, true), vec3<bool>(arg_3.x, false, false), vec3<bool>(arg_3.x, true, arg_3.x)))), var_0.x, arg_3.x, false);
    return func_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3(var_1.b)).x, -1970f)), arg_0.x, _wgslsmith_f_op_f32(sign(arg_0.x)), arg_0.x));
}

fn func_8(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = ~32551u;
    let var_1 = 1u;
    let var_2 = ~countOneBits(var_0);
    let var_3 = vec4<bool>(any(vec2<bool>(false, any(vec4<bool>(true, true, true, true)))), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), any(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, all(vec3<bool>(false, true, true)), all(vec2<bool>(true, true))))), !any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, true, true), any(vec4<bool>(false, true, false, true)))));
    return Struct_1(40773u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(abs(~73857u)), 1u, func_8(func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-363f, -384f))), func_1(vec4<f32>(-414f, 268f, -1139f, 141f)), Struct_1(func_6(vec3<i32>(-2147483647i, 2147483647i, -40386i), vec3<bool>(true, false, true), -961f, vec2<u32>(u_input.a, 82525u)).a), vec2<bool>(true, true)), _wgslsmith_add_u32(0u, 33284u | u_input.a), _wgslsmith_f_op_f32(func_4(Struct_1(u_input.a & 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-419f, -1676f, -529f))))))));
    var var_1 = vec3<i32>(~firstTrailingBit(-1i), _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, 6659i), min(~1i, -abs(-1i))), ~abs(~(-2147483647i)));
    let var_2 = 1494i;
    let var_3 = countOneBits(vec4<u32>(_wgslsmith_mod_u32(func_6(max(vec3<i32>(var_1.x, -1i, 0i), vec3<i32>(var_1.x, var_2, var_2)), vec3<bool>(false, false, true), 1000f, ~vec2<u32>(var_0.b, 24508u)).a, ~_wgslsmith_div_u32(83536u, var_0.a.a)), 1u, 0u, var_0.a.a));
    var var_4 = func_6(vec3<i32>(max(var_1.x, -2147483647i), var_1.x, var_2 & ~(var_1.x ^ 1i)), select(vec3<bool>(true, all(vec4<bool>(true, true, false, true)) && all(vec3<bool>(false, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(any(vec2<bool>(true, false)), false, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))))), -355f, ~(~reverseBits(var_3.wy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 1000f, 1567f, 1084f), vec4<f32>(970f, 425f, 1206f, 790f), false)), vec4<f32>(428f, -973f, 415f, -1495f)), vec4<f32>(_wgslsmith_f_op_f32(-989f * 1089f), _wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(min(245f, -765f)), _wgslsmith_f_op_f32(f32(-1f) * -896f)))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-831f + -230f), _wgslsmith_f_op_f32(-211f - -693f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(103f, 152f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) + 1f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-162f, 112f), _wgslsmith_f_op_f32(f32(-1f) * -452f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(511f + _wgslsmith_f_op_f32(func_4(var_0.a, _wgslsmith_div_vec3_f32(vec3<f32>(1225f, 1647f, 835f), vec3<f32>(1983f, -250f, -728f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-980f * -1000f), _wgslsmith_f_op_f32(751f * 1083f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(777f))));
}

