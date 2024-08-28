struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: bool, arg_3: vec3<f32>) -> u32 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_add_i32(~firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(u_input.b, -30272i, 2666i, u_input.a)), -arg_0.x)), ~((arg_0.x | _wgslsmith_sub_i32(-13866i, var_0)) ^ -4686i));
    let var_2 = arg_2;
    var_1 = u_input.a;
    let var_3 = Struct_2(firstLeadingBit(var_0), firstLeadingBit(vec2<u32>(~_wgslsmith_add_u32(26655u, 13153u), 68359u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, 910f, 706f, arg_3.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, -1203f, 696f, 850f) - vec4<f32>(arg_3.x, arg_3.x, 606f, 1000f)))), ~(~1u), arg_0.wzw, vec3<bool>(!var_2 & true, all(!vec3<bool>(arg_1, true, true)), true), _wgslsmith_mod_i32(reverseBits(-6664i), 44858i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(442f))))), arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -374f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.x)), _wgslsmith_f_op_f32(max(arg_3.x, arg_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -979f)) * _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-arg_3.x)))), vec2<f32>(arg_3.x, -665f));
    return min(~28938u, 0u) << (var_3.b.x % 32u);
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = arg_0.d.x;
    let var_1 = Struct_2(~_wgslsmith_sub_i32(~(-2147483647i), ~arg_0.c.x), vec2<u32>(~4294967295u, func_3(vec4<i32>(-26989i & arg_0.c.x, 2147483647i, _wgslsmith_div_i32(arg_0.e, arg_0.c.x), 32993i), arg_0.d.x, !arg_0.d.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1009f), 1530f, 2107f))), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.a)))), vec2<f32>(672f, 884f));
    var_0 = !var_1.c.d.x;
    let var_2 = Struct_2(var_1.c.e, ~var_1.b, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.a.x, arg_0.a.x, arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1164f)), vec4<f32>(_wgslsmith_f_op_f32(var_1.e.x + arg_0.a.x), -443f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -604f))), 4294967295u, abs(vec3<i32>(-1i) * -vec3<i32>(-16581i, -16397i, var_1.c.c.x)), vec3<bool>(var_1.c.d.x, arg_0.d.x, any(select(vec4<bool>(false, false, true, arg_0.d.x), vec4<bool>(arg_0.d.x, true, false, false), true))), u_input.b), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1482f, -778f, arg_0.a.x, var_1.e.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0.a))))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1526f), var_1.c.a.x))));
    var var_3 = -(~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.e, u_input.b, var_1.a), vec3<i32>(2147483647i, var_2.c.c.x, arg_0.e)), _wgslsmith_div_i32(0i, -1565i), firstTrailingBit(var_1.c.c.x), -2147483647i), vec4<i32>(-1i) * -vec4<i32>(1i, -15042i, u_input.a, var_1.c.e)));
    return select(vec3<bool>(arg_0.e <= var_2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(83438i, 32671i), _wgslsmith_div_vec2_i32(arg_0.c.xy, vec2<i32>(var_3.x, -2147483647i))) == -var_2.a, var_1.c.d.x), arg_0.d, select(var_1.c.d, !select(arg_0.d, !var_1.c.d, false), vec3<bool>(false, arg_0.d.x, var_2.c.d.x)));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(461f * 678f), _wgslsmith_f_op_f32(step(-216f, 361f)))) - _wgslsmith_div_f32(1172f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-595f, -386f)))) * _wgslsmith_f_op_f32(trunc(471f)));
    var var_1 = vec4<bool>(any(vec3<bool>(false, any(func_2(Struct_1(vec4<f32>(1500f, -110f, 1163f, -1469f), arg_0, vec3<i32>(u_input.a, -2147483647i, 0i), vec3<bool>(true, false, false), -1i))), false)), true, true, any(vec2<bool>(true, true)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1087f, 452f, -236f, -692f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, -1423f, 270f, -424f)))), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51503u, 6562u, arg_0, arg_0) & min(vec4<u32>(arg_0, 1u, arg_0, arg_0), vec4<u32>(arg_0, arg_0, arg_0, 4294967295u)), ~vec4<u32>(arg_0, arg_0, 90575u, arg_0)), 2774u), min(vec3<i32>(-2147483647i, ~(-14572i), 1i), (vec3<i32>(u_input.a, -49082i, -35430i) >> (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u))) << (abs(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, arg_0, 56344u), vec3<u32>(4294967295u, 0u, 107872u))) % vec3<u32>(32u))), var_1.wxz, ~_wgslsmith_div_i32(u_input.b, u_input.b));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1043f)), var_2.a.x, any(func_2(var_2)))), -910f, false));
    var var_3 = Struct_2(abs(-31962i), ~vec2<u32>(countOneBits(var_2.b), var_2.b) << (~(vec2<u32>(arg_0, 4294967295u) << (min(vec2<u32>(var_2.b, arg_0), vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_2.a)))), ~(~arg_0), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.b, u_input.a, u_input.b), vec3<i32>(u_input.b, -1i, 0i)), countOneBits(vec3<i32>(var_2.e, var_2.e, 2147483647i))), vec3<i32>(-16609i, ~(-11472i), ~0i)), vec3<bool>(var_2.d.x, all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_2.d.x), vec4<bool>(var_1.x, var_1.x, false, var_2.d.x), vec4<bool>(true, var_2.d.x, var_2.d.x, true))), false), -(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -1i, -20816i), vec4<i32>(u_input.a, 2147483647i, -14252i, -16501i)) ^ var_2.c.x)), _wgslsmith_f_op_vec4_f32(abs(var_2.a)), var_2.a.yx);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-994f)) * var_3.d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.c.a.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_3.d), ~(~arg_2), -arg_1.c.c, select(vec3<bool>(104f < _wgslsmith_f_op_f32(arg_3.d.x + arg_0.c.a.x), true, true), arg_0.c.d, false), arg_3.c.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_3.e);
    let var_2 = -8746i;
    let var_3 = var_0;
    let var_4 = var_3.a;
    return Struct_2(-32758i, ~(~arg_1.b), Struct_1(vec4<f32>(1215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) * arg_3.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1553f - -831f)), var_3.a.x), arg_0.b.x, -var_3.c, arg_0.c.d, -firstLeadingBit(var_2)), vec4<f32>(128f, var_4.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.c.a.x)) * var_4.x), arg_3.d.x, any(arg_0.c.d.xz) == all(vec3<bool>(var_3.d.x, false, false)))), -1000f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e.x, var_4.x))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = !arg_0.c.d;
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.b, ~(~vec2<u32>(0u, arg_0.b.x))), ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(arg_0.b, arg_0.b), abs(arg_0.c.b))), 0u);
    let var_2 = func_3(vec4<i32>(~u_input.b, i32(-1i) * -81104i, _wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, -1i, 2960i, 1i), countOneBits(vec4<i32>(arg_0.a, 16051i, 6920i, 16208i) >> (vec4<u32>(0u, 4294967295u, arg_0.c.b, arg_0.b.x) % vec4<u32>(32u)))), _wgslsmith_div_i32(-(arg_0.c.e ^ u_input.b), 1i)), var_0.x, arg_2.x, arg_0.d.zyw);
    let var_3 = vec4<bool>(true, true, !(7443u <= _wgslsmith_add_u32(var_1.x << (arg_0.b.x % 32u), 51571u)), true);
    var_1 = vec3<u32>(~(~(var_2 & 53115u) & ~_wgslsmith_add_u32(19554u, var_1.x)), _wgslsmith_clamp_u32(func_3(firstTrailingBit(~vec4<i32>(arg_0.c.c.x, -1i, -1i, -33487i)), all(!var_3), any(vec4<bool>(false, true, false, true)), vec3<f32>(-165f, arg_0.c.a.x, _wgslsmith_f_op_f32(-arg_0.d.x))), 38750u, _wgslsmith_mult_u32(arg_0.c.b, var_1.x << (_wgslsmith_mod_u32(5780u, 1u) % 32u))), _wgslsmith_div_u32(0u, abs(_wgslsmith_clamp_u32(var_2, abs(var_1.x), ~17052u))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0.c.a)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(514f, arg_0.d.x, arg_0.e.x, arg_0.d.x)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(arg_0.c.a, arg_0.c.a, arg_2.x)))))), select(min(~_wgslsmith_clamp_u32(45247u, 1u, 13688u), 111277u), _wgslsmith_add_u32(arg_0.c.b, ~0u), true), abs(func_4(func_4(func_4(Struct_2(1i, arg_0.b, Struct_1(arg_0.d, var_2, arg_0.c.c, vec3<bool>(true, var_3.x, false), -15048i), vec4<f32>(arg_0.c.a.x, 202f, arg_0.c.a.x, -2074f), arg_0.d.xy), arg_0, var_2, Struct_2(43816i, var_1.yy, Struct_1(vec4<f32>(1000f, arg_0.d.x, arg_0.c.a.x, arg_0.c.a.x), 17201u, arg_0.c.c, arg_2, -2147483647i), vec4<f32>(arg_0.e.x, arg_0.d.x, arg_0.c.a.x, -1306f), vec2<f32>(-1409f, arg_0.c.a.x))), Struct_2(arg_1.x, vec2<u32>(4294967295u, 1u), arg_0.c, vec4<f32>(901f, -920f, 1077f, arg_0.d.x), arg_0.c.a.zw), _wgslsmith_dot_vec2_u32(vec2<u32>(14719u, arg_0.b.x), vec2<u32>(arg_0.b.x, var_2)), func_4(arg_0, arg_0, 84559u, Struct_2(-2147483647i, var_1.yx, Struct_1(vec4<f32>(457f, 2136f, -535f, -249f), arg_0.b.x, vec3<i32>(arg_1.x, 21551i, u_input.a), vec3<bool>(arg_0.c.d.x, var_3.x, arg_0.c.d.x), 37743i), vec4<f32>(2144f, arg_0.d.x, -1000f, arg_0.c.a.x), vec2<f32>(arg_0.e.x, 1683f)))), arg_0, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(1u, var_2), 4294967295u, ~0u), Struct_2(5607i, vec2<u32>(0u, var_1.x), arg_0.c, vec4<f32>(arg_0.c.a.x, -3294f, arg_0.c.a.x, arg_0.e.x), _wgslsmith_f_op_vec2_f32(arg_0.d.xz - vec2<f32>(-111f, arg_0.c.a.x)))).c.c), vec3<bool>(true, true, arg_2.x), 24162i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(Struct_2(1i, vec2<u32>(1u, 1u), Struct_1(vec4<f32>(824f, 1000f, -127f, 331f), ~50229u, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.b), vec3<i32>(2147483647i, -18076i, u_input.a), vec3<i32>(13675i, -1i, -41532i)), vec3<bool>(true, true, true), _wgslsmith_mult_i32(1i, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1306f)), -129f, _wgslsmith_f_op_f32(func_1(34181u)), -1088f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1347f, 1264f) * vec2<f32>(-434f, -623f)) + vec2<f32>(322f, -1428f))), Struct_2(u_input.b, abs(~vec2<u32>(39671u, 1u)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-195f, -221f, -1648f, -687f) - vec4<f32>(-209f, 428f, 202f, -1117f)), reverseBits(4294967295u), vec3<i32>(-4997i, u_input.a, 0i), vec3<bool>(true, true, true), reverseBits(1i)), vec4<f32>(_wgslsmith_f_op_f32(round(-2509f)), _wgslsmith_f_op_f32(select(102f, 946f, false)), _wgslsmith_f_op_f32(floor(652f)), -1539f), vec2<f32>(1656f, _wgslsmith_f_op_f32(-786f - -911f))), 1u, Struct_2(~1i, select(vec2<u32>(0u, 9568u), vec2<u32>(4294967295u, 13928u), false) >> (vec2<u32>(69431u, 4294967295u) % vec2<u32>(32u)), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), ~44100u, vec3<i32>(54890i, u_input.b, u_input.a), vec3<bool>(true, true, true), u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -564f, 2281f, 1498f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(837f, -346f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1831f, -785f)))))), _wgslsmith_mult_vec2_i32(-(~(-vec2<i32>(u_input.b, u_input.b))), vec2<i32>(-1i, -63351i)), func_2(func_4(func_4(Struct_2(u_input.a, vec2<u32>(1u, 7869u), Struct_1(vec4<f32>(112f, 611f, -1005f, -1455f), 4294967295u, vec3<i32>(u_input.b, -25962i, u_input.b), vec3<bool>(false, true, true), -2147483647i), vec4<f32>(-909f, 982f, 270f, 260f), vec2<f32>(-358f, -349f)), Struct_2(u_input.b, vec2<u32>(4294967295u, 18398u), Struct_1(vec4<f32>(333f, -2449f, -982f, -996f), 62637u, vec3<i32>(u_input.a, 52519i, -2147483647i), vec3<bool>(true, true, false), 932i), vec4<f32>(149f, 500f, -714f, -136f), vec2<f32>(-171f, -209f)), abs(94578u), Struct_2(-75868i, vec2<u32>(0u, 1152u), Struct_1(vec4<f32>(-257f, -1482f, 976f, 1422f), 4294967295u, vec3<i32>(2147483647i, 92107i, u_input.a), vec3<bool>(false, false, false), u_input.a), vec4<f32>(486f, 1479f, 820f, 3321f), vec2<f32>(-939f, 680f))), Struct_2(-u_input.b, vec2<u32>(4294967295u, 13450u), func_4(Struct_2(14640i, vec2<u32>(4294967295u, 0u), Struct_1(vec4<f32>(813f, 485f, 609f, 614f), 4294967295u, vec3<i32>(-2147483647i, u_input.b, 2147483647i), vec3<bool>(false, true, false), u_input.b), vec4<f32>(-1448f, -2085f, 1000f, -1813f), vec2<f32>(-2532f, 1000f)), Struct_2(-73556i, vec2<u32>(0u, 33857u), Struct_1(vec4<f32>(-2525f, -319f, -1000f, 1912f), 1u, vec3<i32>(u_input.b, -23158i, 20894i), vec3<bool>(false, true, false), 2147483647i), vec4<f32>(-239f, -1335f, -186f, 888f), vec2<f32>(1183f, -1126f)), 0u, Struct_2(u_input.a, vec2<u32>(1u, 1u), Struct_1(vec4<f32>(-1819f, -1221f, 1126f, -198f), 27092u, vec3<i32>(0i, u_input.a, u_input.a), vec3<bool>(true, true, false), 0i), vec4<f32>(1548f, 1083f, 1188f, 1530f), vec2<f32>(1524f, 2197f))).c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-585f, 615f, -2300f, -1122f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(543f, 730f))), 4294967295u, Struct_2(1i, ~vec2<u32>(0u, 15441u), func_4(Struct_2(u_input.b, vec2<u32>(4294967295u, 40613u), Struct_1(vec4<f32>(1000f, 471f, 229f, 696f), 0u, vec3<i32>(u_input.a, u_input.a, 0i), vec3<bool>(true, true, true), -54418i), vec4<f32>(-517f, -1000f, 336f, -1686f), vec2<f32>(-1159f, 118f)), Struct_2(45759i, vec2<u32>(0u, 4294967295u), Struct_1(vec4<f32>(-756f, 490f, 955f, -1000f), 43716u, vec3<i32>(u_input.b, -8005i, u_input.b), vec3<bool>(false, false, true), u_input.b), vec4<f32>(-831f, 1509f, 1081f, -693f), vec2<f32>(397f, -474f)), 4294967295u, Struct_2(u_input.b, vec2<u32>(0u, 4294967295u), Struct_1(vec4<f32>(1000f, -116f, 2171f, 407f), 26142u, vec3<i32>(-18834i, u_input.b, -1i), vec3<bool>(false, false, false), 2147483647i), vec4<f32>(-581f, -735f, 549f, 1432f), vec2<f32>(2685f, -295f))).c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, -700f, 336f, -1445f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-421f, 870f) + vec2<f32>(-1157f, -1000f)))).c));
    var var_1 = false;
    let var_2 = func_4(func_4(Struct_2(-1i, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(0u, 45999u)), vec2<u32>(93702u, 67908u), vec2<u32>(75360u, var_0.b)), var_0, var_0.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a.x, -598f)))), Struct_2(_wgslsmith_add_i32(var_0.e, u_input.a), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(22950u, 4294967295u), vec2<u32>(var_0.b, var_0.b)), ~vec2<u32>(var_0.b, 30909u)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)), _wgslsmith_sub_u32(73516u, 1636u), vec3<i32>(var_0.c.x, var_0.e, -1i), var_0.d, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.e, var_0.e), vec2<i32>(var_0.c.x, var_0.e))), var_0.a, var_0.a.xx), min(firstLeadingBit(~var_0.b), 19354u), func_4(func_4(func_4(Struct_2(-35153i, vec2<u32>(var_0.b, 0u), Struct_1(vec4<f32>(442f, var_0.a.x, -285f, -269f), 2401u, vec3<i32>(24501i, u_input.b, u_input.a), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), 0i), vec4<f32>(var_0.a.x, var_0.a.x, 621f, -1416f), var_0.a.wz), Struct_2(var_0.c.x, vec2<u32>(var_0.b, 4294967295u), var_0, var_0.a, var_0.a.xw), var_0.b, Struct_2(var_0.c.x, vec2<u32>(4294967295u, var_0.b), var_0, vec4<f32>(var_0.a.x, -1850f, -709f, var_0.a.x), var_0.a.wx)), Struct_2(u_input.b, vec2<u32>(var_0.b, var_0.b), var_0, vec4<f32>(-631f, -336f, -461f, var_0.a.x), var_0.a.zz), var_0.b, func_4(Struct_2(var_0.c.x, vec2<u32>(11830u, 4294967295u), Struct_1(var_0.a, 4294967295u, var_0.c, var_0.d, 0i), var_0.a, var_0.a.xz), Struct_2(-17334i, vec2<u32>(81u, 1u), var_0, vec4<f32>(var_0.a.x, 1161f, var_0.a.x, -1000f), vec2<f32>(768f, -253f)), 1u, Struct_2(var_0.e, vec2<u32>(var_0.b, var_0.b), var_0, vec4<f32>(-643f, 835f, var_0.a.x, 1563f), var_0.a.xx))), Struct_2(u_input.b, _wgslsmith_add_vec2_u32(vec2<u32>(0u, 13820u), vec2<u32>(var_0.b, 0u)), func_4(Struct_2(1i, vec2<u32>(0u, 91327u), var_0, var_0.a, var_0.a.yw), Struct_2(58880i, vec2<u32>(var_0.b, 4294967295u), var_0, vec4<f32>(-151f, var_0.a.x, var_0.a.x, -1025f), vec2<f32>(-273f, 162f)), var_0.b, Struct_2(u_input.a, vec2<u32>(46687u, var_0.b), Struct_1(var_0.a, var_0.b, vec3<i32>(u_input.a, 0i, 0i), var_0.d, 1i), var_0.a, var_0.a.wx)).c, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 306f, -514f) - var_0.a), var_0.a.yw), ~_wgslsmith_div_u32(var_0.b, 1u), Struct_2(~var_0.e, _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.b, var_0.b), vec2<u32>(83694u, var_0.b)), Struct_1(var_0.a, var_0.b, vec3<i32>(u_input.a, 0i, 2147483647i), var_0.d, 1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(1829f, -385f, -259f, var_0.a.x) - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1196f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, -1000f) + var_0.a.xz)))), func_4(func_4(Struct_2(var_0.c.x, vec2<u32>(var_0.b, var_0.b), func_5(Struct_2(u_input.b, vec2<u32>(var_0.b, var_0.b), var_0, var_0.a, var_0.a.yz), var_0.c.yz, var_0.d), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, 2351f, 270f, 2535f), vec4<f32>(-1384f, -1165f, -1079f, 158f), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true))), vec2<f32>(var_0.a.x, 706f)), Struct_2(min(u_input.a, var_0.e), ~vec2<u32>(8198u, 4215u), Struct_1(vec4<f32>(1331f, var_0.a.x, var_0.a.x, var_0.a.x), var_0.b, vec3<i32>(13798i, -29708i, 0i), vec3<bool>(var_0.d.x, true, var_0.d.x), 9808i), var_0.a, _wgslsmith_f_op_vec2_f32(-var_0.a.xx)), 3384u, func_4(func_4(Struct_2(-2147483647i, vec2<u32>(var_0.b, 4294967295u), var_0, var_0.a, var_0.a.yx), Struct_2(-1i, vec2<u32>(var_0.b, var_0.b), var_0, var_0.a, vec2<f32>(var_0.a.x, var_0.a.x)), var_0.b, Struct_2(1i, vec2<u32>(79687u, 2478u), var_0, vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.wz)), Struct_2(u_input.a, vec2<u32>(var_0.b, var_0.b), var_0, var_0.a, vec2<f32>(var_0.a.x, var_0.a.x)), firstLeadingBit(63498u), func_4(Struct_2(-17048i, vec2<u32>(var_0.b, var_0.b), Struct_1(var_0.a, var_0.b, vec3<i32>(var_0.e, var_0.e, var_0.c.x), vec3<bool>(false, false, var_0.d.x), -46515i), vec4<f32>(384f, 1427f, -1442f, -1445f), var_0.a.xz), Struct_2(var_0.c.x, vec2<u32>(0u, var_0.b), var_0, var_0.a, vec2<f32>(var_0.a.x, 646f)), 4294967295u, Struct_2(u_input.a, vec2<u32>(var_0.b, 4294967295u), Struct_1(vec4<f32>(-1000f, var_0.a.x, 1640f, var_0.a.x), 17611u, vec3<i32>(var_0.c.x, var_0.e, u_input.b), vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), 2147483647i), vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -1220f), var_0.a.xx)))), Struct_2(1i, ~max(vec2<u32>(1u, 18504u), vec2<u32>(4294967295u, 8495u)), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1404f, 1000f, -2744f, -2180f), vec4<f32>(var_0.a.x, 101f, 391f, var_0.a.x))), 45308u, abs(vec3<i32>(2147483647i, 0i, u_input.b)), vec3<bool>(false, false, true), _wgslsmith_sub_i32(0i, u_input.a)), _wgslsmith_f_op_vec4_f32(min(var_0.a, vec4<f32>(var_0.a.x, -1663f, var_0.a.x, -1271f))), _wgslsmith_f_op_vec2_f32(var_0.a.zy * _wgslsmith_div_vec2_f32(var_0.a.zy, vec2<f32>(var_0.a.x, 821f)))), 0u, Struct_2((var_0.e ^ 0i) >> (51417u % 32u), ~(~vec2<u32>(var_0.b, 1u)), func_4(func_4(Struct_2(var_0.e, vec2<u32>(1u, 0u), Struct_1(var_0.a, 16806u, var_0.c, var_0.d, 1i), var_0.a, var_0.a.wx), Struct_2(u_input.a, vec2<u32>(25605u, 4294967295u), Struct_1(vec4<f32>(-1682f, var_0.a.x, var_0.a.x, -937f), var_0.b, vec3<i32>(var_0.e, 75133i, var_0.e), var_0.d, -1i), vec4<f32>(435f, 951f, 748f, var_0.a.x), vec2<f32>(var_0.a.x, var_0.a.x)), 20702u, Struct_2(2147483647i, vec2<u32>(var_0.b, 4294967295u), Struct_1(vec4<f32>(-909f, var_0.a.x, -627f, var_0.a.x), 0u, vec3<i32>(2147483647i, -2147483647i, 1i), var_0.d, u_input.a), var_0.a, vec2<f32>(var_0.a.x, var_0.a.x))), Struct_2(var_0.e, vec2<u32>(var_0.b, var_0.b), var_0, vec4<f32>(1338f, -142f, var_0.a.x, var_0.a.x), vec2<f32>(var_0.a.x, -428f)), select(var_0.b, 59546u, false), Struct_2(var_0.c.x, vec2<u32>(73724u, var_0.b), var_0, vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.wz)).c, _wgslsmith_f_op_vec4_f32(-func_5(Struct_2(1i, vec2<u32>(var_0.b, var_0.b), var_0, var_0.a, var_0.a.zy), var_0.c.zy, var_0.d).a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a.x, var_0.a.x))), _wgslsmith_div_vec2_f32(var_0.a.xy, var_0.a.xx))))), ~_wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(var_0.b, 1u) | _wgslsmith_div_u32(var_0.b, 4294967295u)), Struct_2(var_0.e, countOneBits(func_4(Struct_2(2147483647i, vec2<u32>(17489u, var_0.b), var_0, var_0.a, var_0.a.yx), Struct_2(1i, vec2<u32>(var_0.b, 1u), var_0, vec4<f32>(var_0.a.x, -272f, var_0.a.x, 1316f), vec2<f32>(var_0.a.x, 460f)), 1u, Struct_2(60583i, vec2<u32>(var_0.b, 1u), Struct_1(var_0.a, var_0.b, var_0.c, var_0.d, var_0.e), var_0.a, vec2<f32>(var_0.a.x, -408f))).b), var_0, var_0.a, var_0.a.ww));
    var var_3 = ~1u;
    var_1 = !(!(!(var_2.a > _wgslsmith_clamp_i32(u_input.b, 16610i, 2147483647i))));
    let var_4 = -39924i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_2.e.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1504f + var_2.c.a.x)) - _wgslsmith_f_op_f32(trunc(var_0.a.x)))), max(-var_0.e, 5053i), firstLeadingBit(var_2.a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1503f, var_2.e.x, 1693f)))))), -var_2.c.c);
}

