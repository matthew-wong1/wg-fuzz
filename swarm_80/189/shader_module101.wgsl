struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    return 226f;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1091f, _wgslsmith_f_op_f32(func_3(vec4<u32>(0u, 4294967295u, 4294967295u, 128145u), Struct_3(vec3<f32>(-883f, 855f, -1017f), vec3<bool>(false, false, true), vec4<f32>(-637f, 1272f, -734f, -828f), 796f, 0i), Struct_1(true, vec3<i32>(45276i, -76298i, -21145i)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-136f, 1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1917f - 1020f), -627f, true)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(158f)))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1282f, 512f, 2090f) + vec3<f32>(691f, 2022f, 2647f))) * vec3<f32>(_wgslsmith_f_op_f32(step(1113f, 981f)), _wgslsmith_f_op_f32(f32(-1f) * -1117f), _wgslsmith_f_op_f32(round(-1271f)))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-666f + -774f), _wgslsmith_f_op_f32(-356f * 1506f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1419f * 1355f))), vec3<bool>(any(vec3<bool>(true, false, false)) | true, select(true, true, false) && true, true))));
    let var_1 = vec3<bool>(false, all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !all(vec2<bool>(false, false)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1376f, var_0.x), vec3<f32>(var_0.x, var_0.x, -450f)))))));
    return Struct_1(any(select(!vec4<bool>(var_1.x, var_1.x, false, false), !vec4<bool>(false, false, var_1.x, var_1.x), var_1.x)), firstTrailingBit(vec3<i32>(~(u_input.a | 801i), ~(~u_input.a), u_input.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(~vec4<i32>(0i, arg_1.b.x, 37874i, 1i)), -abs(vec4<i32>(u_input.a, -2147483647i, -6495i, 4436i))), firstTrailingBit(vec4<i32>(arg_1.b.x, -52752i, 0i, 17664i) ^ vec4<i32>(-5429i, -1i, u_input.a, arg_1.b.x)) & countOneBits(vec4<i32>(arg_0.c.b.x, -2147483647i, arg_0.c.b.x, arg_0.c.b.x) ^ vec4<i32>(arg_1.b.x, 50743i, arg_1.b.x, 1i))) >> (abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, 4294967295u), arg_0.b), 257u, arg_0.b.x, arg_0.b.x)) % vec4<u32>(32u));
    let var_1 = arg_1.a;
    let var_2 = countOneBits(_wgslsmith_mod_u32((arg_0.b.x ^ arg_0.b.x) >> (~arg_0.a % 32u), arg_0.b.x >> ((arg_0.b.x << (arg_0.b.x % 32u)) % 32u))) >> (arg_0.b.x % 32u);
    var var_3 = Struct_4(arg_0);
    var var_4 = Struct_4(arg_0);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(461f, -1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, arg_1.b.x, arg_1.b.x, arg_1.a), Struct_3(vec3<f32>(-1072f, 770f, 420f), vec3<bool>(arg_0.a, arg_0.a, true), vec4<f32>(643f, 470f, 1078f, -460f), -136f, arg_0.b.x), Struct_1(arg_2.x, arg_0.b))))), false)), -833f) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-705f, -455f)))), -1026f));
    return (((select(vec4<i32>(-1i, -11812i, -49603i, arg_1.c.b.x), vec4<i32>(-43549i, 11663i, u_input.a, 48566i), vec4<bool>(arg_1.c.a, true, false, false)) >> (vec4<u32>(5508u, arg_1.a, 6648u, 26409u) % vec4<u32>(32u))) & (firstTrailingBit(vec4<i32>(0i, 0i, 30256i, 1i)) & countOneBits(vec4<i32>(u_input.a, u_input.a, 2147483647i, arg_1.c.b.x)))) ^ (_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -11847i, arg_0.b.x, 1i), reverseBits(vec4<i32>(arg_0.b.x, 26233i, arg_0.b.x, -47920i))) >> (((vec4<u32>(0u, 13459u, arg_1.a, arg_1.a) << (vec4<u32>(4294967295u, 31158u, arg_1.b.x, 7933u) % vec4<u32>(32u))) >> (min(vec4<u32>(1u, 43122u, 0u, arg_1.b.x), vec4<u32>(5069u, 0u, 4294967295u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)))) >> (~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, 4294967295u, 4294967295u, arg_1.a)), ~select(vec4<u32>(74083u, 1u, 0u, arg_1.a), vec4<u32>(4294967295u, arg_1.a, arg_1.a, 32413u), true)) % vec4<u32>(32u));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_mod_u32(~0u, _wgslsmith_mod_u32(arg_1.a, arg_1.a)), vec3<u32>(_wgslsmith_clamp_u32(8889u, arg_1.b.x, arg_1.a) | 25358u, arg_1.b.x, 1u), func_4(Struct_2(firstLeadingBit(arg_1.a), vec3<u32>(82485u, 62250u, 8250u) & arg_1.b, Struct_1(arg_1.c.a, vec3<i32>(arg_2, -40917i, 2147483647i))), func_4(arg_1, Struct_1(false, arg_0.yzy), _wgslsmith_f_op_f32(step(797f, -100f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -526f) + _wgslsmith_f_op_f32(-636f * -500f)))));
    let var_1 = Struct_4(Struct_2(abs(1u), vec3<u32>(4294967295u | var_0.a.a, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, arg_1.a, 1u, 1u), vec4<u32>(101106u, 0u, 22786u, arg_1.b.x))) << (~arg_1.b % vec3<u32>(32u)), var_0.a.c));
    var var_2 = var_0.a.c.b.x;
    var_0 = var_1;
    var var_3 = vec2<bool>(any(select(select(select(vec3<bool>(true, arg_1.c.a, arg_1.c.a), vec3<bool>(false, false, true), var_1.a.c.a), select(vec3<bool>(var_0.a.c.a, true, true), vec3<bool>(var_1.a.c.a, var_1.a.c.a, false), vec3<bool>(true, arg_1.c.a, var_0.a.c.a)), false), select(vec3<bool>(true, false, true), select(vec3<bool>(arg_1.c.a, false, arg_1.c.a), vec3<bool>(true, var_1.a.c.a, true), arg_1.c.a), arg_1.c.a || true), var_0.a.c.a)), !var_1.a.c.a);
    return Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))), vec3<bool>(!((true | var_0.a.c.a) | false), false, false), vec4<f32>(949f, -588f, _wgslsmith_f_op_f32(func_3((vec4<u32>(31941u, 26876u, var_0.a.a, arg_1.a) << (vec4<u32>(var_0.a.a, arg_1.b.x, arg_1.a, 0u) % vec4<u32>(32u))) << (vec4<u32>(4294967295u, 0u, arg_1.a, 60073u) % vec4<u32>(32u)), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(759f, 823f, 431f)), !vec3<bool>(true, true, var_3.x), vec4<f32>(1000f, -1000f, -713f, 1142f), _wgslsmith_f_op_f32(f32(-1f) * -293f), 22946i), func_2())), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -62111i, -10787i, -23182i) >> ((vec4<u32>(var_1.a.a, 1u, var_0.a.a, 4294967295u) >> (vec4<u32>(1u, 7642u, 4294967295u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), arg_0));
}

fn func_7(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_4 {
    var var_0 = abs(_wgslsmith_sub_i32(-9864i, 3768i));
    var_0 = arg_2.e;
    var var_1 = Struct_4(Struct_2(1u, ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(864u, 32044u, 59290u), vec3<u32>(0u, 6929u, 8652u)), select(vec3<u32>(4294967295u, 51198u, 4294967295u), vec3<u32>(15962u, 1u, 7719u), arg_2.b.x), ~vec3<u32>(76360u, 2930u, 8456u)), func_4(Struct_2(_wgslsmith_mult_u32(78694u, 1u), abs(vec3<u32>(91443u, 41139u, 1u)), Struct_1(arg_2.b.x, vec3<i32>(arg_0, -1i, 44911i))), func_2(), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x)))));
    let var_2 = select(u_input.a, arg_0, true);
    var_1 = Struct_4(var_1.a);
    return Struct_4(Struct_2(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(var_1.a.b.x, 20492u), vec2<u32>(var_1.a.b.x, 4294967295u), var_1.a.c.a), ~(~vec2<u32>(var_1.a.a, 52166u))), select(var_1.a.b, ~vec3<u32>(var_1.a.b.x, var_1.a.a, 45708u), vec3<bool>(all(vec2<bool>(true, arg_2.b.x)), true, var_1.a.c.a)), func_2()));
}

fn func_1(arg_0: Struct_4) -> u32 {
    var var_0 = Struct_4(arg_0.a);
    let var_1 = vec4<i32>(~var_0.a.c.b.x, ~_wgslsmith_clamp_i32(2147483647i, u_input.a | -35200i, _wgslsmith_mult_i32(-5269i, -29367i)) << (~_wgslsmith_div_u32(arg_0.a.a, 4294967295u) % 32u), 31809i, i32(-1i) * -26720i);
    var_0 = func_7(_wgslsmith_clamp_i32(25493i, ~(-reverseBits(u_input.a)), var_0.a.c.b.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(209f, 989f, 739f))), vec3<f32>(1f, 1f, 1f), vec3<bool>(!arg_0.a.c.a, var_0.a.c.a, arg_0.a.c.a))))), func_6(func_5(func_4(var_0.a, func_2(), -1998f), arg_0.a, !select(vec3<bool>(false, true, arg_0.a.c.a), vec3<bool>(var_0.a.c.a, var_0.a.c.a, arg_0.a.c.a), true)), Struct_2(90135u, arg_0.a.b, Struct_1(true, func_5(Struct_1(true, arg_0.a.c.b), var_0.a, vec3<bool>(false, true, var_0.a.c.a)).yww)), reverseBits(-(~var_1.x))));
    var_0 = func_7(func_4(Struct_2(_wgslsmith_div_u32(~0u, ~720u), min(var_0.a.b, ~vec3<u32>(1u, 4294967295u, 4294967295u)), func_7(-var_1.x, vec3<f32>(-232f, -268f, 1357f), Struct_3(vec3<f32>(-1622f, 1000f, 856f), vec3<bool>(arg_0.a.c.a, var_0.a.c.a, false), vec4<f32>(-219f, 1984f, 326f, 356f), -837f, var_1.x)).a.c), func_7(25861i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1004f, 1219f, 1058f) + vec3<f32>(543f, -1105f, 1640f))), Struct_3(vec3<f32>(455f, 1217f, -197f), !vec3<bool>(false, true, var_0.a.c.a), vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_f32(f32(-1f) * -175f), select(arg_0.a.c.b.x, 36291i, false))).a.c, _wgslsmith_f_op_f32(-1376f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - 2318f))))).b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2123f, 613f, -1000f) - vec3<f32>(157f, 797f, 128f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -250f, 1187f)))))), func_6(var_1, func_7(u_input.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-147f, -710f, -479f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-511f, 577f, -1000f)), vec3<bool>(true, arg_0.a.c.a, true))), func_6(select(vec4<i32>(var_1.x, 1i, var_0.a.c.b.x, var_0.a.c.b.x), var_1, var_0.a.c.a), func_7(var_1.x, vec3<f32>(-241f, 1366f, -928f), Struct_3(vec3<f32>(1000f, -615f, -830f), vec3<bool>(true, false, arg_0.a.c.a), vec4<f32>(1587f, 919f, -1367f, -246f), -1098f, -1i)).a, -17059i)).a, _wgslsmith_mod_i32(arg_0.a.c.b.x, (i32(-1i) * -2147483647i) & u_input.a)));
    var var_2 = arg_0.a.b.x;
    return 1u;
}

fn func_8(arg_0: u32) -> Struct_2 {
    let var_0 = vec3<bool>(false, true, any(vec3<bool>(false, !select(true, false, true), (9895i ^ u_input.a) <= ~u_input.a)));
    var var_1 = func_7(~(-u_input.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(755f + 526f), _wgslsmith_div_f32(-542f, -509f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1682f) + func_6(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_2(43891u, vec3<u32>(1u, 1u, arg_0), Struct_1(true, vec3<i32>(1i, u_input.a, 2147483647i))), -14237i).c.x), _wgslsmith_f_op_f32(-1463f - 1f)))), Struct_3(vec3<f32>(_wgslsmith_f_op_f32(1991f * -863f), _wgslsmith_f_op_f32(-849f * _wgslsmith_f_op_f32(ceil(-1941f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -592f))), select(vec3<bool>(true, func_2().a, var_0.x), var_0, !var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1037f)), _wgslsmith_f_op_f32(max(-808f, 2194f)), _wgslsmith_f_op_f32(-849f - 1000f), -773f)), 1000f, u_input.a));
    var_1 = func_7(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1628f, 1227f, -1000f))))))), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(346f, -899f, 283f), vec3<f32>(-1000f, 1004f, 454f))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1839f, 1165f, 1278f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1458f), func_6(vec4<i32>(1i, var_1.a.c.b.x, u_input.a, u_input.a), Struct_2(var_1.a.a, var_1.a.b, Struct_1(var_0.x, vec3<i32>(u_input.a, var_1.a.c.b.x, u_input.a))), var_1.a.c.b.x).a.x, _wgslsmith_f_op_f32(1371f + 2303f))), select(func_6(~vec4<i32>(-1i, u_input.a, 14988i, var_1.a.c.b.x), func_7(-7307i, vec3<f32>(898f, -1270f, 2967f), Struct_3(vec3<f32>(581f, 169f, 1000f), vec3<bool>(var_0.x, true, var_1.a.c.a), vec4<f32>(-911f, 1000f, -924f, 1236f), 625f, 1i)).a, var_1.a.c.b.x).b, !(!vec3<bool>(var_1.a.c.a, true, true)), !(!var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1027f, _wgslsmith_f_op_f32(-2882f + 330f), _wgslsmith_f_op_f32(min(773f, 128f)), _wgslsmith_f_op_f32(f32(-1f) * -603f))), _wgslsmith_f_op_f32(func_3(~(vec4<u32>(4294967295u, 161u, var_1.a.b.x, 6181u) | vec4<u32>(var_1.a.a, arg_0, arg_0, 21314u)), Struct_3(vec3<f32>(685f, -616f, 1134f), vec3<bool>(false, false, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(809f, -1324f, -1306f, 535f) - vec4<f32>(1650f, -436f, -792f, -1356f)), -616f, u_input.a), func_7(_wgslsmith_sub_i32(-3640i, -5242i), _wgslsmith_div_vec3_f32(vec3<f32>(621f, 405f, 1536f), vec3<f32>(-945f, 356f, -862f)), func_6(vec4<i32>(var_1.a.c.b.x, -2147483647i, u_input.a, 7790i), Struct_2(arg_0, vec3<u32>(4294967295u, 36223u, arg_0), var_1.a.c), u_input.a)).a.c)), var_1.a.c.b.x));
    let var_2 = Struct_2(((firstTrailingBit(var_1.a.a) & 6049u) >> (_wgslsmith_clamp_u32(~var_1.a.b.x, arg_0, reverseBits(var_1.a.a)) % 32u)) | ~countOneBits(reverseBits(arg_0)), vec3<u32>(var_1.a.a, arg_0, 4294967295u) >> (vec3<u32>(reverseBits(arg_0) ^ 1u, countOneBits(var_1.a.a), _wgslsmith_dot_vec3_u32(var_1.a.b, var_1.a.b) | arg_0) % vec3<u32>(32u)), func_4(Struct_2(reverseBits(func_1(Struct_4(Struct_2(var_1.a.a, var_1.a.b, Struct_1(true, var_1.a.c.b))))), abs(vec3<u32>(var_1.a.a, var_1.a.a, 0u) ^ vec3<u32>(arg_0, 0u, var_1.a.b.x)), Struct_1(!var_1.a.c.a, firstTrailingBit(var_1.a.c.b))), func_2(), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-829f * -873f)))))));
    let var_3 = Struct_3(func_6(_wgslsmith_mod_vec4_i32(vec4<i32>(-var_1.a.c.b.x, ~1i, _wgslsmith_sub_i32(var_1.a.c.b.x, var_1.a.c.b.x), -2147483647i), firstLeadingBit(min(vec4<i32>(var_2.c.b.x, 1i, var_2.c.b.x, 1i), vec4<i32>(-1i, 1i, u_input.a, u_input.a)))), var_1.a, 1i).c.xxz, !vec3<bool>(true, func_7(u_input.a, vec3<f32>(1061f, -1372f, 358f), Struct_3(vec3<f32>(-259f, 176f, -784f), vec3<bool>(false, var_1.a.c.a, var_1.a.c.a), vec4<f32>(672f, 1190f, 592f, -1947f), 1134f, 0i)).a.c.b.x <= ~1i, var_0.x), vec4<f32>(303f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1f + 698f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f) - _wgslsmith_f_op_f32(round(367f))))), 199f, var_1.a.c.b.x);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), !any(vec4<bool>(true, true, true, true))));
    var_0 = true;
    var var_1 = any(vec2<bool>(true, true));
    var var_2 = func_8(~(1u >> (func_1(Struct_4(Struct_2(1u, vec3<u32>(0u, 4294967295u, 1u), Struct_1(true, vec3<i32>(0i, u_input.a, 2147483647i))))) % 32u)));
    let var_3 = Struct_4(func_8(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_div_u32(83183u, var_2.a), ~0u), var_2.b.x)));
    let var_4 = var_3.a;
    let var_5 = vec4<u32>(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, var_4.b.x), ~countOneBits(~23620u)), func_1(var_3), ~min(var_2.b.x, func_7(-2147483647i >> (1u % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2438f, -2131f)), Struct_3(vec3<f32>(-419f, -433f, -1000f), vec3<bool>(var_4.c.a, false, false), vec4<f32>(-756f, -511f, -189f, 1000f), -1198f, 0i)).a.b.x));
    let var_6 = vec4<bool>(true, true, !var_4.c.a, ((var_4.c.a | func_8(var_3.a.b.x).c.a) || var_4.c.a) || true);
    var_2 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_5.x), _wgslsmith_div_u32(~abs(func_8(var_2.a).a), 55299u));
}

