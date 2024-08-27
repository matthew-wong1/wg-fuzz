struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(-1i, arg_1.a.b.x, 0i)), min(~vec3<i32>(arg_1.a.c, -74746i, 2147483647i), vec3<i32>(-24491i, 14283i, -1712i)) >> (((vec3<u32>(25870u, u_input.b.x, 1u) >> (u_input.c.wyx % vec3<u32>(32u))) << (~vec3<u32>(u_input.b.x, 15603u, 55485u) % vec3<u32>(32u))) % vec3<u32>(32u)), countOneBits(reverseBits(vec3<i32>(-76791i, arg_1.d.b.x, 46823i)))), _wgslsmith_mult_vec3_i32(vec3<i32>(min(-2147483647i, 50650i), -(arg_1.c.x & arg_1.a.c), _wgslsmith_sub_i32(select(-1i, arg_1.a.c, arg_1.a.a), _wgslsmith_clamp_i32(arg_1.a.c, -10797i, arg_1.a.b.x))), ~(-countOneBits(vec3<i32>(0i, -1i, -23453i)))));
    let var_1 = max(~(~(~min(vec2<u32>(41222u, 98981u), vec2<u32>(arg_1.b, 16091u)))), vec2<u32>(~4294967295u, 25604u));
    var var_2 = 69385u;
    var_2 = 1u;
    var_0 = arg_1.d.c;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_div_f32(-257f, 1260f), _wgslsmith_f_op_f32(-arg_0) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(721f - arg_0), _wgslsmith_f_op_f32(f32(-1f) * -125f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-509f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -149f), _wgslsmith_f_op_f32(arg_0 * arg_0))) + 1386f))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(countOneBits(u_input.a.x), _wgslsmith_mult_u32(61456u, u_input.e), ~0u, u_input.b.x), ~_wgslsmith_div_vec4_u32(u_input.b, u_input.c)), ~_wgslsmith_mult_vec4_u32(~u_input.d, vec4<u32>(1u, u_input.c.x, u_input.a.x, 41666u) | u_input.d));
    let var_1 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(20320i, arg_0.x), -718i, _wgslsmith_mod_i32(arg_0.x, -21770i), reverseBits(arg_0.x)), -vec4<i32>(-1i, arg_0.x, 45604i, 0i))) & firstTrailingBit(arg_0);
    let var_2 = Struct_2(Struct_1(any(!vec3<bool>(false, true, arg_1.x)), arg_0.ww, var_1.x), _wgslsmith_sub_u32(reverseBits(_wgslsmith_add_u32(var_0, ~u_input.d.x)), _wgslsmith_mod_u32(max(4294967295u, abs(4294967295u)), _wgslsmith_sub_u32(1u, u_input.d.x))), ~_wgslsmith_mult_vec3_i32(arg_0.ywy, -vec3<i32>(var_1.x, arg_0.x, var_1.x)), Struct_1(all(vec2<bool>(false, false)), vec2<i32>(_wgslsmith_add_i32(-36938i, _wgslsmith_dot_vec3_i32(vec3<i32>(18797i, arg_0.x, 59294i), vec3<i32>(1i, -25300i, 39552i))), select(_wgslsmith_mod_i32(var_1.x, var_1.x), abs(-16813i), true)), var_1.x), select(arg_1.wzx, !vec3<bool>(!arg_1.x, true, true), arg_1.x));
    var var_3 = var_1;
    var var_4 = Struct_2(Struct_1(!(!(var_2.a.a == var_2.e.x)), abs(var_3.zw), -(~var_3.x)), select(0u << (var_2.b % 32u), _wgslsmith_sub_u32(abs(~1053u), var_2.b << (~var_2.b % 32u)), var_2.d.a), var_1.yzz, var_2.a, var_2.e);
    return select(_wgslsmith_mult_vec3_i32(reverseBits(var_1.wxw), select(max(vec3<i32>(-32453i, 44162i, var_3.x), _wgslsmith_div_vec3_i32(var_1.yww, var_3.www)), _wgslsmith_add_vec3_i32(var_3.zxw, var_1.yyx) >> (~vec3<u32>(var_2.b, 1u, 0u) % vec3<u32>(32u)), !any(vec3<bool>(true, false, arg_1.x)))), var_3.zww << (~vec3<u32>(78544u, u_input.b.x, 0u << (1u % 32u)) % vec3<u32>(32u)), arg_1.x);
}

fn func_2(arg_0: u32) -> vec3<i32> {
    return countOneBits(func_4(min(-(~vec4<i32>(18631i, -31917i, 0i, 0i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(7779i, 26567i, 21436i, 1i), vec4<i32>(14846i, 1i, -6616i, 9357i), vec4<i32>(1i, -2147483647i, 41530i, 73474i))), vec4<bool>(true, _wgslsmith_f_op_f32(func_3(-592f, Struct_2(Struct_1(true, vec2<i32>(-20995i, -24191i), 0i), 4294967295u, vec3<i32>(1i, 33546i, 14998i), Struct_1(true, vec2<i32>(2147483647i, -1i), -6617i), vec3<bool>(false, true, false)))) >= _wgslsmith_f_op_f32(-282f * 949f), any(vec3<bool>(true, true, true)), false)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    let var_0 = -436f;
    let var_1 = Struct_2(Struct_1(all(!(!arg_2.e)), vec2<i32>(arg_2.a.c, select(i32(-1i) * -1i, 1i, false)), arg_1.c), reverseBits(~arg_2.b << ((_wgslsmith_mod_u32(arg_2.b, arg_2.b) | abs(u_input.c.x)) % 32u)), ~(select(countOneBits(vec3<i32>(arg_1.b.x, arg_1.b.x, 1i)), -vec3<i32>(arg_2.a.b.x, 2147483647i, 0i), !vec3<bool>(true, arg_1.a, arg_3)) & (vec3<i32>(arg_2.c.x, -63398i, -54523i) | func_2(0u))), arg_1, !select(select(!vec3<bool>(arg_3, true, false), select(vec3<bool>(arg_2.d.a, false, true), vec3<bool>(arg_2.a.a, false, arg_3), arg_1.a), arg_2.e), vec3<bool>(arg_1.a, true, arg_1.c != arg_1.b.x), vec3<bool>(var_0 >= 168f, any(vec3<bool>(false, arg_2.d.a, arg_1.a)), arg_3)));
    let var_2 = !(0i < arg_2.c.x);
    var var_3 = u_input.a;
    return Struct_2(Struct_1(arg_2.d.a, vec2<i32>((var_1.a.c >> (4294967295u % 32u)) >> ((arg_2.b << (0u % 32u)) % 32u), arg_1.b.x), arg_1.c), 81278u, func_2(select(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.x, var_1.b, 1397u), vec4<u32>(var_1.b, 4294967295u, 40199u, var_3.x))), var_1.b, true)), arg_1, select(select(vec3<bool>(true, var_2, all(vec3<bool>(arg_3, false, var_2))), select(select(vec3<bool>(false, false, true), var_1.e, vec3<bool>(var_2, arg_1.a, true)), vec3<bool>(var_1.a.a, arg_3, arg_3), all(vec4<bool>(var_2, true, arg_2.d.a, arg_3))), vec3<bool>(arg_2.e.x, any(var_1.e), false)), !(!select(vec3<bool>(false, false, true), var_1.e, var_1.a.a)), arg_3));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = func_1(arg_0.wyw, func_1(_wgslsmith_f_op_vec3_f32(min(arg_0.zxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1279f, arg_0.x, arg_0.x)))), arg_1.d, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.xzz - vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), func_1(_wgslsmith_f_op_vec3_f32(arg_0.zyy + vec3<f32>(-647f, 284f, arg_0.x)), arg_1.d, func_1(vec3<f32>(arg_0.x, -1404f, arg_0.x), arg_1.a, Struct_2(Struct_1(false, arg_1.a.b, arg_2), 47560u, arg_1.c, Struct_1(arg_1.d.a, arg_1.a.b, arg_1.c.x), arg_3.xyx), false), true).d, func_1(vec3<f32>(arg_0.x, arg_0.x, 1197f), arg_1.a, arg_1, true), true), false).a, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.wyx - vec3<f32>(arg_0.x, arg_0.x, -1286f))), func_1(vec3<f32>(-223f, _wgslsmith_f_op_f32(func_3(533f, Struct_2(Struct_1(true, arg_1.d.b, -1i), 4294967295u, vec3<i32>(arg_1.a.b.x, arg_2, -1i), Struct_1(false, vec2<i32>(arg_1.d.b.x, arg_1.c.x), arg_1.c.x), arg_1.e))), arg_0.x), Struct_1(arg_3.x, func_4(vec4<i32>(42335i, arg_1.c.x, arg_2, 22272i), vec4<bool>(true, true, true, true)).zz, min(arg_2, 43295i)), arg_1, all(arg_1.e.yx)).d, Struct_2(arg_1.a, arg_1.b, vec3<i32>(arg_2 & arg_1.a.c, ~arg_1.d.c, -28903i), arg_1.a, vec3<bool>(arg_3.x, true, arg_1.d.b.x >= 2147483647i)), !arg_1.e.x), all(!func_1(_wgslsmith_f_op_vec3_f32(-arg_0.zzw), arg_1.d, func_1(arg_0.yxw, Struct_1(arg_1.a.a, arg_1.c.zz, 21325i), Struct_2(Struct_1(false, vec2<i32>(2147483647i, arg_1.d.c), 29957i), 1u, vec3<i32>(arg_2, arg_2, arg_2), Struct_1(true, vec2<i32>(arg_1.a.c, arg_1.a.b.x), arg_1.a.b.x), arg_1.e), false), !arg_1.e.x).e)).d;
    var var_1 = arg_3;
    let var_2 = arg_1;
    var var_3 = arg_1;
    var_3 = arg_1;
    return Struct_1(-604f < arg_0.x, _wgslsmith_add_vec2_i32(var_3.c.yy, _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(-2147483647i, arg_2), var_2.c.yx), _wgslsmith_mult_vec2_i32(vec2<i32>(67915i, 21092i), -var_2.d.b))), ~(~arg_2 & -1390i));
}

fn func_6(arg_0: Struct_1) -> f32 {
    var var_0 = ~(~u_input.d);
    var var_1 = !all(select(select(vec4<bool>(true, arg_0.a, false, true), vec4<bool>(true, false, false, false), true), select(!vec4<bool>(true, arg_0.a, arg_0.a, true), select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, false, false, true), vec4<bool>(true, arg_0.a, arg_0.a, arg_0.a)), select(vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), !vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true)));
    var_1 = true;
    let var_2 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-953f * -652f), -1000f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-852f, 298f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1662f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-823f, 274f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -1517f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1496f + 1000f)))) + -212f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(func_6(func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1291f, 1720f, -135f, 1959f) - vec4<f32>(552f, -119f, -465f, 1725f)), func_1(vec3<f32>(-450f, -107f, 1352f), Struct_1(true, vec2<i32>(2147483647i, 0i), -2147483647i), Struct_2(Struct_1(false, vec2<i32>(-2147483647i, 25509i), 1i), u_input.c.x, vec3<i32>(-2147483647i, -25420i, -11951i), Struct_1(false, vec2<i32>(-1i, -2147483647i), 2147483647i), vec3<bool>(true, true, false)), true), 1i, vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(Struct_1(true, vec2<i32>(-2147483647i, 31181i), -1i)))), 1652f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(387f * _wgslsmith_div_f32(-742f, 461f)), -1810f, 1438f))));
    var var_1 = ~(-2147483647i);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(-1557f, var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(func_6(Struct_1(false, vec2<i32>(-10852i, 1902i), -1i))))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, -1737f, 560f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-725f, 761f, 2168f)), true)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2220f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, 421f), vec3<f32>(var_0.x, 1000f, var_0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1218f, var_0.x, -2292f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, var_0.x, var_0.x))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -465f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-290f, var_0.x, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1040f, -817f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -2143f, 1034f)))), vec3<bool>(true, func_5(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_2(Struct_1(false, vec2<i32>(-26196i, -2147483647i), 12000i), 31719u, vec3<i32>(-1i, 37974i, -1i), Struct_1(false, vec2<i32>(-2147483647i, -2147483647i), -10521i), vec3<bool>(false, true, false)), 0i, vec4<bool>(true, false, false, false)).a, true)))));
    var var_2 = Struct_1(false, ~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 1i), ~vec2<i32>(0i, 14084i)), vec2<i32>(~8675i, _wgslsmith_add_i32(0i, -1i))), -(~(-1i)));
    let var_3 = !vec4<bool>(!var_2.a, _wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_mult_u32(u_input.d.x, u_input.b.x), u_input.c.x >> (4294967295u % 32u)) >= ((u_input.d.x | 0u) ^ _wgslsmith_sub_u32(28271u, 0u)), !var_2.a, all(select(select(vec3<bool>(var_2.a, var_2.a, var_2.a), vec3<bool>(true, false, true), vec3<bool>(var_2.a, false, var_2.a)), func_1(vec3<f32>(572f, var_0.x, var_0.x), Struct_1(true, vec2<i32>(var_2.b.x, var_2.b.x), var_2.b.x), Struct_2(Struct_1(var_2.a, var_2.b, 32298i), u_input.b.x, vec3<i32>(1i, var_2.c, 0i), Struct_1(true, vec2<i32>(35186i, var_2.b.x), var_2.b.x), vec3<bool>(var_2.a, var_2.a, true)), var_2.a).e, func_1(vec3<f32>(var_0.x, -926f, var_0.x), Struct_1(var_2.a, vec2<i32>(2147483647i, -44189i), var_2.b.x), Struct_2(Struct_1(var_2.a, var_2.b, var_2.b.x), 4294967295u, vec3<i32>(var_2.b.x, var_2.c, var_2.c), Struct_1(false, var_2.b, var_2.b.x), vec3<bool>(var_2.a, false, true)), var_2.a).e)));
    let var_4 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(2800f * -1188f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-454f, var_0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, var_0.x))))), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1000f), vec3<f32>(-566f, var_0.x, var_0.x))))), func_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1671f, -1762f, var_0.x)))), Struct_2(func_5(vec4<f32>(var_0.x, var_0.x, -1416f, -274f), Struct_2(Struct_1(var_3.x, vec2<i32>(0i, -20125i), 0i), u_input.e, vec3<i32>(44723i, var_2.c, var_2.c), Struct_1(true, vec2<i32>(var_2.b.x, 889i), var_2.c), var_3.yzw), var_2.b.x, vec4<bool>(var_3.x, var_2.a, var_2.a, var_2.a)), ~u_input.e, vec3<i32>(var_2.b.x, var_2.b.x, 0i) >> (u_input.d.yyy % vec3<u32>(32u)), Struct_1(true, var_2.b, var_2.c), vec3<bool>(true, false, var_3.x)), func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(151f, -257f, 873f))), Struct_1(var_3.x, var_2.b, -2147483647i), func_1(vec3<f32>(-1122f, var_0.x, -407f), Struct_1(var_2.a, vec2<i32>(var_2.b.x, var_2.b.x), var_2.b.x), Struct_2(Struct_1(var_2.a, vec2<i32>(var_2.b.x, -1i), -11379i), 1u, vec3<i32>(-13549i, -1i, -2147483647i), Struct_1(var_3.x, var_2.b, var_2.b.x), vec3<bool>(var_2.a, var_2.a, var_3.x)), var_2.a), func_5(vec4<f32>(435f, var_0.x, var_0.x, var_0.x), Struct_2(Struct_1(true, vec2<i32>(var_2.b.x, 21916i), -40861i), u_input.b.x, vec3<i32>(var_2.b.x, 7013i, var_2.c), Struct_1(var_3.x, vec2<i32>(var_2.c, -2147483647i), var_2.c), vec3<bool>(false, false, var_2.a)), 52404i, var_3).a).a.b.x, select(select(vec4<bool>(false, var_2.a, var_3.x, false), var_3, var_3), var_3, !var_3)), func_1(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1649f), 1391f), Struct_1(func_1(vec3<f32>(var_0.x, var_0.x, -108f), Struct_1(var_3.x, var_2.b, 34304i), Struct_2(Struct_1(var_3.x, var_2.b, 2147483647i), u_input.d.x, vec3<i32>(2147483647i, 1i, var_2.c), Struct_1(false, vec2<i32>(0i, -1i), 2147483647i), vec3<bool>(false, false, var_3.x)), true).d.a, abs(var_2.b), var_2.b.x), func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, var_0.x))), func_1(vec3<f32>(444f, 1439f, 473f), Struct_1(false, var_2.b, var_2.c), Struct_2(Struct_1(var_2.a, vec2<i32>(var_2.b.x, -69721i), 0i), u_input.a.x, vec3<i32>(-4907i, 18470i, var_2.b.x), Struct_1(true, var_2.b, -1i), vec3<bool>(var_3.x, var_3.x, var_2.a)), var_2.a).d, Struct_2(Struct_1(true, vec2<i32>(var_2.c, -52382i), 0i), u_input.a.x, vec3<i32>(1i, var_2.c, var_2.c), Struct_1(var_2.a, var_2.b, 25200i), vec3<bool>(false, var_2.a, true)), true), true), all(!(!var_3.xyz))).d, Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.x + var_0.x) >= _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-52444i, -14790i), vec2<i32>(-2147483647i, var_2.c)), ~vec2<i32>(var_2.c, -34223i)), _wgslsmith_clamp_i32(var_2.b.x, ~23978i, func_2(u_input.e).x)), _wgslsmith_div_u32(4294967295u, select(max(76881u, 52352u), abs(u_input.b.x), false)), func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(-29665i, var_2.b.x, var_2.c, 56253i), vec4<i32>(-26938i, -1i, 2147483647i, -1i), vec4<i32>(var_2.c, var_2.c, 0i, -2147483647i)), vec4<bool>(false, false, var_2.a, false)) & _wgslsmith_div_vec3_i32(-vec3<i32>(var_2.b.x, var_2.b.x, var_2.b.x), vec3<i32>(-1i, 2147483647i, var_2.c)), Struct_1(true && (u_input.b.x < u_input.b.x), var_2.b, (var_2.b.x | var_2.c) ^ countOneBits(var_2.b.x)), var_3.wxw), !(max(countOneBits(55566u), u_input.e) >= u_input.b.x));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -737f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))) * -2443f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(2197f * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), u_input.a.x == 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    let var_5 = 12860i;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, u_input.c.x, ~vec3<i32>(reverseBits(func_4(vec4<i32>(var_5, var_4.a.b.x, var_2.b.x, var_5), var_3).x), _wgslsmith_clamp_i32(-26105i, i32(-1i) * -37563i, 53519i), var_4.a.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-368f, -1316f, 1311f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1535f, var_0.x, 510f))))))), ~min(vec4<u32>(1u, ~u_input.b.x, _wgslsmith_div_u32(1u, var_4.b), var_4.b << (21168u % 32u)), u_input.c));
}

