struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-846f, vec2<bool>(false, true), vec2<i32>(13330i, -4341i), false);

var<private> global1: Struct_1;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(219f, global1.a) - vec2<f32>(_wgslsmith_f_op_f32(global0.a + -1305f), global0.a)));
    let var_1 = max(vec2<i32>(i32(-1i) * -56580i, -1i), vec2<i32>(reverseBits(0i), reverseBits(2147483647i)) << (vec2<u32>(~785u, u_input.a) % vec2<u32>(32u)));
    var var_2 = 0u >= _wgslsmith_add_u32(~(~u_input.a) & 20397u, 13456u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-903f * -1000f) + 801f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-927f * -430f))))), select(global0.b, select(!global0.b, global0.b, !(!global0.b)), vec2<bool>(any(arg_0), true)), firstTrailingBit(~_wgslsmith_clamp_vec2_i32(global1.c, ~var_1, global0.c)), true);
    return firstLeadingBit(min(~max(vec2<u32>(u_input.a, 65117u), firstTrailingBit(vec2<u32>(756u, 0u))), ~(~(~vec2<u32>(23012u, 57537u)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = 0u;
    global1 = var_0;
    global0 = var_0;
    let var_2 = _wgslsmith_mult_vec2_u32(min(vec2<u32>(~1772u, 1u), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(95112u, u_input.a), vec2<u32>(16958u, u_input.a)), vec2<u32>(55433u, 42258u)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), func_3(vec4<bool>(var_0.b.x, global1.b.x, arg_3.x, true))), ~vec2<u32>(1u, 64710u))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(19074u, u_input.a) % vec2<u32>(32u))), firstLeadingBit(~vec2<u32>(46051u, 4294967295u))) << (vec2<u32>(_wgslsmith_sub_u32(71360u, 0u) | ~u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(33881u, u_input.a)), u_input.a & 0u)) % vec2<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(172f)), _wgslsmith_f_op_f32(arg_0.a + arg_0.a))))))), !(!select(!vec2<bool>(arg_3.x, global1.d), !var_0.b, global0.d == false)), vec2<i32>(8761i, -52538i) | global1.c, _wgslsmith_dot_vec4_i32(arg_1, arg_1) <= -_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, 4329i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c.x, 39754i, var_0.c.x, global0.c.x), arg_2)));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = 83740u;
    global0 = func_2(arg_2, ~(-vec4<i32>(-global0.c.x, global1.c.x, arg_3.c.x, -7373i)), min(-vec4<i32>(71606i, _wgslsmith_mod_i32(58430i, -1i), 0i, _wgslsmith_mult_i32(global0.c.x, global0.c.x)), firstLeadingBit(vec4<i32>(~(-11768i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.c.x, arg_2.c.x, arg_3.c.x, -8622i), vec4<i32>(arg_2.c.x, global1.c.x, -1i, 63731i)), global1.c.x, _wgslsmith_div_i32(17128i, 29914i)))), !vec2<bool>(any(vec3<bool>(true, false, false)), arg_3.b.x || true));
    global0 = func_2(arg_2, reverseBits(-vec4<i32>(global0.c.x, 1i, 1i, abs(-2147483647i))), vec4<i32>(~(-arg_3.c.x) ^ _wgslsmith_add_i32(~global1.c.x, _wgslsmith_sub_i32(-2147483647i, -7066i)), global0.c.x, -19977i, 9027i), !func_2(Struct_1(-1038f, !arg_3.b, select(vec2<i32>(global1.c.x, global1.c.x), global1.c, vec2<bool>(global0.d, global1.d)), !global0.d), -(~vec4<i32>(arg_2.c.x, -28777i, global0.c.x, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.c.x, global0.c.x, global1.c.x, -2147483647i) & vec4<i32>(global0.c.x, 1i, -25978i, global1.c.x), vec4<i32>(1i, 0i, arg_2.c.x, -1i) | vec4<i32>(3802i, global0.c.x, 0i, arg_2.c.x)), select(select(vec2<bool>(true, true), vec2<bool>(arg_3.d, arg_3.b.x), global1.b), !vec2<bool>(false, global1.d), true)).b);
    global0 = Struct_1(_wgslsmith_f_op_f32(-global1.a), vec2<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -2481f)) == arg_1.x), -global1.c, arg_2.b.x);
    return arg_3.c;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = func_2(arg_1, vec4<i32>(~_wgslsmith_div_i32(~26687i, 35043i), global0.c.x, func_2(Struct_1(_wgslsmith_f_op_f32(-2127f * arg_1.a), global1.b, firstLeadingBit(vec2<i32>(arg_2.x, -4007i)), true), vec4<i32>(arg_1.c.x, -global0.c.x, 14949i, select(2147483647i, arg_1.c.x, true)), _wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, arg_2.x, arg_2.x, arg_1.c.x), max(vec4<i32>(arg_1.c.x, 2147483647i, 2274i, 17194i), vec4<i32>(arg_1.c.x, 14269i, arg_2.x, global0.c.x))), global1.b).c.x, 22802i), (vec4<i32>(arg_2.x >> (u_input.a % 32u), arg_1.c.x, ~(-1i), global1.c.x) & (vec4<i32>(arg_1.c.x, 30230i, 2147483647i, global1.c.x) << (abs(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)))) >> ((min(vec4<u32>(1u, u_input.a, 7267u, 27942u), vec4<u32>(8457u, u_input.a, 38728u, 34239u)) >> (vec4<u32>(~u_input.a, u_input.a >> (u_input.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 21000u, u_input.a, u_input.a)), u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), func_2(func_2(Struct_1(_wgslsmith_f_op_f32(-global1.a), arg_0.wz, -vec2<i32>(13480i, 0i), any(vec3<bool>(true, global1.d, true))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global1.c.x, global1.c.x, global0.c.x), vec4<i32>(arg_1.c.x, -1i, global1.c.x, arg_1.c.x)), -vec4<i32>(1i, 0i, 1767i, -14358i) ^ (vec4<i32>(-2147483647i, -2147483647i, arg_1.c.x, 30562i) | vec4<i32>(arg_2.x, global1.c.x, global0.c.x, 1i)), vec2<bool>(global0.b.x || true, false)), vec4<i32>(-44130i, ~(~arg_2.x), func_2(Struct_1(arg_1.a, arg_1.b, vec2<i32>(arg_1.c.x, global1.c.x), arg_1.d), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c.x, 31738i, -2147483647i, -2147483647i), vec4<i32>(2147483647i, 1i, arg_1.c.x, arg_1.c.x)), ~vec4<i32>(arg_2.x, -2147483647i, arg_1.c.x, 1i), func_2(Struct_1(-686f, arg_1.b, global1.c, global1.b.x), vec4<i32>(arg_1.c.x, 57103i, 1i, 2147483647i), vec4<i32>(arg_1.c.x, -61333i, 33329i, global0.c.x), global1.b).b).c.x, countOneBits(-11429i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, -36644i, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.c.x, 1i, 9443i, arg_1.c.x), vec4<i32>(arg_1.c.x, -1i, 2147483647i, -57581i), vec4<i32>(1i, 29777i, -21774i, global1.c.x))), select(select(select(vec2<bool>(true, global1.d), vec2<bool>(false, false), vec2<bool>(arg_1.b.x, global1.d)), select(arg_1.b, vec2<bool>(false, true), vec2<bool>(global1.b.x, arg_1.b.x)), true), !(!global0.b), arg_0.x)).b);
    let var_1 = var_0;
    let var_2 = vec2<u32>(96054u, u_input.a);
    var var_3 = abs(-99652i & _wgslsmith_div_i32(var_1.c.x ^ var_0.c.x, ~global1.c.x)) >= -7388i;
    let var_4 = func_2(Struct_1(-656f, select(!vec2<bool>(true, global1.d), vec2<bool>(true, var_2.x > var_2.x), true), (-vec2<i32>(arg_2.x, 65776i) >> (abs(var_2) % vec2<u32>(32u))) >> ((vec2<u32>(var_2.x, u_input.a) >> (select(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, var_2.x), var_1.b) % vec2<u32>(32u))) % vec2<u32>(32u)), func_2(func_2(Struct_1(global1.a, global1.b, vec2<i32>(0i, -2147483647i), var_0.b.x), abs(vec4<i32>(arg_2.x, 38228i, var_0.c.x, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(-21369i, -17394i, 0i, -20935i), vec4<i32>(118692i, 46460i, -2147483647i, var_1.c.x)), func_2(Struct_1(global1.a, var_1.b, vec2<i32>(arg_1.c.x, var_0.c.x), global0.d), vec4<i32>(-54589i, arg_2.x, -2147483647i, global0.c.x), vec4<i32>(-2147483647i, arg_1.c.x, arg_1.c.x, global1.c.x), var_0.b).b), vec4<i32>(var_1.c.x, _wgslsmith_sub_i32(49485i, 5744i), global0.c.x, select(var_1.c.x, global0.c.x, false)), max(vec4<i32>(2147483647i, 20129i, var_0.c.x, var_1.c.x) ^ vec4<i32>(0i, global1.c.x, arg_2.x, arg_2.x), vec4<i32>(arg_2.x, 1i, 1i, 12986i)), vec2<bool>(true, all(arg_0))).d), firstTrailingBit(firstTrailingBit(vec4<i32>(var_0.c.x, arg_1.c.x, global0.c.x, -2201i) >> (vec4<u32>(2875u, 1u, 41023u, u_input.a) % vec4<u32>(32u)))) & ~firstTrailingBit(vec4<i32>(global0.c.x, var_1.c.x, -2147483647i, arg_1.c.x)), vec4<i32>(~max(-1i, 19937i), arg_1.c.x, ~(-(global1.c.x >> (u_input.a % 32u))), select(arg_1.c.x, 1i, arg_1.b.x)), arg_0.xw);
    return Struct_1(global1.a, var_4.b, var_4.c, func_2(var_0, -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c.x, -30518i, 0i, global1.c.x), ~vec4<i32>(global0.c.x, arg_1.c.x, arg_2.x, 2147483647i)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.c.x, var_0.c.x, 55316i, arg_2.x), max(vec4<i32>(-2147483647i, -1i, var_4.c.x, arg_1.c.x), vec4<i32>(global1.c.x, 24184i, arg_1.c.x, -19707i))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-31392i, -32084i), vec2<i32>(0i, var_0.c.x)), 1i & var_4.c.x, select(var_4.c.x, var_0.c.x, var_4.d), func_4(global1.b.x, vec4<f32>(748f, var_1.a, var_4.a, var_0.a), var_4, Struct_1(1000f, var_0.b, vec2<i32>(1i, arg_2.x), false)).x)), !(!func_2(Struct_1(-502f, vec2<bool>(true, global1.b.x), global1.c, true), vec4<i32>(-23447i, 0i, global1.c.x, -2147483647i), vec4<i32>(2147483647i, arg_1.c.x, 9632i, arg_1.c.x), vec2<bool>(false, true)).b)).d);
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(!(!(!(!vec4<bool>(global1.d, global0.d, true, true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) * global0.a), vec2<bool>(global1.d, true), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~global1.c, -global0.c), func_4(any(vec4<bool>(false, false, global1.b.x, global1.d)), vec4<f32>(global1.a, -1204f, global1.a, global0.a), func_2(Struct_1(global1.a, global1.b, global1.c, true), vec4<i32>(27613i, global1.c.x, 24970i, -2147483647i), vec4<i32>(-88794i, -34335i, global0.c.x, -2147483647i), vec2<bool>(global1.d, true)), func_2(Struct_1(2246f, vec2<bool>(false, global1.b.x), vec2<i32>(global1.c.x, global0.c.x), true), vec4<i32>(global1.c.x, -33122i, global0.c.x, 22691i), vec4<i32>(global0.c.x, global1.c.x, 15774i, global0.c.x), global0.b)), vec2<i32>(func_4(global0.d, vec4<f32>(global1.a, 1000f, global0.a, -1375f), Struct_1(-457f, vec2<bool>(global1.d, false), global0.c, global1.d), Struct_1(2116f, global0.b, vec2<i32>(global1.c.x, 0i), global0.d)).x, _wgslsmith_div_i32(global0.c.x, global1.c.x))), !(!(u_input.a <= 34958u))), -(~(_wgslsmith_div_vec2_i32(global0.c, vec2<i32>(global0.c.x, global1.c.x)) | vec2<i32>(2147483647i, global1.c.x))));
    global1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -487f), !var_0.b, ~(-_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, global1.c.x), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.c.x, var_0.c.x), vec2<i32>(global1.c.x, global1.c.x)))), select(select(global0.b.x, global1.b.x, global1.b.x), !global1.b.x, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(func_5(!select(vec4<bool>(global1.b.x, true, var_0.b.x, global0.b.x), vec4<bool>(var_0.d, true, global1.d, global1.b.x), false), Struct_1(1692f, global1.b, abs(global0.c), all(vec2<bool>(true, global1.d))), -_wgslsmith_mult_vec2_i32(var_0.c, var_0.c)).a, 1f, _wgslsmith_f_op_f32(-1f))));
    var var_2 = func_5(vec4<bool>(!func_5(vec4<bool>(var_0.d, global1.d, true, global1.b.x), func_2(var_0, vec4<i32>(69258i, -1i, global0.c.x, 40826i), vec4<i32>(29828i, var_0.c.x, global0.c.x, var_0.c.x), vec2<bool>(true, false)), -vec2<i32>(global1.c.x, global0.c.x)).b.x, false, all(vec4<bool>(global1.b.x, false, true, false)), any(select(vec3<bool>(global0.d, true, false), !vec3<bool>(var_0.d, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, var_0.d, true), vec3<bool>(global1.d, var_0.d, var_0.d))))), Struct_1(-717f, global1.b, max(global1.c, -_wgslsmith_mod_vec2_i32(global0.c, vec2<i32>(global1.c.x, global0.c.x))), true), global1.c);
    global1 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_f_op_f32(-func_5(vec4<bool>(global1.d, global0.d, false, false), Struct_1(global1.a, global1.b, vec2<i32>(2147483647i, global0.c.x), global0.b.x), global0.c).a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1016f - global1.a), _wgslsmith_f_op_f32(select(1288f, -835f, global1.b.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(func_1().a, global1.a))), -169f, -199f, 1000f)));
    global0 = func_1();
    global1 = func_1();
    global0 = func_5(vec4<bool>(true, true, true, true), func_1(), global0.c);
    var var_1 = Struct_1(var_0.x, vec2<bool>(true, true), ~(vec2<i32>(global1.c.x, -27492i) ^ (global0.c ^ select(global1.c, vec2<i32>(-1i, global0.c.x), false))), false);
    var var_2 = func_1();
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(global0.c.x, -42095i), _wgslsmith_div_vec2_f32(var_0.zy, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.a, 1487f)))))), ~(~(~(u_input.a & 4294967295u))));
}

