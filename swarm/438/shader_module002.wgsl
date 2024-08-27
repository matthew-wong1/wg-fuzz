struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 766f;

var<private> global1: f32 = -720f;

var<private> global2: u32 = 42822u;

var<private> global3: Struct_3 = Struct_3(Struct_1(1000f), Struct_1(1000f), vec4<f32>(270f, 2346f, -541f, 1279f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: f32, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-110f, 254f)))))));
    let var_1 = u_input.b;
    let var_2 = false;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(-501f))), Struct_1(arg_0.c.x), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -850f), _wgslsmith_f_op_f32(-global3.a.a), _wgslsmith_f_op_f32(floor(global3.c.x))));
    let var_4 = false;
    return var_3.c.xz;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<f32> {
    global2 = abs(1u);
    var var_0 = arg_1;
    let var_1 = reverseBits(u_input.a);
    let var_2 = Struct_3(arg_1, Struct_1(arg_2.x), _wgslsmith_f_op_vec4_f32(sign(arg_2)));
    var var_3 = ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 0i), _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.b, 3642i)), ~vec2<i32>(u_input.b, u_input.b))));
    return _wgslsmith_f_op_vec2_f32(select(var_2.c.zw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.zw)), vec2<bool>(false, true)));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.a.a, -292f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_0), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(470f)) + arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global3.c.xz)) + _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(arg_2, true, 617f, arg_2)), Struct_1(global3.a.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, 467f, 1366f, global3.a.a))))))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(440f)))))));
    let var_1 = Struct_2(select(~vec2<u32>(~0u, 4294967295u), countOneBits(vec2<u32>(arg_1.b.x, 82151u)), _wgslsmith_clamp_i32(u_input.b >> (arg_1.a.x % 32u), 1i, reverseBits(arg_1.e)) > _wgslsmith_div_i32(~u_input.b, _wgslsmith_add_i32(-1i, u_input.b))), max(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, arg_1.b.x), arg_1.b) >> (~arg_1.b % vec2<u32>(32u)), ~vec2<u32>(u_input.a, arg_1.c.x), false), arg_1.b), _wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(arg_1.c, vec3<u32>(1u, arg_1.c.x, u_input.a) | arg_1.c), reverseBits(arg_1.c) >> (firstLeadingBit(arg_1.c) % vec3<u32>(32u))), 742f, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, -1i), vec2<i32>(abs(select(u_input.b, arg_3, false)), -2147483647i)));
    let var_2 = select(vec4<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(507f + 402f)) <= _wgslsmith_f_op_f32(var_0.x + -996f), true, !all(vec3<bool>(true, true, true))), vec4<bool>(false, false, (_wgslsmith_f_op_f32(-arg_1.d) >= 138f) | any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), true), select(vec4<bool>(false, false, true, true), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(true, true)), all(vec2<bool>(true, false)), false), true || (u_input.a <= 56558u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_1(634f), global3.a, global3.c), false, arg_2.b.a, arg_2)).x) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.c.x, var_0.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1198f, _wgslsmith_f_op_f32(max(var_0.x, 596f))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_2.c.x), arg_1.d)))));
    return arg_2;
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    let var_0 = u_input.a <= ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a ^ u_input.a, ~34439u, ~u_input.a));
    global1 = global3.a.a;
    var var_1 = arg_0;
    var var_2 = vec3<i32>(max(_wgslsmith_mult_i32(firstLeadingBit(u_input.b), ~(-2147483647i)), -2147483647i), 10972i, -(arg_0.x << (_wgslsmith_add_u32(80013u, 0u) % 32u))) | ~select(_wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, 2147483647i, 1i), vec3<i32>(-21208i, u_input.b, u_input.b)), arg_0, vec3<bool>(var_0 || var_0, arg_3, var_0));
    var var_3 = ~vec4<i32>(u_input.b, firstTrailingBit(_wgslsmith_div_i32(2147483647i, u_input.b & 16764i)), _wgslsmith_mult_i32(~(var_2.x >> (u_input.a % 32u)), 0i), reverseBits(~60826i));
    return Struct_3(func_2(_wgslsmith_f_op_f32(-arg_2.c.x), Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(13506u, 1u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(13273u, 1u)), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(28570u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(12482u, 2644u, 1u), abs(vec3<u32>(21393u, 4294967295u, 1u)), ~vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-596f)), _wgslsmith_f_op_f32(f32(-1f) * -598f))), _wgslsmith_div_i32(var_3.x, 0i)), func_2(_wgslsmith_f_op_f32(step(1141f, _wgslsmith_f_op_f32(-arg_2.a.a))), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 30659u), vec2<u32>(4294967295u, u_input.a)), vec2<u32>(98212u, u_input.a) ^ vec2<u32>(1u, u_input.a), max(vec3<u32>(42461u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)), 1378f, var_1.x), func_2(_wgslsmith_f_op_f32(497f + 855f), Struct_2(vec2<u32>(1u, u_input.a), vec2<u32>(1u, 47470u), vec3<u32>(u_input.a, 2038u, 0u), 701f, -32804i), arg_2, var_2.x), arg_0.x), -(~(-2717i))).a, global3.b, global3.c);
}

fn func_6(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_2(~(vec2<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16946u, 4294967295u), vec3<u32>(18368u, 4294967295u, u_input.a))) & select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), true)), _wgslsmith_sub_vec2_u32(firstTrailingBit(~(~vec2<u32>(39131u, u_input.a))), vec2<u32>(1u, 1684u)), vec3<u32>(50348u, _wgslsmith_add_u32(64439u, u_input.a), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(4294967295u, 67092u)), 11576u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1190f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) * _wgslsmith_f_op_f32(select(-427f, global3.b.a, true)))))), firstTrailingBit(_wgslsmith_sub_i32(77752i, u_input.b)) >> ((reverseBits(4294967295u) >> (u_input.a % 32u)) % 32u));
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(var_0.c, _wgslsmith_mult_vec3_u32(var_0.c, vec3<u32>(1u, 4294967295u, var_0.b.x))), reverseBits(firstTrailingBit(vec3<u32>(1u, var_0.b.x, 43787u)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2(_wgslsmith_f_op_f32(-172f - -756f), Struct_2(~var_0.c.yx, ~vec2<u32>(var_1, 26592u), vec3<u32>(1u, var_0.b.x, 10907u), _wgslsmith_f_op_f32(-var_0.d), 1i), Struct_3(arg_0.a, func_2(var_0.d, Struct_2(vec2<u32>(58633u, var_0.b.x), vec2<u32>(35214u, 4294967295u), var_0.c, 219f, u_input.b), arg_0, 0i).b, arg_0.c), ~(-17788i)).a.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1008f, 445f)))))));
    var_0 = Struct_2(~var_0.c.xy, ~(~var_0.a | var_0.b), ~vec3<u32>(var_0.a.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(6187u, 4294967295u, 4294967295u, u_input.a)), select(vec4<u32>(var_0.c.x, 1u, 4294967295u, var_0.c.x), vec4<u32>(var_1, u_input.a, 1u, var_1), vec4<bool>(false, true, false, false))), max(var_0.b.x, firstTrailingBit(1u))), global3.a.a, 5627i);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -412f) * _wgslsmith_f_op_f32(var_2.x + 1037f)))));
    return _wgslsmith_div_u32(~22113u, _wgslsmith_div_u32(0u, var_0.c.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<u32>) -> bool {
    let var_0 = u_input.a ^ 40491u;
    let var_1 = _wgslsmith_mult_vec2_u32(arg_2.zz, vec2<u32>(func_6(func_5(reverseBits(vec3<i32>(u_input.b, 1i, 3930i)), false, func_2(global3.a.a, Struct_2(vec2<u32>(5185u, arg_2.x), vec2<u32>(var_0, arg_2.x), arg_1, global3.a.a, -3723i), Struct_3(Struct_1(-1004f), Struct_1(global3.a.a), vec4<f32>(-187f, -613f, 1000f, global3.c.x)), u_input.b), all(vec2<bool>(false, false)))), arg_2.x));
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(~(-2147483647i), ~u_input.b), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -51082i, -1i), vec3<i32>(18947i, u_input.b, 2276i)), -2147483647i), u_input.b), ~(-(~2147483647i))));
    global1 = arg_0.a;
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_div_f32(global3.c.x, global3.c.x))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.a * -317f), arg_0.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -759f, _wgslsmith_f_op_f32(f32(-1f) * -543f), 1144f) * vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(floor(-854f)), _wgslsmith_f_op_f32(step(global3.a.a, 880f)), -1000f)), _wgslsmith_f_op_vec4_f32(-global3.c), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, arg_0.a <= -357f, any(vec3<bool>(false, true, false))), all(vec2<bool>(true, true))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -952f;
    global1 = global3.b.a;
    let var_0 = vec4<bool>(false, func_1(global3.b, min(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), abs(abs(vec3<u32>(12180u, 18379u, u_input.a)))), vec4<u32>(u_input.a, 6042u, u_input.a, u_input.a)), false, true);
    var var_1 = Struct_2(vec2<u32>(~u_input.a, _wgslsmith_div_u32(countOneBits(26302u), 1u) >> (u_input.a % 32u)), vec2<u32>(~func_6(Struct_3(Struct_1(539f), Struct_1(911f), global3.c)), u_input.a), vec3<u32>(11366u, 43641u, max(4294967295u, u_input.a)) & ~(~(~vec3<u32>(u_input.a, u_input.a, 7950u))), _wgslsmith_f_op_f32(-1315f + _wgslsmith_f_op_f32(-func_2(_wgslsmith_div_f32(global3.c.x, global3.b.a), Struct_2(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 76361u), global3.a.a, 34224i), Struct_3(global3.a, Struct_1(global3.c.x), global3.c), u_input.b >> (u_input.a % 32u)).a.a)), u_input.b);
    let var_2 = Struct_2(~vec2<u32>(reverseBits(102041u), ~(~u_input.a)), var_1.a, var_1.c, var_1.d, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.e, -1235i, u_input.b), ~vec4<i32>(-9514i, var_1.e, -1i, 1i)) & -1i, 1i));
    var var_3 = !var_0.zyw;
    global3 = func_5(-(~vec3<i32>(2147483647i >> (u_input.a % 32u), _wgslsmith_mult_i32(53314i, var_2.e), 37575i)), (_wgslsmith_mult_u32(4115u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, var_2.c.x, var_2.b.x, var_2.c.x), vec4<u32>(var_2.c.x, u_input.a, 1u, 0u))) >> (56047u % 32u)) == ~(~var_1.b.x), Struct_3(Struct_1(1000f), func_5(~(vec3<i32>(-4685i, 1i, var_1.e) ^ vec3<i32>(0i, u_input.b, u_input.b)), true, Struct_3(Struct_1(var_1.d), global3.a, _wgslsmith_f_op_vec4_f32(trunc(global3.c))), true).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-804f, -1000f, var_2.d, var_2.d))))), var_3.x);
    var var_4 = func_5(max(vec3<i32>(u_input.b | _wgslsmith_mult_i32(var_2.e, -2147483647i), -_wgslsmith_mod_i32(var_2.e, u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.e, u_input.b, var_2.e), vec3<i32>(var_1.e, 31543i, var_1.e)), vec3<i32>(var_1.e, var_1.e, 0i))), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.e, 1i, -51692i) | vec3<i32>(1i, -33621i, -26826i), vec3<i32>(1i, 0i, -13821i) >> (var_1.c % vec3<u32>(32u))))), true, func_2(_wgslsmith_f_op_f32(exp2(func_2(-423f, Struct_2(vec2<u32>(var_2.a.x, var_2.b.x), vec2<u32>(30092u, var_2.b.x), var_1.c, -3016f, var_1.e), Struct_3(Struct_1(-177f), Struct_1(670f), global3.c), -49694i).c.x)), var_2, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d + var_1.d) * _wgslsmith_f_op_f32(f32(-1f) * -862f)), var_2, Struct_3(global3.b, global3.b, _wgslsmith_f_op_vec4_f32(round(global3.c))), ~u_input.b), _wgslsmith_add_i32(i32(-1i) * -68488i, (u_input.b << (var_2.c.x % 32u)) | var_1.e)), false & all(vec2<bool>(!var_3.x, var_1.e < var_2.e))).c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(min(~(-20264i), _wgslsmith_add_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, var_1.e), vec2<i32>(0i, u_input.b) >> (vec2<u32>(1u, var_2.b.x) % vec2<u32>(32u))))), global3.b.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a.a))), _wgslsmith_f_op_f32(364f + _wgslsmith_f_op_f32(sign(var_1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1384f * -1342f) - _wgslsmith_f_op_f32(var_1.d + global3.b.a))) * _wgslsmith_div_vec4_f32(global3.c, vec4<f32>(_wgslsmith_div_f32(1734f, 1000f), _wgslsmith_f_op_f32(abs(var_1.d)), global3.c.x, global3.c.x))), -1496f, vec4<u32>(u_input.a, var_2.a.x, 1u, ~_wgslsmith_clamp_u32(~var_2.c.x, ~var_2.b.x, 1u)));
}

