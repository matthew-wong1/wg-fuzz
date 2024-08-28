struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(0u, 75557u, 1u), Struct_1(2147483647i, vec3<f32>(727f, 1099f, -919f)), vec2<u32>(6848u, 24210u), Struct_1(-25684i, vec3<f32>(-201f, 352f, -584f)), vec4<f32>(-853f, -742f, -2076f, 114f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec2<u32> {
    global0 = Struct_2(~vec3<u32>(44144u, 59993u, 0u), global0.b, (countOneBits(u_input.a.zy) | (firstTrailingBit(vec2<u32>(u_input.a.x, global0.a.x)) >> (vec2<u32>(u_input.a.x, 41309u) % vec2<u32>(32u)))) | (vec2<u32>(4294967295u, 45615u) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(global0.c.x, 19988u), u_input.a.xy) % vec2<u32>(32u))), Struct_1(_wgslsmith_mod_i32(abs(i32(-1i) * -19047i), abs(64289i) | _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.a, 2147483647i, u_input.c), vec3<i32>(global0.b.a, u_input.c, u_input.b))), vec3<f32>(global0.e.x, _wgslsmith_f_op_f32(271f - global0.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -671f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1125f), global0.e.x, global0.e.x, _wgslsmith_f_op_f32(sign(global0.d.b.x))), vec4<f32>(_wgslsmith_f_op_f32(max(1000f, 1930f)), 1000f, -228f, -792f)))));
    global0 = Struct_2(firstLeadingBit(global0.a << (firstTrailingBit(global0.a) % vec3<u32>(32u))), Struct_1(_wgslsmith_clamp_i32(u_input.b, 0i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, global0.b.a), vec3<i32>(global0.b.a, u_input.b, -1i)), firstLeadingBit(global0.b.a), 17802i)), vec3<f32>(global0.d.b.x, 1752f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.b.x)))), max(abs(select(global0.c, u_input.a.zx, true)), global0.a.xy), Struct_1(88615i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.b.b), _wgslsmith_f_op_vec3_f32(-global0.d.b))))), _wgslsmith_f_op_vec4_f32(global0.e + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(353f, _wgslsmith_f_op_f32(round(-305f)), _wgslsmith_f_op_f32(517f + global0.b.b.x), global0.e.x), vec4<f32>(524f, _wgslsmith_f_op_f32(-618f - global0.d.b.x), _wgslsmith_f_op_f32(global0.b.b.x + global0.e.x), 1000f)))));
    return _wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(select(_wgslsmith_clamp_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, global0.c.x), u_input.a.yy), vec2<u32>(global0.c.x, global0.a.x), true), global0.c)), _wgslsmith_mod_vec2_u32(max(_wgslsmith_mult_vec2_u32(u_input.a.xx, ~u_input.a.xx), vec2<u32>(0u, u_input.a.x) | global0.c), vec2<u32>(~global0.a.x | ~global0.a.x, ~global0.a.x)), vec2<u32>(u_input.a.x, ~1u));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec2<u32>) -> u32 {
    var var_0 = vec4<u32>(func_3().x << (98151u % 32u), ~1u, 0u, 4294967295u);
    let var_1 = vec4<i32>(-52142i, u_input.b, global0.b.a, -26218i << (select(0u, func_3().x & 11887u, false) % 32u));
    var_0 = ~(~firstLeadingBit(firstTrailingBit(countOneBits(vec4<u32>(1211u, 26110u, 0u, var_0.x)))));
    return abs(global0.c.x);
}

fn func_2(arg_0: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_2(vec3<u32>(min(_wgslsmith_sub_u32(u_input.a.x >> (arg_0.x % 32u), select(4294967295u, 0u, true)), u_input.a.x), ~global0.a.x, ~23855u), global0.b, vec2<u32>(arg_0.x, ~_wgslsmith_clamp_u32(u_input.a.x, 171u, 0u) & ~_wgslsmith_mult_u32(global0.a.x, global0.a.x)), Struct_1(u_input.c, global0.d.b), global0.e);
    var var_1 = Struct_2(vec3<u32>(~var_0.c.x, 1292u, _wgslsmith_clamp_u32(var_0.a.x, _wgslsmith_clamp_u32(~50681u, 0u, 24674u & var_0.c.x), ~arg_0.x)), Struct_1(2247i, global0.d.b), _wgslsmith_sub_vec2_u32(global0.c, vec2<u32>(abs(~var_0.a.x), func_4(_wgslsmith_f_op_f32(exp2(global0.d.b.x)), _wgslsmith_add_u32(1u, var_0.a.x), func_3()))), var_0.b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1912f), 290f, var_0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.b.x * _wgslsmith_f_op_f32(-global0.e.x)) * 110f)));
    let var_2 = Struct_2(_wgslsmith_mult_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(u_input.a, global0.a, vec3<u32>(115031u, 4294967295u, global0.a.x))), var_1.a), Struct_1(20081i, vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-610f, var_0.d.b.x)), global0.b.b.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(func_3().x, 4294967295u), select(~var_0.a.xz, min(global0.c, arg_0), true)) >> (_wgslsmith_mult_vec2_u32(~(~global0.c), max(vec2<u32>(global0.c.x, 38106u), ~vec2<u32>(var_1.a.x, global0.c.x))) % vec2<u32>(32u)), var_0.d, vec4<f32>(740f, var_0.e.x, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-175f, _wgslsmith_f_op_f32(select(701f, var_0.e.x, true))))))));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-934f * var_0.b.b.x), _wgslsmith_f_op_f32(ceil(1290f)))));
    let var_4 = ~1i;
    return abs(vec3<i32>(37590i >> (~_wgslsmith_dot_vec2_u32(var_1.a.yx, var_0.c) % 32u), 4965i, global0.d.a));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    let var_0 = reverseBits(~func_2(select(vec2<u32>(global0.a.x, 33281u), global0.a.zy, true))) | reverseBits(vec3<i32>(i32(-1i) * -u_input.b, ~global0.d.a, -1i));
    return global0.d;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(vec3<u32>(arg_3.x, _wgslsmith_div_u32(1u, ~arg_3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(21037u, arg_3.x), reverseBits(0u), select(u_input.a.x, u_input.a.x, false)), global0.a)), arg_0, _wgslsmith_add_vec2_u32(arg_3.yx, ~countOneBits(_wgslsmith_sub_vec2_u32(u_input.a.zx, arg_3.xx))), global0.d, global0.e);
    var var_1 = func_1(~countOneBits(select(vec4<i32>(u_input.c, var_0.b.a, 0i, var_0.b.a) ^ vec4<i32>(u_input.c, 8593i, u_input.c, var_0.b.a), select(vec4<i32>(global0.b.a, global0.d.a, var_0.d.a, -29345i), vec4<i32>(u_input.b, 2147483647i, arg_0.a, global0.d.a), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_1))))));
    let var_2 = var_0;
    var var_3 = min(~_wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(28093i, -34100i), vec2<i32>(var_2.d.a, var_0.b.a)), select(vec2<i32>(arg_0.a, 1i), vec2<i32>(u_input.b, -12460i), true) << (arg_3.yx % vec2<u32>(32u))), countOneBits(min(vec2<i32>(_wgslsmith_mod_i32(1i, var_1.a), 2147483647i), abs(vec2<i32>(0i, 1i)) >> (u_input.a.yy % vec2<u32>(32u)))));
    var_1 = var_2.b;
    return arg_0;
}

fn func_6(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(vec3<u32>(~global0.a.x << (~4294967295u % 32u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, u_input.a.x, 4294967295u)), (u_input.a.x >> (2127u % 32u)) << (~global0.c.x % 32u)) << ((min(u_input.a, ~vec3<u32>(u_input.a.x, 30986u, u_input.a.x)) >> (~(~u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), global0.d, ~vec2<u32>(u_input.a.x, ~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global0.c.x, u_input.a.x, u_input.a.x))), func_5(func_1(_wgslsmith_add_vec4_i32(min(vec4<i32>(global0.d.a, 1i, global0.d.a, -1i), vec4<i32>(global0.d.a, u_input.c, global0.d.a, global0.d.a)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -12209i, arg_2.a, -2147483647i), vec4<i32>(39505i, -2147483647i, 46388i, arg_2.a))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-arg_2.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.yy)), abs(vec3<u32>(global0.c.x, countOneBits(u_input.a.x), abs(u_input.a.x)))), global0.e);
    var var_1 = !(!arg_0.yww);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.b.x))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.e.x, global0.d.b.x);
    global0 = Struct_2(var_0.a >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 0u), max(var_0.a, vec3<u32>(var_0.c.x, 4294967295u, 78721u))) % vec3<u32>(32u)), global0.b, select(global0.a.zx, ~max(vec2<u32>(var_0.a.x, u_input.a.x), ~vec2<u32>(global0.c.x, global0.a.x)), !select(true, var_1.x, true) | (var_0.e.x == 531f)), var_0.d, vec4<f32>(-2494f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.x, arg_1)), arg_1), _wgslsmith_f_op_f32(floor(var_0.b.b.x)), arg_2.b.x));
    var_1 = arg_3;
    return Struct_2(vec3<u32>(~max(global0.a.x, global0.c.x), 1u, u_input.a.x ^ min(u_input.a.x, 0u)) ^ ~(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global0.a.x), vec3<u32>(1u, u_input.a.x, var_0.c.x)) << (max(u_input.a, u_input.a) % vec3<u32>(32u))), Struct_1(1575i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_2.b + var_0.d.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, var_2.x, 1000f) + arg_2.b))))), abs(var_0.a.yz), var_0.b, _wgslsmith_f_op_vec4_f32(global0.e * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(var_0.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i, vec3<f32>(_wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(-1000f * global0.b.b.x), _wgslsmith_f_op_f32(select(699f, _wgslsmith_f_op_f32(select(561f, _wgslsmith_f_op_f32(-global0.e.x), 2912u >= global0.c.x)), all(vec3<bool>(true, true, true))))));
    var var_1 = -2147483647i;
    var var_2 = func_6(select(!vec4<bool>(true, any(vec4<bool>(false, false, true, true)), all(vec3<bool>(false, true, true)), true), select(vec4<bool>(false, false, global0.d.a >= 2147483647i, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(round(var_0.b.x)) >= _wgslsmith_f_op_f32(global0.d.b.x - var_0.b.x), true, global0.b.a <= ~u_input.c)), _wgslsmith_f_op_f32(-var_0.b.x), func_5(func_1(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, u_input.c, var_0.a), vec4<i32>(u_input.b, var_0.a, -2913i, -40512i)), -244f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), -497f), vec3<u32>(u_input.a.x, global0.a.x, global0.a.x)), vec3<bool>(((2147483647i ^ var_0.a) ^ global0.d.a) == var_0.a, false, false));
    var_1 = _wgslsmith_dot_vec3_i32((vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-10204i, u_input.b, global0.d.a, var_2.b.a), vec4<i32>(u_input.b, -1i, global0.d.a, var_0.a)), -1055i >> (var_2.c.x % 32u), 36519i) ^ vec3<i32>(1i, func_2(var_2.c).x, 29772i)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(global0.c.x, ~global0.c.x, u_input.a.x), vec3<u32>(var_2.a.x, ~global0.c.x, ~67695u)) % vec3<u32>(32u)), select(~(-(vec3<i32>(u_input.b, global0.d.a, -1i) ^ vec3<i32>(u_input.b, var_2.b.a, var_0.a))), max(~(~vec3<i32>(var_0.a, -63487i, -2147483647i)), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.b.a, -47860i, var_2.b.a), vec3<i32>(-7890i, global0.d.a, var_2.b.a)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)));
    let var_3 = var_2.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.yz, ~65627u, firstTrailingBit(var_0.a), 38888u, _wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-270f, global0.d.b.x, var_2.b.b.x))))));
}

