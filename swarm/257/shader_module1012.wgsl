struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_3(arg_0);
    var_0 = Struct_3(arg_0);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1099f, _wgslsmith_f_op_f32(arg_0.b.a + _wgslsmith_f_op_f32(sign(-845f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.a.c.a, 1976f)), var_0.a.e))));
    let var_2 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-134f))));
    return var_0.a;
}

fn func_3(arg_0: Struct_5) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1128f, arg_0.c, 594f, -905f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, -2243f, -949f, arg_0.a), vec4<f32>(arg_0.c, 112f, 859f, -462f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, arg_0.a, 1331f, arg_0.b.b.a) * vec4<f32>(arg_0.c, 127f, arg_0.c, 1450f)))) - vec4<f32>(_wgslsmith_f_op_f32(floor(1080f)), _wgslsmith_f_op_f32(471f + 599f), 157f, arg_0.c)), true)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, -786f, arg_0.a, arg_0.b.b.a) - vec4<f32>(-423f, 819f, -859f, -662f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(365f, -529f, -1026f, 689f) * vec4<f32>(arg_0.b.c.a, 1650f, arg_0.a, arg_0.c)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a))), 262f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -270f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(903f, 1855f, var_0.x, arg_0.b.e), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-279f, -410f, -291f, arg_0.b.c.a))), true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.e) - _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(trunc(698f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1244f))), _wgslsmith_f_op_f32(-127f * _wgslsmith_f_op_f32(f32(-1f) * -941f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_0.b.c.a), _wgslsmith_f_op_f32(min(189f, arg_0.c)), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, arg_0.a, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(151f, 883f, arg_0.c, var_0.x)))) * vec4<f32>(128f, _wgslsmith_f_op_f32(ceil(1297f)), var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(140f, 103f, true)), _wgslsmith_f_op_f32(265f + -267f)))))));
    let var_1 = arg_0.b.c;
    let var_2 = Struct_4(arg_0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1803f), _wgslsmith_f_op_f32(-1376f - 1f))), -1000f, any(vec4<bool>(u_input.d > u_input.d, false, true, u_input.d > u_input.d)))), Struct_2(max(arg_0.b.d.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, arg_0.b.a.x), vec2<i32>(u_input.c, arg_0.b.a.x))), Struct_1(-1075f), func_2(Struct_2(_wgslsmith_add_vec2_i32(arg_0.b.a, vec2<i32>(arg_0.b.a.x, arg_0.b.d.x)), Struct_1(-472f), Struct_1(1188f), vec4<i32>(u_input.b.x, -23305i, u_input.c, arg_0.b.d.x), _wgslsmith_f_op_f32(110f + var_0.x)), vec4<u32>(_wgslsmith_mult_u32(u_input.d, 14093u), u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(28444u, 1u, 2057u, u_input.d), vec4<u32>(153429u, u_input.d, 1u, u_input.d)), select(u_input.d, u_input.d, true)), ~_wgslsmith_mod_vec4_i32(arg_0.b.d, arg_0.b.d)).c, select(arg_0.b.d, abs(abs(arg_0.b.d)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(abs(var_0.x)))));
    let var_3 = arg_0.b;
    return _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.d, 1u, 14212u)), vec3<u32>(u_input.d, firstLeadingBit(~u_input.d), u_input.d)) > ~(~0u);
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<bool>(!func_3(Struct_5(305f, func_2(Struct_2(u_input.b.zy, Struct_1(-1256f), Struct_1(867f), vec4<i32>(16205i, 14066i, u_input.a, -35764i), 896f), vec4<u32>(u_input.d, 24191u, 21114u, 21160u), vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, 1i)), _wgslsmith_div_f32(1131f, -2456f))), (_wgslsmith_sub_u32(0u << (u_input.d % 32u), u_input.d & u_input.d) > u_input.d) || select((u_input.d > u_input.d) || true, true, true), all(!vec4<bool>(all(vec2<bool>(true, false)), true, true, true)));
    var var_1 = u_input.a;
    var var_2 = i32(-1i) * -2147483647i;
    let var_3 = _wgslsmith_f_op_f32(245f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(395f + 930f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -940f) * _wgslsmith_f_op_f32(ceil(-975f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-584f, -1000f))))))));
    var var_4 = func_2(Struct_2(vec2<i32>(28482i, _wgslsmith_add_i32(u_input.b.x, u_input.b.x ^ u_input.c)), func_2(func_2(func_2(Struct_2(u_input.b.yx, Struct_1(var_3), Struct_1(-942f), vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.a), var_3), vec4<u32>(28882u, 1u, 0u, u_input.d), vec4<i32>(u_input.a, u_input.b.x, u_input.c, 28282i)), ~vec4<u32>(u_input.d, 23236u, 4294967295u, u_input.d), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, 0i, 20860i), vec4<i32>(-1i, u_input.c, u_input.a, 1i))), abs(abs(vec4<u32>(68164u, u_input.d, u_input.d, 4294967295u))), vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(u_input.a, u_input.b.x), u_input.b.x, _wgslsmith_sub_i32(1i, 7592i))).b, func_2(Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(41588i, u_input.c), u_input.b.zy), func_2(Struct_2(vec2<i32>(u_input.b.x, -1i), Struct_1(1322f), Struct_1(782f), vec4<i32>(0i, u_input.b.x, u_input.a, u_input.c), var_3), vec4<u32>(u_input.d, 5908u, 0u, 0u), vec4<i32>(u_input.a, u_input.c, 1i, u_input.a)).b, func_2(Struct_2(u_input.b.xy, Struct_1(var_3), Struct_1(708f), vec4<i32>(u_input.b.x, u_input.c, -2147483647i, u_input.c), var_3), vec4<u32>(u_input.d, 7787u, 76570u, u_input.d), vec4<i32>(-2147483647i, u_input.c, u_input.c, -3572i)).b, vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.c), _wgslsmith_f_op_f32(var_3 * 378f)), ~(~vec4<u32>(16885u, 5207u, u_input.d, u_input.d)), vec4<i32>(~u_input.b.x, -2147483647i, 10062i ^ u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, 8961i))).c, vec4<i32>(u_input.c, -1i, countOneBits(0i), i32(-1i) * -31527i) ^ (vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.b.x, 2147483647i, -1i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1380f, 425f, false)))))), ~(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.d), vec4<u32>(53235u, u_input.d, 3895u, u_input.d))) >> ((vec4<u32>(4294967295u, 65473u, u_input.d, u_input.d) & ~vec4<u32>(u_input.d, u_input.d, 1010u, u_input.d)) % vec4<u32>(32u))), vec4<i32>(-(~max(2147483647i, 8472i)), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -93280i), reverseBits(vec2<i32>(u_input.a, 1i)))), _wgslsmith_sub_i32(u_input.c, 1i), u_input.a)).c;
    return func_2(Struct_2(_wgslsmith_clamp_vec2_i32(u_input.b.xy, _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.c, u_input.c)), ~u_input.b.zx), vec2<i32>(-1i) * -u_input.b.zy), Struct_1(_wgslsmith_f_op_f32(-var_4.a)), Struct_1(var_3), vec4<i32>(8784i, ~(i32(-1i) * -18319i), ~u_input.b.x, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a - var_3)))), min(~(~vec4<u32>(u_input.d, u_input.d, 17053u, 76436u)), firstTrailingBit(~vec4<u32>(u_input.d, u_input.d, 25731u, u_input.d) | ~vec4<u32>(1u, 65893u, 3725u, u_input.d))), ~(vec4<i32>(2977i, firstTrailingBit(-21322i), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b), max(u_input.c, u_input.a)) | (-vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, -2147483647i) | vec4<i32>(u_input.a, 21597i, u_input.b.x, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, abs(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, var_0.d.x, var_0.d.x), vec3<i32>(0i, 0i, u_input.c))))), func_1().a.x, firstTrailingBit(-34036i), u_input.b.x);
    var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~31282i >> (1u % 32u), -5859i, -var_0.d.x | func_1().d.x, ~(-3416i)), vec4<i32>(var_1.x >> (13716u % 32u), select(~var_1.x, 0i, true), u_input.b.x, ~1i)), var_0.d);
    let var_2 = Struct_4(var_0, _wgslsmith_f_op_f32(f32(-1f) * -937f), func_2(Struct_2(vec2<i32>(abs(33858i), 1i), var_0.b, var_0.b, vec4<i32>(-37465i, _wgslsmith_mult_i32(0i, -2147483647i), 1i, 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.a)) + _wgslsmith_f_op_f32(round(var_0.b.a)))), ~max(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), ~vec4<u32>(u_input.d, 69477u, 13551u, 0u)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, u_input.a, 2147483647i, u_input.b.x), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-12882i, 12823i, var_0.a.x), vec3<i32>(1i, var_0.a.x, u_input.c)), 2147483647i, countOneBits(-4547i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(var_0.d.x, var_1.x))))));
    var_1 = vec4<i32>(-2147483647i << (u_input.d % 32u), ~_wgslsmith_sub_i32(1i, u_input.a) & -(~u_input.b.x), ~(~u_input.c), var_2.a.d.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~(~u_input.d), firstTrailingBit(4294967295u), ~reverseBits(u_input.d)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(16842u, u_input.d, 12303u, u_input.d) >> (vec4<u32>(4294967295u, u_input.d, 51014u, u_input.d) % vec4<u32>(32u)), countOneBits(~vec4<u32>(0u, u_input.d, 4247u, u_input.d)), ~vec4<u32>(19054u, 1u, u_input.d, 13298u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(8696u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1457f, var_0.c.a))))), 668f));
}

