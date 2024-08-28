struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(i32(-2147483648), 37050i, -71241i), Struct_1(true, vec4<u32>(3137u, 0u, 4836u, 4294967295u), vec4<i32>(0i, 2585i, 29100i, -54778i)), Struct_1(true, vec4<u32>(24186u, 6571u, 54290u, 4294967295u), vec4<i32>(25151i, 57972i, 26471i, -14372i)), Struct_2(vec4<f32>(1252f, -1282f, -2093f, 349f), vec3<u32>(4294967295u, 28976u, 53623u)), Struct_2(vec4<f32>(-725f, -489f, 605f, -1038f), vec3<u32>(527u, 73012u, 24551u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_5) -> vec3<u32> {
    let var_0 = _wgslsmith_div_f32(global0.d.a.x, arg_1.b.a.x);
    global0 = Struct_3(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(arg_1.d.x ^ global0.b.c.x, arg_0.x, firstLeadingBit(u_input.d.x))), vec3<i32>(0i, 0i, 0i >> ((u_input.c.x & arg_1.c.b.x) % 32u))), Struct_1(arg_1.a, _wgslsmith_mult_vec4_u32(~arg_1.c.b, _wgslsmith_sub_vec4_u32(select(arg_1.c.b, global0.b.b, false), vec4<u32>(global0.c.b.x, 25564u, global0.e.b.x, u_input.a.x) >> (vec4<u32>(84360u, 3866u, arg_1.b.b.x, 35508u) % vec4<u32>(32u)))), ~global0.c.c), Struct_1((firstTrailingBit(u_input.a.x) > _wgslsmith_dot_vec2_u32(global0.b.b.zz, global0.b.b.zy)) && global0.b.a, ~global0.c.b, vec4<i32>(arg_0.x, 48605i, reverseBits(-1i), (arg_0.x ^ 2147483647i) << (abs(12488u) % 32u))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1090f, arg_1.a))), -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(1000f)), false)), 2113f), vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, 106574u) ^ ~0u, 50468u, 4294967295u)), global0.e);
    global0 = Struct_3(-(~countOneBits(arg_1.c.c.zxx)), Struct_1(false, vec4<u32>(1u, ~_wgslsmith_clamp_u32(arg_1.c.b.x, 74998u, 8324u), 4294967295u, 1u), ~vec4<i32>(u_input.b, 2147483647i, -14524i, -2147483647i)), global0.b, Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_1.b.a, arg_1.b.a)), _wgslsmith_f_op_vec4_f32(-global0.d.a)), firstTrailingBit(countOneBits(vec3<u32>(1u, 4294967295u, u_input.a.x))) >> (~max(arg_1.c.b.zxy, vec3<u32>(u_input.a.x, global0.e.b.x, arg_1.c.b.x)) % vec3<u32>(32u))), Struct_2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.a.x), _wgslsmith_f_op_f32(f32(-1f) * -169f)), _wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(f32(-1f) * -615f), _wgslsmith_div_f32(-1652f, _wgslsmith_f_op_f32(-557f + var_0))), select(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(arg_1.c.b.x, global0.c.b.x, u_input.a.x)), u_input.a), _wgslsmith_div_vec3_u32(arg_1.c.b.wyy, global0.d.b) | vec3<u32>(4294967295u, 1u, 8988u), any(vec4<bool>(true, true, global0.b.a, arg_1.c.a)))));
    var var_1 = arg_1.b;
    let var_2 = !select(vec2<bool>(false, all(!vec3<bool>(arg_1.a, true, global0.b.a))), vec2<bool>(!all(vec4<bool>(false, false, global0.b.a, true)), !(var_1.b.x > global0.b.b.x)), ~u_input.c.x > arg_1.b.b.x);
    return vec3<u32>(~abs(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.b.xz, arg_1.b.b.zy), 23344u << (arg_1.c.b.x % 32u))), ~var_1.b.x, ~(~(~var_1.b.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = !(!vec3<bool>(true, global0.b.a, global0.c.a));
    var var_1 = Struct_4(Struct_3(global0.a, Struct_1(global0.b.a, global0.b.b, global0.c.c), Struct_1(global0.b.a, select(select(global0.c.b, vec4<u32>(1u, 18992u, global0.e.b.x, 1u), var_0.x), firstTrailingBit(vec4<u32>(global0.b.b.x, 4294967295u, u_input.a.x, u_input.c.x)), vec4<bool>(false, true, var_0.x, true)), ~global0.b.c), global0.e, global0.d), global0.e);
    var_1 = Struct_4(Struct_3(vec3<i32>(-23142i, ~(-2147483647i), -1i) & _wgslsmith_mod_vec3_i32(global0.c.c.zwz, vec3<i32>(u_input.d.x, -1925i, -2147483647i)), Struct_1(true, firstLeadingBit(var_1.a.c.b), ~vec4<i32>(-1i, 8888i, 0i, var_1.a.b.c.x)), var_1.a.c, Struct_2(vec4<f32>(var_1.a.e.a.x, _wgslsmith_f_op_f32(exp2(var_1.a.e.a.x)), -281f, _wgslsmith_div_f32(global0.d.a.x, -176f)), ~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(var_1.a.c.b.x, 4294967295u, 47326u))), global0.d), Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-419f, global0.e.a.x, var_1.a.e.a.x, -113f), vec4<f32>(var_1.b.a.x, -634f, 628f, var_1.a.d.a.x), var_1.a.c.a)) * vec4<f32>(-782f, global0.e.a.x, global0.e.a.x, 271f)))), func_3(-vec2<i32>(-18109i, 0i), Struct_5(true, Struct_2(vec4<f32>(var_1.b.a.x, global0.e.a.x, global0.e.a.x, -569f), global0.d.b), var_1.a.b, min(vec3<i32>(-41747i, -1i, 18785i), vec3<i32>(u_input.d.x, -2147483647i, 2147483647i))))));
    let var_2 = u_input.d.x >> (abs(~u_input.a.x) % 32u);
    let var_3 = vec4<u32>(countOneBits(reverseBits(var_1.a.c.b.x & (global0.c.b.x & 0u))), abs(var_1.a.c.b.x), 4294967295u << (_wgslsmith_mult_u32(38818u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.e.b.x, 14217u, global0.e.b.x, global0.c.b.x) << (global0.b.b % vec4<u32>(32u)), global0.c.b)) % 32u), _wgslsmith_mod_u32(u_input.a.x, ~16850u));
    return Struct_1(var_0.x, ~select(abs(~var_1.a.c.b), select(vec4<u32>(u_input.a.x, global0.c.b.x, 58993u, var_1.a.c.b.x) << (vec4<u32>(global0.b.b.x, u_input.a.x, 10557u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(global0.d.b.x, var_1.b.b.x, 23915u, var_3.x), var_1.a.b.a && var_0.x), all(select(vec3<bool>(global0.b.a, false, true), vec3<bool>(false, global0.b.a, var_0.x), false))), vec4<i32>(abs(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-18976i, global0.a.x, u_input.d.x), global0.a))), ~(var_1.a.c.c.x & var_2), u_input.b ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, var_1.a.c.c.x, 5969i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, global0.c.c.x, var_2), var_1.a.c.c.wxw)), ~0i));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_4) -> Struct_5 {
    global0 = Struct_3(-arg_3.a.a, func_2(), arg_3.a.b, Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1184f, 1866f, arg_0.d.a.x, -441f), arg_0.e.a, false)), vec4<f32>(731f, arg_2.e.a.x, 762f, 214f)), arg_0.e.a)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.e.b.x, 0u), arg_3.a.d.b.x), 0u, ~11493u)), arg_3.b);
    var var_0 = arg_0.e;
    return Struct_5(true, Struct_2(arg_2.d.a, ~arg_0.c.b.xyw), func_2(), ~(vec3<i32>(-1i) * -arg_0.a));
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    global0 = Struct_3(-(-global0.b.c.zxw << (max(u_input.a, global0.c.b.xzw) % vec3<u32>(32u))), Struct_1(select(abs(global0.e.b.x), select(u_input.c.x, global0.b.b.x, true), true) < ~(4294967295u & u_input.c.x), abs(global0.b.b), select(_wgslsmith_div_vec4_i32(vec4<i32>(57891i, u_input.d.x, global0.a.x, 1i), global0.c.c), arg_0.c.c, !vec4<bool>(arg_0.a, global0.c.a, false, true)) ^ global0.b.c), func_1(Struct_3(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0.c.c.zyz, global0.c.c.wxy, arg_0.d), vec3<i32>(global0.a.x, global0.c.c.x, 1i), global0.c.c.xxx), Struct_1(arg_0.a, global0.c.b, _wgslsmith_add_vec4_i32(vec4<i32>(0i, global0.a.x, -1i, global0.c.c.x), vec4<i32>(53518i, -2147483647i, arg_0.c.c.x, -32566i))), Struct_1(true, vec4<u32>(u_input.a.x, arg_0.b.b.x, 0u, 35271u) >> (arg_0.c.b % vec4<u32>(32u)), global0.c.c), func_1(Struct_3(vec3<i32>(u_input.d.x, global0.a.x, arg_0.c.c.x), arg_0.c, Struct_1(global0.c.a, arg_0.c.b, vec4<i32>(34579i, 2147483647i, global0.c.c.x, arg_0.c.c.x)), Struct_2(vec4<f32>(-775f, 295f, arg_0.b.a.x, global0.d.a.x), u_input.a), Struct_2(vec4<f32>(global0.e.a.x, -1000f, -102f, global0.d.a.x), vec3<u32>(global0.b.b.x, u_input.c.x, u_input.c.x))), select(vec4<bool>(false, arg_0.a, false, arg_0.c.a), vec4<bool>(true, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, true, true, arg_0.a)), Struct_3(arg_0.c.c.wyx, arg_0.c, global0.c, arg_0.b, Struct_2(vec4<f32>(458f, 1000f, global0.d.a.x, arg_0.b.a.x), arg_0.c.b.yyw)), Struct_4(Struct_3(global0.a, arg_0.c, Struct_1(global0.c.a, vec4<u32>(1u, arg_0.b.b.x, 4294967295u, u_input.c.x), arg_0.c.c), Struct_2(vec4<f32>(global0.d.a.x, global0.e.a.x, arg_0.b.a.x, 446f), vec3<u32>(arg_0.c.b.x, 13038u, 46499u)), global0.e), global0.d)).b, Struct_2(_wgslsmith_f_op_vec4_f32(global0.d.a - vec4<f32>(1116f, 1218f, 533f, arg_0.b.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(13052u, 4294967295u, global0.e.b.x), global0.b.b.ywz))), !vec4<bool>(global0.c.a | false, arg_0.a, true, true), Struct_3(vec3<i32>(_wgslsmith_add_i32(-16182i, 11935i), arg_0.d.x ^ global0.a.x, _wgslsmith_mult_i32(-2147483647i, u_input.d.x)), func_1(Struct_3(global0.a, arg_0.c, arg_0.c, arg_0.b, arg_0.b), select(vec4<bool>(false, arg_0.a, global0.b.a, global0.c.a), vec4<bool>(true, arg_0.a, true, arg_0.c.a), false), Struct_3(vec3<i32>(-2147483647i, -1i, 15841i), Struct_1(global0.c.a, arg_0.c.b, global0.c.c), global0.b, global0.d, Struct_2(vec4<f32>(-433f, arg_0.b.a.x, -892f, 1816f), u_input.a)), Struct_4(Struct_3(global0.a, arg_0.c, arg_0.c, Struct_2(vec4<f32>(-1000f, -611f, arg_0.b.a.x, 1434f), u_input.a), Struct_2(vec4<f32>(global0.e.a.x, global0.e.a.x, -297f, -119f), vec3<u32>(0u, 1u, arg_0.c.b.x))), Struct_2(global0.e.a, arg_0.b.b))).c, arg_0.c, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.x, -1004f, -1590f, global0.e.a.x)), vec3<u32>(1u, global0.e.b.x, global0.d.b.x)), global0.e), Struct_4(Struct_3(global0.a, Struct_1(global0.c.a, global0.c.b, vec4<i32>(-7619i, u_input.b, 7789i, 0i)), arg_0.c, Struct_2(vec4<f32>(arg_0.b.a.x, 1211f, 1352f, -2510f), arg_0.c.b.wxw), func_1(Struct_3(vec3<i32>(-5113i, 0i, u_input.d.x), global0.c, Struct_1(arg_0.a, vec4<u32>(45799u, 6314u, u_input.c.x, 1u), vec4<i32>(u_input.b, -2147483647i, -36807i, u_input.b)), global0.d, global0.d), vec4<bool>(arg_0.a, true, global0.c.a, arg_0.a), Struct_3(global0.a, global0.b, Struct_1(true, arg_0.c.b, vec4<i32>(27720i, u_input.b, -18928i, -928i)), Struct_2(vec4<f32>(global0.d.a.x, global0.e.a.x, arg_0.b.a.x, -892f), global0.d.b), Struct_2(vec4<f32>(global0.e.a.x, -817f, arg_0.b.a.x, 1216f), vec3<u32>(arg_0.c.b.x, arg_0.c.b.x, 1u))), Struct_4(Struct_3(arg_0.d, global0.b, arg_0.c, arg_0.b, global0.d), arg_0.b)).b), func_1(Struct_3(global0.a, Struct_1(arg_0.a, vec4<u32>(u_input.a.x, arg_0.b.b.x, 63437u, 34956u), vec4<i32>(u_input.d.x, -25733i, u_input.d.x, arg_0.d.x)), arg_0.c, arg_0.b, Struct_2(vec4<f32>(arg_0.b.a.x, global0.d.a.x, -309f, global0.e.a.x), arg_0.b.b)), select(vec4<bool>(false, global0.c.a, false, global0.b.a), vec4<bool>(false, global0.b.a, false, false), vec4<bool>(false, global0.c.a, true, false)), Struct_3(arg_0.d, global0.c, arg_0.c, arg_0.b, Struct_2(arg_0.b.a, vec3<u32>(arg_0.c.b.x, 8523u, 28848u))), Struct_4(Struct_3(vec3<i32>(-28707i, 3271i, 26884i), Struct_1(arg_0.a, vec4<u32>(arg_0.c.b.x, 58745u, arg_0.b.b.x, global0.b.b.x), vec4<i32>(arg_0.c.c.x, -31456i, global0.a.x, 30229i)), global0.c, global0.e, Struct_2(vec4<f32>(global0.d.a.x, -1772f, -139f, global0.e.a.x), vec3<u32>(1u, 60025u, 6626u))), global0.d)).b)).c, func_1(Struct_3(vec3<i32>(_wgslsmith_mult_i32(global0.b.c.x, arg_0.c.c.x), ~(-37780i), 7401i), arg_0.c, func_2(), Struct_2(_wgslsmith_f_op_vec4_f32(-arg_0.b.a), ~vec3<u32>(u_input.c.x, 11794u, global0.c.b.x)), func_1(Struct_3(vec3<i32>(-2147483647i, 1i, arg_0.d.x), arg_0.c, Struct_1(global0.c.a, global0.c.b, arg_0.c.c), global0.d, global0.d), vec4<bool>(arg_0.c.a, true, false, arg_0.c.a), Struct_3(arg_0.c.c.zyx, global0.b, Struct_1(arg_0.c.a, arg_0.c.b, vec4<i32>(-1i, -2147483647i, arg_0.d.x, -72471i)), global0.d, Struct_2(vec4<f32>(1161f, global0.e.a.x, arg_0.b.a.x, arg_0.b.a.x), vec3<u32>(4294967295u, 0u, u_input.a.x))), Struct_4(Struct_3(vec3<i32>(u_input.b, global0.b.c.x, 2147483647i), Struct_1(false, arg_0.c.b, global0.c.c), global0.b, global0.e, Struct_2(global0.e.a, arg_0.b.b)), Struct_2(arg_0.b.a, vec3<u32>(1u, global0.c.b.x, 4294967295u)))).b), !select(select(vec4<bool>(true, false, true, arg_0.c.a), vec4<bool>(global0.b.a, false, global0.c.a, false), vec4<bool>(global0.c.a, false, arg_0.c.a, true)), !vec4<bool>(arg_0.a, arg_0.a, true, false), true), Struct_3(reverseBits(vec3<i32>(4388i, 2147483647i, 10329i)), func_1(Struct_3(global0.a, arg_0.c, global0.c, Struct_2(arg_0.b.a, arg_0.c.b.wwz), Struct_2(vec4<f32>(141f, -339f, -1199f, arg_0.b.a.x), u_input.a)), !vec4<bool>(true, false, global0.b.a, arg_0.a), Struct_3(global0.c.c.zyw, Struct_1(arg_0.c.a, vec4<u32>(1u, arg_0.c.b.x, u_input.c.x, 0u), arg_0.c.c), global0.b, arg_0.b, global0.e), Struct_4(Struct_3(vec3<i32>(-2147483647i, global0.c.c.x, arg_0.d.x), Struct_1(global0.c.a, global0.b.b, global0.c.c), arg_0.c, Struct_2(vec4<f32>(1571f, arg_0.b.a.x, 718f, -477f), vec3<u32>(0u, 198u, 101740u)), Struct_2(global0.e.a, vec3<u32>(1u, u_input.a.x, 0u))), Struct_2(arg_0.b.a, global0.c.b.yyw))).c, global0.c, Struct_2(arg_0.b.a, arg_0.b.b), Struct_2(vec4<f32>(global0.e.a.x, global0.e.a.x, global0.d.a.x, 531f), countOneBits(global0.c.b.wxy))), Struct_4(Struct_3(vec3<i32>(arg_0.d.x, global0.a.x, u_input.d.x), func_1(Struct_3(arg_0.d, Struct_1(arg_0.a, vec4<u32>(29350u, 1u, 4294967295u, 90805u), global0.b.c), global0.c, Struct_2(global0.e.a, global0.b.b.ywz), Struct_2(global0.e.a, vec3<u32>(global0.b.b.x, 4294967295u, global0.b.b.x))), vec4<bool>(false, true, global0.c.a, false), Struct_3(vec3<i32>(35029i, u_input.b, -12755i), global0.b, arg_0.c, Struct_2(arg_0.b.a, vec3<u32>(global0.e.b.x, 54487u, 119902u)), Struct_2(global0.e.a, u_input.a)), Struct_4(Struct_3(arg_0.c.c.wzw, Struct_1(true, global0.c.b, arg_0.c.c), global0.c, Struct_2(vec4<f32>(-1000f, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), vec3<u32>(4097u, 4294967295u, 4294967295u)), Struct_2(vec4<f32>(-540f, global0.e.a.x, -869f, -765f), vec3<u32>(global0.e.b.x, u_input.a.x, 0u))), Struct_2(global0.e.a, vec3<u32>(4294967295u, global0.e.b.x, arg_0.b.b.x)))).c, func_2(), Struct_2(vec4<f32>(-1390f, -270f, 503f, 165f), u_input.a), Struct_2(arg_0.b.a, u_input.a)), global0.d)).b, Struct_2(global0.e.a, _wgslsmith_add_vec3_u32(arg_0.b.b >> (_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(1u, global0.c.b.x, u_input.c.x), vec3<u32>(0u, 35984u, 5640u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(28369u, 90410u, 1u), global0.c.b.xxy))));
    global0 = Struct_3(-max(vec3<i32>(-46873i, 2147483647i, 74163i) ^ arg_0.d, vec3<i32>(-1i, u_input.d.x, -1i) >> (~vec3<u32>(u_input.a.x, u_input.a.x, 20215u) % vec3<u32>(32u))), Struct_1(false, _wgslsmith_sub_vec4_u32(vec4<u32>(~57185u, _wgslsmith_dot_vec3_u32(u_input.a, arg_0.c.b.xyy), ~global0.c.b.x, 0u), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.c.b.x, u_input.a.x, global0.d.b.x, u_input.c.x), firstLeadingBit(arg_0.c.b))), max(~_wgslsmith_mod_vec4_i32(arg_0.c.c, global0.b.c), max(vec4<i32>(20227i, -20621i, u_input.b, 1i) >> (vec4<u32>(30086u, global0.d.b.x, 0u, 4294967295u) % vec4<u32>(32u)), reverseBits(vec4<i32>(0i, -25629i, 21296i, 1i))))), func_1(Struct_3(arg_0.d, func_1(Struct_3(vec3<i32>(global0.a.x, -1i, u_input.b), global0.b, Struct_1(global0.b.a, vec4<u32>(4294967295u, arg_0.c.b.x, u_input.a.x, 0u), global0.b.c), Struct_2(vec4<f32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, 1462f), vec3<u32>(u_input.c.x, 34855u, 4294967295u)), Struct_2(vec4<f32>(287f, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), vec3<u32>(4236u, global0.c.b.x, 0u))), !vec4<bool>(false, arg_0.c.a, arg_0.c.a, global0.b.a), Struct_3(vec3<i32>(-31295i, -35770i, 0i), arg_0.c, Struct_1(true, global0.b.b, global0.b.c), Struct_2(vec4<f32>(-666f, global0.d.a.x, global0.e.a.x, 709f), u_input.a), global0.d), Struct_4(Struct_3(arg_0.c.c.ywz, arg_0.c, arg_0.c, arg_0.b, Struct_2(vec4<f32>(global0.d.a.x, arg_0.b.a.x, arg_0.b.a.x, 846f), vec3<u32>(7244u, 1u, 0u))), Struct_2(vec4<f32>(738f, arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), u_input.a))).c, global0.c, arg_0.b, Struct_2(_wgslsmith_f_op_vec4_f32(floor(global0.d.a)), u_input.a ^ u_input.a)), select(!(!vec4<bool>(false, global0.c.a, global0.b.a, true)), vec4<bool>(false, false, select(arg_0.a, global0.b.a, global0.c.a), false), !vec4<bool>(false, global0.c.a, global0.c.a, arg_0.c.a)), Struct_3(-vec3<i32>(global0.c.c.x, arg_0.c.c.x, -15295i), func_2(), func_2(), Struct_2(arg_0.b.a, firstLeadingBit(vec3<u32>(96685u, 7473u, global0.c.b.x))), Struct_2(_wgslsmith_f_op_vec4_f32(-arg_0.b.a), func_2().b.zxy)), Struct_4(Struct_3(global0.c.c.wxy, Struct_1(true, vec4<u32>(u_input.a.x, u_input.a.x, global0.b.b.x, arg_0.c.b.x), arg_0.c.c), func_1(Struct_3(arg_0.c.c.xxx, arg_0.c, global0.c, Struct_2(arg_0.b.a, vec3<u32>(1u, 4294967295u, 61169u)), arg_0.b), vec4<bool>(global0.b.a, arg_0.a, true, arg_0.a), Struct_3(arg_0.c.c.wxz, Struct_1(false, vec4<u32>(4294967295u, 4294967295u, arg_0.c.b.x, 1u), arg_0.c.c), arg_0.c, Struct_2(global0.e.a, arg_0.b.b), Struct_2(global0.e.a, arg_0.c.b.xww)), Struct_4(Struct_3(vec3<i32>(u_input.d.x, 31254i, 42839i), arg_0.c, global0.c, global0.e, Struct_2(global0.d.a, arg_0.c.b.zzw)), global0.d)).c, func_1(Struct_3(vec3<i32>(-1i, 1i, arg_0.c.c.x), Struct_1(global0.c.a, vec4<u32>(75442u, 14107u, 0u, 4294967295u), arg_0.c.c), global0.b, arg_0.b, Struct_2(arg_0.b.a, vec3<u32>(arg_0.b.b.x, 22667u, 1u))), vec4<bool>(true, global0.b.a, global0.b.a, false), Struct_3(vec3<i32>(-2147483647i, -1i, 8314i), Struct_1(true, global0.b.b, global0.c.c), global0.b, arg_0.b, global0.e), Struct_4(Struct_3(vec3<i32>(0i, 38080i, 52960i), global0.b, Struct_1(arg_0.a, arg_0.c.b, vec4<i32>(41317i, -2147483647i, u_input.b, 9718i)), Struct_2(global0.d.a, vec3<u32>(4294967295u, 1u, 65435u)), Struct_2(vec4<f32>(arg_0.b.a.x, global0.d.a.x, global0.d.a.x, arg_0.b.a.x), vec3<u32>(15871u, global0.e.b.x, 12313u))), global0.d)).b, Struct_2(vec4<f32>(global0.d.a.x, -1198f, 1307f, arg_0.b.a.x), vec3<u32>(arg_0.b.b.x, 42797u, arg_0.b.b.x))), func_1(Struct_3(global0.a, global0.c, arg_0.c, global0.d, arg_0.b), !vec4<bool>(global0.c.a, global0.b.a, true, global0.b.a), Struct_3(vec3<i32>(2147483647i, arg_0.d.x, 4596i), global0.b, Struct_1(global0.c.a, global0.c.b, vec4<i32>(1i, arg_0.d.x, arg_0.c.c.x, arg_0.d.x)), global0.e, Struct_2(arg_0.b.a, u_input.a)), Struct_4(Struct_3(arg_0.d, arg_0.c, global0.b, arg_0.b, global0.d), arg_0.b)).b)).c, arg_0.b, global0.e);
    var var_0 = func_1(Struct_3(global0.c.c.zyx, Struct_1(false, ~vec4<u32>(arg_0.b.b.x, 27202u, u_input.a.x, global0.b.b.x), ~(vec4<i32>(-1i, u_input.d.x, u_input.b, u_input.d.x) ^ vec4<i32>(global0.b.c.x, global0.b.c.x, u_input.b, 1i))), Struct_1(false, _wgslsmith_mod_vec4_u32(countOneBits(global0.b.b), ~global0.b.b), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(arg_0.c.c, arg_0.c.c), _wgslsmith_div_vec4_i32(arg_0.c.c, arg_0.c.c))), global0.d, global0.d), !(!(!vec4<bool>(arg_0.c.a, global0.c.a, arg_0.a, global0.b.a))), Struct_3(countOneBits(countOneBits(func_2().c.wwz)), arg_0.c, Struct_1(false, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.b.x, global0.b.b.x, 28691u), vec3<u32>(global0.d.b.x, global0.b.b.x, 4517u)), ~global0.e.b.x, ~0u, 4294967295u), max(reverseBits(vec4<i32>(arg_0.d.x, global0.c.c.x, global0.b.c.x, -1i)), -global0.c.c)), global0.d, func_1(Struct_3(vec3<i32>(arg_0.d.x, -20731i, 45673i), func_2(), func_2(), Struct_2(vec4<f32>(global0.d.a.x, global0.d.a.x, 420f, arg_0.b.a.x), vec3<u32>(1u, global0.b.b.x, global0.c.b.x)), func_1(Struct_3(vec3<i32>(u_input.d.x, -8096i, -64583i), Struct_1(false, global0.c.b, vec4<i32>(global0.c.c.x, arg_0.c.c.x, 2147483647i, u_input.b)), Struct_1(global0.c.a, vec4<u32>(4294967295u, 3102u, 0u, global0.c.b.x), arg_0.c.c), arg_0.b, Struct_2(vec4<f32>(global0.e.a.x, global0.d.a.x, -488f, -878f), vec3<u32>(4294967295u, arg_0.c.b.x, arg_0.b.b.x))), vec4<bool>(global0.c.a, false, true, global0.b.a), Struct_3(global0.a, Struct_1(arg_0.c.a, vec4<u32>(global0.e.b.x, u_input.a.x, global0.c.b.x, 1u), vec4<i32>(global0.a.x, u_input.d.x, arg_0.c.c.x, global0.c.c.x)), Struct_1(false, vec4<u32>(1u, 55694u, u_input.c.x, 0u), arg_0.c.c), global0.d, global0.e), Struct_4(Struct_3(vec3<i32>(877i, arg_0.d.x, arg_0.d.x), Struct_1(global0.b.a, vec4<u32>(0u, 31002u, 19138u, 38382u), vec4<i32>(36234i, arg_0.c.c.x, -2147483647i, -1i)), Struct_1(false, global0.c.b, vec4<i32>(45956i, arg_0.c.c.x, 0i, -24722i)), Struct_2(global0.d.a, vec3<u32>(global0.d.b.x, arg_0.c.b.x, 0u)), Struct_2(arg_0.b.a, vec3<u32>(4294967295u, arg_0.c.b.x, u_input.a.x))), arg_0.b)).b), vec4<bool>(global0.c.a || true, true, func_2().a, true), Struct_3(vec3<i32>(1i, global0.b.c.x, 2147483647i), func_2(), func_1(Struct_3(arg_0.c.c.zxw, Struct_1(global0.b.a, vec4<u32>(arg_0.b.b.x, global0.e.b.x, arg_0.c.b.x, 108489u), global0.c.c), Struct_1(global0.b.a, vec4<u32>(33348u, 67162u, 1u, global0.d.b.x), arg_0.c.c), arg_0.b, Struct_2(global0.e.a, vec3<u32>(8325u, global0.b.b.x, global0.b.b.x))), vec4<bool>(true, false, arg_0.c.a, true), Struct_3(vec3<i32>(arg_0.c.c.x, arg_0.c.c.x, global0.c.c.x), Struct_1(global0.b.a, vec4<u32>(49800u, 63698u, 64566u, global0.b.b.x), vec4<i32>(-41967i, arg_0.c.c.x, 2147483647i, -2147483647i)), global0.b, Struct_2(vec4<f32>(arg_0.b.a.x, arg_0.b.a.x, -207f, -1000f), vec3<u32>(43566u, u_input.a.x, global0.b.b.x)), arg_0.b), Struct_4(Struct_3(vec3<i32>(u_input.d.x, 1i, -28304i), arg_0.c, Struct_1(global0.c.a, vec4<u32>(25751u, u_input.a.x, 1u, arg_0.c.b.x), vec4<i32>(arg_0.d.x, global0.b.c.x, 0i, arg_0.c.c.x)), Struct_2(vec4<f32>(969f, 1894f, arg_0.b.a.x, global0.e.a.x), vec3<u32>(global0.e.b.x, 53954u, 442u)), Struct_2(arg_0.b.a, vec3<u32>(global0.c.b.x, arg_0.b.b.x, 22894u))), global0.d)).c, func_1(Struct_3(vec3<i32>(-1i, -34358i, global0.b.c.x), global0.c, arg_0.c, global0.e, global0.e), vec4<bool>(arg_0.a, true, arg_0.a, global0.b.a), Struct_3(vec3<i32>(arg_0.d.x, 1i, arg_0.c.c.x), arg_0.c, Struct_1(true, vec4<u32>(global0.c.b.x, arg_0.c.b.x, global0.b.b.x, 27535u), vec4<i32>(-10881i, arg_0.d.x, -24775i, 9996i)), arg_0.b, arg_0.b), Struct_4(Struct_3(vec3<i32>(0i, arg_0.c.c.x, u_input.d.x), Struct_1(true, arg_0.c.b, vec4<i32>(u_input.d.x, -60900i, global0.b.c.x, -1i)), Struct_1(arg_0.c.a, arg_0.c.b, global0.c.c), Struct_2(arg_0.b.a, u_input.a), Struct_2(arg_0.b.a, u_input.a)), Struct_2(vec4<f32>(-389f, global0.e.a.x, global0.e.a.x, -276f), arg_0.c.b.zxz))).b, Struct_2(global0.d.a, vec3<u32>(6207u, u_input.c.x, arg_0.c.b.x))), Struct_4(Struct_3(vec3<i32>(global0.a.x, 18515i, -44193i), global0.b, global0.c, Struct_2(arg_0.b.a, u_input.a), Struct_2(vec4<f32>(-1453f, arg_0.b.a.x, 882f, global0.e.a.x), vec3<u32>(arg_0.b.b.x, u_input.a.x, 6556u))), Struct_2(arg_0.b.a, vec3<u32>(global0.b.b.x, 3407u, 95267u)))).b), Struct_4(Struct_3(firstTrailingBit(-vec3<i32>(global0.c.c.x, -2147483647i, -18604i)), Struct_1(!global0.c.a, _wgslsmith_sub_vec4_u32(arg_0.c.b, arg_0.c.b), firstLeadingBit(global0.b.c)), Struct_1(true, vec4<u32>(arg_0.b.b.x, 57558u, 37335u, global0.b.b.x) ^ vec4<u32>(arg_0.c.b.x, 1u, 1u, arg_0.b.b.x), countOneBits(global0.c.c)), Struct_2(vec4<f32>(469f, -335f, -232f, -1445f), min(vec3<u32>(global0.b.b.x, 4294967295u, arg_0.b.b.x), vec3<u32>(u_input.a.x, 11330u, global0.d.b.x))), func_1(Struct_3(vec3<i32>(2147483647i, arg_0.c.c.x, -49485i), global0.b, global0.b, global0.d, Struct_2(vec4<f32>(global0.e.a.x, arg_0.b.a.x, arg_0.b.a.x, 1000f), vec3<u32>(arg_0.c.b.x, arg_0.c.b.x, u_input.a.x))), !vec4<bool>(arg_0.c.a, arg_0.a, arg_0.c.a, false), Struct_3(vec3<i32>(arg_0.d.x, global0.a.x, u_input.b), arg_0.c, Struct_1(arg_0.a, vec4<u32>(1u, global0.c.b.x, 1u, u_input.c.x), global0.b.c), Struct_2(vec4<f32>(global0.e.a.x, 933f, -388f, 1834f), arg_0.b.b), Struct_2(arg_0.b.a, vec3<u32>(arg_0.b.b.x, arg_0.b.b.x, u_input.a.x))), Struct_4(Struct_3(arg_0.c.c.yyz, arg_0.c, Struct_1(global0.c.a, global0.b.b, global0.b.c), global0.e, arg_0.b), global0.d)).b), global0.e)).b;
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-global0.e.a), ~var_0.b);
    let var_1 = arg_0;
    return Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(arg_0.b.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.x, 325f, global0.e.a.x, -249f))))), abs(~var_0.b));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<i32>) -> Struct_2 {
    global0 = Struct_3(-vec3<i32>(~(~(-28222i)), 1i, arg_0.b.c.x), arg_0.c, Struct_1(arg_1.b.a.x > -333f, abs(~vec4<u32>(0u, 4294967295u, 21038u, arg_1.b.b.x)), ~arg_0.b.c), Struct_2(global0.d.a, u_input.a), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.e.a * arg_1.a.e.a)) - _wgslsmith_f_op_vec4_f32(arg_1.a.e.a * _wgslsmith_div_vec4_f32(vec4<f32>(-1111f, arg_1.a.d.a.x, arg_0.e.a.x, 1346f), arg_1.b.a))), vec3<u32>(arg_1.b.b.x, reverseBits(arg_0.d.b.x), _wgslsmith_mod_u32(~global0.b.b.x, reverseBits(arg_0.b.b.x)))));
    global0 = Struct_3(abs(max(func_1(arg_1.a, vec4<bool>(true, true, arg_0.c.a, arg_1.a.b.a), Struct_3(vec3<i32>(-6512i, -55629i, arg_2.x), Struct_1(global0.b.a, vec4<u32>(arg_0.d.b.x, 45674u, 76599u, arg_0.d.b.x), global0.c.c), global0.c, Struct_2(vec4<f32>(-637f, -679f, -191f, -573f), arg_0.d.b), arg_1.b), arg_1).c.c.zzw, vec3<i32>(global0.b.c.x, arg_2.x, 51074i))) >> (_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.b.b, ~arg_0.d.b), u_input.a) % vec3<u32>(32u)), Struct_1(!(global0.b.a && func_1(arg_0, vec4<bool>(true, global0.b.a, false, arg_0.c.a), arg_0, arg_1).c.a), func_2().b, vec4<i32>(u_input.d.x, func_2().c.x, arg_2.x, arg_1.a.a.x)), Struct_1(any(!vec2<bool>(arg_0.c.a, global0.b.a)), vec4<u32>(arg_1.b.b.x, _wgslsmith_mult_u32(u_input.a.x, 47479u), _wgslsmith_mod_u32(arg_0.b.b.x, 99908u), ~global0.d.b.x) ^ (countOneBits(global0.b.b) << (abs(vec4<u32>(1u, arg_1.a.c.b.x, u_input.a.x, 32705u)) % vec4<u32>(32u))), arg_1.a.b.c), Struct_2(vec4<f32>(arg_0.d.a.x, _wgslsmith_f_op_f32(-arg_0.e.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(431f)), _wgslsmith_f_op_f32(trunc(arg_1.b.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.d.a.x - arg_1.b.a.x)))), vec3<u32>(4650u, ~_wgslsmith_div_u32(0u, arg_1.b.b.x), _wgslsmith_div_u32(80075u, 4294967295u))), Struct_2(_wgslsmith_f_op_vec4_f32(step(arg_1.a.d.a, global0.d.a)), ~(~(vec3<u32>(0u, arg_1.a.b.b.x, arg_0.e.b.x) << (vec3<u32>(arg_0.e.b.x, u_input.c.x, 1u) % vec3<u32>(32u))))));
    global0 = Struct_3(vec3<i32>(~abs(arg_0.b.c.x), _wgslsmith_div_i32(i32(-1i) * -arg_2.x, -3101i), 29096i), arg_0.c, func_1(Struct_3(global0.b.c.wyz << (~arg_1.a.d.b % vec3<u32>(32u)), arg_0.b, Struct_1(true, countOneBits(vec4<u32>(arg_1.a.d.b.x, arg_0.c.b.x, 8304u, 1u)), vec4<i32>(1895i, 1i, 2147483647i, arg_2.x) >> (global0.b.b % vec4<u32>(32u))), func_1(arg_0, select(vec4<bool>(true, false, arg_1.a.b.a, global0.b.a), vec4<bool>(arg_1.a.b.a, global0.b.a, arg_1.a.b.a, true), arg_0.b.a), Struct_3(arg_1.a.c.c.yww, arg_0.c, arg_0.c, Struct_2(arg_1.a.e.a, u_input.a), global0.d), arg_1).b, arg_1.b), !vec4<bool>(arg_2.x >= u_input.b, global0.b.a, any(vec3<bool>(global0.b.a, true, arg_1.a.b.a)), u_input.d.x < arg_1.a.c.c.x), Struct_3(arg_0.c.c.wzy, func_2(), arg_0.c, arg_1.a.d, arg_1.b), arg_1).c, func_4(Struct_5(arg_0.b.a, arg_0.d, Struct_1(global0.c.a && arg_1.a.c.a, arg_0.c.b, _wgslsmith_div_vec4_i32(arg_0.c.c, vec4<i32>(31223i, arg_2.x, u_input.b, -34834i))), func_2().c.wzw)), global0.e);
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global0.e.a)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.d.a, global0.e.a, !any(vec3<bool>(true, true, false))))));
    return func_4(Struct_5(true, Struct_2(_wgslsmith_f_op_vec4_f32(round(arg_1.a.e.a)), _wgslsmith_div_vec3_u32(vec3<u32>(19419u, 1u, 0u), u_input.a)), arg_0.b, -_wgslsmith_sub_vec3_i32(global0.b.c.xxw, vec3<i32>(u_input.b, global0.a.x, arg_0.c.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(global0.a.zy, vec2<i32>(~0i >> ((u_input.a.x << (global0.d.b.x % 32u)) % 32u), global0.b.c.x)) == firstLeadingBit(~u_input.d.x);
    let var_1 = Struct_5(global0.b.a, func_5(Struct_3(vec3<i32>(1i, 5944i, ~u_input.d.x), global0.b, Struct_1(global0.e.a.x < 158f, _wgslsmith_mod_vec4_u32(global0.b.b, global0.b.b), global0.b.c), func_4(func_1(Struct_3(global0.c.c.yzw, Struct_1(true, global0.c.b, global0.c.c), Struct_1(global0.b.a, global0.b.b, vec4<i32>(-2147483647i, global0.a.x, global0.b.c.x, u_input.d.x)), Struct_2(global0.e.a, u_input.a), global0.d), vec4<bool>(global0.b.a, global0.c.a, global0.b.a, global0.c.a), Struct_3(vec3<i32>(u_input.d.x, 1i, 0i), Struct_1(global0.c.a, vec4<u32>(global0.e.b.x, 0u, u_input.c.x, 0u), vec4<i32>(u_input.b, -17764i, -55147i, 45359i)), global0.c, Struct_2(vec4<f32>(global0.d.a.x, -455f, -205f, -904f), vec3<u32>(61283u, 1u, u_input.c.x)), global0.d), Struct_4(Struct_3(global0.a, global0.b, global0.c, Struct_2(global0.e.a, global0.d.b), global0.e), Struct_2(global0.d.a, vec3<u32>(u_input.c.x, global0.e.b.x, 4294967295u))))), func_4(func_1(Struct_3(global0.a, global0.b, Struct_1(global0.c.a, global0.c.b, vec4<i32>(global0.c.c.x, u_input.d.x, 25925i, u_input.d.x)), Struct_2(global0.e.a, vec3<u32>(4294967295u, global0.d.b.x, global0.c.b.x)), Struct_2(vec4<f32>(346f, 782f, global0.e.a.x, global0.e.a.x), vec3<u32>(global0.e.b.x, u_input.a.x, global0.d.b.x))), vec4<bool>(global0.c.a, false, global0.b.a, true), Struct_3(vec3<i32>(global0.c.c.x, u_input.d.x, u_input.b), global0.c, Struct_1(global0.b.a, global0.b.b, global0.c.c), Struct_2(vec4<f32>(global0.e.a.x, 1741f, 1335f, -1142f), vec3<u32>(4294967295u, u_input.c.x, 5819u)), Struct_2(vec4<f32>(-2260f, global0.e.a.x, -350f, -831f), u_input.a)), Struct_4(Struct_3(vec3<i32>(0i, u_input.d.x, 38219i), Struct_1(global0.c.a, global0.b.b, vec4<i32>(global0.c.c.x, 2147483647i, 0i, global0.b.c.x)), Struct_1(false, global0.b.b, vec4<i32>(global0.a.x, global0.b.c.x, u_input.b, global0.a.x)), global0.e, Struct_2(vec4<f32>(2125f, -933f, global0.d.a.x, -2158f), u_input.a)), Struct_2(vec4<f32>(301f, global0.e.a.x, 608f, global0.e.a.x), u_input.a))))), Struct_4(Struct_3(global0.b.c.yyy, func_1(Struct_3(global0.b.c.wwx, Struct_1(false, vec4<u32>(global0.d.b.x, u_input.c.x, 73942u, global0.b.b.x), global0.b.c), global0.c, global0.d, global0.e), vec4<bool>(global0.b.a, true, true, true), Struct_3(vec3<i32>(u_input.b, global0.c.c.x, -1i), global0.c, Struct_1(global0.b.a, global0.b.b, global0.b.c), global0.d, Struct_2(global0.e.a, global0.b.b.zzx)), Struct_4(Struct_3(vec3<i32>(0i, -1i, 0i), Struct_1(false, global0.b.b, vec4<i32>(1i, global0.b.c.x, -1i, global0.c.c.x)), global0.c, Struct_2(global0.e.a, u_input.a), Struct_2(vec4<f32>(global0.d.a.x, global0.d.a.x, global0.d.a.x, global0.d.a.x), global0.c.b.zxw)), global0.e)).c, Struct_1(global0.b.a, vec4<u32>(1u, u_input.a.x, 0u, 29510u), global0.c.c), Struct_2(vec4<f32>(1047f, global0.d.a.x, -1046f, global0.d.a.x), global0.e.b), Struct_2(global0.e.a, global0.e.b)), global0.e), ~global0.a), Struct_1(any(select(select(vec3<bool>(global0.b.a, false, global0.c.a), vec3<bool>(global0.c.a, false, global0.c.a), global0.b.a), !vec3<bool>(global0.c.a, global0.c.a, false), select(vec3<bool>(false, global0.c.a, true), vec3<bool>(global0.b.a, false, global0.b.a), global0.c.a))), ~firstTrailingBit(vec4<u32>(4294967295u, 37347u, 4294967295u, global0.b.b.x)), global0.b.c), max(global0.b.c.yzy, global0.b.c.wzz));
    var_0 = global0.b.a;
    global0 = Struct_3(_wgslsmith_sub_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, 2147483647i, global0.c.c.x)), (~var_1.c.c.wxx | var_1.c.c.yyx) | ~var_1.c.c.xxy), func_1(Struct_3(vec3<i32>(_wgslsmith_mult_i32(8921i, u_input.b), -2147483647i >> (var_1.c.b.x % 32u), global0.b.c.x), var_1.c, var_1.c, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.a.x, var_1.b.a.x, global0.d.a.x, global0.d.a.x) - var_1.b.a), u_input.a), var_1.b), select(vec4<bool>(global0.b.a, var_1.b.a.x != var_1.b.a.x, true, !var_1.c.a), vec4<bool>(var_1.a, global0.c.a || true, any(vec4<bool>(false, global0.c.a, global0.c.a, true)), 1i >= u_input.d.x), select(select(vec4<bool>(global0.b.a, false, true, false), vec4<bool>(var_1.c.a, global0.b.a, var_1.c.a, global0.b.a), true), vec4<bool>(var_1.a, false, global0.c.a, var_1.a), select(vec4<bool>(false, false, global0.c.a, var_1.c.a), vec4<bool>(var_1.a, global0.c.a, false, var_1.a), var_1.a))), Struct_3(select(abs(global0.a), global0.b.c.yyy, !global0.c.a), func_1(Struct_3(vec3<i32>(u_input.b, 37224i, 25225i), Struct_1(global0.b.a, vec4<u32>(1u, var_1.c.b.x, 1u, u_input.c.x), vec4<i32>(-33870i, u_input.b, 1i, var_1.d.x)), Struct_1(global0.b.a, var_1.c.b, vec4<i32>(global0.a.x, -1i, global0.b.c.x, u_input.d.x)), Struct_2(var_1.b.a, u_input.a), global0.d), select(vec4<bool>(true, global0.b.a, var_1.c.a, var_1.a), vec4<bool>(global0.c.a, var_1.a, var_1.c.a, global0.c.a), vec4<bool>(true, true, var_1.a, global0.b.a)), Struct_3(vec3<i32>(var_1.c.c.x, var_1.c.c.x, global0.a.x), var_1.c, var_1.c, var_1.b, Struct_2(vec4<f32>(global0.e.a.x, -431f, global0.e.a.x, global0.e.a.x), vec3<u32>(66706u, var_1.b.b.x, var_1.b.b.x))), Struct_4(Struct_3(vec3<i32>(u_input.d.x, 0i, 0i), Struct_1(true, vec4<u32>(u_input.a.x, u_input.a.x, var_1.c.b.x, global0.d.b.x), global0.b.c), Struct_1(var_1.a, global0.b.b, vec4<i32>(-2147483647i, 10381i, -27030i, -42614i)), Struct_2(vec4<f32>(var_1.b.a.x, 154f, global0.d.a.x, -721f), var_1.c.b.zwy), Struct_2(vec4<f32>(global0.d.a.x, -186f, 599f, global0.e.a.x), vec3<u32>(1u, u_input.a.x, u_input.c.x))), Struct_2(vec4<f32>(325f, global0.d.a.x, global0.e.a.x, var_1.b.a.x), u_input.a))).c, Struct_1(var_1.a, ~var_1.c.b, global0.b.c << (vec4<u32>(28129u, 14641u, var_1.c.b.x, 4294967295u) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a.x, global0.e.a.x, global0.d.a.x, global0.d.a.x)), vec3<u32>(u_input.a.x, 0u, 0u) << (global0.c.b.zzy % vec3<u32>(32u))), func_1(Struct_3(vec3<i32>(global0.b.c.x, var_1.d.x, var_1.c.c.x), var_1.c, var_1.c, Struct_2(global0.d.a, var_1.b.b), Struct_2(var_1.b.a, vec3<u32>(u_input.c.x, 50632u, var_1.b.b.x))), select(vec4<bool>(true, true, false, var_1.a), vec4<bool>(false, var_1.a, var_1.a, var_1.c.a), vec4<bool>(true, false, false, true)), Struct_3(vec3<i32>(u_input.d.x, u_input.b, -5012i), global0.b, var_1.c, Struct_2(vec4<f32>(var_1.b.a.x, global0.d.a.x, var_1.b.a.x, -494f), var_1.c.b.xyz), Struct_2(global0.e.a, vec3<u32>(global0.d.b.x, 0u, global0.c.b.x))), Struct_4(Struct_3(vec3<i32>(global0.a.x, 18161i, 9342i), var_1.c, Struct_1(var_1.a, var_1.c.b, vec4<i32>(global0.c.c.x, var_1.d.x, global0.b.c.x, global0.a.x)), var_1.b, global0.e), var_1.b)).b), Struct_4(Struct_3(abs(vec3<i32>(global0.a.x, -2147483647i, var_1.c.c.x)), Struct_1(true, vec4<u32>(4294967295u, 29619u, var_1.c.b.x, 1u), vec4<i32>(-1i, 1i, -1i, global0.a.x)), var_1.c, global0.e, global0.e), global0.d)).c, Struct_1(false, countOneBits(~func_1(Struct_3(global0.c.c.wyw, Struct_1(false, vec4<u32>(18764u, global0.b.b.x, global0.c.b.x, u_input.a.x), global0.c.c), Struct_1(var_1.c.a, vec4<u32>(var_1.c.b.x, 45728u, 231u, u_input.a.x), global0.c.c), var_1.b, var_1.b), vec4<bool>(true, true, var_1.c.a, global0.b.a), Struct_3(var_1.c.c.wzx, global0.c, Struct_1(false, vec4<u32>(57069u, 4294967295u, global0.d.b.x, 67744u), vec4<i32>(u_input.d.x, 1731i, global0.c.c.x, u_input.d.x)), Struct_2(global0.e.a, var_1.b.b), Struct_2(global0.e.a, vec3<u32>(9313u, global0.e.b.x, global0.c.b.x))), Struct_4(Struct_3(vec3<i32>(global0.b.c.x, u_input.d.x, var_1.d.x), var_1.c, Struct_1(false, vec4<u32>(99139u, 51232u, 4294967295u, var_1.b.b.x), vec4<i32>(global0.b.c.x, var_1.d.x, -1i, 1i)), var_1.b, global0.e), Struct_2(global0.e.a, vec3<u32>(1u, u_input.c.x, 91456u)))).c.b), var_1.c.c), global0.e, global0.e);
    let var_2 = ~reverseBits(global0.e.b);
    let var_3 = abs(_wgslsmith_add_u32((0u << (1u % 32u)) & (58683u >> ((var_2.x << (var_1.c.b.x % 32u)) % 32u)), min(global0.d.b.x, u_input.a.x) & var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(func_1(Struct_3(vec3<i32>(-1i, u_input.b, global0.a.x), Struct_1(var_1.c.a, global0.b.b, vec4<i32>(u_input.b, -2147483647i, -1i, global0.a.x)), Struct_1(var_1.c.a, var_1.c.b, vec4<i32>(global0.a.x, 1949i, u_input.d.x, var_1.d.x)), Struct_2(vec4<f32>(-1000f, global0.e.a.x, var_1.b.a.x, -865f), var_2), Struct_2(vec4<f32>(var_1.b.a.x, global0.e.a.x, var_1.b.a.x, global0.e.a.x), u_input.a)), !vec4<bool>(true, var_1.c.a, var_1.a, false), Struct_3(var_1.d, var_1.c, var_1.c, Struct_2(vec4<f32>(-2029f, var_1.b.a.x, 374f, global0.e.a.x), var_1.c.b.xzz), Struct_2(global0.e.a, u_input.a)), Struct_4(Struct_3(global0.c.c.xyx, Struct_1(global0.b.a, var_1.c.b, var_1.c.c), var_1.c, Struct_2(vec4<f32>(global0.d.a.x, var_1.b.a.x, var_1.b.a.x, 283f), var_2), Struct_2(vec4<f32>(1942f, var_1.b.a.x, var_1.b.a.x, var_1.b.a.x), vec3<u32>(var_2.x, 45068u, var_1.c.b.x))), Struct_2(vec4<f32>(global0.e.a.x, -2003f, -373f, var_1.b.a.x), global0.e.b))).b.a.x, 1000f), _wgslsmith_f_op_f32(func_4(Struct_5(global0.b.a, Struct_2(vec4<f32>(148f, global0.e.a.x, var_1.b.a.x, var_1.b.a.x), global0.b.b.zzz), Struct_1(false, global0.c.b, vec4<i32>(-2147483647i, 7530i, u_input.d.x, u_input.d.x)), vec3<i32>(-43498i, var_1.d.x, u_input.b))).a.x + _wgslsmith_f_op_f32(-var_1.b.a.x)), all(vec2<bool>(!var_1.c.a, any(vec2<bool>(false, false)))))), func_2().c);
}

