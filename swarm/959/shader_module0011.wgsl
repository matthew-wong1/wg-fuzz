struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: vec4<f32> = vec4<f32>(724f, -1161f, -301f, -226f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.b, 18u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(0u), 18u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x)))))));
    global0 = array<f32, 18>();
    return global1.zz;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_3, arg_3: vec4<u32>) -> i32 {
    var var_0 = Struct_2(~_wgslsmith_add_u32(~arg_2.d, _wgslsmith_sub_u32(~arg_3.x, arg_3.x)), Struct_1(arg_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 * global0[_wgslsmith_index_u32(arg_3.x, 18u)]))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0 - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 1454f) + arg_0)), _wgslsmith_f_op_vec2_f32(func_3(-arg_2.a, global0[_wgslsmith_index_u32(4294967295u, 18u)] != 518f)), false)), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), vec3<bool>(false, all(vec3<bool>(false, true, true)), false))), Struct_1(countOneBits(~max(arg_3, arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-298f, _wgslsmith_f_op_f32(1631f + global1.x))) - global0[_wgslsmith_index_u32(~arg_3.x, 18u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0, global1.wy))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), any(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), true))));
    global0 = array<f32, 18>();
    var var_1 = Struct_3(-(arg_2.a >> (~vec3<u32>(1u, arg_2.d, arg_2.d) % vec3<u32>(32u))), _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, 2147483647i), -arg_2.a), arg_2.b, min(-(i32(-1i) * -1i), i32(-1i) * -2147483647i)), reverseBits(~_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.b, 1955i), vec2<i32>(1i, 44752i)), arg_2.c, select(vec2<i32>(u_input.a, -1i), vec2<i32>(-16651i, -1i), false))), 51615u, select(select(arg_2.e, min(abs(vec4<i32>(arg_2.b, 8284i, 2147483647i, -2147483647i)), arg_2.e | arg_2.e), var_0.c.d.x), _wgslsmith_clamp_vec4_i32(arg_2.e, firstTrailingBit(vec4<i32>(-2147483647i, arg_2.e.x, 19919i, -74849i)), arg_2.e), !(true & select(false, true, true))));
    let var_2 = ~0i;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_f_op_f32(1957f + arg_0.x), arg_0.x, global0[_wgslsmith_index_u32(select(25708u, 4294967295u, false), 18u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, -187f, -561f, global0[_wgslsmith_index_u32(arg_2.d, 18u)]))) - vec4<f32>(arg_0.x, global1.x, global1.x, 598f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1101f, -484f, global0[_wgslsmith_index_u32(1019u, 18u)], -281f) * vec4<f32>(global0[_wgslsmith_index_u32(88236u, 18u)], 563f, arg_0.x, 383f)))), min(2147483647i, -var_2) > _wgslsmith_sub_i32(var_1.c.x & 15251i, i32(-1i) * -1i))));
    return (arg_2.a.x << (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstTrailingBit(arg_2.d), _wgslsmith_sub_u32(u_input.b, arg_3.x), 1u), _wgslsmith_clamp_u32(var_1.d, ~34499u, var_1.d)) % 32u)) << (min(~_wgslsmith_dot_vec4_u32(arg_3, ~arg_3), 0u) % 32u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    global0 = array<f32, 18>();
    let var_0 = (i32(-1i) * -1i) >> (arg_2 % 32u);
    global0 = array<f32, 18>();
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(320f, 1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global1.x, 1f)))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global0 = array<f32, 18>();
    return Struct_4(Struct_2(max(42581u, ~max(22468u, 300u)), Struct_1(~vec4<u32>(89023u, arg_1.d, 24684u, arg_2), _wgslsmith_f_op_f32(exp2(global1.x)), global1.xz, !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), Struct_1(vec4<u32>(~arg_1.d, firstTrailingBit(arg_1.d), ~51018u, arg_1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2005f * global1.x) - _wgslsmith_f_op_f32(global1.x - global1.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.zx))), vec3<bool>(true, true, any(vec2<bool>(false, false))))), _wgslsmith_clamp_i32(-firstTrailingBit(min(14092i, 0i)), 0i >> ((arg_1.d | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 85055u, 1u), vec3<u32>(arg_1.d, 0u, 78612u))) % 32u), -(arg_1.b ^ ~(-90306i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * 689f), _wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_add_u32(arg_0.d, arg_1.d), Struct_1(vec4<u32>(0u, arg_2, arg_1.d, select(~0u, 4294967295u, any(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-114f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.wz - _wgslsmith_f_op_vec2_f32(-global1.wy))), vec3<bool>(true, true, u_input.a < var_0)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32) -> Struct_4 {
    var var_0 = -_wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(2147483647i, 0i)), vec2<i32>(_wgslsmith_mult_i32(-1i, arg_0), -1i));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~5340u, 18u)] + global1.x), arg_2), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, global0[_wgslsmith_index_u32(1u, 18u)]))), _wgslsmith_f_op_f32(round(arg_2)))));
    global0 = array<f32, 18>();
    return func_4(Struct_3(vec3<i32>(~(~(-2147483647i)), countOneBits(0i), max(-65518i, _wgslsmith_add_i32(-431i, u_input.a))), ~13183i, firstLeadingBit(~(vec2<i32>(-10211i, arg_0) | vec2<i32>(arg_0, -2147483647i))), 1u, select(firstLeadingBit(~vec4<i32>(arg_0, arg_0, arg_0, 19294i)), vec4<i32>(max(arg_0, u_input.a), min(-2147483647i, -1i), -arg_0, arg_0), arg_1)), Struct_3(-(~vec3<i32>(arg_0, 804i, arg_0)), -_wgslsmith_mult_i32(-52555i, -16095i), vec2<i32>(func_2(_wgslsmith_f_op_vec2_f32(-var_1.yx), _wgslsmith_f_op_f32(-1117f + arg_2), Struct_3(vec3<i32>(-56874i, arg_0, 8957i), u_input.a, vec2<i32>(39170i, u_input.a), 1u, vec4<i32>(arg_0, -42165i, u_input.a, u_input.a)), vec4<u32>(21886u, u_input.b, u_input.b, 13820u) ^ vec4<u32>(62675u, u_input.b, u_input.b, 22693u)), abs(arg_0) & _wgslsmith_sub_i32(arg_0, u_input.a)), ~(u_input.b >> (_wgslsmith_clamp_u32(u_input.b, u_input.b, 51649u) % 32u)), vec4<i32>(-(~arg_0), 1i, _wgslsmith_div_i32(-arg_0, -2417i & u_input.a), -29606i)), firstLeadingBit(u_input.b));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-529f * 497f), _wgslsmith_f_op_f32(step(global1.x, global1.x)), -1800f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-319f, 2980f, arg_0.a.c.b, arg_0.a.b.c.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.c.x, global1.x, 1121f, global0[_wgslsmith_index_u32(70917u, 18u)]))), vec4<bool>(!arg_3.x, false, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, 497f, arg_1.c.b), vec4<f32>(arg_0.c, 917f, -941f, -1338f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b.c.x, 608f, -1579f, -1633f) * vec4<f32>(-814f, -1232f, -611f, arg_0.c))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c, 842f)) - _wgslsmith_f_op_f32(global1.x - 666f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.d, 18u)] - arg_1.b.b) + arg_0.a.c.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(236f + -856f)), global0[_wgslsmith_index_u32(78887u, 18u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(arg_1.b.a.x), ~4294967295u), 18u)] + 1070f)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2054f, arg_1.b.c.x, -337f, 1537f) + vec4<f32>(arg_1.b.b, 841f, 535f, arg_0.c)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.a.c.c.x, global1.x, 153f) * vec4<f32>(arg_0.a.b.c.x, -1390f, arg_0.c, global0[_wgslsmith_index_u32(50351u, 18u)]))))));
    var var_0 = Struct_4(Struct_2(arg_1.c.a.x, arg_1.b, arg_0.a.b), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(arg_2.e.yww, vec3<i32>(arg_0.b, arg_2.a.x, -65083i)), arg_2.a) & 12026i, arg_0.e.c.x, min(35206u, 1u ^ _wgslsmith_div_u32(arg_1.c.a.x, 28259u)), Struct_1(~vec4<u32>(~13561u, countOneBits(u_input.b), max(25053u, arg_0.e.a.x), _wgslsmith_mod_u32(u_input.b, 1u)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(248f, arg_0.c) + vec2<f32>(arg_0.a.b.b, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_0.a.c.b))))), vec3<bool>(true, !all(vec4<bool>(arg_3.x, arg_1.c.d.x, arg_1.b.d.x, true)), arg_1.c.d.x)));
    var var_1 = !arg_3;
    var var_2 = min(vec2<i32>(-select(1i, _wgslsmith_dot_vec4_i32(arg_2.e, arg_2.e), any(vec2<bool>(true, false))), -firstTrailingBit(var_0.b) ^ (reverseBits(arg_0.b) ^ _wgslsmith_sub_i32(var_0.b, u_input.a))), ~max(reverseBits(-arg_2.c), arg_2.e.wy));
    return arg_2;
}

fn func_6(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 11656u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, false)), ~vec2<u32>(21653u, 1u)), vec2<u32>(1692u, u_input.b) >> (vec2<u32>(u_input.b, 34031u) % vec2<u32>(32u))) >> (u_input.b % 32u), func_1(-(~2147483647i), func_4(func_5(func_4(arg_0, Struct_3(vec3<i32>(arg_0.a.x, 0i, u_input.a), u_input.a, vec2<i32>(u_input.a, u_input.a), 0u, arg_0.e), 1u), Struct_2(u_input.b, Struct_1(vec4<u32>(33933u, 4294967295u, u_input.b, 26806u), -1000f, vec2<f32>(1187f, 163f), vec3<bool>(false, true, true)), Struct_1(vec4<u32>(u_input.b, u_input.b, arg_0.d, u_input.b), -1349f, global1.zz, vec3<bool>(false, true, false))), func_5(Struct_4(Struct_2(4294967295u, Struct_1(vec4<u32>(arg_0.d, arg_0.d, u_input.b, 0u), global0[_wgslsmith_index_u32(u_input.b, 18u)], global1.zx, vec3<bool>(true, true, false)), Struct_1(vec4<u32>(arg_0.d, 4294967295u, arg_0.d, 4294967295u), 1832f, global1.yw, vec3<bool>(true, true, true))), arg_0.c.x, global0[_wgslsmith_index_u32(0u, 18u)], arg_0.d, Struct_1(vec4<u32>(3423u, arg_0.d, arg_0.d, 14854u), 1772f, global1.yy, vec3<bool>(true, true, false))), Struct_2(1283u, Struct_1(vec4<u32>(30734u, 40205u, 22404u, arg_0.d), -306f, global1.zw, vec3<bool>(true, true, true)), Struct_1(vec4<u32>(arg_0.d, 0u, 0u, 1u), 454f, global1.yw, vec3<bool>(false, false, false))), Struct_3(arg_0.a, arg_0.c.x, vec2<i32>(-2147483647i, u_input.a), arg_0.d, vec4<i32>(u_input.a, -11697i, 1i, arg_0.b)), vec2<bool>(false, true)), vec2<bool>(false, true)), arg_0, max(7383u, u_input.b)).a.b.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(arg_0.d, 18u)]), _wgslsmith_f_op_f32(step(-1160f, global0[_wgslsmith_index_u32(u_input.b, 18u)])))) + -322f)).a.c, func_4(func_5(func_4(Struct_3(arg_0.a, 10842i, arg_0.c, u_input.b, vec4<i32>(2147483647i, 8445i, -31583i, 12713i)), Struct_3(arg_0.a, -1i, arg_0.e.yw, 4294967295u, vec4<i32>(54734i, 55293i, u_input.a, u_input.a)), ~arg_0.d), func_4(arg_0, Struct_3(vec3<i32>(u_input.a, u_input.a, 16409i), -758i, arg_0.e.zw, u_input.b, vec4<i32>(arg_0.c.x, u_input.a, 47220i, arg_0.e.x)), _wgslsmith_mult_u32(13231u, 1u)).a, arg_0, vec2<bool>(true, 2055f <= global0[_wgslsmith_index_u32(1u, 18u)])), arg_0, 0u).a.c);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -146f, global0[_wgslsmith_index_u32(33954u, 18u)], 1084f) + vec4<f32>(var_0.b.c.x, var_0.b.c.x, -655f, var_0.b.c.x)), vec4<f32>(-237f, 2835f, -2429f, global1.x), vec4<bool>(true, var_0.b.d.x, true, var_0.c.d.x))))) - vec4<f32>(378f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(func_4(arg_0, Struct_3(vec3<i32>(arg_0.b, u_input.a, 31342i), -2147483647i, vec2<i32>(arg_0.e.x, -35639i), var_0.a, vec4<i32>(u_input.a, arg_0.e.x, 45936i, arg_0.c.x)), 0u).e.c.x)), _wgslsmith_f_op_f32(-var_0.c.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_3(abs(vec3<i32>(arg_0.b, u_input.a, u_input.a)), !var_0.b.d.x)).x, _wgslsmith_f_op_f32(-1000f - -460f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-905f, global1.x)))));
    global0 = array<f32, 18>();
    let var_1 = countOneBits(-2147483647i >> (reverseBits(u_input.b & (35256u >> (u_input.b % 32u))) % 32u));
    let var_2 = true;
    return select(firstTrailingBit(~u_input.b), var_0.b.a.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(~(~(~0u)), func_6(func_5(func_1(u_input.a, true, 860f), Struct_2(u_input.b, Struct_1(vec4<u32>(8227u, 0u, 86994u, 4294967295u), global0[_wgslsmith_index_u32(3731u, 18u)], vec2<f32>(-1101f, 134f), vec3<bool>(false, false, false)), Struct_1(vec4<u32>(4294967295u, 41022u, 91224u, 41915u), global0[_wgslsmith_index_u32(u_input.b, 18u)], global1.yz, vec3<bool>(true, true, false))), Struct_3(vec3<i32>(1i, u_input.a, u_input.a), 30707i, vec2<i32>(u_input.a, -54491i), u_input.b, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec2<bool>(true, true))), _wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, 4849u)), vec2<u32>(u_input.b >> (0u % 32u), 65602u))));
    global0 = array<f32, 18>();
    let var_1 = min(select(vec4<i32>(-1i, u_input.a, func_1(-2147483647i, true, global1.x).b & firstLeadingBit(u_input.a), u_input.a), _wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(15382i, u_input.a, 46700i, 44659i), vec4<i32>(-1i, -31008i, u_input.a, u_input.a), vec4<i32>(-13297i, 0i, -2349i, -19280i)), ~(-vec4<i32>(-28339i, 73992i, -2147483647i, u_input.a))), select(vec4<bool>(true, func_4(Struct_3(vec3<i32>(u_input.a, -27942i, u_input.a), -16245i, vec2<i32>(0i, u_input.a), u_input.b, vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), Struct_3(vec3<i32>(2147483647i, -1i, u_input.a), u_input.a, vec2<i32>(-53184i, 1i), 22010u, vec4<i32>(u_input.a, 0i, -19851i, u_input.a)), var_0).e.d.x, any(vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(abs(~vec4<i32>(u_input.a, -1i, u_input.a, 27172i)), vec4<i32>(func_2(global1.yw, global0[_wgslsmith_index_u32(u_input.b, 18u)], Struct_3(vec3<i32>(u_input.a, 29679i, 2147483647i), 15614i, vec2<i32>(u_input.a, u_input.a), var_0, vec4<i32>(u_input.a, u_input.a, -36999i, u_input.a)), vec4<u32>(4294967295u, u_input.b, 25503u, 0u)) ^ min(u_input.a, u_input.a), func_1(_wgslsmith_mod_i32(-21428i, u_input.a), false, func_1(-2147483647i, true, 427f).c).b, reverseBits(firstTrailingBit(u_input.a)), (1i << (var_0 % 32u)) | max(u_input.a, u_input.a)), select(vec4<bool>(false, true, true, false), vec4<bool>(select(false, true, false), true, true, any(vec2<bool>(true, false))), true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-716f + _wgslsmith_f_op_f32(1492f + _wgslsmith_f_op_f32(849f * _wgslsmith_f_op_f32(min(-778f, global1.x))))));
    global1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(var_1.wwz, all(vec2<bool>(true, true)))).x, _wgslsmith_f_op_f32(-689f + 490f), global1.x, -773f)));
    let var_3 = func_1(var_1.x, true, 940f).a;
    let var_4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.c.c.x)) * 327f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 1219f))), var_3.b.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-1987f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0, 18u)] * global1.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.b.c.x)))), global1.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1019f - var_3.c.c.x)))));
    var_2 = -1000f;
    var var_5 = abs(-20544i);
    let x = u_input.a;
    s_output = StorageBuffer(~((_wgslsmith_clamp_u32(var_0, 14235u, 1u) | ~4294967295u) | ~func_4(Struct_3(vec3<i32>(-979i, 2147483647i, var_1.x), u_input.a, vec2<i32>(u_input.a, var_1.x), 48179u, var_1), Struct_3(vec3<i32>(u_input.a, var_1.x, var_1.x), -2147483647i, var_1.zx, u_input.b, vec4<i32>(u_input.a, var_1.x, -22156i, -2147483647i)), 0u).a.b.a.x));
}

