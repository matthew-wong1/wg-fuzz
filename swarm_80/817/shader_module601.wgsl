struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<u32>) -> bool {
    var var_0 = Struct_4(vec4<i32>(~reverseBits(_wgslsmith_sub_i32(-40875i, 0i)), arg_0.c.x ^ u_input.c, firstTrailingBit(-31344i), 0i), arg_0, arg_0.d, (_wgslsmith_add_i32(arg_0.e.x, ~(-12329i)) >= ~(~(-1i))) || true, ~reverseBits(firstTrailingBit(abs(arg_3))));
    let var_1 = firstLeadingBit(19869u);
    var var_2 = arg_0;
    var_2 = Struct_2(vec2<i32>(var_2.e.x, -arg_0.c.x ^ (i32(-1i) * -var_0.b.c.x)), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1150f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.b.x) - _wgslsmith_f_op_f32(-var_2.d.b.x)), arg_1.x, u_input.a < ~64018u, 433f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.b.x, var_2.d.b.x)) - 1000f)), abs(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c.x, arg_0.d.c) | vec2<i32>(0i, 2147483647i), arg_0.c)) | select(vec2<i32>(i32(-1i) * -18856i, _wgslsmith_add_i32(u_input.b, var_2.c.x)), arg_0.e.yz, false), arg_0.d, ~_wgslsmith_mod_vec4_i32(~reverseBits(var_0.b.e), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.b, var_2.a.x) << (vec4<u32>(0u, var_1, 1u, arg_3.x) % vec4<u32>(32u)), var_2.e, arg_0.e)));
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(695f, arg_2, -827f) * vec3<f32>(var_2.d.b.x, -1948f, -569f)))), vec4<i32>(0i, _wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(2147483647i, u_input.b, var_2.e.x, u_input.b)), vec4<i32>(-1i) * -vec4<i32>(-1i, var_0.b.c.x, 0i, 0i)), u_input.c, select(u_input.b, -1697i | var_2.e.x, true)), Struct_4(countOneBits(vec4<i32>(-35168i, var_2.e.x, var_0.c.c, 2147483647i)), arg_0, var_0.c, !any(arg_0.b), vec2<u32>(~var_1, var_1) & _wgslsmith_div_vec2_u32(~var_0.e, ~var_0.e)), Struct_4(-vec4<i32>(~(-21368i), -58809i, var_0.a.x << (7419u % 32u), var_0.c.a >> (4294967295u % 32u)), arg_0, Struct_1(-1672i, _wgslsmith_f_op_vec3_f32(select(arg_0.d.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-705f, arg_0.d.b.x, -659f)), false)), u_input.c), all(!select(var_0.b.b.xy, arg_0.b.xz, true)), vec2<u32>(var_1, _wgslsmith_dot_vec2_u32(max(arg_3, vec2<u32>(var_1, var_0.e.x)), max(vec2<u32>(var_1, 58271u), vec2<u32>(14978u, u_input.a))))));
    return !arg_1.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1.d.b;
    let var_1 = arg_1.d;
    let var_2 = Struct_3(var_1, select(true, !arg_1.b.x, true), arg_1.d);
    var var_3 = Struct_1(-14703i, _wgslsmith_f_op_vec3_f32(select(var_0, vec3<f32>(_wgslsmith_f_op_f32(trunc(-164f)), _wgslsmith_f_op_f32(abs(214f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * _wgslsmith_f_op_f32(exp2(var_1.b.x)))), arg_1.b.wwz)), max(~32384i, -10322i) >> (u_input.a % 32u));
    var var_4 = Struct_3(Struct_1(-_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_3.c, 0i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 7773i), arg_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1064f * arg_1.d.b.x), _wgslsmith_f_op_f32(trunc(-1000f)), arg_1.d.b.x)), ~(-2147483647i)), ((_wgslsmith_dot_vec3_u32(arg_0.zzx, vec3<u32>(u_input.d, arg_0.x, 39242u)) >> (u_input.d % 32u)) << (4294967295u % 32u)) == min(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(arg_0.wz, arg_0.zx)), ~u_input.d), var_1);
    return firstTrailingBit(_wgslsmith_add_i32(-1i, var_3.c << (~1u % 32u))) ^ -(_wgslsmith_clamp_i32(firstLeadingBit(var_4.c.c), 1i, -44533i) | -1i);
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = -1i > -_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.a | u_input.c, -u_input.c), -13344i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -249f), arg_0.b.x)) * 698f);
    var var_2 = Struct_1(arg_0.c | -2147483647i, _wgslsmith_f_op_vec3_f32(arg_0.b + vec3<f32>(var_1, var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), arg_0.b.x)))), func_4(_wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), vec4<u32>(13571u, _wgslsmith_mult_u32(50018u, u_input.a), u_input.a, max(287u, u_input.d))), Struct_2(firstTrailingBit(abs(vec2<i32>(-1356i, 0i))), vec4<bool>(4294967295u <= u_input.d, all(vec2<bool>(true, true)), func_3(Struct_2(vec2<i32>(arg_0.a, -1i), vec4<bool>(true, false, false, false), vec2<i32>(-24715i, 1i), arg_0, vec4<i32>(arg_0.c, 19168i, -2147483647i, 6943i)), vec3<bool>(true, true, true), var_1, vec2<u32>(u_input.d, u_input.d)), var_1 == 703f), select(vec2<i32>(2811i, u_input.b), vec2<i32>(arg_0.a, 60043i), vec2<bool>(true, false)) | (vec2<i32>(43444i, u_input.b) ^ vec2<i32>(arg_0.a, -7222i)), Struct_1(_wgslsmith_add_i32(arg_0.a, 7143i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-588f, -525f, var_1) + arg_0.b), countOneBits(-22880i)), vec4<i32>(u_input.c, -45020i, u_input.c, u_input.b) & select(vec4<i32>(u_input.c, -2147483647i, -2147483647i, -13227i), vec4<i32>(30844i, arg_0.a, arg_0.a, u_input.b), false))));
    let var_3 = -(~vec4<i32>(8555i, -15803i, 2147483647i, 13980i));
    let var_4 = Struct_3(Struct_1(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.x)), var_1, _wgslsmith_f_op_f32(exp2(var_2.b.x)))), 2147483647i), func_3(Struct_2(var_3.wx, vec4<bool>(true, true, true, true), min(var_3.wx, vec2<i32>(0i, arg_0.c)), arg_0, _wgslsmith_add_vec4_i32(var_3, var_3)), vec3<bool>(true, true, 185u != u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))), vec2<u32>(~u_input.a, ~u_input.d)) & (-var_2.c >= _wgslsmith_mult_i32(-16935i, 32972i)), arg_0);
    return ~(reverseBits(~u_input.d) | reverseBits(_wgslsmith_div_u32(u_input.d, firstLeadingBit(u_input.a))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec3<f32>) -> u32 {
    var var_0 = true;
    return ~(~(~_wgslsmith_sub_u32(~1u, 0u)));
}

fn func_1(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: f32) -> Struct_4 {
    var var_0 = arg_0;
    var var_1 = any(vec3<bool>(var_0.c.b.b.x | false, arg_0.d.b.b.x, !var_0.d.d));
    var var_2 = ~func_5(max(vec3<u32>(arg_0.c.e.x, 1u, u_input.a), vec3<u32>(func_2(Struct_1(-22764i, var_0.c.b.d.b, -52198i)), ~var_0.c.e.x, 1u)), Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1181f, arg_1.x, var_0.d.b.d.b.x), vec3<f32>(arg_2.x, arg_0.a.x, -625f)) * arg_1.yyx), vec4<i32>(-1265i, 1i, var_0.c.c.a >> (arg_0.d.e.x % 32u), -var_0.c.a.x), Struct_4(abs(vec4<i32>(0i, u_input.b, 0i, 2147483647i)), arg_0.d.b, Struct_1(u_input.c, vec3<f32>(-173f, 193f, arg_3), 19144i), false, arg_0.c.e), Struct_4(arg_0.b, Struct_2(vec2<i32>(-7555i, -4796i), vec4<bool>(var_0.d.b.b.x, var_0.d.b.b.x, true, var_0.d.d), var_0.c.b.e.wz, Struct_1(var_0.d.b.a.x, vec3<f32>(1000f, 2313f, -1000f), arg_0.d.b.c.x), vec4<i32>(var_0.b.x, var_0.b.x, var_0.c.c.a, -1i)), Struct_1(-41461i, vec3<f32>(-1783f, 441f, -1000f), arg_0.d.a.x), arg_0.c.d, firstLeadingBit(var_0.c.e))), _wgslsmith_f_op_vec3_f32(abs(arg_0.c.c.b)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_1 - arg_1))));
    var var_4 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), arg_2.x, -458f))), countOneBits(min(vec4<i32>(1i, _wgslsmith_mod_i32(2147483647i, var_0.d.a.x), -1i & u_input.c, ~arg_0.c.b.e.x), vec4<i32>(min(arg_0.c.a.x, var_0.d.a.x), ~3475i, min(u_input.b, -2147483647i), abs(u_input.b)))), var_0.c, arg_0.c);
    return var_4.d;
}

fn func_6(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = arg_0.b;
    var var_1 = max(4294967295u, ~(~arg_0.e.x) >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 48110u), _wgslsmith_mult_u32(arg_3.x, 23906u), 0u) % 32u));
    var var_2 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0.b.d.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d.b.x)))), -345f, 237f), vec4<i32>(var_0.e.x, ~u_input.c, firstLeadingBit(_wgslsmith_div_i32(-2147483647i, arg_0.b.c.x)) & 1i, var_0.d.c ^ _wgslsmith_sub_i32(arg_0.b.e.x, ~arg_0.c.c)), func_1(Struct_5(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1201f, arg_2.b.x, var_0.d.b.x))), min(abs(vec4<i32>(u_input.b, var_0.a.x, 1i, 27167i)), -vec4<i32>(arg_2.c, arg_2.c, u_input.c, arg_2.a)), arg_0, func_1(Struct_5(vec3<f32>(arg_0.c.b.x, 1816f, -1909f), arg_0.b.e, arg_0, Struct_4(var_0.e, Struct_2(vec2<i32>(1i, 0i), arg_0.b.b, vec2<i32>(-749i, var_0.e.x), Struct_1(u_input.b, vec3<f32>(-622f, -1639f, var_0.d.b.x), 17309i), vec4<i32>(2147483647i, u_input.c, arg_0.c.c, var_0.d.a)), arg_2, arg_0.b.b.x, vec2<u32>(arg_1.x, arg_1.x))), vec4<f32>(arg_2.b.x, -139f, arg_0.c.b.x, var_0.d.b.x), arg_0.b.d.b.xz, _wgslsmith_f_op_f32(arg_0.c.b.x - 713f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.b.x, -2803f, 1804f, -266f) * vec4<f32>(var_0.d.b.x, 1318f, 1784f, 643f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(587f, -283f, var_0.d.b.x, var_0.d.b.x)))), arg_0.b.d.b.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(302f, var_0.d.b.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.b.x + var_0.d.b.x) * arg_2.b.x))), Struct_4(abs(var_0.e), Struct_2(min(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.e.x, var_0.d.c), arg_0.b.a), -vec2<i32>(arg_0.b.c.x, -32631i)), func_1(Struct_5(var_0.d.b, arg_0.a, Struct_4(vec4<i32>(-20802i, u_input.b, 42803i, 1i), var_0, arg_0.b.d, arg_0.d, arg_3.zx), arg_0), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.d.b.x, arg_0.b.d.b.x, arg_2.b.x, -245f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.b.x, -662f)), _wgslsmith_f_op_f32(select(arg_0.b.d.b.x, 466f, true))).b.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, arg_0.a.x), _wgslsmith_clamp_vec2_i32(arg_0.a.zx, arg_0.a.ww, var_0.a), arg_0.a.xx ^ vec2<i32>(101i, arg_2.c)), Struct_1(arg_2.c, arg_0.b.d.b, 38201i & u_input.b), firstLeadingBit(select(vec4<i32>(u_input.b, arg_2.a, u_input.c, arg_2.c), arg_0.b.e, var_0.b))), arg_0.c, ~_wgslsmith_dot_vec3_i32(arg_0.b.e.xxw, var_0.e.zww) != 18048i, ~vec2<u32>(7919u, 31305u)));
    var_1 = var_2.d.e.x;
    var var_3 = arg_0.a;
    return select(vec4<bool>(false || arg_0.b.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -287f), -579f, 54418u > arg_0.e.x)) < _wgslsmith_f_op_f32(min(1000f, arg_2.b.x)), func_1(Struct_5(vec3<f32>(-129f, 945f, -1000f), min(var_2.b, vec4<i32>(var_0.c.x, var_2.d.c.c, var_3.x, -3404i)), func_1(Struct_5(vec3<f32>(arg_0.b.d.b.x, 677f, -1323f), vec4<i32>(-11757i, -38184i, u_input.b, var_2.c.b.a.x), var_2.d, var_2.c), vec4<f32>(-290f, var_0.d.b.x, arg_2.b.x, 1000f), var_0.d.b.zy, -1352f), var_2.d), vec4<f32>(-1691f, _wgslsmith_div_f32(var_2.c.b.d.b.x, 859f), arg_0.c.b.x, arg_0.b.d.b.x), _wgslsmith_f_op_vec2_f32(arg_0.c.b.yx + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.b.x, 1270f) - arg_2.b.yz)), arg_2.b.x).d, true), select(!arg_0.b.b, !arg_0.b.b, all(vec3<bool>(var_2.d.d & true, true, !var_2.d.d))), select(var_2.c.b.b, select(!func_1(Struct_5(arg_2.b, arg_0.b.e, arg_0, arg_0), vec4<f32>(-597f, var_2.a.x, var_0.d.b.x, -1139f), arg_2.b.zx, arg_0.c.b.x).b.b, !(!var_0.b), var_2.c.b.b), func_1(Struct_5(vec3<f32>(var_0.d.b.x, 297f, var_0.d.b.x), ~var_2.d.a, Struct_4(vec4<i32>(var_3.x, var_2.b.x, -9990i, arg_2.a), Struct_2(vec2<i32>(u_input.c, -1i), var_0.b, vec2<i32>(50925i, arg_2.a), arg_2, arg_0.a), var_0.d, false, var_2.c.e), Struct_4(var_2.b, var_2.c.b, Struct_1(-1i, var_2.c.c.b, -2147483647i), var_0.b.x, var_2.d.e)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.b.x), _wgslsmith_f_op_f32(-arg_0.b.d.b.x), _wgslsmith_div_f32(1000f, arg_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -976f)), vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.b.d.b.x, var_2.a.x)), _wgslsmith_f_op_f32(1000f - -1246f)), -465f).b.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(-firstTrailingBit(~vec2<i32>(u_input.b, -48452i) ^ reverseBits(vec2<i32>(1i, 1i))));
    let var_1 = !vec4<bool>(true, any(func_6(func_1(Struct_5(vec3<f32>(-453f, 1116f, -941f), vec4<i32>(u_input.b, -10690i, -2147483647i, 26529i), Struct_4(vec4<i32>(var_0.x, 31272i, u_input.c, u_input.b), Struct_2(vec2<i32>(var_0.x, 1i), vec4<bool>(false, true, false, true), vec2<i32>(u_input.b, u_input.b), Struct_1(0i, vec3<f32>(-974f, 984f, 166f), -1i), vec4<i32>(var_0.x, -37252i, u_input.c, var_0.x)), Struct_1(-1i, vec3<f32>(-380f, -1000f, 1000f), -22163i), false, vec2<u32>(u_input.a, 1u)), Struct_4(vec4<i32>(u_input.b, var_0.x, 2147483647i, u_input.b), Struct_2(vec2<i32>(u_input.b, 11816i), vec4<bool>(false, false, true, true), vec2<i32>(var_0.x, var_0.x), Struct_1(u_input.c, vec3<f32>(1361f, 1342f, -343f), 1i), vec4<i32>(1i, var_0.x, var_0.x, 62556i)), Struct_1(-1452i, vec3<f32>(242f, -1000f, 876f), u_input.c), false, vec2<u32>(20832u, u_input.d))), vec4<f32>(691f, -1000f, -1563f, -282f), vec2<f32>(498f, -1000f), -885f), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.a, u_input.d, u_input.d), vec4<u32>(u_input.a, 44201u, u_input.a, 23321u)), func_1(Struct_5(vec3<f32>(474f, -1000f, 673f), vec4<i32>(0i, 55571i, var_0.x, var_0.x), Struct_4(vec4<i32>(u_input.b, u_input.c, -1i, var_0.x), Struct_2(vec2<i32>(var_0.x, -2147483647i), vec4<bool>(true, false, true, true), vec2<i32>(-51050i, u_input.c), Struct_1(-2147483647i, vec3<f32>(1867f, 1439f, -876f), -1i), vec4<i32>(var_0.x, var_0.x, var_0.x, 2147483647i)), Struct_1(var_0.x, vec3<f32>(-310f, -492f, 1494f), 0i), false, vec2<u32>(19944u, u_input.a)), Struct_4(vec4<i32>(var_0.x, -21872i, var_0.x, var_0.x), Struct_2(vec2<i32>(1i, 1i), vec4<bool>(false, true, false, false), vec2<i32>(var_0.x, u_input.c), Struct_1(-2147483647i, vec3<f32>(837f, 144f, 1308f), u_input.c), vec4<i32>(0i, -1i, var_0.x, u_input.c)), Struct_1(u_input.c, vec3<f32>(-424f, -1000f, 611f), var_0.x), false, vec2<u32>(29382u, u_input.d))), vec4<f32>(-1489f, 949f, 307f, -932f), vec2<f32>(1000f, -641f), 1547f).c, ~vec4<u32>(60458u, u_input.a, u_input.a, u_input.d))), true, true);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_1(Struct_5(vec3<f32>(-568f, -2585f, 2959f), vec4<i32>(u_input.b, var_0.x, u_input.c, 0i), Struct_4(vec4<i32>(u_input.b, 11336i, -2147483647i, var_0.x), Struct_2(vec2<i32>(19791i, 2147483647i), vec4<bool>(var_2, var_1.x, true, var_2), vec2<i32>(-1i, -32754i), Struct_1(var_0.x, vec3<f32>(256f, 181f, 1279f), var_0.x), vec4<i32>(var_0.x, 4814i, -2147483647i, u_input.c)), Struct_1(var_0.x, vec3<f32>(-1000f, 1355f, -1253f), var_0.x), var_2, vec2<u32>(u_input.d, 4294967295u)), Struct_4(vec4<i32>(-16609i, u_input.b, 2147483647i, u_input.c), Struct_2(vec2<i32>(2253i, -2147483647i), var_1, vec2<i32>(0i, -19113i), Struct_1(u_input.c, vec3<f32>(-368f, 827f, 1770f), -1i), vec4<i32>(u_input.c, u_input.b, u_input.b, 2741i)), Struct_1(var_0.x, vec3<f32>(-463f, -570f, 127f), 18075i), true, vec2<u32>(22419u, 0u))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1104f, -1493f, -571f, -135f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1155f, 114f)), -137f).c.b))));
    var_0 = _wgslsmith_mod_vec2_i32(-vec2<i32>(abs(-2147483647i), _wgslsmith_mult_i32(u_input.c, var_0.x)) ^ abs(~(vec2<i32>(u_input.b, var_0.x) & vec2<i32>(var_0.x, var_0.x))), -vec2<i32>(~2147483647i, -1i) ^ abs(min(vec2<i32>(var_0.x, -47183i), vec2<i32>(u_input.b, 2147483647i)) ^ ~vec2<i32>(-7782i, var_0.x)));
    var var_4 = ~abs(vec2<u32>(firstTrailingBit(4294967295u), select(4294967295u, u_input.d, true))) ^ (_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 0u), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.d, 0u, 4294967295u, u_input.d)), 1u)) | _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), ~u_input.a), func_1(Struct_5(vec3<f32>(321f, 1026f, var_3.x), vec4<i32>(0i, var_0.x, var_0.x, 16996i), Struct_4(vec4<i32>(27755i, u_input.b, var_0.x, 1i), Struct_2(vec2<i32>(-66604i, -2147483647i), vec4<bool>(true, true, var_1.x, false), vec2<i32>(22213i, var_0.x), Struct_1(u_input.c, var_3, 22345i), vec4<i32>(1i, -53324i, u_input.c, u_input.c)), Struct_1(-42467i, var_3, u_input.b), var_1.x, vec2<u32>(28988u, 29033u)), Struct_4(vec4<i32>(41249i, 15978i, -2147483647i, var_0.x), Struct_2(vec2<i32>(var_0.x, var_0.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec2<i32>(-1i, 5449i), Struct_1(u_input.b, vec3<f32>(-1177f, -120f, 144f), 2147483647i), vec4<i32>(-47833i, u_input.b, u_input.c, var_0.x)), Struct_1(u_input.c, vec3<f32>(-765f, var_3.x, -847f), -58256i), var_2, vec2<u32>(u_input.a, u_input.d))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, -666f, -657f, var_3.x), vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))), _wgslsmith_f_op_vec2_f32(step(var_3.zx, var_3.zy)), 158f).e));
    let var_5 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_0.x, u_input.c), u_input.b), vec2<i32>(_wgslsmith_mod_i32(0i, -48852i), u_input.b)) | vec2<i32>((i32(-1i) * -18668i) << (var_4.x % 32u), var_0.x), select(-select(~vec2<i32>(u_input.b, var_0.x), -vec2<i32>(var_0.x, var_0.x), !var_1.yz), ~countOneBits(max(vec2<i32>(u_input.b, var_0.x), vec2<i32>(u_input.b, 2147483647i))), !all(!var_1.xz)));
    var var_6 = _wgslsmith_div_u32(1u, ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.d, var_4.x)), vec2<u32>(20496u, 28495u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(min(u_input.c, 2147483647i), _wgslsmith_div_i32(u_input.c, 68685i), u_input.c), (vec3<i32>(u_input.b, var_5.x, u_input.c) << (vec3<u32>(41340u, u_input.a, 51923u) % vec3<u32>(32u))) << (~vec3<u32>(u_input.a, var_4.x, 1781u) % vec3<u32>(32u))), -vec3<i32>(firstLeadingBit(u_input.b), firstLeadingBit(-2147483647i), _wgslsmith_sub_i32(-2147483647i, var_5.x))));
}

