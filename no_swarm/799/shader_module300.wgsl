struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: u32) -> vec4<u32> {
    return ~(vec4<u32>(arg_0, abs(21267u), 1u, 25015u) | ~(~vec4<u32>(14565u, 55010u, 35654u, 35289u) ^ (vec4<u32>(arg_0, 41618u, 4294967295u, u_input.d.x) ^ vec4<u32>(u_input.d.x, arg_0, 1u, 4294967295u))));
}

fn func_3(arg_0: i32, arg_1: Struct_5, arg_2: Struct_5, arg_3: bool) -> u32 {
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1054f + 1693f), arg_1.a.a.a));
    var var_0 = Struct_1(arg_2.a.a.c.b.x, ~u_input.d, arg_1.a.a.c.c & !(_wgslsmith_f_op_f32(arg_2.a.b.x - 678f) >= _wgslsmith_f_op_f32(-arg_2.a.a.a)), vec3<i32>(abs(-16916i | u_input.b.x) ^ arg_2.a.a.c.e.x, 1i, ~1i), (_wgslsmith_sub_vec3_i32(vec3<i32>(-4621i, u_input.b.x, -1i) << (vec3<u32>(88514u, arg_1.a.a.c.b.x, 1u) % vec3<u32>(32u)), vec3<i32>(global1.e.x, arg_2.a.a.c.e.x, global1.e.x)) & (~global1.e << (arg_1.a.a.c.b % vec3<u32>(32u)))) << (vec3<u32>(_wgslsmith_mult_u32(u_input.d.x ^ 50622u, ~47311u), reverseBits(func_2(u_input.c).x), 24041u) % vec3<u32>(32u)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, 88723u)) > ~reverseBits(1u), Struct_1(3336u, u_input.d, arg_2.c, _wgslsmith_mult_vec3_i32(-arg_1.a.a.c.d, vec3<i32>(-33885i, -2147483647i, -8882i)), -arg_1.a.a.c.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, arg_1.a.b.x, -551f, 666f) - vec4<f32>(-1629f, arg_1.a.a.d.x, 428f, arg_2.a.b.x)))))), arg_1.a.b);
    let var_2 = vec2<u32>(~(~1u), _wgslsmith_mod_u32(func_2(~arg_2.a.a.c.b.x).x, ~firstLeadingBit(1u)));
    let var_3 = arg_1.b.xw;
    return abs(firstTrailingBit(_wgslsmith_div_u32(~121570u, select(arg_2.a.a.c.a, var_0.a, false))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(4294967295u, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, arg_1.a), vec3<u32>(~1u, 38378u, arg_0.x) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 51775u, 69096u), ~global1.b)), true, max(~vec3<i32>(u_input.e.x, -67726i, _wgslsmith_mod_i32(u_input.b.x, u_input.e.x)), -firstTrailingBit(arg_1.d)), vec3<i32>(countOneBits(u_input.e.x), 18521i, 1i));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~(-1i), ~u_input.b.x), ~global1.e.zy, min(-firstLeadingBit(vec2<i32>(global1.e.x, 1i)), (vec2<i32>(var_0.d.x, 6922i) << (vec2<u32>(var_0.a, 1u) % vec2<u32>(32u))) << (max(vec2<u32>(33736u, 1u), vec2<u32>(var_0.b.x, u_input.d.x)) % vec2<u32>(32u)))) | var_0.d.zx;
    global1 = arg_1;
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-266f, -737f)))))), true, arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, 1178f, -287f, 372f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2191f, 1191f, -941f, -1045f) - vec4<f32>(1111f, 377f, 183f, 371f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-958f, -1506f, -1000f, 388f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 475f));
    global1 = Struct_1(~var_0.b.x & ~(~1u), arg_0.xwy, !any(!vec4<bool>(arg_1.c, var_0.c, var_0.c, false)), countOneBits(global1.e), countOneBits(reverseBits(arg_1.d)));
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: u32) -> Struct_3 {
    global1 = func_4(_wgslsmith_div_vec4_u32(~(func_2(global1.b.x) & (vec4<u32>(0u, 22485u, arg_2.x, 24709u) | vec4<u32>(1u, global1.b.x, 46339u, 1u))), vec4<u32>(arg_3, 4294967295u, max(1u, ~16430u), _wgslsmith_div_u32(~57411u, func_3(u_input.e.x, Struct_5(Struct_3(Struct_2(arg_1.x, global1.c, Struct_1(arg_2.x, u_input.d, true, u_input.b, vec3<i32>(arg_0.x, 1i, -1i)), vec4<f32>(arg_1.x, -1000f, -991f, arg_1.x)), arg_1), vec4<bool>(false, global1.c, false, false), global1.c), Struct_5(Struct_3(Struct_2(507f, false, Struct_1(arg_2.x, u_input.d, true, u_input.b, arg_0), vec4<f32>(arg_1.x, -250f, -116f, arg_1.x)), vec2<f32>(1449f, 129f)), vec4<bool>(true, global1.c, global1.c, false), false), true)))), Struct_1(79002u, vec3<u32>(~firstLeadingBit(global1.b.x), _wgslsmith_div_u32(_wgslsmith_div_u32(arg_2.x, 0u), max(20057u, u_input.c)), _wgslsmith_mult_u32(4294967295u, u_input.c) << (max(arg_2.x, global1.b.x) % 32u)), all(vec3<bool>(any(vec4<bool>(global1.c, false, true, global1.c)), any(vec3<bool>(true, global1.c, false)), global1.c)), _wgslsmith_clamp_vec3_i32(u_input.b, global1.d, -countOneBits(u_input.b)), vec3<i32>(global1.e.x, -2147483647i, global1.d.x << (~arg_2.x % 32u))));
    global1 = Struct_1(0u, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d, arg_2), ~1u, ~global1.b.x, ~62248u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, u_input.d.x, arg_3) & vec4<u32>(8824u, 26140u, 42102u, global1.a), ~vec4<u32>(4294967295u, arg_3, u_input.c, 81797u))), 44192u, arg_2.x), global1.c, vec3<i32>(-1i) * -vec3<i32>(abs(arg_0.x), global1.e.x & u_input.e.x, firstLeadingBit(-8795i)), abs(u_input.b) & vec3<i32>(0i, ~firstTrailingBit(25861i), _wgslsmith_div_i32(-24221i, 35737i | global1.d.x)));
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, _wgslsmith_mod_i32(countOneBits(~2147483647i), -2147483647i), -1i), ~abs(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, 9178i, -2147483647i, -42956i), vec4<i32>(-37961i, arg_0.x, 2147483647i, u_input.b.x))) | select(~(-vec4<i32>(1i, u_input.b.x, global1.e.x, -53582i)), ~(vec4<i32>(global1.e.x, global1.d.x, -12948i, arg_0.x) | vec4<i32>(arg_0.x, u_input.e.x, -15427i, u_input.b.x)), select(vec4<bool>(global1.c, true, global1.c, global1.c), vec4<bool>(global1.c, true, true, false), vec4<bool>(true, global1.c, global1.c, global1.c))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1152f + -629f) - arg_1.x), true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x * arg_1.x)))))) + arg_1.x);
    let var_1 = Struct_5(Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, -515f), -1482f), true, func_4(firstTrailingBit(vec4<u32>(39242u, u_input.d.x, global1.a, 30234u)), func_4(vec4<u32>(11564u, u_input.c, 4294967295u, arg_2.x), Struct_1(17299u, vec3<u32>(4294967295u, 62260u, global1.a), true, arg_0, vec3<i32>(global1.d.x, arg_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(749f, arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-646f, 2841f, arg_1.x, -667f) + vec4<f32>(278f, -198f, 1000f, arg_1.x))))), _wgslsmith_f_op_vec2_f32(floor(arg_1))), !select(vec4<bool>(all(vec3<bool>(global1.c, global1.c, true)), global1.c, arg_1.x >= arg_1.x, true), select(select(vec4<bool>(true, global1.c, global1.c, global1.c), vec4<bool>(true, global1.c, false, false), vec4<bool>(false, false, false, global1.c)), vec4<bool>(false, true, global1.c, true), global1.c != global1.c), all(select(vec3<bool>(global1.c, global1.c, global1.c), vec3<bool>(true, true, false), false))), global1.c);
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -248f), func_4(~(~vec4<u32>(62733u, arg_3, 3577u, 8152u)), var_1.a.a.c).c, var_1.a.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(601f, var_1.a.a.a, -406f, 1101f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(145f, -664f, -2322f, -639f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1758f, arg_1.x)));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_5) -> f32 {
    var var_0 = !arg_1;
    global1 = arg_0.a;
    let var_1 = _wgslsmith_sub_i32(2147483647i, arg_2.a.a.c.e.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-969f, arg_0.c, arg_0.c) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(592f, -1000f, -306f), vec3<f32>(396f, 731f, 932f)))))));
    var var_3 = Struct_1(arg_2.a.a.c.b.x, min(vec3<u32>(arg_0.a.a, 9943u, 11612u & ~u_input.a), _wgslsmith_add_vec3_u32(global1.b, vec3<u32>(_wgslsmith_dot_vec2_u32(global1.b.zz, vec2<u32>(0u, 35148u)), _wgslsmith_sub_u32(u_input.a, 4294967295u), ~u_input.a))), !arg_0.a.c || (arg_1.x | (_wgslsmith_f_op_f32(ceil(arg_2.a.a.d.x)) <= _wgslsmith_f_op_f32(arg_2.a.b.x * 515f))), u_input.b, global1.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f) + _wgslsmith_f_op_f32(abs(arg_2.a.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-633f * -755f) + -758f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(276f - -725f) - _wgslsmith_f_op_f32(-590f * -427f)) + _wgslsmith_f_op_f32(1439f * _wgslsmith_f_op_f32(ceil(-379f)))), _wgslsmith_f_op_f32(func_5(Struct_4(Struct_1(0u, vec3<u32>(4294967295u, 1u, 72788u), true, global1.e, vec3<i32>(-2147483647i, -1i, global1.d.x)), global1.d, -2216f), select(vec4<bool>(global1.c, global1.c, global1.c, true), select(vec4<bool>(true, global1.c, true, global1.c), vec4<bool>(global1.c, true, global1.c, global1.c), true), 0u > global1.a), Struct_5(func_1(vec3<i32>(-67515i, 1i, global1.e.x), vec2<f32>(1000f, -1973f), global1.b, 4294967295u), vec4<bool>(true, global1.c, true, false), any(vec4<bool>(true, global1.c, global1.c, global1.c)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-793f, -410f, -173f)))), vec3<f32>(-1446f, 374f, -416f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1801f, 679f, -680f) * vec3<f32>(-1217f, 674f, -807f)))))));
    var var_1 = func_2(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~1u, func_3(global1.e.x, Struct_5(Struct_3(Struct_2(var_0.x, true, Struct_1(u_input.d.x, vec3<u32>(global1.b.x, 15133u, 1u), true, vec3<i32>(global1.e.x, 17072i, 1i), u_input.b), vec4<f32>(-378f, -1000f, var_0.x, var_0.x)), vec2<f32>(-817f, var_0.x)), vec4<bool>(global1.c, false, global1.c, global1.c), false), Struct_5(Struct_3(Struct_2(-644f, global1.c, Struct_1(global1.a, global1.b, false, vec3<i32>(u_input.b.x, -1i, u_input.e.x), vec3<i32>(u_input.b.x, 1i, -35703i)), vec4<f32>(var_0.x, -303f, var_0.x, -836f)), var_0.yy), vec4<bool>(false, false, true, global1.c), false), var_0.x <= var_0.x), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(global1.a, u_input.d.x, u_input.c), 8141u)), global1.a)).x;
    let var_2 = func_4(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, global1.b.x, global1.a), firstTrailingBit(vec4<u32>(global1.a, 0u, global1.a, 3180u))), vec4<u32>(~1u, func_2(u_input.c).x, _wgslsmith_add_u32(0u, 22366u), _wgslsmith_mod_u32(4294967295u, 37112u)), vec4<u32>(1u, ~0u, 30233u, global1.b.x)), Struct_1(7950u, u_input.d, select(true, false, any(vec3<bool>(false, global1.c, global1.c)) & global1.c), select(func_1(vec3<i32>(27485i, u_input.b.x, global1.d.x), vec2<f32>(var_0.x, -211f), global1.b, 4294967295u).a.c.e, select(vec3<i32>(-1i, global1.e.x, u_input.e.x), global1.e, true), select(vec3<bool>(global1.c, true, false), vec3<bool>(global1.c, true, true), vec3<bool>(true, global1.c, true))) & -vec3<i32>(1i, u_input.e.x, global1.e.x), ~func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b.x, global1.a, global1.b.x, 44966u), vec4<u32>(1u, u_input.d.x, global1.b.x, 1u), vec4<u32>(global1.a, u_input.a, 4294967295u, global1.b.x)), Struct_1(u_input.a, vec3<u32>(12665u, 9022u, global1.b.x), true, u_input.b, vec3<i32>(u_input.e.x, -61222i, u_input.b.x))).d));
    global1 = var_2;
    var var_3 = abs(vec2<i32>(1i, _wgslsmith_mod_i32(u_input.e.x, firstLeadingBit(0i)) ^ -_wgslsmith_dot_vec3_i32(global1.e, vec3<i32>(-2147483647i, var_2.e.x, global1.e.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yz, -508f, func_1(vec3<i32>(~global1.d.x, -(~var_2.d.x), select(-13935i, -u_input.e.x, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(658f, var_0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-279f, var_0.x), var_0.zz, global1.c)))), max(_wgslsmith_div_vec3_u32(min(vec3<u32>(var_2.b.x, 2292u, var_2.b.x), vec3<u32>(4294967295u, 1u, 18049u)), ~u_input.d), ~(~vec3<u32>(23074u, global1.b.x, u_input.a))), 109996u).a.c.b, _wgslsmith_clamp_vec3_i32(max(var_2.d ^ func_4(vec4<u32>(78400u, 33598u, 8800u, 11251u), Struct_1(var_2.b.x, vec3<u32>(u_input.d.x, 0u, u_input.d.x), global1.c, vec3<i32>(-1700i, var_2.d.x, u_input.b.x), vec3<i32>(1i, 46663i, -2147483647i))).e, u_input.b), global1.d, vec3<i32>(-28454i, func_4(~vec4<u32>(global1.a, u_input.c, 4294967295u, 19446u), Struct_1(4294967295u, vec3<u32>(u_input.d.x, 89537u, 31819u), global1.c, u_input.b, vec3<i32>(-20748i, 0i, -4454i))).e.x, _wgslsmith_mod_i32(~var_2.e.x, global1.d.x))), global1.a);
}

