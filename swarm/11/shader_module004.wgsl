struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_add_vec2_u32(u_input.e.zx, vec2<u32>(u_input.d.x, 0u))), ~abs(vec2<u32>(u_input.d.x, 4294967295u))), Struct_1(~(u_input.d.x | u_input.d.x), -u_input.c, _wgslsmith_add_vec2_i32(u_input.a, _wgslsmith_mult_vec2_i32(vec2<i32>(1i, arg_3), vec2<i32>(12315i, 0i))), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(551f, arg_0))), 1830f), Struct_2(u_input.d.x, Struct_1((u_input.e.x | 1u) >> (~u_input.d.x % 32u), u_input.c, vec2<i32>(~arg_2, abs(arg_3)), select(true, false, any(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -512f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, arg_0))))), arg_0), _wgslsmith_div_i32(max(0i, 0i << (u_input.e.x % 32u)), _wgslsmith_add_i32(-2147483647i, 0i)) ^ abs(reverseBits(13574i)), _wgslsmith_f_op_f32(trunc(-2241f)));
    var var_1 = -4190i;
    var_1 = arg_2;
    var var_2 = all(vec3<bool>(!all(vec2<bool>(var_0.b.b.d, var_0.b.b.d)), var_0.a.b.d, true));
    let var_3 = var_0.a;
    return reverseBits(~0u);
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: u32) -> bool {
    let var_0 = 1u;
    let var_1 = Struct_5(18201u, vec3<i32>(_wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(u_input.c, -19707i, u_input.b, 2147483647i), vec4<i32>(-1i, u_input.c, -1i, u_input.c), vec4<bool>(true, false, true, false))), vec4<i32>(-11170i, u_input.a.x, -54739i, u_input.b >> (28049u % 32u))), _wgslsmith_dot_vec3_i32(select(min(vec3<i32>(u_input.a.x, -25846i, -389i), vec3<i32>(-1i, 1i, 26015i)), ~vec3<i32>(66233i, 50644i, -2147483647i), true), select(vec3<i32>(u_input.b, 1i, 0i), vec3<i32>(5261i, 1i, u_input.b), vec3<bool>(false, false, true)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(74327u, var_0, arg_1), vec3<u32>(u_input.e.x, 1u, 4294967295u)) % vec3<u32>(32u))), abs(select(u_input.c ^ -4317i, u_input.a.x, all(vec4<bool>(false, true, false, true))))));
    var var_2 = _wgslsmith_add_vec3_u32(u_input.e.xyw, vec3<u32>(3105u, u_input.d.x, ~var_1.a) & vec3<u32>(arg_1, u_input.e.x, arg_1));
    var_2 = ~u_input.e.xyx;
    let var_3 = min(u_input.a, _wgslsmith_div_vec2_i32(vec2<i32>(abs(_wgslsmith_sub_i32(-13508i, 31348i)), 1i), u_input.a));
    return _wgslsmith_f_op_f32(f32(-1f) * -881f) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -709f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-360f, 670f)) + -370f))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = vec4<bool>(true, arg_0.b.d, !select(true, false, arg_0.b.d), func_4(_wgslsmith_mod_vec2_u32(~u_input.e.xw, ~u_input.d.yy) | u_input.d.xz, arg_0.a, ~abs(arg_0.b.a) << (func_3(_wgslsmith_f_op_f32(-arg_0.b.e.x), u_input.b, ~arg_0.b.b, ~u_input.a.x) % 32u)));
    global0 = array<vec4<f32>, 10>();
    var var_1 = 1087f;
    var var_2 = vec4<f32>(-1421f, _wgslsmith_f_op_f32(-411f + 527f), arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0.c)))), !all(vec2<bool>(true, var_0.x))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(0u, 10u)] - _wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(arg_0.a, 10u)]))));
    return -13253i;
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(~_wgslsmith_add_u32(_wgslsmith_div_u32(~4294967295u, 1u ^ u_input.e.x), u_input.d.x), Struct_1(68890u, -1i, select(-(vec2<i32>(1i, u_input.c) & vec2<i32>(u_input.a.x, -2147483647i)), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.a)), func_4(~vec2<u32>(u_input.e.x, 4294967295u), _wgslsmith_mult_u32(u_input.d.x, 33548u), 1u)), true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1.xy + vec2<f32>(419f, arg_2.x)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -944f), _wgslsmith_f_op_f32(select(1000f, -1007f, false))))), 344f);
    global0 = array<vec4<f32>, 10>();
    global0 = array<vec4<f32>, 10>();
    var var_1 = Struct_4(Struct_1(abs(u_input.e.x), func_2(var_0) | ~(i32(-1i) * -2147483647i), ~vec2<i32>(1079i, abs(0i)), !var_0.b.d, _wgslsmith_f_op_vec2_f32(round(arg_2))), Struct_2(4294967295u, var_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x - arg_1.x)))));
    var var_2 = !(min(2147483647i, func_2(var_1.b)) >= select(firstLeadingBit(var_0.b.c.x), -1i << (var_1.b.b.a % 32u), false));
    return Struct_1(firstLeadingBit(select(countOneBits(34421u), 1u, any(vec4<bool>(var_1.b.b.d, var_1.b.b.d, var_0.b.d, false))) << (~(1u >> (var_1.b.a % 32u)) % 32u)), var_1.a.b, vec2<i32>(_wgslsmith_div_i32(-func_2(var_1.b), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.c.x, -16317i, u_input.c), reverseBits(vec3<i32>(var_0.b.b, var_0.b.b, 16793i)))), ~(-1i)), var_0.b.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-278f, _wgslsmith_f_op_f32(var_0.c * arg_2.x)))));
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: Struct_4, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_1(1u, u_input.c >> (_wgslsmith_dot_vec4_u32((vec4<u32>(26889u, arg_2.b.b.a, arg_3.a.a, 1u) >> (u_input.e % vec4<u32>(32u))) ^ ~vec4<u32>(40470u, 16683u, u_input.d.x, 19089u), u_input.e) % 32u), ~vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(-2147483647i >> (arg_2.a.a % 32u), func_5(1i, vec3<f32>(-1025f, 162f, 962f), arg_3.a.b.e).c.x)), false, arg_3.b.b.e);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-161f, _wgslsmith_f_op_f32(-arg_0))));
    var var_2 = _wgslsmith_div_f32(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1135f * -955f)));
    global0 = array<vec4<f32>, 10>();
    var_0 = func_5(-37991i, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, arg_2.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1)))))), vec2<f32>(988f, -134f));
    return arg_3.b;
}

fn func_1(arg_0: vec3<bool>) -> StorageBuffer {
    var var_0 = reverseBits(_wgslsmith_mult_vec4_i32(max(vec4<i32>(select(u_input.a.x, -16228i, true), u_input.a.x << (u_input.e.x % 32u), abs(u_input.a.x), _wgslsmith_add_i32(u_input.c, 2147483647i)), vec4<i32>(u_input.b, u_input.b, _wgslsmith_clamp_i32(1i, u_input.a.x, u_input.a.x), -u_input.c)), _wgslsmith_mult_vec4_i32(~select(vec4<i32>(2147483647i, 2147483647i, -1i, -2147483647i), vec4<i32>(33303i, 2147483647i, u_input.a.x, -1878i), arg_0.x), max(max(vec4<i32>(u_input.a.x, -1i, 2147483647i, u_input.c), vec4<i32>(-1i, -79882i, u_input.c, u_input.c)), vec4<i32>(u_input.a.x, u_input.b, 14223i, 27984i)))));
    var var_1 = ~_wgslsmith_sub_u32(u_input.d.x, u_input.e.x ^ 38760u);
    let var_2 = u_input.d.x;
    let var_3 = func_6(-1277f, u_input.c, Struct_4(func_5(~func_2(Struct_2(1145u, Struct_1(1u, var_0.x, vec2<i32>(-21037i, u_input.b), arg_0.x, vec2<f32>(571f, 553f)), 1221f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-228f, 640f, 1507f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2205f, -404f, -353f))), false)), vec2<f32>(-557f, -1059f)), Struct_2(13672u, func_5(abs(u_input.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -908f, -795f), vec3<f32>(-211f, 2397f, -648f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1595f, 512f), vec2<f32>(1000f, 1124f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1122f + -472f)))), Struct_3(Struct_2(abs(1280u), func_5(var_0.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-213f, 396f, 917f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2273f, 1246f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-991f * 1674f), _wgslsmith_f_op_f32(step(-471f, -802f))))), Struct_2(76948u, func_5(-1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1253f, -830f, -1484f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1496f, 363f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1429f)), _wgslsmith_f_op_f32(f32(-1f) * -199f)))), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_add_i32(var_0.x, -var_0.x)), -1000f));
    var_1 = u_input.d.x;
    return StorageBuffer(_wgslsmith_f_op_f32(ceil(var_3.c)), countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.e, select(vec4<u32>(var_3.b.a, var_3.a, var_3.a, 4294967295u), u_input.e, vec4<bool>(false, false, var_3.b.d, true))), u_input.e)), vec2<u32>(~var_2, min(~u_input.e.x, ~67625u) ^ var_2));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    let x = u_input.a;
    s_output = func_1(select(!vec3<bool>(true, all(vec2<bool>(true, var_0.x)), true), select(vec3<bool>(false, !var_0.x, !var_0.x), vec3<bool>(true, !var_0.x, any(vec2<bool>(false, false))), !vec3<bool>(var_0.x, var_0.x, var_0.x)), !select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, var_0.x, false), u_input.d.x != 1u)));
}

