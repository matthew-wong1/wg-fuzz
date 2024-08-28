struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = -(~(~(-u_input.c)));
    var_0 = reverseBits(2147483647i);
    var_0 = -2147483647i;
    let var_1 = _wgslsmith_mod_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, u_input.c, -9846i)) ^ ~reverseBits(min(vec4<i32>(u_input.a, -4350i, 39878i, u_input.a), vec4<i32>(u_input.c, 2147483647i, 1i, u_input.c))), vec4<i32>(16i, u_input.c, 23590i, 15364i));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-arg_3.e.x))), arg_3.b.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1036f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -744f)))), 147f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(738f, -896f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f))), -1615f), !arg_1.c, countOneBits(~_wgslsmith_add_vec3_u32(select(vec3<u32>(1u, arg_3.d.x, 1u), u_input.d, arg_2.c.x), vec3<u32>(45667u, u_input.d.x, arg_2.d.x))), arg_2.a);
    return _wgslsmith_dot_vec4_u32(u_input.b, u_input.b);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(arg_0.d.x, select(_wgslsmith_add_u32(func_3(1710f, arg_0, Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.d, vec3<f32>(-1263f, arg_0.a.x, arg_0.e.x)), arg_0), ~firstTrailingBit(1u)), countOneBits(~1u), _wgslsmith_f_op_f32(f32(-1f) * -2312f) >= _wgslsmith_div_f32(arg_0.e.x, _wgslsmith_f_op_f32(abs(arg_0.e.x)))));
    var var_1 = ~vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(~select(vec2<i32>(u_input.a, u_input.c), vec2<i32>(2147483647i, -15783i), false), vec2<i32>(u_input.c, ~(-2147483647i))));
    let var_2 = vec2<u32>(abs(58764u), arg_0.d.x >> (firstTrailingBit(4294967295u) % 32u));
    let var_3 = 23881i;
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.zzz)))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.e.x, 123f, _wgslsmith_f_op_f32(abs(-1595f)))))), _wgslsmith_f_op_vec4_f32(arg_0.b - _wgslsmith_f_op_vec4_f32(arg_0.b - vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.e.x, arg_0.e.x)), arg_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1127f), -778f))), select(select(arg_0.c, select(select(vec3<bool>(false, true, arg_0.c.x), vec3<bool>(false, false, false), arg_0.c), !vec3<bool>(true, arg_0.c.x, false), arg_0.c), select(select(arg_0.c, arg_0.c, vec3<bool>(false, true, arg_0.c.x)), arg_0.c, select(vec3<bool>(false, arg_0.c.x, false), arg_0.c, arg_0.c.x))), vec3<bool>(all(select(vec4<bool>(arg_0.c.x, false, false, false), vec4<bool>(true, true, false, true), true)), arg_0.c.x, false), any(vec3<bool>(true, arg_0.c.x, true))), vec3<u32>(firstTrailingBit(~(~u_input.b.x)), firstTrailingBit(var_0), ~arg_0.d.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.e.x, arg_0.e.x, -1696f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -822f, arg_0.a.x) * vec3<f32>(-116f, -420f, arg_0.a.x)) + _wgslsmith_f_op_vec3_f32(-arg_0.e)))))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-var_4.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(439f, var_4.b.x, arg_0.e.x, 188f) - _wgslsmith_f_op_vec4_f32(var_4.b * vec4<f32>(var_4.a.x, var_4.e.x, -953f, var_4.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(371f, var_4.e.x, arg_0.a.x, 975f), var_4.b))))), arg_0.c, u_input.d, var_4.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = var_0.c.yz;
    let var_2 = func_2(var_0);
    var var_3 = var_2;
    var var_4 = Struct_1(vec3<f32>(-670f, _wgslsmith_f_op_f32(min(-1146f, 431f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.b, arg_0.b)) + vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.b.x, 753f)), var_0.b.x, _wgslsmith_f_op_f32(ceil(var_0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1635f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(724f, -1254f, -213f, -166f)) + _wgslsmith_f_op_vec4_f32(var_3.b * var_0.b))))), arg_0.c, var_0.d, var_3.b.www);
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = func_4(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -474f, arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, 1400f, arg_0), vec4<f32>(arg_0, -1575f, arg_0, arg_0), true))), vec3<bool>(true, true, true), u_input.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -436f, arg_0) - vec3<f32>(-1544f, arg_0, arg_0)) * vec3<f32>(arg_0, 828f, arg_0)))), u_input.d.x);
    var var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, countOneBits(_wgslsmith_mult_i32(1i, arg_1.x)), u_input.c), vec3<i32>(1i ^ u_input.a, 38371i << (var_0.d.x % 32u), arg_1.x) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 1u, 0u), vec3<u32>(63422u, var_0.d.x, u_input.d.x)), ~vec3<u32>(var_0.d.x, var_0.d.x, u_input.d.x)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(29222i, -3975i) >> (func_4(var_0, u_input.b.x).d.x % 32u), -1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -4000i), arg_1.zy)))), (select(vec3<i32>(11877i, arg_1.x, -962i), vec3<i32>(arg_1.x, u_input.a, -1i) ^ vec3<i32>(u_input.a, 0i, u_input.a), func_2(Struct_1(vec3<f32>(454f, arg_0, arg_0), vec4<f32>(arg_0, arg_0, -801f, var_0.e.x), var_0.c, var_0.d, vec3<f32>(var_0.b.x, arg_0, var_0.e.x))).c) | arg_1) & -abs(-arg_1));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.x, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1239f, arg_0, -290f)), !var_0.c.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(func_2(Struct_1(vec3<f32>(-683f, -324f, var_0.e.x), var_0.b, vec3<bool>(var_0.c.x, var_0.c.x, true), vec3<u32>(4294967295u, var_0.d.x, u_input.d.x), vec3<f32>(arg_0, var_0.e.x, arg_0))).e.x, 2471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.e.x, -584f))), _wgslsmith_f_op_f32(f32(-1f) * -1353f)), _wgslsmith_f_op_vec4_f32(-func_2(var_0).b)), vec3<bool>(true, select(-arg_1.x == _wgslsmith_clamp_i32(var_1.x, arg_1.x, 10572i), false, true), false), firstLeadingBit(min(vec3<u32>(14655u, u_input.d.x, select(u_input.d.x, u_input.b.x, var_0.c.x)), u_input.b.ywx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 814f, _wgslsmith_f_op_f32(f32(-1f) * -581f))));
    var var_3 = _wgslsmith_f_op_f32(-var_0.e.x);
    let var_4 = func_4(var_2, ~(~9920u));
    return var_0.c;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-2051f, _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x - -731f) + _wgslsmith_f_op_f32(-arg_0.e.x)), _wgslsmith_f_op_f32(exp2(arg_0.a.x))), func_2(Struct_1(vec3<f32>(-348f, -343f, arg_0.b.x), arg_0.b, vec3<bool>(arg_0.c.x, true, arg_3.c.x), ~vec3<u32>(82870u, 1u, 4294967295u), _wgslsmith_div_vec3_f32(vec3<f32>(-337f, -100f, arg_3.e.x), vec3<f32>(arg_0.b.x, -918f, arg_3.e.x)))).e, select(vec3<bool>(false, select(arg_2.c.x, arg_2.c.x, true), false), vec3<bool>(all(vec3<bool>(arg_0.c.x, false, arg_0.c.x)), !arg_2.c.x, all(vec4<bool>(arg_2.c.x, arg_0.c.x, arg_2.c.x, true))), arg_3.c.x))), arg_3.b, arg_0.c, countOneBits(~(~abs(arg_3.d))), _wgslsmith_f_op_vec3_f32(round(arg_2.a)));
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(~(33836i | u_input.c), abs(reverseBits(u_input.a))), ~(-u_input.c) >> (_wgslsmith_clamp_u32(~35494u, 1u, 11739u) % 32u), _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, ~0i), -_wgslsmith_mod_i32(arg_1.x, u_input.a)), 2147483647i) ^ ~(_wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, -1i, arg_1.x, -34991i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.c, arg_1.x, u_input.a), vec4<i32>(u_input.a, u_input.c, arg_1.x, arg_1.x)), -vec4<i32>(arg_1.x, u_input.c, -21486i, u_input.c)) ^ _wgslsmith_add_vec4_i32(~vec4<i32>(arg_1.x, -36819i, arg_1.x, arg_1.x), -vec4<i32>(u_input.a, arg_1.x, 2147483647i, -1i)));
    let var_2 = func_2(func_4(arg_2, _wgslsmith_div_u32(36128u, firstTrailingBit(88404u))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_4(Struct_1(vec3<f32>(arg_3.e.x, var_2.a.x, arg_2.a.x), arg_3.b, arg_0.c, arg_3.d, arg_2.e), _wgslsmith_mult_u32(arg_3.d.x, var_0.d.x)).e.x, 1000f, _wgslsmith_f_op_f32(var_2.e.x - _wgslsmith_f_op_f32(335f * arg_2.e.x)))), vec4<f32>(657f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e.x + arg_3.b.x) + _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(320f, -925f))), _wgslsmith_f_op_f32(func_2(Struct_1(var_2.a, vec4<f32>(arg_3.a.x, -1404f, var_0.e.x, 829f), var_2.c, u_input.b.ywy, arg_3.b.zyw)).a.x + _wgslsmith_f_op_f32(select(-1350f, _wgslsmith_f_op_f32(1033f - -1882f), false || arg_3.c.x))), arg_0.a.x), var_2.c, reverseBits(arg_3.d), _wgslsmith_f_op_vec3_f32(select(func_2(Struct_1(var_0.a, vec4<f32>(arg_2.e.x, -1055f, var_2.b.x, arg_0.a.x), func_4(Struct_1(vec3<f32>(-1022f, var_0.e.x, arg_2.a.x), arg_3.b, arg_3.c, arg_3.d, arg_2.e), 13561u).c, select(var_0.d, arg_0.d, vec3<bool>(arg_0.c.x, var_0.c.x, false)), var_0.e)).b.wzx, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1543f, _wgslsmith_f_op_f32(trunc(arg_0.a.x)), _wgslsmith_f_op_f32(abs(-211f))))), !vec3<bool>(func_1(-676f, var_1.wwz).x, false, u_input.c <= 57407i))));
    var_0 = Struct_1(vec3<f32>(-507f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x)), 1524f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 365f, -1572f, arg_3.a.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1034f, arg_3.b.x, arg_0.e.x, -645f)))) + var_0.b))), !arg_3.c, ~(vec3<u32>(arg_2.d.x ^ 1u, 4294967295u, abs(arg_3.d.x)) & ~(~vec3<u32>(4294967295u, var_0.d.x, 0u))), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.e.x, _wgslsmith_f_op_f32(floor(arg_3.a.x)), -875f), arg_3.e));
    return _wgslsmith_mod_u32(arg_3.d.x, ~(~(arg_2.d.x << (arg_2.d.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(u_input.d.x | u_input.b.x, u_input.b.x);
    var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-424f, -1000f, -1432f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1056f, 1000f, -532f)))), vec4<f32>(1f, 1f, 1f, 1f), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), u_input.b.zyy, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1171f, -1079f, 673f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-839f, -1786f, -1633f) + vec3<f32>(554f, 412f, -327f)))), _wgslsmith_add_vec2_i32(reverseBits(~vec2<i32>(0i, -9824i)), -_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(-1i, u_input.a))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(998f, -1308f, -257f), vec3<f32>(508f, 1075f, -831f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(732f, -427f, -1992f) + vec3<f32>(-447f, -449f, 182f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(441f, -717f, 1000f, -1017f) * vec4<f32>(398f, 2522f, -298f, 511f))), func_1(-244f, vec3<i32>(u_input.a, 78971i, 8889i)), vec3<u32>(25210u, func_2(Struct_1(vec3<f32>(-871f, 101f, 1337f), vec4<f32>(-1365f, -175f, 1000f, 729f), vec3<bool>(false, false, true), vec3<u32>(0u, 17260u, 1u), vec3<f32>(-392f, -657f, 1211f))).d.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1044f, 327f, -1436f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1241f, 504f, 287f) - vec3<f32>(1000f, 813f, 1409f))))), func_2(func_2(Struct_1(vec3<f32>(-392f, -2711f, 435f), vec4<f32>(-1167f, 763f, 976f, 928f), vec3<bool>(false, false, true), u_input.d, vec3<f32>(461f, 869f, -1167f))))) | u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, ~abs(u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-582f * -396f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1331f), _wgslsmith_f_op_f32(-163f * 2832f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1282f)))) - _wgslsmith_f_op_f32(floor(func_4(Struct_1(vec3<f32>(-141f, 1261f, -1688f), vec4<f32>(980f, 884f, 1516f, -3788f), vec3<bool>(true, false, false), vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x), vec3<f32>(-952f, -1407f, 476f)), u_input.b.x).e.x)))), ~(-24999i), vec2<i32>(u_input.c, -u_input.a));
}

