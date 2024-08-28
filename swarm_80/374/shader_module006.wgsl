struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(vec4<f32>(476f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1450f, -469f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-697f * -1048f))), -911f), 265f), u_input.a >> (~0u % 32u), select(~(~(u_input.c & 0u)), abs(~u_input.c), u_input.a == u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(701f - -699f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-940f, 1350f, true))))), -277f), 22834u);
    let var_1 = select(~(~(-31146i)), ~1i, false);
    var_0 = Struct_1(var_0.a, 0i, ~firstTrailingBit(min(u_input.c, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d, var_0.d)))))), var_0.e);
    var var_2 = Struct_2(any(vec4<bool>(false, false, true, true)), ~(~vec2<u32>(29209u, var_0.e)), ~vec3<i32>(u_input.a ^ _wgslsmith_mod_i32(var_1, u_input.a), min(_wgslsmith_sub_i32(0i, var_1), var_1), var_0.b), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) * var_0.a), u_input.a, u_input.c, 1352f, u_input.c));
    var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.d.d, 1351f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a.x, -364f, 911f))))), _wgslsmith_f_op_vec4_f32(trunc(var_0.a))), _wgslsmith_mult_i32(var_0.b >> ((~var_0.e << (firstTrailingBit(u_input.c) % 32u)) % 32u), ~var_1), var_0.c, _wgslsmith_f_op_f32(589f + _wgslsmith_f_op_f32(-1726f + _wgslsmith_f_op_f32(-var_2.d.a.x))), ~4294967295u);
    return _wgslsmith_mult_vec2_i32(-min(var_2.c.xy << (vec2<u32>(4294967295u, 11056u) % vec2<u32>(32u)), reverseBits(vec2<i32>(u_input.a, u_input.a))), var_2.c.xy);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2014f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-169f, 189f)))), ~(-u_input.a), u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1548f), 41063u);
    var var_1 = func_3() & vec2<i32>(reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, -15820i, var_0.b, -59857i), ~vec4<i32>(u_input.a, var_0.b, u_input.a, -1i))), u_input.a & reverseBits(func_3().x));
    let var_2 = var_0;
    var_1 = vec2<i32>(1i | _wgslsmith_dot_vec2_i32(vec2<i32>(15380i, 1i) << (vec2<u32>(var_0.e, 4294967295u) % vec2<u32>(32u)), vec2<i32>(u_input.a, 2147483647i) ^ vec2<i32>(var_1.x, var_0.b)), -4638i) << (vec2<u32>(var_2.e, ~90306u) % vec2<u32>(32u));
    var_1 = countOneBits(abs(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(1861i, -11289i), vec2<i32>(var_0.b, -7992i))))) >> ((~vec2<u32>(var_0.e ^ var_0.e, 0u) & vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.c, 1u, var_2.c), 23658u), var_0.e)) % vec2<u32>(32u));
    return Struct_2(_wgslsmith_mod_i32(-1i, firstLeadingBit(firstTrailingBit(var_1.x))) != ~(var_0.b >> ((var_0.c | u_input.b) % 32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.e) ^ vec2<u32>(u_input.b, 4294967295u), vec2<u32>(var_0.c, 68907u))), _wgslsmith_div_vec2_u32(vec2<u32>(68811u, ~18773u), ~(vec2<u32>(26278u, var_2.c) >> (vec2<u32>(var_2.e, 0u) % vec2<u32>(32u)))), select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 36866u), vec2<u32>(7737u, var_2.c)), ~vec2<u32>(var_0.c, var_2.e), true) ^ ~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.b, 0u))), _wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(-18910i, var_2.b, 0i)), -abs(vec3<i32>(var_1.x, 1i, 0i))), var_2);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(~arg_1, vec2<u32>(~(4294967295u & countOneBits(u_input.c)), arg_0.d.c), arg_0.b);
    let var_1 = arg_1.x >> (((_wgslsmith_clamp_u32(38136u, _wgslsmith_div_u32(arg_0.d.e, 84007u), 45336u) << (28273u % 32u)) ^ ~1u) % 32u);
    let var_2 = Struct_2(-_wgslsmith_mult_i32(55512i ^ u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.b, arg_0.c.x, -35548i, 1i), vec4<i32>(-2147483647i, u_input.a, -24724i, u_input.a))) == -1i, vec2<u32>(~0u, ~(var_0.x | var_1)), (vec3<i32>(~arg_0.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, u_input.a, u_input.a, -25747i), vec4<i32>(2147483647i, u_input.a, -7313i, arg_0.d.b)), -arg_0.c.x) >> ((select(vec3<u32>(var_1, var_0.x, var_1), vec3<u32>(35334u, 7647u, arg_1.x), arg_0.a) << ((vec3<u32>(18055u, 1u, 4294967295u) >> (vec3<u32>(15385u, arg_0.d.e, 9312u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ arg_0.c, Struct_1(vec4<f32>(-1620f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d.d, arg_0.d.a.x) * arg_0.d.d), _wgslsmith_f_op_f32(-arg_0.d.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(2599f, arg_0.d.d))))), _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(arg_0.c, vec3<i32>(u_input.a, 2147483647i, u_input.a)), arg_0.c), _wgslsmith_mod_u32(34023u, arg_0.b.x), _wgslsmith_f_op_f32(abs(-352f)), var_0.x));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(2169f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.d.a.x)), 769f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-arg_0.d.a.x)))))), _wgslsmith_f_op_f32(-arg_0.d.d), arg_0.d.a.x);
    var var_4 = !(!select(vec4<bool>(arg_0.a, !arg_0.a, arg_0.a, arg_0.a), vec4<bool>(343f != var_2.d.a.x, false, func_2().a, all(vec4<bool>(false, false, false, true))), !select(vec4<bool>(false, false, arg_0.a, true), vec4<bool>(true, true, arg_0.a, var_2.a), vec4<bool>(arg_0.a, false, arg_0.a, var_2.a))));
    return -1i;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = func_2().d;
    let var_1 = !select(!select(vec4<bool>(arg_2.a, arg_2.a, false, false), !vec4<bool>(true, arg_2.a, arg_2.a, arg_2.a), true), select(select(vec4<bool>(false, arg_2.a, false, false), vec4<bool>(true, arg_2.a, arg_2.a, arg_2.a), arg_2.a), !select(vec4<bool>(arg_2.a, true, false, arg_2.a), vec4<bool>(arg_2.a, true, true, false), arg_2.a), !select(vec4<bool>(arg_2.a, false, true, false), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true), true)), vec4<bool>(all(!vec2<bool>(arg_2.a, arg_2.a)), all(vec4<bool>(false, arg_2.a, arg_2.a, true)), arg_2.d.a.x != _wgslsmith_f_op_f32(f32(-1f) * -2539f), true));
    var_0 = arg_0;
    var var_2 = func_2();
    var var_3 = _wgslsmith_dot_vec2_i32(abs(min(-vec2<i32>(var_2.d.b, 1i), ~func_3())), arg_2.c.zz);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.d.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), arg_0.d) * arg_0.a.x), _wgslsmith_f_op_f32(floor(arg_2.d.a.x)), _wgslsmith_f_op_f32(round(1311f))), ~(-2147483647i), abs(var_2.d.c), _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.d * arg_2.d.a.x) + 585f), _wgslsmith_f_op_f32(min(-765f, arg_0.a.x)))), arg_0.e);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: f32, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = arg_3.xyx;
    var var_1 = func_5(Struct_1(vec4<f32>(arg_1.x, arg_1.x, 1f, arg_1.x), -47329i, arg_0.x, arg_2, 4294967295u), func_4(func_2(), arg_0.xy), Struct_2(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), vec2<u32>(max(arg_0.x >> (u_input.b % 32u), ~0u), 73337u), -func_2().c, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -607f, arg_1.x, arg_2) + vec4<f32>(1324f, arg_2, 1000f, -437f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1190f, arg_2, arg_2, arg_1.x) * vec4<f32>(216f, -324f, arg_1.x, arg_1.x))), ~_wgslsmith_dot_vec3_i32(arg_3.xxw, var_0), arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -755f), _wgslsmith_dot_vec2_u32(countOneBits(arg_0.ww), _wgslsmith_mult_vec2_u32(arg_0.yz, vec2<u32>(46919u, u_input.b))))));
    var_1 = func_5(Struct_1(var_1.a, _wgslsmith_mult_i32(func_4(Struct_2(false, arg_0.xx, vec3<i32>(-65735i, 11608i, arg_3.x), Struct_1(vec4<f32>(-803f, var_1.a.x, -1000f, arg_1.x), var_0.x, var_1.c, var_1.a.x, var_1.c)), abs(vec2<u32>(u_input.c, u_input.c))), -var_1.b ^ -1i), countOneBits(_wgslsmith_mult_u32(1u, countOneBits(u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(831f - arg_2) - -2021f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1.x, -573f))))), u_input.b), abs(-48317i), Struct_2(true, abs(arg_0.zy), arg_3.xzz, func_5(Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, -1579f, 802f, 272f), var_1.a)), 0i, var_1.e ^ 12101u, _wgslsmith_f_op_f32(arg_1.x * -414f), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), arg_0.wz)), var_0.x, Struct_2(true, min(arg_0.wx, arg_0.zw), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.b, u_input.a, var_1.b), var_0), func_5(Struct_1(vec4<f32>(-517f, 198f, var_1.d, arg_2), 2147483647i, 30924u, -2147f, 74323u), var_1.b, Struct_2(false, arg_0.wy, vec3<i32>(arg_3.x, arg_3.x, var_0.x), Struct_1(var_1.a, var_0.x, 1u, 1961f, 1u)))))));
    var_1 = Struct_1(vec4<f32>(func_5(Struct_1(var_1.a, func_2().d.b, 83207u, 165f, _wgslsmith_add_u32(53798u, 49298u)), ~(-arg_3.x), func_2()).d, arg_1.x, var_1.d, arg_2), _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_3.x, var_0.x), select(0i, var_1.b, var_1.b != (arg_3.x ^ arg_3.x))), ~var_1.c, -252f, u_input.b);
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), func_2().c.x, 1u, -441f, var_1.e);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = -(~abs(~(-vec2<i32>(1i, -1i))));
    let var_2 = func_1(~_wgslsmith_add_vec4_u32((vec4<u32>(u_input.c, u_input.c, u_input.b, 4294967295u) << (vec4<u32>(11301u, 4294967295u, 5490u, 33153u) % vec4<u32>(32u))) << (~vec4<u32>(14576u, u_input.b, u_input.c, u_input.b) % vec4<u32>(32u)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c, 11373u, u_input.b), vec4<u32>(u_input.c, u_input.b, 1u, u_input.c)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(263f, -1972f, 1147f) * vec3<f32>(1000f, 609f, 420f)), vec3<f32>(178f, -267f, 341f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1203f, 1555f, -253f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-307f, -997f, -1192f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1000f))))), select(((vec4<i32>(u_input.a, var_1.x, u_input.a, 2147483647i) ^ vec4<i32>(2147483647i, var_1.x, -22043i, u_input.a)) << (abs(vec4<u32>(u_input.c, u_input.b, u_input.b, 29121u)) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(52234i, 44100i, u_input.a, -21043i) & vec4<i32>(-53916i, 14732i, var_1.x, 2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -54998i, u_input.a, u_input.a), vec4<i32>(-75778i, -39894i, u_input.a, u_input.a), vec4<i32>(var_1.x, u_input.a, -1i, var_1.x))), -firstLeadingBit(vec4<i32>(6350i, -2147483647i, var_1.x, u_input.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), any(vec2<bool>(false, false)))));
    let var_3 = false;
    var var_4 = 5647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(var_2.d.a.xy)), 557f, vec2<u32>(64115u, min(var_2.b.x >> (103047u % 32u), ~39566u)) | vec2<u32>(~countOneBits(1u), 0u << (u_input.c % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_2.d.a.yxy), _wgslsmith_f_op_vec3_f32(var_2.d.a.zzy - var_2.d.a.wxy))))) * var_2.d.a.xwx));
}

