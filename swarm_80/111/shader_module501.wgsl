struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global0 = !(!select(!vec4<bool>(false, global0.x, true, true), vec4<bool>(true, u_input.d.x > u_input.d.x, !global0.x, true), !select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, global0.x, true, true), true)));
    var var_0 = vec4<u32>(~select(_wgslsmith_clamp_u32(~58951u, 4294967295u, ~u_input.e), ~u_input.a, !any(global0.yx)), firstLeadingBit(u_input.a), u_input.c, u_input.a);
    var_0 = ~vec4<u32>(1u, var_0.x, u_input.d.x, 4294967295u);
    let var_1 = firstTrailingBit(u_input.b.x & -1i) << (firstLeadingBit(_wgslsmith_mult_u32(~1u, ~_wgslsmith_div_u32(75817u, u_input.c))) % 32u);
    var var_2 = Struct_4(~(~1i) >= _wgslsmith_mod_i32(var_1, countOneBits(1i)), Struct_3(vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -15548i, ~u_input.b.x), _wgslsmith_clamp_i32(0i, _wgslsmith_add_i32(var_1, -10368i), 930i)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1, 2147483647i, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -28089i), vec4<i32>(20405i, 1i, 0i, u_input.b.x) ^ vec4<i32>(33378i, 0i, var_1, 2147483647i)), ~min(vec4<i32>(var_1, var_1, -36319i, u_input.b.x), vec4<i32>(2147483647i, var_1, 2147483647i, u_input.b.x))), -2147483647i), Struct_3(~abs(vec2<i32>(u_input.b.x, u_input.b.x)), -countOneBits(vec4<i32>(0i, -11588i, var_1, var_1)), 2147483647i));
    return true;
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    global0 = vec4<bool>(_wgslsmith_div_f32(-2167f, arg_0.b.d) <= _wgslsmith_f_op_f32(sign(-1126f)), !select(arg_0.c.x, func_3(), arg_0.c.x), true, select(all(select(!vec3<bool>(global0.x, arg_0.c.x, false), vec3<bool>(true, false, false), !arg_0.c.x)), arg_0.c.x, any(!select(vec2<bool>(true, true), vec2<bool>(false, false), arg_0.c))));
    let var_0 = abs(max(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, 46421u, u_input.a), vec4<u32>(66490u, 46860u, arg_0.e, 31923u)), abs(u_input.e), 48317u), vec3<u32>(abs(85517u & arg_0.e), 4294967295u, 19617u)));
    global0 = vec4<bool>(true, false, 1u > abs(var_0.x), true);
    global0 = !select(!(!vec4<bool>(global0.x, false, false, arg_0.c.x)), !vec4<bool>(all(vec3<bool>(arg_0.c.x, false, arg_0.c.x)), true, var_0.x != u_input.e, !arg_0.c.x), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, global0.x, true, global0.x), arg_0.c.x)));
    global0 = select(!select(select(select(vec4<bool>(true, arg_0.c.x, false, false), vec4<bool>(true, false, true, true), global0.x), select(vec4<bool>(arg_0.c.x, global0.x, false, false), vec4<bool>(false, false, false, arg_0.c.x), vec4<bool>(true, arg_0.c.x, true, global0.x)), vec4<bool>(arg_0.c.x, false, global0.x, false)), !(!vec4<bool>(global0.x, global0.x, false, true)), !select(vec4<bool>(arg_0.c.x, false, false, false), vec4<bool>(false, global0.x, true, true), true)), vec4<bool>(true, func_3() || false, arg_0.c.x, arg_0.c.x), select(!(!vec4<bool>(false, arg_0.c.x, arg_0.c.x, arg_0.c.x)), !select(!vec4<bool>(true, global0.x, true, arg_0.c.x), select(vec4<bool>(arg_0.c.x, global0.x, true, global0.x), vec4<bool>(false, arg_0.c.x, true, global0.x), true), false), !vec4<bool>(!arg_0.c.x, !arg_0.c.x, false, arg_0.c.x)));
    return Struct_4(all(!(!arg_0.c)), Struct_3(reverseBits(max(arg_0.d.a.xz, vec2<i32>(172i, 2147483647i))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(6869i, 0i, -1i, arg_0.b.a.x), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, 34213i, arg_0.d.c.x, -1i), select(-vec4<i32>(arg_0.d.b, arg_0.b.b, arg_0.d.a.x, -32362i), select(vec4<i32>(u_input.b.x, 1i, arg_0.b.b, 2147483647i), vec4<i32>(arg_0.d.a.x, -11314i, 1i, 25868i), vec4<bool>(true, true, global0.x, true)), !global0.x)), 28566i), Struct_3(u_input.b, vec4<i32>(3587i | (-35257i | u_input.b.x), 33657i, abs(46964i) | arg_0.b.c.x, -_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), u_input.b.x));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> bool {
    let var_0 = vec3<bool>(!global0.x, !func_3(), !(!(arg_1.a & (1u < arg_0))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, -925f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-406f, 1000f)))), -450f, arg_1.a)) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1365f)), 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(809f)), _wgslsmith_div_f32(1174f, -1164f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1555f)), _wgslsmith_f_op_f32(select(-991f, 243f, true)), !arg_1.a)), -1856f)))));
    var_1 = -791f;
    global0 = !vec4<bool>(false, func_2(Struct_2(~1u, Struct_1(arg_1.b.b.wzw, -55463i, arg_1.c.b.yzz, -184f), vec2<bool>(true, true), Struct_1(vec3<i32>(1i, 2147483647i, arg_1.c.c), -1i, arg_1.c.b.yzy, -1466f), ~1u)).a, countOneBits(1i) > u_input.b.x, (false != func_3()) | false);
    global0 = !vec4<bool>(true, 1f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(994f + 727f))), false, !var_0.x);
    return any(!(!select(vec2<bool>(global0.x, true), select(vec2<bool>(arg_1.a, var_0.x), var_0.yz, vec2<bool>(var_0.x, arg_1.a)), global0.xy)));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> vec4<u32> {
    global0 = select(!vec4<bool>(-623f <= _wgslsmith_div_f32(arg_0.x, -253f), false, true, true), vec4<bool>(any(!vec3<bool>(false, global0.x, true)), global0.x, false, !global0.x), vec4<bool>(func_4(~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), func_2(Struct_2(1u, Struct_1(vec3<i32>(-14104i, arg_1, 44170i), u_input.b.x, vec3<i32>(arg_1, arg_1, -13257i), arg_0.x), global0.yx, Struct_1(vec3<i32>(-16781i, -2147483647i, 61741i), u_input.b.x, vec3<i32>(27978i, arg_1, -51841i), arg_0.x), u_input.d.x))), true, global0.x && !func_4(u_input.a, Struct_4(true, Struct_3(vec2<i32>(17341i, 2188i), vec4<i32>(u_input.b.x, arg_1, 0i, arg_1), arg_1), Struct_3(vec2<i32>(arg_1, -2147483647i), vec4<i32>(arg_1, u_input.b.x, 2147483647i, u_input.b.x), -2147483647i))), false));
    global0 = select(vec4<bool>(select(false, !global0.x, all(vec4<bool>(true, true, global0.x, true))), true, reverseBits(_wgslsmith_mod_i32(arg_1, arg_1)) > select(u_input.b.x, ~arg_1, false), true), select(vec4<bool>(func_2(Struct_2(4294967295u, Struct_1(vec3<i32>(u_input.b.x, -1i, 2147483647i), 14964i, vec3<i32>(15289i, -9958i, u_input.b.x), 158f), global0.xy, Struct_1(vec3<i32>(0i, arg_1, arg_1), arg_1, vec3<i32>(-3587i, 1i, arg_1), arg_0.x), u_input.e)).a, true, global0.x, true), !select(!vec4<bool>(global0.x, global0.x, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, global0.x), vec4<bool>(true, global0.x, false, global0.x)), select(vec4<bool>(false, false, false, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, global0.x, true, true))), !select(!vec4<bool>(global0.x, global0.x, false, false), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, true, true, false), false), -1017f >= arg_0.x)), select(select(!vec4<bool>(false, true, global0.x, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, global0.x), vec4<bool>(global0.x, false, true, global0.x), false), select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, global0.x, true, true), vec4<bool>(global0.x, global0.x, global0.x, true)), !global0.x)), vec4<bool>(all(vec2<bool>(global0.x, global0.x)), true, false, true), vec4<bool>(true, true, true, global0.x)));
    global0 = vec4<bool>(~countOneBits(~1i) == (-11397i << (_wgslsmith_mod_u32(u_input.d.x & u_input.a, 1u) % 32u)), true, global0.x, func_4(34524u, Struct_4((u_input.e < 40935u) && global0.x, func_2(Struct_2(u_input.c, Struct_1(vec3<i32>(1i, u_input.b.x, 52751i), 54105i, vec3<i32>(arg_1, u_input.b.x, u_input.b.x), 3257f), global0.zy, Struct_1(vec3<i32>(arg_1, 10364i, arg_1), 3344i, vec3<i32>(-30861i, u_input.b.x, arg_1), 1562f), 1u)).c, Struct_3(vec2<i32>(u_input.b.x, 4639i), abs(vec4<i32>(u_input.b.x, 2147483647i, -3103i, arg_1)), abs(1i)))));
    let var_0 = Struct_2(u_input.d.x, Struct_1(-_wgslsmith_add_vec3_i32(vec3<i32>(-39017i, -1i, 503i) ^ vec3<i32>(-1i, 0i, u_input.b.x), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1, arg_1, u_input.b.x), vec3<i32>(arg_1, u_input.b.x, 23885i))), i32(-1i) * -41080i, -_wgslsmith_add_vec3_i32(~vec3<i32>(arg_1, u_input.b.x, 99156i), reverseBits(vec3<i32>(arg_1, u_input.b.x, arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -711f), _wgslsmith_f_op_f32(arg_0.x * 483f))))), select(!select(select(global0.zx, global0.yz, global0.x), select(global0.zz, vec2<bool>(global0.x, true), vec2<bool>(false, global0.x)), global0.x), !select(vec2<bool>(false, false), global0.wz, true), vec2<bool>(true, global0.x)), Struct_1(max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, u_input.b.x, arg_1, arg_1), vec4<i32>(u_input.b.x, u_input.b.x, -32167i, arg_1)), -51974i, arg_1 ^ -1i), vec3<i32>(u_input.b.x | arg_1, arg_1, arg_1)), max(_wgslsmith_dot_vec4_i32(vec4<i32>(7290i, arg_1, arg_1, 8439i) >> (vec4<u32>(u_input.d.x, u_input.e, 0u, u_input.e) % vec4<u32>(32u)), ~vec4<i32>(u_input.b.x, 11266i, 6434i, -2147483647i)), 2147483647i), -firstLeadingBit(~vec3<i32>(0i, 2147483647i, 1i)), _wgslsmith_div_f32(419f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -711f), arg_0.x, true)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3217u, u_input.d.x, 1u, 0u) >> (vec4<u32>(1443u, u_input.c, u_input.d.x, 13919u) % vec4<u32>(32u)), vec4<u32>(44756u, u_input.a, 0u, 83440u)), u_input.e) & (~_wgslsmith_dot_vec2_u32(u_input.d.zx, vec2<u32>(u_input.c, u_input.d.x)) & 90103u));
    global0 = vec4<bool>(var_0.c.x, _wgslsmith_f_op_f32(-191f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * -1421f)))) < _wgslsmith_f_op_f32(-arg_0.x), all(vec4<bool>(true, true, any(var_0.c) && !var_0.c.x, 1i < var_0.d.c.x)), global0.x);
    return (_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(29890u, u_input.e, u_input.d.x, 1u) >> (vec4<u32>(1u, u_input.a, u_input.a, var_0.e) % vec4<u32>(32u))), vec4<u32>(0u, 4294967295u, ~u_input.a, ~var_0.e)) ^ (vec4<u32>(_wgslsmith_div_u32(1u, u_input.a), ~4294967295u, var_0.a, 4294967295u | u_input.a) | ~vec4<u32>(66443u, 14707u, 4294967295u, 39573u))) >> (~vec4<u32>(_wgslsmith_div_u32(0u, ~u_input.a), min(16687u, ~33245u), var_0.a, u_input.a) % vec4<u32>(32u));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: f32) -> Struct_1 {
    global0 = !select(!vec4<bool>(all(vec4<bool>(global0.x, true, global0.x, true)), true, true, global0.x), select(vec4<bool>(u_input.b.x <= u_input.b.x, any(vec3<bool>(true, global0.x, true)), all(global0.yz), global0.x), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, true)), !vec4<bool>(global0.x, global0.x, false, true)), global0.x);
    var var_0 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(u_input.b), vec2<i32>(_wgslsmith_mult_i32(-select(u_input.b.x, u_input.b.x, false), 4813i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 35991i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 17036i, -2147483647i, u_input.b.x))), -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(13936i, -1i), vec2<i32>(u_input.b.x, 38204i)), u_input.b)), vec2<i32>(u_input.b.x, -1i));
    global0 = vec4<bool>(!(~_wgslsmith_mod_i32(var_0.x, -9153i) < -42504i), !any(vec2<bool>(global0.x, any(vec2<bool>(global0.x, true)))), global0.x, !(!global0.x));
    var var_1 = ~vec4<i32>(_wgslsmith_clamp_i32(0i, ~_wgslsmith_mod_i32(var_0.x, var_0.x), 7639i), u_input.b.x, -2147483647i, firstLeadingBit(u_input.b.x));
    global0 = select(select(select(vec4<bool>(global0.x, true, global0.x, all(vec4<bool>(global0.x, false, true, true))), select(!vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(true, true, true, false), global0.x), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, false, false, false), global0.x)), global0.x), vec4<bool>(false, any(vec3<bool>(true, global0.x, global0.x)), true & all(vec4<bool>(global0.x, global0.x, false, true)), any(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, true), global0.x))), vec4<bool>(!(!global0.x), any(vec2<bool>(false, true)), true, ~arg_1.x > ~26521u)), vec4<bool>(false, global0.x, global0.x, global0.x), global0.x);
    return Struct_1(firstLeadingBit(var_1.zxz), 0i, vec3<i32>(1i, -1i, var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_2, arg_0.x, func_4(96427u, Struct_4(true, Struct_3(u_input.b, vec4<i32>(var_0.x, var_0.x, 1i, var_1.x), 1i), Struct_3(vec2<i32>(var_0.x, 2147483647i), vec4<i32>(u_input.b.x, 29377i, var_0.x, u_input.b.x), u_input.b.x))))))), _wgslsmith_f_op_f32(-arg_2))));
}

fn func_6(arg_0: Struct_1) -> Struct_4 {
    global0 = select(vec4<bool>(any(select(!global0.yxy, global0.wzx, true)), false, global0.x, global0.x), !(!select(select(vec4<bool>(false, false, global0.x, false), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, false)), select(vec4<bool>(true, true, false, global0.x), vec4<bool>(global0.x, true, true, global0.x), global0.x), vec4<bool>(false, true, global0.x, global0.x))), vec4<bool>(!global0.x, func_4(~_wgslsmith_div_u32(u_input.c, 25967u), func_2(Struct_2(u_input.c, arg_0, vec2<bool>(false, false), arg_0, u_input.e))), all(global0.yx), all(!vec2<bool>(global0.x, global0.x))));
    global0 = select(select(select(vec4<bool>(global0.x, true, func_4(u_input.c, Struct_4(global0.x, Struct_3(vec2<i32>(1i, 2376i), vec4<i32>(u_input.b.x, 58290i, -32348i, -15139i), u_input.b.x), Struct_3(u_input.b, vec4<i32>(arg_0.b, arg_0.b, 1i, -37258i), 2147483647i))), global0.x), !(!vec4<bool>(global0.x, false, global0.x, false)), all(vec4<bool>(global0.x, false, global0.x, global0.x))), select(!vec4<bool>(false, global0.x, false, false), select(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), global0.x), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, global0.x, true, global0.x), global0.x), vec4<bool>(global0.x, global0.x, global0.x, true)), !select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, true, true, false), vec4<bool>(global0.x, true, global0.x, true))), !vec4<bool>(true, false, true || global0.x, global0.x)), select(select(select(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(true, true, false, true), global0.x), select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, false, true)), false), select(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, false)), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, false, global0.x), false), false), func_3()), vec4<bool>(global0.x, !global0.x & !global0.x, true, any(!vec3<bool>(global0.x, global0.x, false))), !select(!vec4<bool>(false, true, global0.x, false), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false), false), global0.x)), 52884u > ~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, u_input.d.x), u_input.c));
    global0 = select(vec4<bool>(!(!(!global0.x)), global0.x, !(!any(vec4<bool>(true, global0.x, global0.x, true))), !(~u_input.c == u_input.a)), vec4<bool>(arg_0.d != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1181f + arg_0.d), _wgslsmith_f_op_f32(arg_0.d + 679f))), false, all(vec3<bool>(false, true, global0.x)), global0.x), select(vec4<bool>(!any(vec3<bool>(global0.x, global0.x, global0.x)), !global0.x, any(vec2<bool>(true, true)), !all(global0.zz)), !select(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), false), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, global0.x, false, false)), !vec4<bool>(global0.x, false, true, global0.x)), _wgslsmith_f_op_f32(floor(186f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) + -295f)));
    var var_0 = _wgslsmith_div_vec2_u32(u_input.d.xz, ~abs(max(vec2<u32>(44525u, 22782u), vec2<u32>(27442u, 0u))) ^ u_input.d.xx);
    var var_1 = func_4(10322u, func_2(Struct_2(abs(_wgslsmith_mult_u32(u_input.c, u_input.c)), Struct_1(vec3<i32>(arg_0.c.x, arg_0.c.x, -1i), select(0i, 7416i, global0.x), arg_0.c, -1000f), !(!vec2<bool>(false, global0.x)), Struct_1(func_5(vec2<f32>(arg_0.d, -250f), vec4<u32>(var_0.x, 45030u, u_input.d.x, var_0.x), arg_0.d).c, reverseBits(-23500i), ~arg_0.a, arg_0.d), 0u)));
    return func_2(Struct_2(max(~var_0.x, ~(~u_input.d.x)), arg_0, vec2<bool>(select(true, global0.x, global0.x | global0.x), true), Struct_1(vec3<i32>(-4336i, _wgslsmith_add_i32(-47282i, 16771i), func_5(vec2<f32>(arg_0.d, arg_0.d), vec4<u32>(var_0.x, 19533u, u_input.e, 4294967295u), arg_0.d).b), -(~u_input.b.x), countOneBits(-arg_0.c), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d - arg_0.d), -838f))), 57755u));
}

fn func_7(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(floor(-355f));
    let var_1 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(func_1(vec2<f32>(1343f, -377f), -2147483647i).yw, abs(vec2<u32>(arg_1.x, arg_1.x))), arg_1.x, ~(~0u), _wgslsmith_add_u32(arg_1.x, ~u_input.a)), vec4<u32>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1442f, 1208f)), 40635i << (u_input.e % 32u)).x, ~countOneBits(arg_1.x), firstLeadingBit(~0u), ~(~u_input.c))), func_5(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1655f, 540f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2437f, -735f))), !global0.x)))), ~(~(~vec4<u32>(u_input.c, u_input.e, u_input.e, arg_1.x))), _wgslsmith_div_f32(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1457f, 1000f) * vec2<f32>(-1000f, -173f)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 0u), vec4<u32>(u_input.e, 17811u, u_input.c, arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -262f)).d, _wgslsmith_f_op_f32(-1731f + -689f))), vec2<bool>(!(!all(vec3<bool>(arg_0.a, false, false))), global0.x), func_5(vec2<f32>(1f, 1f), ~vec4<u32>(u_input.c, u_input.e | 0u, u_input.c, firstTrailingBit(0u)), 306f), arg_1.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d.d)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_1.d.d, -1253f))))))));
    let var_2 = 1u;
    let var_3 = func_6(Struct_1(~(~(arg_2.b.b.xyx >> (u_input.d % vec3<u32>(32u)))), ~1i >> (~var_1.a % 32u), _wgslsmith_mult_vec3_i32(~min(arg_0.c.b.wxy, vec3<i32>(arg_0.b.b.x, var_1.d.b, -2147483647i)), arg_2.b.b.xyz), _wgslsmith_f_op_f32(885f - var_1.b.d))).b;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1051f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~((~vec3<i32>(1i, u_input.b.x, -37906i) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 1i, -9513i), vec3<i32>(1i, u_input.b.x, u_input.b.x))) >> (u_input.d % vec3<u32>(32u))), 1i, ~(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -54541i, 55680i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x) >> (vec3<u32>(4294967295u, u_input.c, 83882u) % vec3<u32>(32u))) << (~vec3<u32>(55657u, 4294967295u, u_input.c) % vec3<u32>(32u))), _wgslsmith_f_op_f32(func_7(func_6(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-215f, 775f) - vec2<f32>(985f, 404f)), func_1(vec2<f32>(-798f, -843f), u_input.b.x), 1678f)), vec2<u32>(~abs(u_input.c), firstTrailingBit(0u)), func_2(Struct_2(func_1(vec2<f32>(308f, 990f), u_input.b.x).x, func_5(vec2<f32>(-1000f, 1007f), vec4<u32>(0u, u_input.c, u_input.c, u_input.a), 1468f), vec2<bool>(true, true), func_5(vec2<f32>(-461f, 733f), vec4<u32>(1u, u_input.a, 1u, 4338u), 608f), u_input.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-789f, var_0.d, -1047f, var_0.d)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1336f, 1000f, 1000f, var_0.d) * vec4<f32>(-1381f, var_0.d, var_0.d, var_0.d)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1041f, var_0.d, 1000f, var_0.d))))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1622f, var_0.d, var_0.d, var_0.d)) - vec4<f32>(465f, 503f, var_0.d, var_0.d)))), global0.x)));
}

