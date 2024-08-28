struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = countOneBits(select((~vec4<u32>(85437u, arg_3.a, 24502u, arg_2.a) ^ abs(vec4<u32>(4294967295u, arg_3.a, arg_3.a, 14493u))) | ~(~vec4<u32>(arg_2.a, 44567u, 86681u, arg_1)), select(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_3.a, arg_1, arg_3.a, arg_2.a), vec4<u32>(4294967295u, arg_2.a, u_input.a.x, 7547u)), vec4<u32>(_wgslsmith_mult_u32(0u, 0u), max(4294967295u, 1u), 7074u >> (0u % 32u), ~arg_2.a), true), vec4<bool>(true, true, true, !all(vec4<bool>(true, false, true, true)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1205f, -1446f, -2024f))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-548f, 893f, 142f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1810f, -903f, -239f) + _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -2050f, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1662f, -1000f, -209f))))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 24798i, -2031i), reverseBits(firstLeadingBit(vec3<i32>(0i, arg_0, -1i)))), -86403i, _wgslsmith_sub_i32(-(~arg_0), u_input.b.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 35724i, 1i, u_input.b.x), vec4<i32>(-31892i, arg_0, u_input.b.x, arg_0)))), ~arg_0 >= -2147483647i);
    var_1 = Struct_1(var_1.a, vec3<i32>(u_input.b.x, min(arg_0, countOneBits(948i)), ~abs(-2147483647i)) | reverseBits(~(~vec3<i32>(-38819i, var_1.b.x, var_1.b.x))), var_1.c);
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x))) + var_1.a), vec3<i32>(~(-2147483647i ^ arg_0), -17375i >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(19308u, var_0.x), abs(u_input.a.x)) % 32u), arg_0), -823f != var_1.a.x);
    let var_2 = _wgslsmith_add_i32(-2750i, 2147483647i);
    return vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(var_1.b.zz, var_1.b.yz)), vec2<i32>(~0i, arg_0)), countOneBits(_wgslsmith_mult_i32(-20967i, 4268i)), _wgslsmith_clamp_i32(u_input.b.x, 38372i, -u_input.b.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = any(vec4<bool>(arg_3.c & !(u_input.a.x < 1u), !arg_3.c, false, 1165f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(280f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, 738f, 166f))))), abs(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-1i, arg_2), -2147483647i), _wgslsmith_add_i32(-2147483647i, arg_0.x), _wgslsmith_div_i32(arg_0.x ^ u_input.b.x, _wgslsmith_sub_i32(-5356i, arg_1.b.x)))), true);
    var_1 = arg_1;
    let var_2 = Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, u_input.a.x), u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), 31723u & u_input.a.x), firstLeadingBit(~vec4<u32>(u_input.a.x, 41517u, u_input.a.x, u_input.a.x))), u_input.a.x));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(var_1.a)), _wgslsmith_f_op_vec3_f32(-var_1.a))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, _wgslsmith_f_op_f32(arg_1.a.x + 112f), _wgslsmith_f_op_f32(var_1.a.x + arg_3.a.x)))), var_1.b, var_1.c);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(519f + var_3.a.x), -183f, !arg_3.c)), -1738f, _wgslsmith_f_op_f32(round(arg_1.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(var_3.a))))))), arg_3.a);
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1, arg_1))), vec3<i32>(u_input.b.x, -2147483647i, -5890i) << (_wgslsmith_div_vec3_u32(u_input.a, abs(vec3<u32>(u_input.a.x, 13291u, u_input.a.x))) % vec3<u32>(32u)), false);
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_div_i32(1i, 45368i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.b.x, 2147483647i), vec3<i32>(u_input.b.x, var_0.b.x, u_input.b.x))), var_0.b, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, -39557i), var_0.b.xx), 1i, 2147483647i ^ u_input.b.x)), var_0.b), -(var_0.b ^ abs(vec3<i32>(-1i, u_input.b.x, 2147483647i) >> (vec3<u32>(41642u, u_input.a.x, 35061u) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_3 = Struct_1(vec3<f32>(-1287f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_f32(114f * -452f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(var_0.a.x - 1359f)), arg_1.x))), vec3<i32>(0i, 0i, 2147483647i), true);
    let var_4 = var_3.c;
    return arg_1;
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    let var_0 = !all(!vec3<bool>(any(vec4<bool>(true, true, false, false)), true, any(vec2<bool>(true, false))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(select(vec4<bool>(var_0, true, ~u_input.a.x <= (1u | u_input.a.x), all(vec2<bool>(var_0, var_0))), !select(!vec4<bool>(var_0, var_0, var_0, var_0), select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(true, var_0, var_0, var_0), var_0), var_0), true), _wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(-1i) * -(~vec2<i32>(arg_0.x, -12249i)), Struct_1(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -400f), 691f), func_3(firstLeadingBit(u_input.b.x), u_input.a.x, Struct_2(74602u), Struct_2(u_input.a.x)), true), 1i, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-484f, -874f, 237f) - vec3<f32>(-463f, 502f, -210f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-344f, -160f, -165f))), vec3<i32>(-2147483647i, -16429i, 2147483647i) << (vec3<u32>(u_input.a.x, 54241u, 21183u) % vec3<u32>(32u)), any(vec2<bool>(var_0, var_0)))))));
    let var_2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-862f, var_1.x, 1219f) + vec3<f32>(-1366f, _wgslsmith_f_op_f32(-2404f + var_1.x), var_1.x)), vec3<f32>(-1816f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), vec3<i32>(_wgslsmith_add_i32(1i, -2147483647i), _wgslsmith_clamp_i32(min(u_input.b.x, u_input.b.x), -arg_0.x, -2147483647i), _wgslsmith_mod_i32(0i >> (u_input.a.x % 32u), -1i | u_input.b.x)) >> (_wgslsmith_div_vec3_u32(~(vec3<u32>(4294967295u, 4782u, 5431u) ^ u_input.a), select(select(u_input.a, u_input.a, vec3<bool>(false, false, false)), ~u_input.a, any(vec4<bool>(false, false, var_0, false)))) % vec3<u32>(32u)), true);
    var var_3 = 1u;
    var var_4 = Struct_2(0u);
    return -abs(-2147483647i);
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(227f)), _wgslsmith_f_op_f32(min(-957f, 1377f)), _wgslsmith_f_op_f32(f32(-1f) * -2748f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1974f, 117f, 1519f) * vec3<f32>(-1975f, 1063f, 740f)))))), vec3<i32>(func_2(max(vec4<i32>(1212i, u_input.b.x, u_input.b.x, 1i) << (vec4<u32>(54843u, 1u, 0u, 0u) % vec4<u32>(32u)), max(vec4<i32>(70444i, 50397i, arg_0, 82029i), vec4<i32>(u_input.b.x, 0i, 2992i, 20987i)))), 53896i, 1i), !select(!(!arg_1), !all(vec2<bool>(arg_1, arg_1)), all(!vec3<bool>(arg_1, arg_1, true))));
    let var_1 = Struct_1(var_0.a, var_0.b, !all(vec3<bool>(all(vec3<bool>(var_0.c, var_0.c, false)), !var_0.c, arg_1)));
    var var_2 = abs(0i | (25020i & var_0.b.x));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-233f))) * _wgslsmith_f_op_f32(step(2076f, var_1.a.x))), 1319f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f + var_0.a.x)));
    var var_4 = vec3<bool>(all(vec3<bool>(arg_1, select(-1000f >= var_0.a.x, u_input.b.x < 0i, arg_1), true)), true, any(vec3<bool>(!arg_1, select(true, true, u_input.a.x >= 0u), !var_0.c)));
    return Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(sign(var_3.x)))), -(~var_1.b), true);
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_2 {
    let var_0 = ~(~vec3<i32>(arg_1.b.x, abs(_wgslsmith_div_i32(16430i, 22559i)), func_1(-6717i, true).b.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a.x, 896f, arg_2, arg_2))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, -1112f, 1016f) - vec4<f32>(149f, arg_1.a.x, arg_1.a.x, 1340f))))) + vec4<f32>(_wgslsmith_f_op_f32(460f * _wgslsmith_f_op_f32(f32(-1f) * -401f)), 279f, -241f, arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-439f, arg_1.a.x, arg_1.a.x, 104f))))))));
    var var_2 = u_input.a.x;
    let var_3 = arg_1;
    var_2 = abs(firstLeadingBit(~4294967295u));
    return Struct_2(_wgslsmith_mod_u32(select(1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 20536u)), vec4<u32>(1u, u_input.a.x, 4294967295u, 1u)), true & (u_input.b.x >= arg_1.b.x)), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-50546i, func_1(_wgslsmith_add_i32(u_input.b.x, 28824i >> (u_input.a.x % 32u)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2822f - -889f) * _wgslsmith_f_op_f32(f32(-1f) * -1076f)) + 146f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))) + -1081f)), true);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, -355f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(357f, -1000f))), 1000f, -1236f), vec4<f32>(1f, 1f, 1f, 1f))));
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(~u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x >> (var_0.a % 32u), u_input.b.x | 0i, u_input.b.x, 0i), reverseBits(-vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 2147483647i))), ~(u_input.b.x | u_input.b.x), ~firstTrailingBit(1i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -20548i, _wgslsmith_div_i32(35888i, -2147483647i | u_input.b.x), _wgslsmith_clamp_i32(-66099i, reverseBits(u_input.b.x), 0i)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(17152i, 0i, u_input.b.x, 0i), vec4<i32>(u_input.b.x, u_input.b.x, 51439i, u_input.b.x)) >> ((vec4<u32>(0u, 1u, var_0.a, 0u) >> (vec4<u32>(var_0.a, 0u, 50574u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    let var_3 = func_1(u_input.b.x, true).c;
    var_2 = vec4<i32>(func_2(vec4<i32>(var_2.x, -1i >> (u_input.a.x % 32u), u_input.b.x, var_2.x)), 13030i, func_1(u_input.b.x, abs(var_2.x) >= ~(~u_input.b.x)).b.x, _wgslsmith_mod_i32(1i & var_2.x, abs(_wgslsmith_clamp_i32(1i, var_2.x, var_2.x))));
    var_2 = _wgslsmith_add_vec4_i32(abs(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, var_2.x, var_2.x, var_2.x), vec4<i32>(0i, u_input.b.x, var_2.x, var_2.x))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 48295i, var_2.x, 2147483647i), vec4<i32>(-2147483647i, var_2.x, 0i, var_2.x)), abs(vec4<i32>(u_input.b.x, 21767i, var_2.x, u_input.b.x)), (vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x) & vec4<i32>(1i, 1i, -57408i, u_input.b.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.a, 34763u, var_0.a), vec4<u32>(8785u, 1u, 27406u, var_0.a)) % vec4<u32>(32u))), -vec4<i32>(var_2.x | 1i, -18937i << (var_0.a % 32u), u_input.b.x, u_input.b.x)));
    var var_4 = _wgslsmith_sub_vec4_i32(-reverseBits(~vec4<i32>(41062i, 4866i, u_input.b.x, u_input.b.x) >> (~vec4<u32>(var_0.a, var_0.a, var_0.a, 4294967295u) % vec4<u32>(32u))), abs(~(-vec4<i32>(var_2.x, u_input.b.x, u_input.b.x, u_input.b.x))) << (vec4<u32>(_wgslsmith_mult_u32(0u, ~89166u), 4294967295u, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, 72161u, 46015u))), _wgslsmith_clamp_u32(0u, 13594u, _wgslsmith_sub_u32(var_0.a, 4294967295u))) % vec4<u32>(32u)));
    let var_5 = func_1(reverseBits(firstTrailingBit(-36895i << (var_0.a % 32u))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(-firstTrailingBit(var_2.x), var_4.x, -16500i, u_input.b.x), select(~(-vec4<i32>(32669i, 0i, var_4.x, u_input.b.x)), ~min(vec4<i32>(-24227i, var_4.x, 15623i, 0i), vec4<i32>(var_5.b.x, var_5.b.x, -21332i, 1557i)), !select(vec4<bool>(true, var_3, false, true), vec4<bool>(var_3, var_5.c, var_5.c, false), false))));
}

