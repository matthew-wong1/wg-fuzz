struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> f32 {
    global0 = Struct_4(vec3<f32>(-493f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(453f, _wgslsmith_f_op_f32(sign(-1286f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_div_f32(global0.a.x, 722f)), _wgslsmith_f_op_f32(981f - global0.a.x), any(!(!vec3<bool>(global0.c, false, global0.c))));
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(949f - -803f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * arg_1.a.a.d.x)), global0.c));
    let var_1 = !select(vec3<bool>(true, all(vec2<bool>(true, global0.c)) | (u_input.b.x >= 121714u), true), vec3<bool>(min(-39923i, arg_1.a.b.x) <= _wgslsmith_div_i32(u_input.a, u_input.a), true, !(arg_0 != global0.b)), select(vec3<bool>(global0.c & false, true, global0.c), select(select(vec3<bool>(global0.c, global0.c, true), vec3<bool>(false, global0.c, global0.c), global0.c), vec3<bool>(false, global0.c, global0.c), false), global0.c));
    let var_2 = vec4<bool>(true, !(!var_1.x), !var_1.x, true);
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(-431f)), arg_0))), -1000f, global0.c);
    return arg_1.a.a.d.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>) -> vec3<i32> {
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, global0.a.x, 2430f) + vec3<f32>(-536f, 1257f, arg_1)), vec3<f32>(arg_2.x, arg_1, global0.a.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.ywx + arg_2.wzw) * _wgslsmith_f_op_vec3_f32(arg_2.yxw - global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-arg_2.x), Struct_3(Struct_2(Struct_1(vec3<f32>(668f, -697f, global0.a.x), vec3<i32>(u_input.c, u_input.a, u_input.a), vec2<i32>(-5752i, u_input.a), arg_2), vec3<i32>(u_input.a, u_input.c, 5946i), Struct_1(vec3<f32>(arg_1, arg_1, 618f), vec3<i32>(u_input.c, u_input.c, u_input.c), vec2<i32>(46731i, -29034i), vec4<f32>(364f, 379f, 1437f, arg_1)), Struct_1(arg_2.zxx, vec3<i32>(0i, 0i, u_input.a), vec2<i32>(u_input.c, u_input.a), arg_2))))) - arg_1), true);
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(146f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), -584f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1871f) + arg_1))), global0.c);
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_2.yyx)));
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 2005f, arg_2.x)))), vec3<i32>(36942i, _wgslsmith_div_i32(u_input.a, u_input.a), max(-13984i, 4374i)), ~abs(vec2<i32>(u_input.c, 2147483647i)), arg_2), _wgslsmith_mod_vec3_i32(vec3<i32>(select(-3551i, -1i, false), reverseBits(30849i), firstTrailingBit(u_input.a)), countOneBits(vec3<i32>(u_input.a, 22764i, -2147483647i)) >> (_wgslsmith_div_vec3_u32(u_input.b.xzy, vec3<u32>(u_input.b.x, u_input.b.x, 11002u)) % vec3<u32>(32u))), Struct_1(var_0, ~_wgslsmith_mult_vec3_i32(vec3<i32>(21339i, u_input.a, u_input.c), vec3<i32>(u_input.a, u_input.a, 1i)), -vec2<i32>(0i, 12241i), arg_2), Struct_1(vec3<f32>(-1599f, 561f, _wgslsmith_f_op_f32(-arg_2.x)), vec3<i32>(~0i, 1i, countOneBits(u_input.c)), vec2<i32>(~44082i, ~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 - vec4<f32>(514f, arg_1, var_0.x, -696f)) - vec4<f32>(-1416f, -1391f, var_0.x, global0.a.x)))));
    var var_2 = var_0;
    return vec3<i32>(-u_input.a, u_input.c, -16674i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_5) -> Struct_1 {
    let var_0 = Struct_5(firstLeadingBit(arg_2.a), select(select(vec3<bool>(!arg_1.b.x, !arg_2.b.x, true), vec3<bool>(true, true, true), all(arg_1.b.yz) && !global0.c), vec3<bool>(any(!vec4<bool>(true, false, false, global0.c)), false, all(select(vec3<bool>(true, true, false), arg_1.b, arg_2.b))), arg_2.b), _wgslsmith_dot_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(-38925i, u_input.a, arg_2.c)), ~vec3<i32>(_wgslsmith_sub_i32(-15081i, 8025i), ~(-11691i), 2147483647i)), Struct_1(global0.a, vec3<i32>(~(-arg_2.d.b.x), i32(-1i) * -21866i, 0i), _wgslsmith_mult_vec2_i32(arg_0.xy & ~vec2<i32>(0i, u_input.c), select(vec2<i32>(arg_2.d.b.x, 78165i), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.d.c.x, -2147483647i), arg_1.d.c), arg_2.b.xx)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(arg_1.d.d))))));
    global0 = Struct_4(arg_2.d.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.d.d.x, -1793f) * _wgslsmith_div_f32(var_0.d.a.x, arg_1.d.d.x)), any(arg_2.b.zy));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(168f, global0.b, true)));
    let var_2 = !select(select(!(!vec4<bool>(true, false, false, var_0.b.x)), select(select(vec4<bool>(global0.c, false, true, true), vec4<bool>(false, global0.c, arg_2.b.x, global0.c), vec4<bool>(var_0.b.x, global0.c, arg_2.b.x, false)), !vec4<bool>(var_0.b.x, true, false, var_0.b.x), arg_1.b.x), any(select(vec4<bool>(var_0.b.x, arg_1.b.x, false, var_0.b.x), vec4<bool>(var_0.b.x, false, var_0.b.x, false), true))), vec4<bool>(arg_1.b.x, arg_1.b.x, global0.c, 3457u >= var_0.a), !vec4<bool>(all(var_0.b), true, any(vec4<bool>(true, arg_1.b.x, var_0.b.x, false)), any(vec3<bool>(false, true, false))));
    var var_3 = reverseBits(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(50454u, _wgslsmith_div_u32(var_0.a, 34328u), select(u_input.b.x, u_input.b.x, arg_1.b.x), var_0.a), u_input.b)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(365f, global0.b)), _wgslsmith_f_op_f32(var_0.d.d.x + -126f))) * -229f), arg_2.d.a.x), ~arg_2.d.b, _wgslsmith_sub_vec2_i32(abs(select(arg_1.d.b.yy & var_0.d.b.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), arg_0.yz), var_2.x)), abs(vec2<i32>(~var_0.d.c.x, 0i))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2214f, var_1, -1829f, 255f) * arg_1.d.d), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(666f, 606f, var_0.d.a.x, -302f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1332f, var_1, var_1, var_1), arg_1.d.d)))), vec4<bool>(all(arg_2.b), true, true, var_3.x > 27193u))))));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(global0.a, vec3<i32>(_wgslsmith_clamp_i32(u_input.c & 17956i, _wgslsmith_add_i32(u_input.c, u_input.c), u_input.c), u_input.c, abs(_wgslsmith_div_i32(-1i, u_input.a))), abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(-64165i, -1i), select(vec2<i32>(-1i, u_input.a), vec2<i32>(2147483647i, 53946i), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b, global0.a.x, -1638f, global0.b), vec4<f32>(-1243f, global0.a.x, 230f, 959f), global0.c)), vec4<f32>(global0.a.x, -492f, -519f, global0.b), !global0.c)))), -vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.c), vec4<i32>(-2147483647i, -1i, 0i, -9331i)), ~u_input.c, 21046i), Struct_1(global0.a, ~(-countOneBits(vec3<i32>(u_input.a, -2147483647i, 0i))), ~(vec2<i32>(-1i) * -vec2<i32>(-8089i, u_input.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-390f - global0.a.x), 2644f, _wgslsmith_f_op_f32(abs(1597f)), 942f))), func_4(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.c)), _wgslsmith_div_vec4_i32(vec4<i32>(2283i, u_input.a, u_input.c, 19207i), vec4<i32>(-33818i, 2862i, 2147483647i, u_input.a))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.c, 63845i), ~vec4<i32>(-1i, u_input.a, u_input.a, 2147483647i))), Struct_5(select(0u, 4294967295u, global0.c), vec3<bool>(true, true, global0.c && global0.c), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, u_input.c), vec2<i32>(15455i, -35748i)), Struct_1(global0.a, func_2(vec3<bool>(global0.c, true, true), global0.a.x, vec4<f32>(173f, -378f, global0.b, 203f)), vec2<i32>(1i, -10078i) << (vec2<u32>(u_input.b.x, 41710u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-422f, 152f, global0.a.x, global0.a.x) - vec4<f32>(global0.a.x, -495f, 253f, 1000f)))), Struct_5(~28723u, vec3<bool>(true, select(global0.c, false, true), global0.c), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-12508i, 0i, -36461i, -15278i), vec4<i32>(u_input.a, 10145i, 0i, 8086i)), Struct_1(_wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, vec3<bool>(true, true, false))), vec3<i32>(-16084i, 0i, -65135i), vec2<i32>(2147483647i, u_input.c) | vec2<i32>(u_input.a, 1i), vec4<f32>(global0.a.x, global0.a.x, 1000f, 217f)))));
    var var_1 = vec3<bool>(global0.c, 71831i < ~(-max(1i, var_0.c.c.x)), global0.c);
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_4(vec4<i32>(-1i, var_0.c.c.x, u_input.a, 0i) << (u_input.b % vec4<u32>(32u)), Struct_5(u_input.b.x, vec3<bool>(var_1.x, global0.c, true), var_0.d.c.x, var_0.d), Struct_5(u_input.b.x, vec3<bool>(false, true, true), 25762i, Struct_1(global0.a, vec3<i32>(u_input.a, 23561i, -1i), var_0.b.yy, vec4<f32>(var_0.c.d.x, 898f, 1000f, var_0.d.a.x)))).a)), var_0.d.a.x, false);
    var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(exp2(global0.a)), 2217f, false);
    var_1 = select(vec3<bool>(var_2.c, var_2.c, !(var_1.x & true)), vec3<bool>(!(all(vec4<bool>(true, false, var_2.c, true)) & all(vec2<bool>(false, var_2.c))), !global0.c, var_1.x == true), any(vec3<bool>(all(vec4<bool>(global0.c, false, true, false)), select(global0.c, true, var_2.c | true), true)));
    return var_0;
}

fn func_5(arg_0: Struct_2) -> vec3<f32> {
    global0 = Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-662f - 1670f) + _wgslsmith_f_op_f32(floor(107f))), global0.b), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 774f)) * _wgslsmith_f_op_f32(arg_0.d.a.x + global0.a.x)), -2212f, -1000f)), _wgslsmith_f_op_f32(global0.a.x + 432f), true);
    let var_0 = Struct_5(~reverseBits(u_input.b.x), select(vec3<bool>(false, !any(vec2<bool>(false, true)), !any(vec2<bool>(false, global0.c))), !vec3<bool>(false, true, u_input.b.x > 0u), !(!(!vec3<bool>(false, global0.c, global0.c)))), 38922i, arg_0.d);
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(arg_0.c.a.x, -569f), 1f, -1385f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0.a + arg_0.a.d.wzz))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.d.x, -495f, -590f))))))), _wgslsmith_f_op_f32(var_0.d.a.x * _wgslsmith_div_f32(var_0.d.a.x, _wgslsmith_f_op_f32(exp2(arg_0.c.a.x)))), _wgslsmith_mod_i32(0i, var_0.c) == var_0.c);
    var var_1 = Struct_3(Struct_2(func_1().c, arg_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(var_0.d.a + _wgslsmith_f_op_vec3_f32(-var_0.d.d.xyy)), -vec3<i32>(var_0.d.b.x, arg_0.d.c.x, 1i), -select(vec2<i32>(arg_0.b.x, -39126i), vec2<i32>(u_input.c, u_input.c), var_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d.d * vec4<f32>(-1090f, global0.a.x, var_0.d.a.x, -110f)))), Struct_1(vec3<f32>(arg_0.d.d.x, _wgslsmith_f_op_f32(-var_0.d.d.x), -550f), vec3<i32>(var_0.c, var_0.c, _wgslsmith_div_i32(arg_0.c.c.x, -41695i)), vec2<i32>(1i, ~(-15722i)), arg_0.a.d)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.c.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, var_0.d.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-467f)))))), _wgslsmith_f_op_f32(func_3(arg_0.d.a.x, Struct_3(var_1.a))), _wgslsmith_f_op_f32(trunc(1000f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.d.d - arg_0.a.d)), vec4<f32>(var_0.d.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d.d.x, arg_0.a.a.x, false))), _wgslsmith_f_op_f32(-arg_0.d.a.x)), all(!vec2<bool>(true, var_0.b.x)))));
    return var_0.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_5(func_1()))))), _wgslsmith_f_op_f32(global0.b + -1136f), any(!(!select(vec3<bool>(false, true, global0.c), vec3<bool>(false, false, true), global0.c))));
    global0 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-808f))), -1000f)), _wgslsmith_f_op_f32(-1996f + global0.b), true);
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b))), true);
    var var_0 = firstTrailingBit(((_wgslsmith_clamp_i32(-1i, u_input.a, u_input.a) << (4294967295u % 32u)) ^ ~11547i) >> (firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(19239u, u_input.b.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(6818u, 1u), vec2<u32>(46898u, u_input.b.x), u_input.b.xz))) % 32u));
    var var_1 = -_wgslsmith_add_i32(-56291i, -firstTrailingBit(0i)) < (firstLeadingBit(_wgslsmith_div_i32(u_input.c, u_input.a)) | u_input.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(897f, 760f, 1000f, -446f)));
    let var_3 = func_1().d.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(select(vec3<bool>(false, true, global0.c), select(!vec3<bool>(true, false, global0.c), select(vec3<bool>(true, false, false), vec3<bool>(global0.c, true, global0.c), vec3<bool>(global0.c, global0.c, global0.c)), !vec3<bool>(true, false, global0.c)), !(!vec3<bool>(global0.c, true, false))), 1110f, vec4<f32>(330f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + 149f) * var_3.x), -683f, global0.a.x)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-328f + 930f), _wgslsmith_f_op_f32(global0.b + var_3.x))) - var_3.x), min(~vec3<u32>(20635u, 0u, _wgslsmith_mult_u32(1u, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(abs(23946u), u_input.b.x, 1u), u_input.b.yyx)));
}

