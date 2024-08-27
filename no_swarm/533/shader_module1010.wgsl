struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    let var_0 = 0u;
    var var_1 = Struct_5(~(~(max(arg_2.b.a.a, arg_1.a.a) | abs(vec4<u32>(u_input.b, 11794u, 0u, u_input.b)))), 0u, ~(_wgslsmith_div_u32(arg_1.b.a.x, 1u & u_input.c.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(44068u, 590u), abs(vec2<u32>(1u, 38772u)))), arg_1, (4294967295u << (abs(max(u_input.b, 0u)) % 32u)) << (_wgslsmith_add_u32(4294967295u, ~_wgslsmith_clamp_u32(6537u, 53864u, 4294967295u)) % 32u));
    let var_2 = min(abs(-vec4<i32>(arg_1.b.b, -2147483647i, 0i, arg_1.b.b) << (var_1.a % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(arg_0.x, 19980i, arg_1.a.b, var_1.d.a.b)), -vec4<i32>(0i, -2147483647i, 1i, -2147483647i)) >> (u_input.c % vec4<u32>(32u))) | abs(vec4<i32>(max(-25462i, arg_2.d.b), arg_0.x, arg_1.b.b, ~(-3295i)));
    var var_3 = Struct_2(Struct_1(vec4<u32>(~4294967295u, 0u, 27885u, ~0u), u_input.a), Struct_1(vec4<u32>(~0u, ~41715u, var_0, reverseBits(~arg_2.a)), _wgslsmith_mult_i32(-_wgslsmith_sub_i32(14918i, u_input.a), abs(-46520i))), ~30822u, arg_2.b.b.a, arg_2.b.e);
    var var_4 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(abs(u_input.c), max(arg_2.d.a, vec4<u32>(15488u, 4294967295u, u_input.b, arg_2.a))) << (~abs(vec4<u32>(1u, var_0, 0u, 0u)) % vec4<u32>(32u)), -22488i), arg_2.d, ~_wgslsmith_add_u32(4294967295u, ~var_0), vec4<u32>(firstLeadingBit(~(~29077u)), 1u, ~_wgslsmith_sub_u32(1u, arg_2.d.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.a.a.x, 0u), var_1.a.yw | u_input.c.xx) & _wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_1.b.a.x, arg_1.b.a.x, 1u), arg_2.d.a.xwx), vec3<u32>(2721u, arg_2.d.a.x, 0u))), arg_2.b.e);
    return countOneBits(countOneBits(11485u));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    var var_1 = ~countOneBits(23130i ^ _wgslsmith_div_i32(2147483647i, -u_input.a));
    let var_2 = Struct_5(vec4<u32>(~(~func_3(vec2<i32>(-1i, u_input.a), Struct_3(Struct_1(u_input.c, -72689i), Struct_1(u_input.c, u_input.a)), Struct_4(u_input.c.x, Struct_2(Struct_1(u_input.c, 0i), Struct_1(u_input.c, 51630i), 0u, vec4<u32>(1u, u_input.b, u_input.b, u_input.c.x), vec3<bool>(var_0, var_0, var_0)), vec3<f32>(1439f, -801f, -1227f), Struct_1(u_input.c, -2147483647i)))), u_input.c.x, ~(~min(u_input.c.x, 27020u)), 4294967295u), ~_wgslsmith_clamp_u32(u_input.c.x, 0u, 35580u), 1u, Struct_3(Struct_1(vec4<u32>(firstTrailingBit(9332u), u_input.c.x, 6037u, 1u), -76924i), Struct_1(_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c) >> ((u_input.c << (vec4<u32>(u_input.c.x, 20142u, 19174u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a)), ~u_input.b);
    var_1 = -(~(i32(-1i) * -2147483647i));
    var var_3 = vec3<i32>(-1i) * -(max(vec3<i32>(var_2.d.a.b, -14296i, 2147483647i), -vec3<i32>(u_input.a, u_input.a, -2147483647i)) ^ vec3<i32>(countOneBits(var_2.d.b.b), var_2.d.a.b, u_input.a));
    return var_2.d.b;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec4<u32>(arg_0, _wgslsmith_div_u32(arg_0, u_input.b) | ~u_input.c.x, 1u, 2347u), u_input.a >> (firstLeadingBit(~u_input.b) % 32u)), func_2(), ~(func_3(~vec2<i32>(u_input.a, u_input.a), Struct_3(Struct_1(u_input.c, u_input.a), Struct_1(u_input.c, u_input.a)), Struct_4(4294967295u, Struct_2(Struct_1(u_input.c, -9692i), Struct_1(vec4<u32>(arg_0, 1u, 49956u, u_input.c.x), 2147483647i), 0u, u_input.c, vec3<bool>(false, false, true)), arg_1.zyy, Struct_1(u_input.c, u_input.a))) | 4294967295u), abs(select(~(~vec4<u32>(arg_0, u_input.c.x, arg_0, u_input.b)), firstTrailingBit(~u_input.c), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_5(u_input.c, _wgslsmith_mod_u32(4294967295u, u_input.c.x), _wgslsmith_dot_vec4_u32(min(vec4<u32>(~4294967295u, 0u, ~46428u, arg_0), ~u_input.c), func_2().a | ~_wgslsmith_mult_vec4_u32(var_0.b.a, vec4<u32>(u_input.c.x, u_input.c.x, 31812u, var_0.b.a.x))), Struct_3(func_2(), Struct_1(vec4<u32>(var_0.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, var_0.d.x, var_0.c), u_input.c), ~var_0.a.a.x, u_input.b), abs(_wgslsmith_mod_i32(-1i, 25143i)))), _wgslsmith_div_u32(~(~_wgslsmith_dot_vec3_u32(u_input.c.ywy, vec3<u32>(1u, 1u, arg_0))), var_0.d.x));
    var_0 = Struct_2(var_1.d.a, Struct_1(select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(26697u, 13465u, arg_0), var_1.a.wxx), ~u_input.c.x, var_0.c | 9804u, ~5651u), select(var_0.a.a ^ vec4<u32>(var_1.b, var_0.c, 4294967295u, 40400u), var_0.a.a, var_0.e.x), !var_0.e.x), abs(~u_input.a << (~var_0.a.a.x % 32u))), 4294967295u, _wgslsmith_clamp_vec4_u32(~var_0.a.a, vec4<u32>(var_0.c, 1u, func_2().a.x, 22465u), select(select(var_0.b.a, firstLeadingBit(vec4<u32>(931u, u_input.c.x, var_0.c, 0u)), any(vec4<bool>(var_0.e.x, false, true, var_0.e.x))), var_0.b.a, select(!vec4<bool>(var_0.e.x, true, true, true), vec4<bool>(var_0.e.x, var_0.e.x, true, true), true))), var_0.e);
    var var_2 = !(!(!(!(!var_0.e.zy))));
    var_1 = Struct_5(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.c, var_0.b.a), max(17858u, ~25180u)), ~arg_0, firstLeadingBit(u_input.b), 1181u), 37678u, firstLeadingBit(~22592u), Struct_3(Struct_1(vec4<u32>(~67957u, 70097u, ~arg_0, ~40214u), -2147483647i), var_1.d.b), 1u);
    return Struct_1(~select(countOneBits(var_1.d.a.a), ~max(vec4<u32>(arg_0, var_0.b.a.x, arg_0, var_1.d.a.a.x), var_0.a.a), var_2.x), reverseBits(0i));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = abs(~_wgslsmith_div_u32(func_2().a.x, ~4294967295u));
    var var_1 = Struct_5(~vec4<u32>(_wgslsmith_sub_u32(arg_1.b.a.x, _wgslsmith_div_u32(arg_1.b.a.x, 0u)), _wgslsmith_mult_u32(func_1(u_input.b, vec4<f32>(195f, 408f, -1000f, 427f)).a.x, ~arg_1.d.x), 98461u, ~103427u), ~u_input.b, ~0u, Struct_3(arg_1.a, arg_1.b), _wgslsmith_mult_u32(~(~arg_1.a.a.x) >> (_wgslsmith_sub_u32(arg_1.a.a.x, u_input.b) % 32u), ~0u));
    var var_2 = ~var_1.d.a.b;
    let var_3 = var_1.d;
    var var_4 = Struct_4(_wgslsmith_mod_u32(73210u, countOneBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 0u), reverseBits(var_1.b)))), Struct_2(func_1(16311u, _wgslsmith_f_op_vec4_f32(vec4<f32>(992f, 886f, 1187f, -1000f) - vec4<f32>(1f, 1f, 1f, 1f))), arg_1.a, 3669u, var_1.a, vec3<bool>(any(vec3<bool>(true, arg_1.e.x, arg_1.e.x)), any(select(vec4<bool>(arg_1.e.x, arg_1.e.x, true, true), vec4<bool>(true, false, arg_1.e.x, arg_1.e.x), vec4<bool>(arg_1.e.x, arg_1.e.x, arg_1.e.x, false))), any(!vec4<bool>(arg_1.e.x, arg_1.e.x, arg_1.e.x, false)))), vec3<f32>(_wgslsmith_f_op_f32(-2363f - _wgslsmith_f_op_f32(1628f * _wgslsmith_f_op_f32(max(-142f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-867f + _wgslsmith_f_op_f32(min(749f, 994f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-139f + 1000f))), -376f), var_3.b);
    return Struct_4(~(~(~(~1835u))), arg_1, _wgslsmith_f_op_vec3_f32(ceil(var_4.c)), func_2());
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c.x, arg_3.c.x)));
    let var_1 = true;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.c.x)));
    var_0 = _wgslsmith_f_op_f32(min(arg_3.c.x, -1000f));
    var_0 = -810f;
    return Struct_3(Struct_1(~func_4(vec2<i32>(2147483647i, arg_1.b.a.b) << (arg_3.d.a.zx % vec2<u32>(32u)), arg_3.b).d.a, arg_3.b.a.b), arg_1.b.b);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_4 {
    var var_0 = -131f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1553f);
    var_0 = arg_2.x;
    var var_1 = func_4(abs(max(-vec2<i32>(arg_1.a.b, -1713i), -vec2<i32>(71820i, arg_1.b.b))) >> (~min(_wgslsmith_mod_vec2_u32(arg_3.d.xx, arg_0.xy), arg_3.a.a.yz) % vec2<u32>(32u)), func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -21080i, 1i), vec2<i32>(1i, arg_1.a.b) | vec2<i32>(2147483647i, arg_1.a.b)), arg_3).b).b;
    let var_2 = _wgslsmith_f_op_f32(select(arg_2.x, func_4(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, -2315i), ~firstLeadingBit(vec2<i32>(u_input.a, u_input.a))), Struct_2(Struct_1(~vec4<u32>(arg_3.a.a.x, 21493u, u_input.c.x, arg_1.b.a.x), arg_3.a.b), Struct_1(arg_1.b.a | vec4<u32>(1u, arg_1.b.a.x, arg_1.b.a.x, 98001u), func_4(vec2<i32>(var_1.a.b, u_input.a), Struct_2(Struct_1(vec4<u32>(55686u, arg_1.b.a.x, var_1.b.a.x, 4294967295u), -2147483647i), Struct_1(vec4<u32>(var_1.a.a.x, 29971u, 12666u, 0u), arg_1.a.b), var_1.c, vec4<u32>(1u, 0u, arg_3.a.a.x, 4294967295u), arg_3.e)).d.b), (arg_3.a.a.x >> (87723u % 32u)) >> ((1u >> (u_input.b % 32u)) % 32u), select(u_input.c ^ vec4<u32>(1u, 4294967295u, arg_1.b.a.x, 11783u), reverseBits(vec4<u32>(arg_0.x, 39407u, 2254u, u_input.b)), arg_3.e.x && false), var_1.e)).c.x, all(!(!vec4<bool>(arg_3.e.x, false, true, var_1.e.x)))));
    return func_4(_wgslsmith_add_vec2_i32(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(-89991i, u_input.a), vec2<i32>(917i, arg_1.a.b))), min(min(vec2<i32>(arg_3.b.b, u_input.a), vec2<i32>(-1i, 55345i)) >> (~vec2<u32>(arg_0.x, 4294967295u) % vec2<u32>(32u)), vec2<i32>(-45601i, 1i << (1u % 32u)))), Struct_2(Struct_1(arg_0 >> (vec4<u32>(64677u, u_input.b, arg_3.a.a.x, arg_1.b.a.x) % vec4<u32>(32u)), var_1.a.b), func_4(reverseBits(vec2<i32>(arg_3.b.b, -15689i) >> (vec2<u32>(arg_0.x, 0u) % vec2<u32>(32u))), Struct_2(arg_3.a, arg_3.b, firstLeadingBit(arg_1.b.a.x), countOneBits(vec4<u32>(arg_0.x, var_1.d.x, var_1.b.a.x, arg_3.a.a.x)), !arg_3.e)).d, 1u, _wgslsmith_clamp_vec4_u32(~arg_1.b.a, vec4<u32>(1u, arg_3.b.a.x, arg_3.b.a.x, 0u) & arg_3.a.a, func_1(27177u, vec4<f32>(-753f, arg_2.x, var_2, arg_2.x)).a) & _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.a.x, 54001u, u_input.b, 0u), vec4<u32>(3033u, 21664u, 64309u, 85343u)), !arg_3.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.c, func_5(!vec2<bool>(u_input.c.x > u_input.b, false), func_4(~min(vec2<i32>(u_input.a, 10911i), vec2<i32>(u_input.a, u_input.a)), Struct_2(func_1(u_input.b, vec4<f32>(-1770f, 747f, 132f, 596f)), Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.c.x, 44968u), u_input.a), ~u_input.b, select(u_input.c, vec4<u32>(u_input.b, 0u, u_input.b, 0u), true), vec3<bool>(true, true, true))), ~(_wgslsmith_sub_u32(1u, u_input.c.x) ^ u_input.b), Struct_4(u_input.b, Struct_2(func_4(vec2<i32>(u_input.a, u_input.a), Struct_2(Struct_1(vec4<u32>(1u, 38237u, u_input.c.x, 44019u), 0i), Struct_1(u_input.c, 48026i), 1u, vec4<u32>(0u, 83548u, 4745u, u_input.b), vec3<bool>(true, true, false))).d, Struct_1(vec4<u32>(u_input.b, 4294967295u, 25788u, 35584u), -1i), _wgslsmith_div_u32(u_input.c.x, u_input.c.x), u_input.c, vec3<bool>(false, false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, -596f, -2163f))), func_4(vec2<i32>(-1i, 1i), func_4(vec2<i32>(u_input.a, u_input.a), Struct_2(Struct_1(u_input.c, -19886i), Struct_1(u_input.c, 56096i), 41581u, u_input.c, vec3<bool>(true, true, true))).b).d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 930f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1832f, 568f)))))))), Struct_2(Struct_1(max(select(vec4<u32>(u_input.b, 0u, u_input.c.x, u_input.b), vec4<u32>(u_input.c.x, 19090u, 0u, 0u), vec4<bool>(false, false, false, true)), u_input.c ^ u_input.c), u_input.a), Struct_1(u_input.c, -81479i), ~(u_input.c.x & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), u_input.c.xzw)), vec4<u32>(~u_input.b, u_input.b, ~22014u, _wgslsmith_mult_u32(17571u, 8925u)), select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, false, false)), true, false), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.c.x);
    let var_2 = Struct_4(1u, var_0.b, _wgslsmith_f_op_vec3_f32(sign(func_6(vec4<u32>(~26198u, u_input.c.x, 0u, 38761u), Struct_3(var_0.b.b, func_6(var_0.d.a, Struct_3(var_0.d, var_0.b.a), vec2<f32>(var_0.c.x, -967f), Struct_2(Struct_1(vec4<u32>(0u, 18874u, 4294967295u, u_input.c.x), 0i), var_0.d, u_input.c.x, vec4<u32>(36669u, 88130u, 4294967295u, 1u), var_0.b.e)).d), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_1) - _wgslsmith_div_vec2_f32(var_0.c.yy, vec2<f32>(var_1, var_0.c.x))), func_4(vec2<i32>(-41559i, u_input.a) & vec2<i32>(-3373i, u_input.a), var_0.b).b).c)), var_0.d);
    var_0 = func_6(max(~(~vec4<u32>(0u, 1u, u_input.b, u_input.c.x)), u_input.c), Struct_3(var_0.b.b, func_2()), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.c.zx)), vec2<f32>(1157f, _wgslsmith_f_op_f32(var_1 * -1163f))), var_0.b);
    var_0 = func_6(var_2.d.a, Struct_3(func_4(max(max(vec2<i32>(-56654i, var_2.b.a.b), vec2<i32>(u_input.a, var_0.d.b)), -vec2<i32>(u_input.a, var_2.d.b)), var_2.b).d, var_2.d), var_0.c.xy, func_4(_wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.a, var_0.b.a.b), vec2<i32>(-2147483647i, u_input.a), false), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.b.b.b, 20953i), vec2<i32>(var_0.b.b.b, var_2.b.b.b), vec2<i32>(-19311i, u_input.a))) & vec2<i32>(func_2().b, select(2147483647i, 56903i, var_0.b.e.x)), func_4(max(abs(vec2<i32>(u_input.a, var_2.b.a.b)), _wgslsmith_add_vec2_i32(vec2<i32>(25257i, 19193i), vec2<i32>(var_0.b.a.b, -1i))), func_6(_wgslsmith_mod_vec4_u32(u_input.c, var_0.d.a), func_5(var_2.b.e.xx, Struct_4(var_2.a, var_0.b, vec3<f32>(var_2.c.x, -1000f, 190f), Struct_1(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, var_2.d.a.x), var_2.d.b)), 50166u, var_2), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, -1394f), var_2.c.zz, var_0.b.e.x)), var_0.b).b).b).b);
    var var_3 = vec2<i32>(-_wgslsmith_sub_i32(46734i, 2147483647i), -1i);
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-300f, _wgslsmith_f_op_f32(385f * _wgslsmith_f_op_f32(-var_2.c.x)), var_0.c.x));
}

