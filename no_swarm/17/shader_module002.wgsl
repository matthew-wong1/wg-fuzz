struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = (global0.b ^ abs(~global0.b)) & abs(select(-vec4<i32>(0i, 18394i, global0.b.x, -2147483647i), select(global0.b, abs(global0.b), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-655f)))))))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x)))))));
    var var_2 = abs(_wgslsmith_dot_vec4_i32(var_0, global0.b));
    let var_3 = Struct_2(true, Struct_1(max(~arg_0.x, 4294967295u) << (_wgslsmith_dot_vec3_u32(max(vec3<u32>(18790u, 0u, 106635u), vec3<u32>(0u, global0.c.x, global0.d)), arg_0.yzy) % 32u), global0.d, ~vec4<u32>(_wgslsmith_mult_u32(arg_0.x, arg_0.x), global0.d << (7187u % 32u), arg_0.x, 39692u), vec3<bool>(true, any(vec4<bool>(false, true, true, true)), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), all(vec4<bool>(false, false, true, false)))), ~_wgslsmith_mult_vec4_i32(firstTrailingBit(global0.b), global0.b), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, all(vec2<bool>(false, true)))), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_4 = -countOneBits(1i) >> (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, global0.d)), vec2<u32>(~var_3.b.c.x & ~arg_0.x, var_3.b.b)) % 32u);
    return _wgslsmith_f_op_f32(ceil(-895f));
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x, _wgslsmith_f_op_f32(func_3(vec4<u32>(~39216u, ~global0.c.x, 4294967295u, abs(global0.d)))), _wgslsmith_f_op_f32(global0.a.x + 628f)));
    var var_1 = -1000f;
    return select(vec3<bool>(true, !(~(-1i) >= u_input.a.x), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), any(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false)) || true);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<u32> {
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, arg_1.a.x, arg_1.a.x, 547f) - vec4<f32>(global0.a.x, -525f, arg_1.a.x, arg_1.a.x))))))), global0.b, ~(~max(vec2<u32>(4294967295u, 45489u), arg_1.c)), ~(~69897u));
    let var_0 = Struct_2(!any(func_2()) & arg_2.b.e.x, Struct_1(1u, ~abs(global0.d << (0u % 32u)), ~max(select(vec4<u32>(26657u, arg_1.d, 1u, 0u), arg_2.b.c, vec4<bool>(true, false, false, arg_2.b.d.x)), ~vec4<u32>(arg_2.b.c.x, 0u, arg_0.x, 0u)), vec3<bool>(arg_2.d.x, !arg_2.d.x, arg_2.a), !(!select(arg_2.b.e, arg_2.b.d, true))), global0.b, arg_2.b.d.yz);
    global0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x));
    var var_2 = _wgslsmith_mod_vec2_u32(var_0.b.c.ww, countOneBits(~(~max(vec2<u32>(arg_2.b.b, arg_1.c.x), vec2<u32>(28994u, 4294967295u)))));
    return ~(~var_0.b.c.xww ^ vec3<u32>(43847u, arg_1.d, reverseBits(var_0.b.a))) ^ _wgslsmith_div_vec3_u32(~(~vec3<u32>(global0.d, arg_1.c.x, 4294967295u) ^ arg_0), _wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(var_0.b.c.xzw, var_0.b.c.yxw), ~(~var_0.b.c.xzx), abs(arg_2.b.c.yxw)));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = 60u;
    let var_1 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(global0.a, vec4<f32>(-328f, global0.a.x, global0.a.x, global0.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, 1780f) * vec4<f32>(-530f, global0.a.x, -447f, global0.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1429f, 496f, -419f, global0.a.x))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.a - global0.a)))))), abs(_wgslsmith_mod_vec4_i32(global0.b, global0.b << (arg_3.c % vec4<u32>(32u))) & reverseBits(vec4<i32>(u_input.a.x, arg_2.x, global0.b.x, arg_2.x))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(max(~vec2<u32>(arg_1, var_0), vec2<u32>(arg_0.x, arg_1) & vec2<u32>(1u, arg_1)), firstLeadingBit(abs(vec2<u32>(arg_3.c.x, 0u)))), global0.c), var_0);
    global0 = var_1;
    var var_2 = -927f;
    var_2 = var_1.a.x;
    return Struct_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1771f * 708f)), -417f, global0.a.x, _wgslsmith_f_op_f32(max(global0.a.x, -330f))), global0.a)), _wgslsmith_add_vec4_i32(var_1.b, -_wgslsmith_div_vec4_i32(global0.b, vec4<i32>(5784i, 37503i, -21850i, 19423i)) & var_1.b), abs(arg_3.c.xw ^ (var_1.c << ((vec2<u32>(var_0, var_1.c.x) & vec2<u32>(1u, var_1.d)) % vec2<u32>(32u)))), var_1.d);
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    var var_0 = Struct_1(global0.d, _wgslsmith_add_u32(_wgslsmith_mod_u32(87855u, _wgslsmith_clamp_u32(~global0.d, 4294967295u, 0u)), global0.c.x), vec4<u32>(_wgslsmith_sub_u32(0u, ~func_1(vec3<u32>(4294967295u, 0u, 1u), Struct_3(vec4<f32>(arg_0.a.x, 1099f, arg_0.a.x, -1820f), arg_0.b, vec2<u32>(1u, 21816u), 1u), Struct_2(true, Struct_1(28979u, 4294967295u, vec4<u32>(global0.d, global0.d, 9759u, global0.c.x), vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, arg_1, false)), arg_0.b, vec2<bool>(arg_1, arg_1))).x), ~min(5475u, 1946u), ~arg_0.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(75903u, 3195u, arg_0.c.x, 1u), firstTrailingBit(~vec4<u32>(global0.c.x, arg_0.c.x, arg_0.d, arg_0.d)))), !vec3<bool>(false, !arg_1, !(global0.a.x <= arg_0.a.x)), !(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, true, true), !vec3<bool>(true, arg_1, true))));
    global0 = func_4(var_0.c.yzx, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, max(select(var_0.a, var_0.b, arg_1), ~4294967295u), min(max(0u, 1u), ~0u), arg_0.c.x), vec4<u32>(4294967295u, 1u, max(1u, arg_0.d) & (global0.c.x << (0u % 32u)), ~(~4294967295u))), arg_0.b.wxx, Struct_1(734u, 1u, abs(~vec4<u32>(76519u, 27636u, 13622u, arg_0.c.x)), !(!vec3<bool>(true, arg_1, false)), var_0.d));
    global0 = func_4(vec3<u32>(countOneBits(global0.d), _wgslsmith_mult_u32(func_4(vec3<u32>(var_0.a, arg_0.c.x, 0u), global0.d, vec3<i32>(arg_0.b.x, 8964i, global0.b.x), Struct_1(arg_0.c.x, global0.c.x, var_0.c, var_0.d, var_0.d)).d, func_1(var_0.c.yzw, Struct_3(vec4<f32>(global0.a.x, arg_0.a.x, 1394f, 652f), vec4<i32>(arg_0.b.x, -70613i, 86970i, 1i), vec2<u32>(arg_0.c.x, var_0.c.x), 1u), Struct_2(true, Struct_1(arg_0.c.x, var_0.b, var_0.c, var_0.e, var_0.d), vec4<i32>(arg_0.b.x, arg_0.b.x, 0i, 38238i), vec2<bool>(arg_1, true))).x) & _wgslsmith_div_u32(firstLeadingBit(global0.d), ~var_0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, var_0.b, _wgslsmith_div_u32(global0.d, var_0.a)), ~select(vec3<u32>(arg_0.d, arg_0.c.x, 0u), var_0.c.zzz, vec3<bool>(false, arg_1, true)))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(var_0.c), abs(vec4<u32>(1u, var_0.a, var_0.a, 0u))), var_0.c), global0.b.xxy, Struct_1(49075u, ~4294967295u, vec4<u32>(4294967295u, arg_0.c.x, 6363u, var_0.b << (abs(1u) % 32u)), select(!var_0.e, vec3<bool>(var_0.e.x, false, true), func_2()), var_0.e));
    let var_1 = !var_0.e.x;
    var_0 = Struct_1(~var_0.a, min(_wgslsmith_div_u32(var_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, var_0.a, arg_0.d), var_0.c.wzz)), 962u) | ~firstLeadingBit(~11215u), vec4<u32>(global0.d, 24930u, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_0.c.x, 24498u, 1u)), vec3<u32>(1u, 1u, 71341u)), var_0.c.x >> (global0.c.x % 32u)) << (_wgslsmith_mod_vec4_u32((vec4<u32>(var_0.a, 1u, arg_0.d, 66553u) >> (var_0.c % vec4<u32>(32u))) ^ abs(vec4<u32>(9049u, 1u, 4294967295u, var_0.c.x)), vec4<u32>(_wgslsmith_mod_u32(67948u, arg_0.d), select(11922u, global0.d, false), ~4294967295u, ~48053u)) % vec4<u32>(32u)), var_0.d, var_0.e);
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, 1f, _wgslsmith_f_op_f32(arg_0.a.x + 982f)))), vec4<i32>(-2147483647i, -1i, ~_wgslsmith_add_i32(firstTrailingBit(arg_0.b.x), _wgslsmith_div_i32(global0.b.x, u_input.a.x)), _wgslsmith_mod_i32(arg_0.b.x, -countOneBits(-7861i))), ~var_0.c.yw, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_0.c.x, ~(1u & global0.d), global0.c.x), 35028u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(min(abs(vec3<u32>(global0.c.x, global0.d, global0.d)), vec3<u32>(22174u, global0.d, global0.c.x) << (vec3<u32>(37754u, global0.c.x, 64448u) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(select(vec3<u32>(6744u, 27668u, global0.c.x), vec3<u32>(global0.d, 12087u, global0.d), vec3<bool>(true, false, false)), func_1(vec3<u32>(global0.d, global0.d, global0.c.x), Struct_3(global0.a, vec4<i32>(-32585i, u_input.a.x, 11519i, u_input.a.x), global0.c, global0.d), Struct_2(true, Struct_1(7937u, 4294967295u, vec4<u32>(1202u, 68993u, 25468u, 4294967295u), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), global0.b, vec2<bool>(true, false)))) % vec3<u32>(32u)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~64210u, countOneBits(global0.d)), 80694u), global0.b.wxy, Struct_1(4294967295u, global0.c.x, ~(~vec4<u32>(global0.d, 55316u, global0.c.x, 1u)), vec3<bool>(any(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, false, false)), -956f >= global0.a.x), vec3<bool>(global0.c.x != global0.d, true, true))), true);
    let var_0 = ~(-abs(~global0.b.x));
    let var_1 = Struct_1(43024u, func_4(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 19858u, 1u) | vec3<u32>(0u, global0.c.x, 36962u), countOneBits(vec3<u32>(0u, 57161u, 122061u))) << (~countOneBits(vec3<u32>(global0.c.x, global0.c.x, global0.c.x)) % vec3<u32>(32u)), 101963u, -global0.b.xzy, Struct_1(4294967295u, 1u, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 26701u, 20393u, global0.c.x), vec4<u32>(11709u, global0.c.x, global0.c.x, 37906u), vec4<u32>(74927u, 0u, global0.c.x, 12858u)), firstLeadingBit(vec4<u32>(global0.d, 1u, 4294967295u, global0.c.x))), vec3<bool>(true, true, true), vec3<bool>(true, true, true))).c.x, vec4<u32>(~_wgslsmith_mod_u32(global0.c.x >> (global0.c.x % 32u), func_5(Struct_3(global0.a, vec4<i32>(-4867i, var_0, u_input.a.x, global0.b.x), vec2<u32>(global0.d, global0.d), global0.c.x), true).d), 4294967295u, ~_wgslsmith_dot_vec2_u32(global0.c, global0.c) | func_5(Struct_3(global0.a, global0.b, vec2<u32>(global0.c.x, 7895u), global0.d), global0.a.x != -1810f).d, func_1(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(31129u, global0.d, 0u)), vec3<u32>(4294967295u, global0.d, global0.c.x)), func_5(func_5(Struct_3(global0.a, global0.b, global0.c, 0u), true), true), Struct_2(false, Struct_1(global0.d, 63934u, vec4<u32>(4294967295u, global0.c.x, 4294967295u, 85845u), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec4<i32>(16871i, global0.b.x, -1i, 1i), vec2<bool>(false, false))).x), vec3<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global0.c.x, global0.d, global0.d)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.d, 44230u, global0.c.x), vec3<u32>(global0.c.x, 56939u, 509u))) <= 4294967295u, true), vec3<bool>(false, false, !func_2().x));
    let var_2 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.a.x, -1000f), -994f, var_1.e.x))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(2160f * -725f))), var_2.x))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(func_5(Struct_3(global0.a, vec4<i32>(var_0, 2147483647i, var_0, u_input.a.x), global0.c, 2159u), var_1.e.x).a.x, global0.a.x))), -499f));
    let x = u_input.a;
    s_output = StorageBuffer(1i, global0.a.x, select(vec4<i32>(_wgslsmith_mod_i32(global0.b.x, -var_0), global0.b.x, ~(-var_0), var_0), _wgslsmith_sub_vec4_i32(global0.b >> (~var_1.c % vec4<u32>(32u)), ~(~global0.b)), !(var_0 <= 71197i)), var_1.c.yzz);
}

