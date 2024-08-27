struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = vec4<u32>(min(global0.a.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.c.c.x, global0.e.d.d, u_input.d.x), vec3<u32>(37580u, u_input.d.x, 43606u)), abs(vec3<u32>(4294967295u, 17810u, 6395u))), _wgslsmith_sub_vec3_u32(~u_input.d.yzx, vec3<u32>(80894u, 4294967295u, global0.b.c.x) >> (vec3<u32>(22948u, global0.e.c.c.x, 18260u) % vec3<u32>(32u))))), ~4711u, firstLeadingBit(1u), _wgslsmith_clamp_u32(select(36348u, 57098u, true), 1u, 17921u));
    global0 = Struct_3(global0.e, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.c, arg_1))) * global0.e.c.e)), vec2<bool>(any(select(!vec3<bool>(global0.d.x, global0.e.a.x, true), !vec3<bool>(global0.a.d.b.x, true, global0.d.x), vec3<bool>(true, true, global0.b.b.x))), any(!vec2<bool>(global0.a.d.b.x, global0.a.c.a.x))), Struct_2(global0.e.a, global0.e.d.c, global0.b, global0.a.d));
    let var_1 = Struct_5(11827u, select(_wgslsmith_sub_i32(u_input.a.x, -abs(3712i)), u_input.b.x, arg_0 > arg_0), global0.e.c, ~(~98537u));
    var_0 = vec4<u32>(59534u, ~_wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(0u, u_input.c, 1u, global0.a.b.x))), u_input.d), var_0.x, u_input.d.x);
    return 993f;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = abs(~_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.c, u_input.c, arg_2.b.c.x)), _wgslsmith_sub_vec3_u32(arg_2.a.d.c, vec3<u32>(4294967295u, global0.a.c.c.x, 48860u))));
    global0 = arg_2;
    global0 = Struct_3(global0.a, Struct_1(select(vec3<bool>(arg_2.d.x, global0.d.x, 1i >= u_input.b.x), vec3<bool>(any(vec2<bool>(true, global0.d.x)), true, any(arg_2.b.b.xwy)), true), !(!arg_2.a.c.b), _wgslsmith_clamp_vec3_u32(u_input.d.yxz, _wgslsmith_add_vec3_u32(~arg_2.e.d.c, vec3<u32>(0u, 1488u, 14953u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.b.x, global0.b.d, 1u), global0.b.c) << (~u_input.d.xzw % vec3<u32>(32u))), global0.a.c.c.x, global0.b.e), 1800f, vec2<bool>(global0.b.a.x || all(global0.a.c.b.zw), !all(!vec4<bool>(global0.b.b.x, arg_2.e.d.b.x, global0.d.x, true))), Struct_2(global0.e.a, arg_2.e.b, Struct_1(vec3<bool>(true, arg_2.a.c.a.x & true, any(vec2<bool>(global0.e.a.x, global0.b.a.x))), global0.b.b, _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.e.c.c.x, global0.e.b.x, arg_2.e.d.d), vec3<u32>(4294967295u, 69598u, u_input.d.x), vec3<u32>(u_input.c, u_input.c, 19070u)), abs(vec3<u32>(42355u, 11685u, global0.e.c.d))), global0.b.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.d.e)))), arg_2.b));
    let var_1 = Struct_4(Struct_1(select(select(vec3<bool>(true, global0.e.d.b.x, false), select(arg_2.e.d.a, arg_2.a.c.b.xyy, vec3<bool>(arg_2.d.x, true, false)), vec3<bool>(true, true, false)), vec3<bool>(u_input.a.x < 27640i, all(global0.b.b.zyy), select(true, global0.a.c.a.x, true)), true), select(vec4<bool>(any(arg_2.d), global0.e.c.a.x, global0.e.c.a.x, any(arg_2.d)), vec4<bool>(!global0.d.x, any(arg_2.a.d.b.yzz), all(arg_2.e.d.b), 0u < u_input.d.x), false), ~vec3<u32>(arg_2.e.d.c.x, 2845u, arg_2.e.c.d), _wgslsmith_dot_vec2_u32(~(arg_2.b.c.yy << (vec2<u32>(arg_2.b.d, arg_2.e.c.c.x) % vec2<u32>(32u))), (vec2<u32>(0u, 0u) | arg_2.a.d.c.yy) ^ _wgslsmith_sub_vec2_u32(global0.e.b.zz, vec2<u32>(global0.e.c.d, arg_2.a.c.d))), global0.e.d.e), arg_2.b, arg_0.x, abs(~(~_wgslsmith_div_vec2_u32(vec2<u32>(37675u, arg_2.b.c.x), vec2<u32>(33272u, 4294967295u)))), Struct_2(!vec3<bool>(all(vec4<bool>(true, global0.a.c.a.x, false, false)), global0.e.a.x, !global0.d.x), vec3<u32>(~(~0u), max(1u, ~u_input.d.x), 0u), global0.b, Struct_1(arg_2.b.b.zzw, arg_2.e.c.b, ~arg_2.a.b << (arg_2.e.c.c % vec3<u32>(32u)), abs(countOneBits(0u)), global0.b.e)));
    var_0 = u_input.d.x;
    return select(vec3<bool>(true, ~select(u_input.d.x, var_1.a.c.x, true) < global0.e.d.c.x, true), arg_2.b.b.ywy, vec3<bool>(arg_2.e.d.a.x, any(arg_2.b.b.xyx), false));
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_2(global0.b.a, vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d.xzw, ~vec3<u32>(u_input.d.x, 14589u, 0u) << (u_input.d.xxz % vec3<u32>(32u))), _wgslsmith_div_u32(global0.b.c.x, _wgslsmith_clamp_u32(75776u, 4294967295u, reverseBits(21521u))), abs(_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec2_u32(u_input.d.xy, u_input.d.xy), u_input.d.x))), Struct_1(func_4(vec3<i32>(~(-16566i), -57820i, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.e.x, -209f)) - _wgslsmith_f_op_f32(-global0.a.d.e)), Struct_3(global0.a, Struct_1(vec3<bool>(true, global0.e.a.x, global0.d.x), vec4<bool>(global0.d.x, global0.e.a.x, global0.d.x, global0.a.c.a.x), vec3<u32>(24583u, u_input.c, 4294967295u), 121341u, -1000f), _wgslsmith_f_op_f32(-global0.a.c.e), select(global0.e.a.yz, vec2<bool>(false, global0.e.c.b.x), true), Struct_2(vec3<bool>(global0.b.a.x, global0.a.c.a.x, true), global0.a.d.c, global0.e.c, Struct_1(global0.a.a, vec4<bool>(global0.d.x, true, global0.d.x, global0.e.a.x), vec3<u32>(6007u, 0u, 16833u), global0.a.c.c.x, 491f)))), !vec4<bool>(all(vec4<bool>(global0.e.a.x, true, false, true)), false, true, func_4(vec3<i32>(u_input.b.x, -104700i, u_input.a.x), 335f, Struct_3(Struct_2(global0.b.b.yxz, vec3<u32>(global0.e.c.c.x, u_input.d.x, global0.e.b.x), Struct_1(vec3<bool>(global0.e.a.x, false, global0.a.c.b.x), global0.b.b, u_input.d.xwz, 0u, 838f), global0.b), global0.e.c, global0.b.e, global0.a.c.a.xz, global0.a)).x), select(_wgslsmith_div_vec3_u32(max(global0.b.c, vec3<u32>(1u, 1u, 51722u)), vec3<u32>(1962u, u_input.d.x, u_input.d.x)), vec3<u32>(~26000u, ~global0.e.d.c.x, ~0u), global0.a.d.a), firstTrailingBit(abs(0u)) >> (~global0.a.b.x % 32u), _wgslsmith_f_op_f32(f32(-1f) * -570f)), Struct_1(global0.e.d.b.xxz, vec4<bool>(_wgslsmith_f_op_f32(global0.b.e - 821f) > -499f, false, true, select(any(global0.a.d.a), false, !global0.d.x)), abs(~vec3<u32>(30770u, global0.e.d.d, 80280u)), abs(countOneBits(_wgslsmith_div_u32(1u, 6058u))), _wgslsmith_f_op_f32(floor(2090f))));
    let var_1 = var_0.d.e;
    global0 = Struct_3(global0.e, Struct_1(select(vec3<bool>(!var_0.d.b.x, any(var_0.c.b.xz), true), var_0.d.b.wxx, all(func_4(vec3<i32>(1i, 2147483647i, -17397i), var_0.d.e, Struct_3(Struct_2(vec3<bool>(false, global0.a.d.a.x, true), u_input.d.xxx, Struct_1(vec3<bool>(global0.d.x, true, global0.e.a.x), vec4<bool>(true, var_0.a.x, var_0.d.b.x, var_0.a.x), global0.a.d.c, 1u, -1000f), Struct_1(var_0.a, global0.a.d.b, vec3<u32>(1u, global0.e.d.d, 1u), var_0.d.d, 897f)), global0.e.c, -1000f, var_0.d.a.xy, global0.a)).zx)), select(!vec4<bool>(global0.d.x, var_0.d.b.x, true, global0.b.b.x), vec4<bool>(global0.e.c.a.x, var_0.d.b.x, 0u <= u_input.c, var_0.d.a.x), any(var_0.c.a) | func_4(vec3<i32>(u_input.e.x, u_input.a.x, u_input.e.x), var_0.d.e, Struct_3(Struct_2(vec3<bool>(var_0.d.b.x, var_0.d.b.x, var_0.d.a.x), vec3<u32>(var_0.c.d, u_input.c, var_0.d.d), var_0.d, var_0.c), Struct_1(vec3<bool>(var_0.c.a.x, global0.a.c.b.x, var_0.a.x), vec4<bool>(true, false, var_0.c.b.x, true), vec3<u32>(1u, 905u, var_0.b.x), 627u, 1363f), global0.c, global0.e.a.yx, Struct_2(vec3<bool>(global0.a.a.x, var_0.a.x, false), vec3<u32>(0u, global0.b.c.x, 1u), var_0.c, global0.b))).x), vec3<u32>(18364u, _wgslsmith_mod_u32(~var_0.d.c.x, global0.a.d.d >> (0u % 32u)), global0.e.b.x), firstTrailingBit(_wgslsmith_clamp_u32(var_0.c.d, 0u, 21025u)) << (u_input.c % 32u), var_0.c.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), func_4(vec3<i32>(~_wgslsmith_div_i32(u_input.a.x, u_input.e.x), _wgslsmith_add_i32(0i >> (u_input.d.x % 32u), min(-2147483647i, -2147483647i)), (u_input.b.x ^ -15995i) >> (~4294967295u % 32u)), global0.e.d.e, Struct_3(global0.e, Struct_1(select(global0.a.c.a, vec3<bool>(true, global0.d.x, var_0.d.a.x), global0.b.b.x), global0.b.b, _wgslsmith_div_vec3_u32(vec3<u32>(global0.e.d.c.x, var_0.b.x, global0.a.d.c.x), vec3<u32>(var_0.c.d, var_0.c.c.x, 28037u)), ~var_0.c.d, _wgslsmith_f_op_f32(max(var_0.c.e, global0.a.d.e))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.c.e, global0.c) + var_0.d.e), select(global0.b.b.wy, func_4(vec3<i32>(0i, u_input.b.x, u_input.b.x), var_0.c.e, Struct_3(global0.a, Struct_1(global0.e.d.b.zwx, var_0.c.b, global0.a.b, var_0.d.d, var_0.d.e), global0.c, vec2<bool>(var_0.c.a.x, global0.d.x), global0.e)).yx, var_0.c.a.yz), Struct_2(var_0.a, reverseBits(vec3<u32>(global0.b.c.x, u_input.d.x, u_input.c)), global0.b, global0.a.d))).xy, global0.a);
    var_0 = Struct_2(vec3<bool>(all(var_0.c.b), global0.e.c.a.x & true, true && !global0.e.d.a.x), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.b.x, global0.b.d, 7867u), _wgslsmith_sub_vec3_u32(u_input.d.yxz, select(var_0.c.c, global0.a.b, vec3<bool>(var_0.a.x, global0.e.d.b.x, true)))), global0.a.d.c), var_0.c, Struct_1(!vec3<bool>(var_0.d.a.x, 998f < global0.a.d.e, 1i >= u_input.b.x), global0.e.d.b, reverseBits(vec3<u32>(_wgslsmith_div_u32(5551u, u_input.d.x), _wgslsmith_clamp_u32(var_0.b.x, 4294967295u, global0.a.b.x), u_input.c)), var_0.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1280f - 1704f), _wgslsmith_f_op_f32(f32(-1f) * -1139f), var_0.c.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.e)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.e - -390f)));
    return select(select(var_0.d.b, select(global0.a.c.b, var_0.d.b, !global0.a.c.b), false), vec4<bool>(select(!global0.a.a.x, var_0.d.b.x, false), var_0.c.b.x, global0.a.a.x, !(~1u < u_input.c)), select(vec4<bool>(all(func_4(vec3<i32>(u_input.e.x, 9394i, 1i), global0.e.c.e, Struct_3(global0.e, var_0.c, global0.b.e, var_0.d.b.yx, global0.e)).yz), var_0.a.x & var_0.c.b.x, true, true), var_0.d.b, _wgslsmith_mult_u32(~global0.a.b.x, u_input.d.x) != ~(~global0.e.d.c.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = any(vec2<bool>(!(false & any(vec2<bool>(global0.b.a.x, global0.e.c.a.x))), any(select(func_2(), !vec4<bool>(true, global0.d.x, false, global0.d.x), global0.a.c.b.x))));
    let var_1 = Struct_5(_wgslsmith_div_u32(11085u, 17773u & u_input.d.x), -(((u_input.a.x | u_input.e.x) >> (~85687u % 32u)) >> ((global0.e.b.x | select(54400u, u_input.d.x, false)) % 32u)), global0.a.c, 1u | _wgslsmith_mult_u32(13770u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.d.x, global0.a.d.d), u_input.c ^ 0u, min(1u, u_input.d.x))));
    return Struct_3(global0.e, Struct_1(!(!global0.b.b.xwy), !(!func_2()), _wgslsmith_div_vec3_u32(~u_input.d.yxy, countOneBits(max(u_input.d.yyy, vec3<u32>(19762u, global0.e.b.x, 62482u)))), ~u_input.d.x, global0.e.c.e), -955f, func_2().zw, Struct_2(select(vec3<bool>(global0.b.b.x && true, true, true), global0.b.b.xwz, func_2().wwx), u_input.d.zxy, Struct_1(vec3<bool>(true, false | global0.d.x, select(global0.e.c.a.x, true, false)), vec4<bool>(global0.d.x, global0.a.c.a.x, true, false), _wgslsmith_sub_vec3_u32(u_input.d.xzx, firstTrailingBit(u_input.d.wzw)), u_input.d.x, _wgslsmith_f_op_f32(var_1.c.e * _wgslsmith_f_op_f32(trunc(836f)))), Struct_1(vec3<bool>(var_1.c.b.x, global0.d.x, true), select(!var_1.c.b, global0.a.d.b, func_2().x), select(global0.e.c.c, vec3<u32>(1u, var_1.c.c.x, 10299u), func_2().wzz), 0u, _wgslsmith_f_op_f32(var_1.c.e + _wgslsmith_f_op_f32(-global0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = _wgslsmith_mult_vec4_i32(-((~vec4<i32>(u_input.a.x, -22620i, u_input.e.x, 2147483647i) | (vec4<i32>(u_input.a.x, u_input.a.x, 237i, u_input.a.x) << (vec4<u32>(94494u, u_input.d.x, 1u, 21617u) % vec4<u32>(32u)))) ^ reverseBits(vec4<i32>(u_input.a.x, 20875i, u_input.a.x, -2147483647i))), _wgslsmith_clamp_vec4_i32(-min(vec4<i32>(23108i, -2147483647i, 97616i, u_input.a.x), vec4<i32>(0i, 52340i, u_input.e.x, 5568i)), reverseBits(vec4<i32>(-u_input.b.x, -u_input.e.x, u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.e.x, -23980i, 4417i), vec4<i32>(-59276i, -50654i, 1i, -1i)))), vec4<i32>(-abs(u_input.b.x), 32523i, _wgslsmith_div_i32(-u_input.b.x, -24586i), abs(u_input.b.x))));
    var_0 = ~_wgslsmith_add_vec4_i32((~vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x) | ~vec4<i32>(-2147483647i, var_0.x, 25675i, 2147483647i)) & vec4<i32>(u_input.b.x, -var_0.x, -1i, 5076i), vec4<i32>(-23630i, var_0.x, _wgslsmith_add_i32(u_input.a.x, select(var_0.x, 0i, global0.d.x)), 2147483647i));
    var_0 = (abs(-vec4<i32>(var_0.x, var_0.x, 37337i, -2147483647i) & -vec4<i32>(-2147483647i, u_input.b.x, var_0.x, 0i)) ^ -abs(vec4<i32>(u_input.a.x, var_0.x, 37175i, u_input.e.x) & vec4<i32>(-1i, 3862i, u_input.e.x, var_0.x))) ^ -(~vec4<i32>(_wgslsmith_mod_i32(0i, u_input.a.x), _wgslsmith_sub_i32(u_input.b.x, 1i), -2147483647i, var_0.x));
    let var_1 = ~(~_wgslsmith_sub_u32(global0.b.d, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.c.x, u_input.c, 21252u), vec3<u32>(u_input.c, 16166u, global0.e.b.x)))));
    var var_2 = 2147483647i;
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x << (global0.b.d % 32u), 653f, ~select(abs(u_input.d | u_input.d), ~vec4<u32>(19005u, u_input.d.x, u_input.c, var_1), global0.d.x != global0.b.b.x));
}

