struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: i32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-947f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b + -1103f))))) == arg_3.b;
    var var_1 = firstLeadingBit(_wgslsmith_sub_u32(countOneBits(~u_input.a), ~475u)) >> ((_wgslsmith_mult_u32(4294967295u, arg_3.e.x) << (arg_3.e.x % 32u)) % 32u);
    var_1 = _wgslsmith_clamp_u32(~1921u, _wgslsmith_mod_u32(arg_2.x, _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec3_u32(u_input.b.wxy, ~arg_3.e.zyw))), 27863u);
    var_1 = arg_2.x;
    var_1 = _wgslsmith_mult_u32(~0u, arg_2.x);
    return arg_3.b;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1036f, 249f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-143f, 408f) - vec2<f32>(1083f, 1319f))))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d, u_input.b.xww, u_input.b.zz, Struct_3(45485i, -190f, -51975i, vec2<i32>(45797i, -35799i), u_input.b)))), -1000f))));
    var var_1 = vec3<i32>(-1i) * -(~(-max(vec3<i32>(2147483647i, -1i, -19078i), vec3<i32>(-1i, 0i, 2954i))));
    return Struct_1(-1060f, u_input.b.x, true, var_1.x <= -var_1.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_0.x, 888f), var_0.x, _wgslsmith_f_op_f32(var_0.x + 501f))))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = -_wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_add_i32(42799i, -8661i), -22083i, ~(-12959i)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 9703i, 1i), vec4<i32>(-9349i, -1i, 48197i, -60562i)), -10811i, ~1i));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(ceil(-1944f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(arg_0.e.x)))), abs(select(vec4<i32>(1i, 1i, 1i, 1i), ~abs(vec4<i32>(-1i, -29866i, -2147483647i, -50845i)), !select(vec4<bool>(arg_0.d, arg_0.d, arg_0.c, true), vec4<bool>(false, true, arg_0.c, arg_0.d), true))), Struct_3(~(~(-1i)), 1753f, ~reverseBits(~(-2147483647i)), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(2147483647i, 33048i), -vec2<i32>(-5926i, 47355i)), vec2<i32>(2147483647i, -2147483647i)), abs(_wgslsmith_add_vec4_u32(u_input.b ^ vec4<u32>(arg_0.b, 52009u, u_input.d, u_input.a), min(vec4<u32>(1u, 5777u, arg_0.b, 0u), vec4<u32>(u_input.b.x, 20582u, u_input.b.x, arg_0.b))))));
    var_0 = _wgslsmith_div_i32(-2147483647i, var_1.b.x);
    var_0 = -105148i;
    var_0 = var_1.b.x;
    return Struct_2(arg_0, -734f);
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = arg_1.a;
    var var_1 = countOneBits(u_input.a);
    var_1 = u_input.c;
    var var_2 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(1i, -12222i), ~(-1i << (var_0.b % 32u)), 1i, -1i), abs(vec4<i32>(reverseBits(-15687i), firstTrailingBit(2147483647i), 18639i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(1i, 36835i))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1434f - -265f))), -1263f)), i32(-1i) * -2147483647i, firstLeadingBit(firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(17432i, 2147483647i))), ~_wgslsmith_clamp_vec4_u32(u_input.b, reverseBits(u_input.b), vec4<u32>(~0u, arg_0 & 0u, var_0.b, 2203u)));
    var_1 = ~var_0.b;
    return max(_wgslsmith_mult_vec4_u32(u_input.b, firstTrailingBit(u_input.b) >> (_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(arg_1.a.b, arg_1.a.b, 4294967295u, 0u)) % vec4<u32>(32u))), min(vec4<u32>((16853u & var_2.e.x) << (countOneBits(56366u) % 32u), ~func_4(Struct_1(1000f, 28868u, false, false, arg_1.a.e)).a.b, ~(~25672u), ~var_0.b), u_input.b));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(-241f, func_5(~4294967295u, func_4(func_2())).x, -482f < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(arg_3.b.x - arg_2))), _wgslsmith_f_op_f32(floor(-129f)) > -1369f, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_3.b.x, arg_2))), vec3<f32>(1498f, 387f, arg_2), true))), _wgslsmith_f_op_f32(func_3(1u & (61027u | func_4(Struct_1(arg_3.b.x, arg_0.x, false, false, vec3<f32>(arg_2, -452f, -712f))).a.b), arg_0.wzx, u_input.b.zy, Struct_3(~max(2147483647i, -13634i), func_4(Struct_1(-248f, 0u, false, true, vec3<f32>(arg_3.b.x, 615f, arg_3.b.x))).a.e.x, 0i, reverseBits(~vec2<i32>(-4918i, 0i)), max(u_input.b, vec4<u32>(arg_3.a, 81920u, arg_1.x, u_input.d)) | (u_input.b | u_input.b)))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-951f - arg_3.b.x), _wgslsmith_f_op_f32(-1569f - 1000f), !var_0.a.c))), arg_1.x, false, true, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1126f, arg_2, _wgslsmith_f_op_f32(-209f - arg_2))))), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(func_3(~func_2().b, max(u_input.b.yxy, _wgslsmith_sub_vec3_u32(arg_1.wyy, u_input.b.wyy)), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 0u), u_input.b.yx, u_input.b.xz), _wgslsmith_mult_vec2_u32(arg_0.zx, vec2<u32>(0u, arg_1.x))), Struct_3(1i, 1190f, reverseBits(-1i), vec2<i32>(1i, 0i), u_input.b | vec4<u32>(17983u, var_0.a.b, 0u, arg_0.x))))));
    var_0 = func_4(func_2());
    var var_1 = vec3<i32>(-(~(-1i) >> (_wgslsmith_dot_vec3_u32(u_input.b.xwy, ~vec3<u32>(0u, 2920u, arg_1.x)) % 32u)), ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-15220i, 26489i)), vec2<i32>(-5935i, -48133i)) ^ (i32(-1i) * -28741i), min(firstTrailingBit(reverseBits(2147483647i)), 1i));
    var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(exp2(arg_2)), var_0.a.b, !var_0.a.d, true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, var_0.b, -828f)), func_2().e)));
    return arg_3;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool) -> f32 {
    var var_0 = false;
    var_0 = arg_0;
    var var_1 = func_6(func_5(1u, func_4(func_2())), vec4<u32>(107280u, (countOneBits(4294967295u) | u_input.d) ^ ~select(8340u, 25195u, true), reverseBits(32862u), func_5(func_5(_wgslsmith_div_u32(u_input.d, u_input.a), Struct_2(Struct_1(471f, 30194u, arg_0, true, vec3<f32>(-872f, 1706f, 1771f)), -1482f)).x, func_4(Struct_1(-213f, u_input.b.x, arg_2, arg_1, vec3<f32>(655f, 328f, 1909f)))).x), func_4(func_2()).a.e.x, Struct_4(~(~abs(u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, 771f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(289f)));
    var var_3 = Struct_4(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.b)) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(f32(-1f) * -921f)), _wgslsmith_f_op_f32(select(-554f, _wgslsmith_f_op_f32(min(-250f, 853f)), arg_1)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x));
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_5 {
    return Struct_5(!(!func_4(arg_1).a.c), _wgslsmith_sub_vec4_i32(~(vec4<i32>(arg_0.x, arg_0.x, 1i, arg_0.x) | _wgslsmith_mult_vec4_i32(vec4<i32>(28744i, 14700i, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, -2147483647i, 12956i, 4913i))), vec4<i32>(_wgslsmith_mult_i32(arg_0.x, _wgslsmith_clamp_i32(arg_0.x, -1i, -14736i)), ~(-2147483647i), ~(~arg_0.x), -4105i)), Struct_3(-_wgslsmith_div_i32(2147483647i, 1i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(!arg_1.c, true, arg_1.c || arg_1.d)))), -2147483647i, _wgslsmith_div_vec2_i32(-arg_0, ~arg_0), ~vec4<u32>(func_2().b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, 152687u, arg_1.b), vec3<u32>(24735u, 3916u, arg_1.b)), firstTrailingBit(u_input.a), 93451u)));
}

fn func_8(arg_0: i32, arg_1: u32, arg_2: Struct_5) -> i32 {
    var var_0 = _wgslsmith_div_vec4_u32(arg_2.c.e, ~(~vec4<u32>(56311u, _wgslsmith_mult_u32(u_input.b.x, 102694u), ~arg_1, _wgslsmith_mult_u32(u_input.a, arg_2.c.e.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.b, arg_2.c.b, -540f))) - vec3<f32>(-333f, func_6(arg_2.c.e, u_input.b, arg_2.c.b, Struct_4(1u, vec2<f32>(arg_2.c.b, 945f))).b.x, 639f)))));
    var var_2 = true;
    var var_3 = ~1u;
    var_2 = all(select(!select(vec2<bool>(true, true), select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(arg_2.a, true), vec2<bool>(arg_2.a, arg_2.a)), vec2<bool>(false, true)), vec2<bool>(true, any(!vec4<bool>(false, arg_2.a, false, arg_2.a))), select(select(!vec2<bool>(false, arg_2.a), !vec2<bool>(arg_2.a, arg_2.a), arg_2.a), vec2<bool>(arg_2.a, arg_2.a), arg_2.a)));
    return min(arg_2.b.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(21143i | arg_2.b.x, 0i), vec2<i32>(1i, arg_2.c.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(44819i, _wgslsmith_mod_u32(103840u, _wgslsmith_mult_u32(1u, ~(~u_input.c))), func_7(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i) >> (u_input.b.zy % vec2<u32>(32u)), vec2<i32>(_wgslsmith_div_i32(1i, 1i), 0i)), Struct_1(_wgslsmith_f_op_f32(func_1(false, false, true)), u_input.b.x, true, true, vec3<f32>(_wgslsmith_f_op_f32(abs(294f)), -2040f, _wgslsmith_f_op_f32(f32(-1f) * -1426f)))));
    var var_1 = vec3<i32>(abs(var_0), 1i, -76312i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~u_input.c, ~(~1u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) * vec2<f32>(-1720f, -672f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(412f, -360f))), vec2<f32>(1036f, 727f), all(vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(807f, 411f)) * vec2<f32>(-1000f, 1972f)))), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(Struct_1(-542f, u_input.a, false, false, vec3<f32>(630f, -1000f, 1712f))).b - 2119f)))), _wgslsmith_div_i32(var_0, _wgslsmith_sub_i32(var_0, 1i)));
}

