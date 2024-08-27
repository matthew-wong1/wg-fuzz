struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = arg_1;
    var var_1 = Struct_2(Struct_1(arg_1.a, abs(-24669i), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(arg_0, u_input.b, var_0.c, -17129i)), reverseBits(vec4<i32>(2147483647i, var_0.c, arg_0, arg_0))), _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(1u, arg_1.d, 0u)), vec3<u32>(firstLeadingBit(983u), ~u_input.d, ~5776u))), arg_2.a, arg_1, vec2<u32>(~(~1u), 4294967295u));
    var var_2 = u_input.c;
    var var_3 = Struct_2(Struct_1(!(!(!arg_2.b.a)), var_0.c, arg_0, max(~(~1u), var_0.d & var_0.d)), Struct_1(!vec4<bool>(arg_3 && false, var_0.a.x, !var_1.c.a.x, !arg_3), -1i, _wgslsmith_add_i32(~arg_2.a.c, var_1.a.c & ~14002i), 1u), Struct_1(arg_1.a, abs(var_0.c >> (~5661u % 32u)), ~arg_0, 0u), var_1.d);
    var var_4 = _wgslsmith_add_i32(-1i, -2147483647i);
    return 178u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = select(select(select(arg_0.a.zxw, arg_0.a.xzz, arg_0.a.x), !select(select(vec3<bool>(arg_0.a.x, false, arg_1.x), vec3<bool>(true, arg_0.a.x, true), arg_0.a.x), select(vec3<bool>(true, true, false), vec3<bool>(arg_1.x, true, arg_0.a.x), vec3<bool>(false, false, true)), select(arg_0.a.wxy, arg_0.a.xzy, false)), !(!arg_0.a.xxw)), arg_0.a.zyz, vec3<bool>(true, all(arg_0.a), true));
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c, _wgslsmith_add_i32(arg_0.b, arg_0.c << (_wgslsmith_mult_u32(arg_0.d, 1u) % 32u)), u_input.a), vec3<i32>(_wgslsmith_dot_vec2_i32(select(min(vec2<i32>(arg_0.b, arg_0.b), u_input.c.xy), max(vec2<i32>(1i, 3537i), u_input.c.zz), !arg_1), u_input.c.xx), firstLeadingBit(u_input.c.x), 2147483647i));
    var var_2 = arg_0;
    var var_3 = Struct_1(!vec4<bool>(var_2.a.x, !any(var_2.a.yx), all(!vec2<bool>(arg_1.x, true)), !select(true, arg_1.x, false)), u_input.c.x, abs(-var_1.x), ~u_input.d);
    return !var_2.a;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2) -> vec4<bool> {
    return vec4<bool>(arg_2.c.a.x, any(func_4(Struct_1(arg_2.b.a, u_input.a, _wgslsmith_mod_i32(u_input.a, arg_2.b.c), func_3(arg_2.a.b, Struct_1(vec4<bool>(arg_2.a.a.x, true, arg_2.b.a.x, true), 15613i, 30378i, 33720u), arg_2, false)), select(!vec2<bool>(arg_2.a.a.x, arg_2.b.a.x), vec2<bool>(false, arg_2.c.a.x), true), arg_1)), func_4(arg_2.b, select(arg_2.c.a.wz, arg_2.c.a.zx, arg_2.a.a.wx), arg_1).x, arg_2.c.a.x);
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(!(!vec4<bool>(false, arg_0, false, arg_0)), _wgslsmith_mult_i32(arg_2.b ^ -23533i, _wgslsmith_add_i32(arg_2.b, u_input.b) ^ -12928i), ~(-55045i), reverseBits(arg_3.x)), arg_2, arg_2, arg_3.zw);
    return Struct_1(func_4(var_0.c, vec2<bool>(true, true), vec3<f32>(_wgslsmith_f_op_f32(523f - 447f), _wgslsmith_div_f32(-1106f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -401f))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.a.c | -u_input.b, -38815i, 19617i), select(~(-vec4<i32>(arg_2.c, arg_1.x, arg_2.b, arg_1.x)), ~(-vec4<i32>(arg_2.c, -31915i, -2147483647i, var_0.a.b)), var_0.b.a)), -19768i, _wgslsmith_dot_vec3_u32(arg_3.wxz, vec3<u32>(arg_3.x, 1u, 8908u)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: u32) -> vec2<bool> {
    var var_0 = abs(vec4<i32>(abs(firstTrailingBit(abs(1i))), (_wgslsmith_div_i32(0i, arg_0) >> (4294967295u % 32u)) ^ -62059i, u_input.c.x, 20201i));
    var var_1 = func_5(!all(vec3<bool>(all(vec4<bool>(arg_2.x, false, false, true)), arg_2.x, all(vec3<bool>(arg_2.x, true, arg_2.x)))), vec2<i32>(-(24050i | var_0.x), i32(-1i) * -22654i) ^ vec2<i32>(_wgslsmith_div_i32(select(arg_0, 1i, true), abs(var_0.x)), _wgslsmith_mod_i32(u_input.a, max(var_0.x, 1i))), Struct_1(vec4<bool>(true, any(func_2(1u, vec3<f32>(1189f, -1016f, 1000f), Struct_2(Struct_1(arg_2, 36347i, 1i, 1u), Struct_1(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), 2147483647i, var_0.x, u_input.d), Struct_1(arg_2, -1i, arg_1, arg_3), vec2<u32>(u_input.d, 15188u)))), true, arg_2.x), ~var_0.x, var_0.x, _wgslsmith_mult_u32(31757u, countOneBits(73974u))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_3, arg_3, 58121u, 0u), countOneBits(vec4<u32>(arg_3, 51886u, arg_3, arg_3))), vec4<u32>(43898u, arg_3 & 54808u, ~u_input.d, _wgslsmith_sub_u32(1u, arg_3)), ~select(vec4<u32>(arg_3, 1u, arg_3, 21000u), vec4<u32>(u_input.d, u_input.d, arg_3, 19987u), arg_2)) | _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3, arg_3, arg_3), vec4<u32>(4294967295u, 31914u, u_input.d, u_input.d)), ~arg_3, 65252u & arg_3, u_input.d), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_3, 4294967295u, 4294967295u), vec4<u32>(0u, arg_3, 1u, 0u), vec4<u32>(arg_3, 19149u, arg_3, 1u)), vec4<u32>(arg_3, 0u, arg_3, 4294967295u))));
    let var_2 = func_5(!(375f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1618f)))), abs(vec2<i32>(_wgslsmith_sub_i32(-22331i & var_1.c, ~(-24167i)), reverseBits(~var_1.c))), Struct_1(select(vec4<bool>(false, !arg_2.x, var_1.b > -2147483647i, arg_2.x && true), arg_2, vec4<bool>(all(vec4<bool>(true, arg_2.x, var_1.a.x, arg_2.x)), arg_2.x == true, true, !arg_2.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, var_0.x, arg_0, 26274i), vec4<i32>(-66215i, var_0.x, 2147483647i, u_input.a)) | vec4<i32>(u_input.b, var_0.x, arg_0, var_0.x), -(~vec4<i32>(0i, 1i, 0i, u_input.a))), 18642i, _wgslsmith_div_u32(~21034u >> (_wgslsmith_div_u32(u_input.d, var_1.d) % 32u), 30797u)), vec4<u32>(u_input.d, _wgslsmith_clamp_u32(~28586u, ~(~92683u), _wgslsmith_mult_u32(max(u_input.d, var_1.d), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, u_input.d, 27339u), vec3<u32>(1u, arg_3, 75708u)))), var_1.d, arg_3));
    var_1 = Struct_1(vec4<bool>(true, func_2(_wgslsmith_mod_u32(1u, 40017u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -703f, -2609f))))), Struct_2(Struct_1(vec4<bool>(arg_2.x, var_2.a.x, false, true), -39507i, 2147483647i, 2428u), func_5(arg_2.x, var_0.xw, Struct_1(vec4<bool>(var_2.a.x, arg_2.x, false, arg_2.x), 0i, 0i, 57964u), vec4<u32>(4294967295u, 12884u, u_input.d, u_input.d)), var_2, vec2<u32>(34290u, u_input.d))).x, !arg_2.x, !func_5(true, var_0.xw, Struct_1(vec4<bool>(arg_2.x, arg_2.x, false, var_2.a.x), arg_0, arg_1, var_2.d), abs(vec4<u32>(4294967295u, var_1.d, 4294967295u, var_2.d))).a.x), abs(1i), max(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 32367i, arg_0), var_0.wxy)), arg_0) >> (var_1.d % 32u), _wgslsmith_dot_vec4_u32(min(select(~vec4<u32>(var_1.d, 1u, u_input.d, 1u), ~vec4<u32>(arg_3, 8441u, u_input.d, 4735u), all(vec4<bool>(var_1.a.x, true, arg_2.x, arg_2.x))), vec4<u32>(10406u, countOneBits(u_input.d), var_1.d, ~4294967295u)), reverseBits(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.d, 0u, var_1.d, 0u), vec4<u32>(arg_3, u_input.d, arg_3, 4294967295u), vec4<u32>(arg_3, 0u, u_input.d, 30461u))))));
    var_1 = func_5(var_2.a.x, u_input.c.zy, Struct_1(var_1.a, var_2.b, select(arg_0, func_5(all(arg_2.wzx), var_0.yx, Struct_1(var_2.a, 25808i, arg_1, u_input.d), ~vec4<u32>(86861u, 4294967295u, var_2.d, 9097u)).b, var_1.a.x), ~0u), vec4<u32>(0u, var_1.d, 4294967295u, u_input.d | 10714u));
    return func_5((-2147483647i <= (var_2.b << (u_input.d % 32u))) | false, u_input.c.zx, Struct_1(vec4<bool>(arg_2.x, arg_2.x, all(!vec4<bool>(var_1.a.x, false, true, arg_2.x)), true), ~_wgslsmith_sub_i32(-var_2.b, max(u_input.c.x, var_1.b)), -30282i, ~(~0u)), ~(~(~(~vec4<u32>(var_1.d, arg_3, 13055u, 0u))))).a.zx;
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = arg_2 & ~arg_2;
    var_0 = abs(arg_2);
    let var_1 = vec4<bool>(any(select(arg_1.zyz, !vec3<bool>(arg_1.x, arg_1.x, true), !arg_1.wzy)), !(!(arg_2.x <= var_0.x) || true), arg_1.x, !(true | (func_2(26574u, vec3<f32>(-1349f, -505f, -476f), Struct_2(Struct_1(arg_1, 52908i, u_input.c.x, 0u), Struct_1(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), u_input.b, 2147483647i, 10128u), Struct_1(arg_1, arg_0.x, -17310i, 4294967295u), vec2<u32>(var_0.x, u_input.d))).x | (false & arg_1.x))));
    var var_2 = Struct_2(Struct_1(vec4<bool>(true, any(select(var_1.wy, var_1.xx, vec2<bool>(arg_1.x, var_1.x))), all(arg_1.xz), any(arg_1.xz)), -2147483647i, -16446i, abs(u_input.d)), func_5(var_1.x, _wgslsmith_sub_vec2_i32(min(countOneBits(vec2<i32>(1i, -10039i)), -arg_0.xy), ~arg_0.zy), Struct_1(!select(vec4<bool>(true, false, arg_1.x, arg_1.x), var_1, arg_1), firstLeadingBit(i32(-1i) * -1i), ~_wgslsmith_clamp_i32(arg_0.x, u_input.c.x, u_input.c.x), _wgslsmith_clamp_u32(~arg_2.x, 1u, 1u)), ~select(vec4<u32>(arg_2.x, 58323u, var_0.x, 17504u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.d, 1u, var_0.x), vec4<u32>(0u, arg_2.x, 58446u, 1u)), vec4<bool>(arg_1.x, arg_1.x, false, false))), Struct_1(var_1, firstLeadingBit(-max(-2147483647i, arg_0.x)), 0i >> (reverseBits(_wgslsmith_sub_u32(4294967295u, arg_2.x)) % 32u), _wgslsmith_sub_u32(2159u, arg_2.x)), vec2<u32>(u_input.d, ~1u));
    var_0 = select(var_2.d >> (select(_wgslsmith_div_vec2_u32(vec2<u32>(12016u, arg_2.x), _wgslsmith_clamp_vec2_u32(arg_2, arg_2, arg_2)), firstLeadingBit(vec2<u32>(arg_2.x, u_input.d)), !vec2<bool>(arg_1.x, var_2.b.a.x)) % vec2<u32>(32u)), vec2<u32>(func_3(func_5(var_1.x, arg_0.ww, var_2.b, select(vec4<u32>(1u, 62560u, u_input.d, 0u), vec4<u32>(var_0.x, var_2.b.d, var_0.x, 34706u), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true))).b, Struct_1(vec4<bool>(false, false, var_1.x, arg_1.x), var_2.b.c, ~2147483647i, func_5(arg_1.x, arg_0.xw, Struct_1(vec4<bool>(false, true, var_2.b.a.x, true), 31507i, u_input.c.x, arg_2.x), vec4<u32>(4294967295u, 4294967295u, 59671u, 0u)).d), Struct_2(Struct_1(vec4<bool>(var_2.c.a.x, arg_1.x, arg_1.x, false), -39640i, -2604i, var_0.x), func_5(var_2.b.a.x, vec2<i32>(var_2.a.b, u_input.c.x), var_2.c, vec4<u32>(4294967295u, 4294967295u, arg_2.x, 0u)), Struct_1(vec4<bool>(false, arg_1.x, var_1.x, true), arg_0.x, var_2.a.b, 67132u), var_2.d), true), 676u), ~var_2.d.x >= _wgslsmith_add_u32(u_input.d, ~select(0u, 66892u, arg_1.x)));
    return func_5(func_2(~53946u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(890f, 158f, 1206f)))), Struct_2(Struct_1(vec4<bool>(var_2.c.a.x, var_2.a.a.x, true, arg_1.x), 0i, var_2.c.b & -2147483647i, 1u), func_5(68443u <= arg_2.x, vec2<i32>(var_2.a.b, 0i), var_2.c, select(vec4<u32>(var_2.c.d, 1u, u_input.d, var_2.b.d), vec4<u32>(u_input.d, var_0.x, 64400u, var_2.b.d), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x))), var_2.b, var_2.d)).x, max(min(min(vec2<i32>(63506i, -25440i), ~vec2<i32>(-4584i, var_2.c.b)), -vec2<i32>(u_input.a, var_2.b.b)), vec2<i32>(0i, reverseBits(-arg_0.x))), var_2.a, vec4<u32>(min(0u, var_2.a.d), var_2.b.d, ~4294967295u, ~var_2.a.d) & abs(vec4<u32>(var_0.x, 61116u, arg_2.x, var_0.x) & min(vec4<u32>(1u, var_0.x, arg_2.x, var_0.x), vec4<u32>(arg_2.x, var_2.c.d, u_input.d, u_input.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.b, u_input.c.x, -35409i, u_input.c.x), ~vec4<i32>(u_input.a, u_input.a, u_input.c.x, -1i), true), ~vec4<i32>(u_input.b, 39492i, u_input.a, u_input.a)), vec4<bool>(all(func_1(u_input.b, ~0i, vec4<bool>(false, false, false, true), ~u_input.d)), true, func_2(u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1154f, 373f, 918f)), Struct_2(func_5(false, u_input.c.xx, Struct_1(vec4<bool>(true, true, true, true), u_input.a, u_input.c.x, 8297u), vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.d)), Struct_1(vec4<bool>(true, true, true, false), 32623i, u_input.c.x, u_input.d), func_5(true, vec2<i32>(-16098i, u_input.c.x), Struct_1(vec4<bool>(false, true, false, true), u_input.c.x, 2147483647i, 61633u), vec4<u32>(u_input.d, u_input.d, 1u, u_input.d)), vec2<u32>(11316u, u_input.d))).x, !(!func_1(u_input.a, u_input.c.x, vec4<bool>(false, true, true, true), u_input.d).x)), (vec2<u32>(u_input.d, u_input.d) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))) >> (vec2<u32>(firstLeadingBit(47637u), abs(36437u)) % vec2<u32>(32u)));
    var var_1 = func_5(var_0.a.x, -u_input.c.xx, Struct_1(func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, var_0.d, 4294967295u, 25014u), ~vec4<u32>(var_0.d, u_input.d, 0u, 16512u)), vec3<f32>(-1000f, _wgslsmith_div_f32(1039f, -524f), _wgslsmith_f_op_f32(-1000f - 1877f)), Struct_2(Struct_1(var_0.a, u_input.a, var_0.b, 1u), Struct_1(var_0.a, u_input.a, u_input.b, var_0.d), func_6(vec4<i32>(-50731i, -2147483647i, -1i, u_input.b), vec4<bool>(false, var_0.a.x, false, false), vec2<u32>(1u, 0u)), select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1317u, 98653u), var_0.a.x))), 30858i, ~firstLeadingBit(var_0.c), select(1u, u_input.d, var_0.a.x)), max(~(~vec4<u32>(u_input.d, 0u, u_input.d, u_input.d)), ~firstLeadingBit(vec4<u32>(80068u, 4294967295u, var_0.d, 19398u))) >> (~abs(vec4<u32>(u_input.d, var_0.d, 11635u, 0u)) % vec4<u32>(32u)));
    let var_2 = true;
    var_0 = Struct_1(var_1.a, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-42756i, -45383i), vec2<i32>(16086i, var_0.b)) | 0i) >> (4294967295u % 32u), 46058i, ~select(firstTrailingBit(0u), max(53085u, u_input.d), true));
    var var_3 = func_6(~(~vec4<i32>(var_0.c, -2147483647i, func_5(var_2, vec2<i32>(-38839i, -54377i), Struct_1(var_1.a, u_input.c.x, 2147483647i, var_1.d), vec4<u32>(1u, var_1.d, 1u, var_1.d)).b, -1i)), !func_6(vec4<i32>(-1i) * -vec4<i32>(var_1.b, u_input.b, -2147483647i, -13243i), vec4<bool>(true, true, true, true), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.d, u_input.d), vec2<u32>(45202u, 0u))).a, vec2<u32>(abs(1u), ~(~(~109687u))));
    var_3 = Struct_1(select(vec4<bool>(!var_0.a.x, select(func_1(2147483647i, u_input.c.x, var_3.a, u_input.d).x, all(var_3.a), true), var_0.a.x & func_1(u_input.a, u_input.c.x, var_0.a, 4294967295u).x, 19836u < u_input.d), vec4<bool>(!(!var_1.a.x), false, var_0.a.x, false), true), func_6(vec4<i32>(-var_3.b, max(-1i >> (var_0.d % 32u), 0i), -_wgslsmith_clamp_i32(var_3.b, 2147483647i, 2147483647i), ~func_6(vec4<i32>(var_0.b, -31264i, var_3.b, var_1.b), vec4<bool>(false, var_2, false, true), vec2<u32>(5372u, 11432u)).c), !var_1.a, firstLeadingBit(~(~vec2<u32>(var_1.d, 2021u)))).b, 47265i, 49944u);
    var var_4 = u_input.c;
    let var_5 = ~max(vec4<u32>(var_1.d, 1u, var_3.d ^ select(var_3.d, 98464u, false), var_3.d), (vec4<u32>(var_1.d, 1u, var_3.d, var_0.d) & (vec4<u32>(var_0.d, var_0.d, var_0.d, var_3.d) & vec4<u32>(5552u, var_1.d, var_3.d, var_1.d))) >> (reverseBits(vec4<u32>(115483u, 0u, var_3.d, var_0.d)) % vec4<u32>(32u)));
    var var_6 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(~var_5.wx, var_5.ww, _wgslsmith_sub_vec2_u32(var_5.zx, vec2<u32>(1u, var_1.d) >> (~var_5.zy % vec2<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-399f, _wgslsmith_f_op_f32(-307f * 957f), 572f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f), 469f))));
}

