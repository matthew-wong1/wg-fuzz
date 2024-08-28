struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    var var_0 = vec3<u32>(4294967295u, arg_0.a.x, 0u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(769f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f) - -337f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(step(arg_0.d.x, arg_0.d.x))))), _wgslsmith_f_op_f32(-arg_0.d.x), 1148f);
    var_0 = ~(~countOneBits(_wgslsmith_div_vec3_u32(max(vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(arg_0.c, 4294967295u, 52788u)), reverseBits(vec3<u32>(70709u, arg_0.a.x, arg_0.c)))));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(177f))), 139f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2749f, arg_0.d.x))), -819f), arg_0.d.x));
    return -1149f;
}

fn func_2() -> Struct_3 {
    let var_0 = all(vec3<bool>(false, true, true)) != !(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(4294967295u, 59581u, 19700u, 51107u), u_input.a, 42299u, vec3<f32>(1823f, -787f, 785f), vec3<i32>(51436i, -10059i, 1i)), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)))) <= 316f);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -362f);
    let var_2 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(3100u, 0u), vec2<u32>(1u, 1u)), 13757u, ~67565u, ~31758u), ~1i, max(~35103u, ~(~10021u)), vec3<f32>(372f, -562f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<i32>(abs(22081i), ~(-2147483647i), ~(-8533i)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 11188i, u_input.a) >> (vec3<u32>(102450u, 1u, 46303u) % vec3<u32>(32u)), -vec3<i32>(u_input.a, u_input.a, u_input.a), select(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(-1i, u_input.a, 0i), vec3<bool>(var_0, var_0, var_0)))), min(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 18152u, 55011u, 8072u)), ~(~vec4<u32>(4294967295u, 13212u, 24537u, 0u))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-400f, -644f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(492f, -708f), vec2<f32>(-205f, -170f)))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(535f, -756f)))))), Struct_1(~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(16456u, 63823u, 4294967295u, 10029u), vec4<u32>(1u, 22333u, 52877u, 59350u), vec4<u32>(44397u, 70003u, 506u, 0u)), vec4<u32>(79782u, 0u, 4294967295u, 27668u), firstLeadingBit(vec4<u32>(1u, 0u, 4294967295u, 15792u))), 21362i, 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1557f, -1849f, -1138f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(696f, -256f, 1493f)))))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2603i, 39020i, 33872i), vec4<i32>(u_input.a, 0i, 2147483647i, u_input.a)) | firstTrailingBit(21237i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -65602i, u_input.a), vec3<i32>(u_input.a, -2147483647i, u_input.a)), select(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(0i, 6107i, 2147483647i), var_0)), -2147483647i)), var_0);
    var var_3 = select(any(vec4<bool>(var_0 == var_2.e, var_0, var_2.a.d.x < 1291f, false)) | !var_0, !any(!(!vec4<bool>(var_2.e, var_2.e, true, var_2.e))), false);
    let var_4 = _wgslsmith_sub_vec2_i32(~vec2<i32>(6995i, 0i), _wgslsmith_div_vec2_i32(~select(vec2<i32>(u_input.a, -18559i), var_2.d.e.yx, vec2<bool>(false, true)) >> (var_2.a.a.wy % vec2<u32>(32u)), var_2.a.e.zz));
    return Struct_3(vec2<f32>(var_2.a.d.x, var_2.a.d.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = arg_1;
    return select(vec4<bool>(any(!select(vec2<bool>(arg_2.e, false), vec2<bool>(false, arg_2.e), vec2<bool>(true, false))), true, true, true), !vec4<bool>(true, true, !(arg_2.d.c < arg_1.c), true), all(!(!select(vec4<bool>(false, arg_2.e, true, arg_2.e), vec4<bool>(false, arg_2.e, arg_2.e, arg_2.e), true))));
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(71914u, arg_0, arg_0, 3309u)), countOneBits(vec4<u32>(4294967295u, arg_0, arg_0, arg_0))), ~min(arg_0, arg_0), 1u, ~4294967295u), _wgslsmith_mod_i32(-_wgslsmith_mod_i32(54420i, 12117i), arg_1.x), 37378u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.x, -1328f, arg_3.a.x) * vec3<f32>(118f, arg_3.a.x, arg_3.a.x)))), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-8941i, arg_1.x, 47716i)) | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 15878i, 2147483647i), vec3<i32>(1i, 1i, -6189i)), vec3<i32>(u_input.a, 2147483647i, u_input.a) >> (vec3<u32>(28125u, arg_0, 0u) % vec3<u32>(32u)))), min(vec4<u32>(arg_0 >> ((arg_0 | arg_0) % 32u), ~19219u, ~arg_0, arg_0), ~_wgslsmith_mult_vec4_u32(max(vec4<u32>(arg_0, 1u, arg_0, 46793u), vec4<u32>(1u, arg_0, arg_0, arg_0)), vec4<u32>(arg_0, 1u, 4294967295u, arg_0))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_3.a + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_3.a * vec2<f32>(arg_3.a.x, 1072f))))))), Struct_1(vec4<u32>(firstTrailingBit(arg_0), ~1u, arg_0 | (arg_0 & arg_0), abs(arg_0 ^ 17951u)), countOneBits(_wgslsmith_div_i32(_wgslsmith_add_i32(-1i, -17308i), _wgslsmith_mod_i32(-1i, -7885i))), ~22157u, _wgslsmith_f_op_vec3_f32(vec3<f32>(486f, _wgslsmith_f_op_f32(min(284f, 224f)), _wgslsmith_f_op_f32(round(arg_3.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.a.x, arg_3.a.x, 1000f), vec3<f32>(-821f, -1000f, -2205f)))), vec3<i32>(_wgslsmith_mult_i32(u_input.a, -1i), reverseBits(arg_1.x) << (firstLeadingBit(arg_0) % 32u), u_input.a)), false);
    let var_1 = Struct_4(func_2(), var_0.a.d, var_0.b.x);
    let var_2 = !arg_2.yxx;
    let var_3 = select(firstLeadingBit(~var_1.c) == 39458u, !any(select(vec2<bool>(arg_2.x, var_0.e), vec2<bool>(var_0.e, arg_2.x), arg_2.yw)), var_0.e);
    var var_4 = _wgslsmith_clamp_i32(-u_input.a, countOneBits(1i), max(firstTrailingBit(max(_wgslsmith_div_i32(-1i, 61657i), -1i)), arg_1.x));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.a.d.yy));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(max(50561u, 5592u), ~80254u), 9692u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 18126u), select(~vec3<u32>(34978u, 31950u, 43364u), vec3<u32>(25708u, 36503u, 31656u), arg_0))), ~_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(23210i, 2147483647i), vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, 0i)), -vec2<i32>(u_input.a, -16084i)), ~(vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, u_input.a))), func_4(func_2(), Struct_4(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1646f))), vec3<f32>(_wgslsmith_f_op_f32(step(474f, 209f)), 1f, 1f), _wgslsmith_clamp_u32(~1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 53822u, 0u, 4294967295u), vec4<u32>(79683u, 1u, 79164u, 1u)))), Struct_2(Struct_1(vec4<u32>(1u, 1u, 1u, 1u), -2147483647i, max(1u, 33473u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(985f, -1095f, -394f)), vec3<i32>(u_input.a, u_input.a, -8279i)), ~vec4<u32>(4294967295u, 4294967295u, 32890u, 17127u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-327f, -1359f)) + vec2<f32>(-2115f, -325f)), Struct_1(reverseBits(vec4<u32>(1u, 49824u, 0u, 0u)), 1i, firstLeadingBit(1u), _wgslsmith_div_vec3_f32(vec3<f32>(-206f, -167f, -356f), vec3<f32>(918f, -1042f, 1119f)), firstLeadingBit(vec3<i32>(2147483647i, -1i, u_input.a))), arg_0.x)), func_2());
    let var_1 = Struct_1(vec4<u32>(~(~(~22592u)), _wgslsmith_mult_u32(max(11743u, 1u), 1u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 1u)), ~vec3<u32>(4294967295u, 82753u, 7196u)), 33590u), u_input.a, firstLeadingBit(_wgslsmith_clamp_u32(4193u, 1u, _wgslsmith_mod_u32(~11515u, 34491u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x))) - vec3<f32>(var_0.a.x, -1735f, -787f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1701f, var_0.a.x, var_0.a.x)))))), abs(-vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a, u_input.a)));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1307f)), var_0.a.x, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1261f, 460f, -1062f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2209f, var_1.d.x, 784f))) + vec3<f32>(func_5(var_1.a.x, var_1.e.xx, vec4<bool>(false, arg_0.x, true, arg_0.x), Struct_3(var_0.a)).a.x, var_1.d.x, _wgslsmith_f_op_f32(round(-141f))))));
    var var_3 = var_1;
    let var_4 = var_1;
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<i32>(u_input.a, -select(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-31779i, u_input.a), vec2<i32>(u_input.a, u_input.a)), true), u_input.a), -vec3<i32>(0i, u_input.a, abs(-22934i)) | firstLeadingBit(vec3<i32>(1i, ~(-1i), -u_input.a)), !vec3<bool>(all(vec3<bool>(true, true, true)), true, false));
    let var_1 = _wgslsmith_f_op_f32(func_1(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false), vec3<bool>(true, true, true), true)));
    var var_2 = ~vec4<u32>(~reverseBits(4294967295u), 77608u, reverseBits(select(1u, 44886u, false)), _wgslsmith_mod_u32(1u, 1u));
    var var_3 = Struct_1(~(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 51501u, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(10644u, 1u, 0u, var_2.x), vec4<u32>(var_2.x, 0u, 4294967295u, var_2.x))) << (((vec4<u32>(4294967295u, var_2.x, 4294967295u, var_2.x) << (vec4<u32>(4294967295u, var_2.x, var_2.x, var_2.x) % vec4<u32>(32u))) ^ vec4<u32>(var_2.x, var_2.x, var_2.x, 1u)) % vec4<u32>(32u))), -1i << (countOneBits(max(30504u, var_2.x)) % 32u), var_2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1))), var_1, var_1) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-413f, var_1, 1138f), vec3<f32>(var_1, var_1, -923f), false)) * vec3<f32>(var_1, -589f, 1700f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -864f, var_1))))), abs(firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(-1i, var_0.x, u_input.a))));
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-11680i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4, var_3.d.x, -643f, var_1))))), var_3.d.x, var_3.d.zx);
}

