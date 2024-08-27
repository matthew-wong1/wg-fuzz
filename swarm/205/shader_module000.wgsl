struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> bool {
    var var_0 = ~(-select(min(_wgslsmith_clamp_i32(1i, -2147483647i, u_input.a.x), _wgslsmith_clamp_i32(0i, 44496i, u_input.b)), 949i, true));
    let var_1 = Struct_4(Struct_1(firstTrailingBit(~_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a)), -677f, -_wgslsmith_clamp_i32(2147483647i, u_input.a.x, 15292i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(883f, 625f, -878f, 732f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(250f, -473f, 279f, 466f) - vec4<f32>(1597f, -183f, 1000f, 617f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2178f), _wgslsmith_f_op_f32(abs(1435f)), _wgslsmith_f_op_f32(floor(842f)), 1f)), _wgslsmith_sub_vec4_u32(min(reverseBits(vec4<u32>(arg_0.x, arg_0.x, u_input.d.x, 57644u)), ~vec4<u32>(36199u, u_input.c, arg_0.x, arg_0.x)), firstLeadingBit(vec4<u32>(1u, 2628u, 1u, u_input.d.x)) | (vec4<u32>(arg_0.x, arg_0.x, arg_0.x, u_input.d.x) << (vec4<u32>(1u, 100535u, arg_0.x, 1u) % vec4<u32>(32u))))), Struct_1(u_input.a, _wgslsmith_f_op_f32(-272f + _wgslsmith_f_op_f32(f32(-1f) * -1153f)), _wgslsmith_dot_vec3_i32(u_input.a.zzz, vec3<i32>(i32(-1i) * -2147483647i, abs(49275i), 1i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1451f, -168f, 724f, -151f) - vec4<f32>(-591f, 1000f, -1932f, 318f)) * vec4<f32>(1338f, -977f, -1055f, -529f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-330f, -1000f, 922f, 496f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-571f, -1093f, -255f, 529f) - vec4<f32>(896f, 592f, -1294f, 971f))))), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, 20490u, u_input.d.x, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 832u, 43202u, arg_0.x) << (vec4<u32>(u_input.e, arg_0.x, 27726u, u_input.d.x) % vec4<u32>(32u)), select(vec4<u32>(u_input.e, 25050u, u_input.e, u_input.e), vec4<u32>(1u, 6333u, u_input.d.x, arg_0.x), vec4<bool>(false, true, true, false))))), vec4<bool>(true, select(false, all(vec2<bool>(true, true)), true), false, !(true || any(vec4<bool>(false, true, true, true)))), Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), ~(i32(-1i) * -81828i), -16106i, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(220f)) - _wgslsmith_div_f32(1804f, 1434f))), firstTrailingBit(-1i | select(u_input.b, -2147483647i, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, -423f, 1471f, 1043f)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(196f, -753f, 107f, -997f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1115f, -1486f, -764f, 1627f) + vec4<f32>(-210f, -1589f, 414f, 1030f))))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 0u, arg_0.x, arg_0.x), vec4<u32>(1u, 11160u, arg_0.x, 1u)), vec4<u32>(4294967295u, u_input.c, 42406u, 1u) | vec4<u32>(u_input.e, arg_0.x, 1u, u_input.e)) >> (vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_0.x), ~11800u, 0u, _wgslsmith_clamp_u32(u_input.e, 47954u, 39801u)) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(var_1.d.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.d - _wgslsmith_f_op_vec4_f32(var_1.b.d + var_1.b.d)) + vec4<f32>(_wgslsmith_f_op_f32(-466f + var_1.d.d.x), _wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(max(772f, var_1.a.b)), var_1.b.b)))));
    var_0 = var_1.a.c;
    let var_3 = _wgslsmith_f_op_f32(trunc(var_2.x));
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = func_3(firstTrailingBit(~(~vec2<u32>(arg_2, u_input.c))));
    global0 = array<Struct_4, 30>();
    let var_1 = Struct_3(any(arg_0), arg_1.e, Struct_2(vec4<bool>(true, false, all(vec4<bool>(var_0, true, false, false)), (arg_0.x | arg_0.x) && true), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c, 2147483647i, 2147483647i, arg_1.c), vec4<i32>(u_input.a.x, arg_1.c, arg_1.a.x, arg_1.c)) << ((vec4<u32>(u_input.e, u_input.e, arg_1.e.x, 4294967295u) >> (arg_1.e % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_3.x, arg_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -595f))), arg_1.c, arg_1.d, vec4<u32>(~u_input.d.x, 1u, u_input.d.x, _wgslsmith_add_u32(4294967295u, arg_2))), select(arg_0, !arg_0, select(arg_0, arg_0, vec2<bool>(arg_0.x, var_0))), _wgslsmith_f_op_f32(f32(-1f) * -1968f), arg_1), _wgslsmith_f_op_vec4_f32(arg_1.d - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.d)))));
    let var_2 = global0[_wgslsmith_index_u32(var_1.b.x, 30u)];
    let var_3 = var_2.c;
    return !(!(!select(!vec3<bool>(var_0, arg_0.x, arg_0.x), select(var_3.zzx, var_2.c.wyx, true), !arg_0.x)));
}

fn func_1(arg_0: bool, arg_1: f32) -> i32 {
    var var_0 = Struct_3(all(select(select(!vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, true), true), select(func_2(vec2<bool>(true, false), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -2927i, 60898i), arg_1, 2147483647i, vec4<f32>(-1128f, -1394f, -398f, arg_1), vec4<u32>(1u, u_input.d.x, 26623u, 0u)), u_input.e, vec3<f32>(arg_1, arg_1, -840f)), !vec3<bool>(true, arg_0, false), !vec3<bool>(true, arg_0, true)), true)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(~u_input.c, ~84728u, min(u_input.e, 0u), 9422u), ~(abs(vec4<u32>(1u, u_input.d.x, 4294967295u, 27213u)) & select(vec4<u32>(0u, u_input.d.x, u_input.d.x, 4294967295u), vec4<u32>(27097u, 1u, 23197u, 4294967295u), arg_0)), ~vec4<u32>(22173u, u_input.c, ~19716u, 34129u)), Struct_2(select(vec4<bool>(arg_0, arg_0, false, arg_0), select(select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(false, false, true, arg_0), false), vec4<bool>(arg_0, true, arg_0, false), select(false, arg_0, false)), all(!vec4<bool>(arg_0, false, arg_0, arg_0))), Struct_1(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(51683i, 518i, -7178i, u_input.a.x)) ^ firstLeadingBit(u_input.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_mult_i32(select(u_input.b, 2147483647i, arg_0), _wgslsmith_add_i32(u_input.b, u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(1758f, 125f, 1000f, 435f), arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-689f, 489f, arg_1, 1000f) + vec4<f32>(-319f, 1678f, arg_1, arg_1))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(29370u, 39678u, u_input.d.x, u_input.c), vec4<u32>(u_input.d.x, u_input.e, 4294967295u, 4294967295u)), ~vec4<u32>(1u, 66886u, u_input.e, u_input.e), select(vec4<u32>(u_input.c, 0u, u_input.d.x, u_input.e), vec4<u32>(39688u, u_input.d.x, u_input.e, 0u), true))), select(!(!vec2<bool>(arg_0, false)), func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(arg_0, false)), Struct_1(vec4<i32>(u_input.b, 0i, u_input.b, 1i), 804f, u_input.a.x, vec4<f32>(arg_1, arg_1, arg_1, -222f), vec4<u32>(0u, u_input.c, u_input.c, 1u)), 4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(659f, -1228f, arg_1))).zz, arg_0), arg_1, Struct_1(abs(u_input.a ^ vec4<i32>(u_input.b, u_input.b, u_input.a.x, -2147483647i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(123f, arg_1)), _wgslsmith_f_op_f32(arg_1 - arg_1))), -u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, -910f)) + vec4<f32>(-1732f, -2079f, arg_1, arg_1)), reverseBits(abs(vec4<u32>(u_input.e, 1u, u_input.e, 1u))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, -1820f, -228f, arg_1)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 764f, -751f, -203f) + vec4<f32>(arg_1, arg_1, arg_1, 1074f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 788f, arg_1, -590f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 2010f, arg_1))))));
    var var_1 = Struct_4(var_0.c.e, var_0.c.e, select(vec4<bool>(!var_0.a, false, false, var_0.a), var_0.c.a, false), var_0.c.e);
    global0 = array<Struct_4, 30>();
    var var_2 = ~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.c.e.e.x, u_input.e), var_1.b.e.xww), _wgslsmith_mult_u32(var_0.b.x, var_0.b.x)), 1u, var_0.b.x, ~u_input.d.x) << (var_0.b % vec4<u32>(32u));
    var_0 = Struct_3(func_2(!(!(!var_1.c.wy)), Struct_1(u_input.a, var_1.b.b, var_1.d.a.x ^ _wgslsmith_add_i32(-14169i, -43353i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.d, vec4<f32>(var_0.d.x, arg_1, -1000f, -798f)))), var_1.d.e), 4294967295u, var_1.a.d.yxy).x, reverseBits(var_0.c.e.e), var_0.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.b.d, var_0.d)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.d.x, -384f, 398f, var_0.d.x) + vec4<f32>(var_1.a.b, var_0.c.d, -739f, -335f))))));
    return ~(-51721i ^ max(13170i, _wgslsmith_div_i32(-var_0.c.e.a.x, var_1.d.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (max(~func_1(true, 1156f), reverseBits(_wgslsmith_mod_i32(u_input.b, u_input.a.x))) | u_input.a.x) >> (~_wgslsmith_clamp_u32(abs(~16170u), 16815u, _wgslsmith_dot_vec3_u32(~u_input.d, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 0u, 4294967295u), vec3<u32>(u_input.d.x, 4294967295u, u_input.e)))) % 32u);
    global0 = array<Struct_4, 30>();
    global0 = array<Struct_4, 30>();
    let var_1 = Struct_2(vec4<bool>(false, true, any(vec2<bool>(true, true)), true), Struct_1(_wgslsmith_sub_vec4_i32(-u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_0, var_0), u_input.a, u_input.a)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 53650u, 32823u, u_input.e), vec4<u32>(4294967295u, 31283u, u_input.c, u_input.d.x)), select(vec4<u32>(30020u, u_input.e, 51153u, 0u), vec4<u32>(u_input.d.x, 45915u, u_input.c, 1239u), true)) % vec4<u32>(32u)), 520f, -14615i, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, _wgslsmith_f_op_f32(sign(300f)), _wgslsmith_f_op_f32(step(-406f, -1569f)), _wgslsmith_f_op_f32(f32(-1f) * -114f)))), reverseBits(abs(max(vec4<u32>(23564u, u_input.e, 1u, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.e, u_input.e))))), !(!func_2(vec2<bool>(true, true), Struct_1(u_input.a, -129f, u_input.a.x, vec4<f32>(-1553f, -228f, -395f, -515f), vec4<u32>(4294967295u, u_input.e, u_input.e, 1u)), u_input.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-937f, 521f, 826f) - vec3<f32>(-190f, -1411f, -1000f))).yz), 285f, Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 30147i, var_0, 27838i), vec4<i32>(u_input.b, var_0, var_0, 26820i), ~vec4<i32>(-20791i, var_0, var_0, var_0)), abs(vec4<i32>(var_0, -2147483647i, -1i, var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1297f)) + _wgslsmith_f_op_f32(f32(-1f) * -561f)), -1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1196f, 817f, -372f, 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(713f, 1017f, -1061f, -1000f) - vec4<f32>(887f, 1156f, -400f, -2325f)))), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(36880u, u_input.c, u_input.c, u_input.e), vec4<u32>(u_input.c, 12953u, u_input.d.x, 0u) >> (vec4<u32>(6090u, 25530u, u_input.e, u_input.c) % vec4<u32>(32u))), u_input.d.x, u_input.c)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 72345u), u_input.d.yz), 30u)];
    global0 = array<Struct_4, 30>();
    var var_3 = vec2<i32>(u_input.b, var_1.e.c) & (u_input.a.zy >> (var_1.e.e.zw % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(4294967295u, 1u)), vec2<u32>(_wgslsmith_div_u32(~var_1.b.e.x, var_1.e.e.x), 4294967295u)), var_2.d.d, 1234f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.b, var_1.d, false)))))), var_1.b.d.xyx);
}

