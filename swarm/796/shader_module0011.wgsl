struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: i32) -> f32 {
    var var_0 = Struct_5(vec4<bool>(false, false, true, arg_0), Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1859f, -331f, 783f, -725f)))))), 1u, ~vec3<u32>(50930u, 17706u, ~u_input.b.x), vec4<bool>(all(!vec4<bool>(arg_0, true, false, arg_0)), u_input.b.x <= 22592u, any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), true)), true)), Struct_2(false, Struct_1(false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-805f, 1000f, 164f, -755f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1282f, -725f, -1620f, 1000f), vec4<f32>(230f, -1769f, -839f, -925f), false)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1344f, -670f, 140f, 1000f))))))), u_input.a);
    let var_1 = select(32305u, var_0.b.b, true);
    var_0 = Struct_5(vec4<bool>(!select(var_0.c.b.a, true, true) && var_0.b.d.x, all(select(var_0.b.d.yw, vec2<bool>(var_0.a.x, false), vec2<bool>(false, true))) | (var_0.c.b.a | all(vec3<bool>(true, false, var_0.c.a))), arg_0, !all(vec4<bool>(var_0.c.a, arg_0, false, var_0.c.a))), var_0.b, var_0.c, 18870i ^ _wgslsmith_div_i32(~var_0.d, -53461i));
    let var_2 = var_0.b;
    let var_3 = -1i;
    return -537f;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_3(true, u_input.a));
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -63251i, 0i, u_input.a), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 2147483647i, u_input.c, 0i), vec4<i32>(arg_1, arg_1, u_input.a, 108799i))), vec4<i32>(1i, -18745i, arg_1, 1i) | (vec4<i32>(-1i) * -vec4<i32>(0i, 6506i, u_input.c, u_input.c))), countOneBits(vec4<i32>(abs(-64305i), ~arg_1 ^ _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 8463i), vec2<i32>(-1i, u_input.a)), (18362i & u_input.c) & ~u_input.c, 0i >> ((arg_0 ^ arg_0) % 32u))));
    var_1 = vec4<i32>(u_input.a, 2147483647i, -16158i ^ (var_1.x >> ((u_input.b.x & reverseBits(2038u)) % 32u)), var_1.x);
    let var_2 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, true), false));
    var_1 = vec4<i32>(max(_wgslsmith_sub_i32(-30469i, -54006i), -_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, var_1.x, u_input.a, arg_1), countOneBits(vec4<i32>(u_input.a, -3920i, -30360i, var_1.x)))), min(var_1.x >> (31297u % 32u), -max(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 1i, -31778i, 2147483647i), vec4<i32>(arg_1, var_1.x, var_1.x, 2147483647i)), ~43575i)), firstLeadingBit(-2147483647i), firstLeadingBit(-(~(-51114i >> (0u % 32u)))));
    return Struct_2(false, Struct_1(var_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 642f, 2492f)))))));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    let var_0 = ~(~1u) & abs(_wgslsmith_div_u32(firstTrailingBit(u_input.b.x) & ~u_input.b.x, 1u));
    var var_1 = countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(56855i, 2147483647i), vec2<i32>(arg_0.d, -2147483647i)), u_input.c, 0i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0.d, arg_0.d, -2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(10832i, u_input.c, u_input.a), vec3<i32>(u_input.a, -2147483647i, arg_0.b))))) << (vec4<u32>(~u_input.b.x, var_0, var_0, _wgslsmith_add_u32(43667u, u_input.b.x) ^ 95109u) % vec4<u32>(32u));
    let var_2 = vec4<u32>(26608u, 4294967295u, ~74446u, _wgslsmith_div_u32(~(u_input.b.x ^ var_0) << ((~var_0 >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_0, 0u), u_input.b) % 32u)) % 32u), 40224u));
    var var_3 = all(!select(!(!vec2<bool>(arg_0.c.b.a, arg_0.c.a)), arg_0.a.zx, vec2<bool>(arg_0.c.b.a, all(vec2<bool>(arg_0.a.x, true)))));
    var_1 = -abs(~vec4<i32>(_wgslsmith_dot_vec2_i32(var_1.xz, var_1.wz), ~1003i, _wgslsmith_dot_vec2_i32(var_1.xx, var_1.wz), var_1.x));
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.c.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c.c.x, -1305f)) * _wgslsmith_f_op_f32(arg_0.c.c.x * arg_0.c.c.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.c.x * arg_0.c.c.x), _wgslsmith_f_op_f32(trunc(arg_0.c.c.x))), arg_0.c.c.x), _wgslsmith_f_op_f32(-830f + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.c.c.x, arg_0.c.c.x), _wgslsmith_f_op_f32(-arg_0.c.c.x))))), var_2.x, ~(vec3<u32>(4294967295u, abs(var_2.x), u_input.b.x << (var_2.x % 32u)) >> (max(vec3<u32>(1u, 55056u, var_0), u_input.b) % vec3<u32>(32u))), !arg_0.a);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_4 {
    var var_0 = Struct_1(any(func_4(Struct_3(vec4<bool>(false, false, false, arg_0.d.x), countOneBits(arg_1.d), arg_1.c, ~(-2147483647i))).d.wy));
    var var_1 = func_2(u_input.b.x, 25535i).b;
    var var_2 = arg_0.d.x;
    let var_3 = Struct_5(!select(arg_1.a, !(!arg_0.d), select(arg_1.a, arg_0.d, all(vec3<bool>(arg_1.a.x, true, arg_1.c.b.a)))), Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.a))))), firstTrailingBit(~u_input.b.x), u_input.b, vec4<bool>(select(false, true, u_input.b.x != 94968u), false, true, arg_0.d.x && !arg_3.a)), func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, 11134u, 1u), u_input.b), ~u_input.b, firstTrailingBit(u_input.b)), ~max(vec3<u32>(arg_2.x, 2513u, 9332u), vec3<u32>(arg_0.c.x, 6785u, arg_0.c.x))), u_input.c), firstTrailingBit(0i));
    var var_4 = var_3.d & var_3.d;
    return func_4(arg_1);
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = -_wgslsmith_add_i32(_wgslsmith_sub_i32(select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 15480i, u_input.a, u_input.c), vec4<i32>(-1i, 2147483647i, 2147483647i, -15701i)), _wgslsmith_div_i32(2147483647i, 260i), any(vec3<bool>(true, true, true))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.a), vec2<i32>(u_input.c, 33242i) >> (u_input.b.xy % vec2<u32>(32u)))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-2147483647i, -2147483647i, u_input.a)), -vec3<i32>(-37339i, -15567i, u_input.c), vec3<i32>(u_input.c, u_input.c, 1i)), -(vec3<i32>(-40996i, u_input.c, 0i) << (vec3<u32>(u_input.b.x, 1u, arg_0.x) % vec3<u32>(32u)))));
    var var_1 = func_5(func_4(Struct_3(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), u_input.c, func_2(countOneBits(0u), -2147483647i & u_input.a), firstTrailingBit(countOneBits(u_input.a)))), Struct_3(vec4<bool>(!select(true, true, true), any(vec2<bool>(true, true)), true, true), u_input.a, Struct_2((arg_0.x >> (10215u % 32u)) <= ~149794u, func_2(4294967295u, _wgslsmith_add_i32(1i, var_0)).b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(1058f * -1601f), -563f, _wgslsmith_f_op_f32(trunc(-388f)))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(var_0, 31406i), vec2<i32>(-2806i, u_input.a), vec2<bool>(false, false)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, var_0), vec2<i32>(u_input.c, var_0)), vec2<i32>(var_0, var_0)), ~select(vec2<i32>(u_input.c, var_0), vec2<i32>(-55598i, var_0), false))), ~arg_0, Struct_1(arg_0.x != 9098u));
    var_1 = func_4(Struct_3(select(func_5(Struct_4(vec4<f32>(1143f, -312f, var_1.a.x, 2571f), u_input.b.x, vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec4<bool>(false, var_1.d.x, false, var_1.d.x)), Struct_3(var_1.d, -6275i, Struct_2(var_1.d.x, Struct_1(false), var_1.a), u_input.a), countOneBits(arg_0), func_2(var_1.b, var_0).b).d, vec4<bool>(var_1.d.x, var_1.d.x, func_5(Struct_4(vec4<f32>(1000f, -1870f, var_1.a.x, 1718f), u_input.b.x, var_1.c, vec4<bool>(var_1.d.x, false, var_1.d.x, false)), Struct_3(vec4<bool>(false, false, true, true), 18766i, Struct_2(true, Struct_1(true), var_1.a), -37942i), arg_0, Struct_1(var_1.d.x)).d.x, !var_1.d.x), !func_4(Struct_3(var_1.d, u_input.c, Struct_2(false, Struct_1(true), vec4<f32>(var_1.a.x, -1000f, var_1.a.x, -913f)), u_input.a)).d), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_0, u_input.a, 55418i), ~vec3<i32>(17551i, 0i, u_input.a)), min(~14718i, var_0)), func_2(_wgslsmith_mod_u32(arg_0.x, 45857u), -8048i), var_0));
    let var_2 = firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0, 0i, var_0), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_0, u_input.a, var_0), vec4<i32>(var_0, -43392i, 0i, var_0))) | vec4<i32>(var_0, i32(-1i) * -2147483647i, -2147483647i, u_input.c)) & min(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0, 102i, -2147483647i, var_0), ~vec4<i32>(-67868i, u_input.a, 1i, -18653i)) | vec4<i32>(u_input.c, 0i, 14676i ^ var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(23731i, u_input.a, -44704i, u_input.a), vec4<i32>(var_0, u_input.c, -27637i, 2147483647i))), abs(vec4<i32>(select(10504i, 2147483647i, false), u_input.a, _wgslsmith_add_i32(35249i, 55266i), u_input.a)));
    var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x))), var_1.a.x, -1956f)), 4294967295u, countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(25985u, arg_0.x, var_1.c.x), _wgslsmith_div_vec3_u32(var_1.c, vec3<u32>(1u, 12421u, 0u)))), func_4(Struct_3(var_1.d, -(var_0 ^ var_2.x), Struct_2(var_1.d.x, func_2(1u, 28607i).b, _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, -823f, 1000f, var_1.a.x), var_1.a)), 1i)).d);
    return Struct_3(var_1.d, _wgslsmith_dot_vec3_i32(~(-_wgslsmith_sub_vec3_i32(var_2.zxy, var_2.yww)), ~_wgslsmith_clamp_vec3_i32(var_2.xwy, reverseBits(var_2.zzy), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -1i, -2147483647i), var_2.zxy))), func_2(3497u, _wgslsmith_div_i32(_wgslsmith_mod_i32(22873i, reverseBits(6632i)), ~_wgslsmith_sub_i32(-13072i, var_2.x))), abs(abs(-1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~(~vec4<u32>(abs(4294967295u), 1u, ~1u, ~u_input.b.x)));
    var var_1 = vec4<i32>(select(abs(-1i) >> (((u_input.b.x | u_input.b.x) >> (~u_input.b.x % 32u)) % 32u), _wgslsmith_sub_i32(_wgslsmith_sub_i32(11775i, -var_0.b), abs(-2147483647i)), 1i == -select(var_0.b, var_0.b, false)), u_input.a, ~reverseBits(~u_input.c), var_0.d);
    var var_2 = ~firstLeadingBit(countOneBits(u_input.b.yz));
    var_2 = u_input.b.zz;
    var var_3 = var_2.x;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -740f), 689f, _wgslsmith_f_op_f32(sign(-230f)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(firstLeadingBit(vec4<u32>(~4294967295u, u_input.b.x, var_2.x | 1u, select(var_2.x, u_input.b.x, false)))).c.c.x, -409f, func_4(func_1(vec4<u32>(_wgslsmith_clamp_u32(48805u, u_input.b.x, var_2.x), 4294967295u, func_4(var_0).b, u_input.b.x))).a.x, var_1.xy, ~_wgslsmith_mult_i32(~(-2147483647i), ~var_1.x) & ~(-21171i | var_0.b));
}

