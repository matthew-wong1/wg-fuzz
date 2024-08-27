struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = Struct_1(global0.a, vec2<i32>(i32(-1i) * -1984i, -15977i), global0.d.zxw, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1250f * global0.c.x))), -185f, -439f, -579f)), global0.e);
    let var_0 = vec4<u32>(28396u, firstLeadingBit(_wgslsmith_sub_u32(1u, 1u)), 1u, ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(8585u, 90726u, 14738u, 46927u), _wgslsmith_mult_vec4_u32(vec4<u32>(2443u, 0u, 1u, 1u), vec4<u32>(768u, 0u, 0u, 38314u)))));
    var var_1 = vec2<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), reverseBits(var_0.x));
    var var_2 = false;
    let var_3 = -628f;
    return _wgslsmith_mult_u32(var_1.x, ~(~0u << (0u % 32u)));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: u32) -> vec3<u32> {
    var var_0 = vec4<u32>(~func_3(), ~1u, max(arg_2.x ^ 37016u, firstLeadingBit(1u)), ~(~(arg_2.x | _wgslsmith_add_u32(arg_3, arg_2.x))));
    var_0 = vec4<u32>(min(90057u, ~(arg_2.x | abs(33457u))), arg_2.x, 0u, 1u);
    let var_1 = Struct_1(min(-firstTrailingBit(reverseBits(vec4<i32>(u_input.a.x, -16563i, -1i, global0.a.x))), _wgslsmith_div_vec4_i32(countOneBits(global0.a & global0.a), select(_wgslsmith_clamp_vec4_i32(global0.a, vec4<i32>(-1i, 0i, -2147483647i, global0.b.x), global0.a), -vec4<i32>(-27663i, global0.a.x, u_input.a.x, global0.a.x), !vec4<bool>(true, false, global0.e, global0.e)))), abs(abs(firstLeadingBit(global0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - 1545f), _wgslsmith_f_op_f32(exp2(global0.d.x)), _wgslsmith_f_op_f32(-arg_0)), global0.d.xzz) * global0.d.zwx), vec4<f32>(-911f, global0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -607f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)))), 398f), !global0.e);
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-13971i, global0.a.x, 47779i, _wgslsmith_dot_vec2_i32(firstTrailingBit(global0.b), var_1.b)), _wgslsmith_div_vec4_i32(var_1.a, global0.a), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_1.a.yx, var_1.a.yx), u_input.a.x), -global0.b.x, reverseBits(~1i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -26429i), -vec2<i32>(global0.b.x, 1i)))), var_1.a.xy, _wgslsmith_f_op_vec3_f32(global0.d.xxw + global0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, 232f, var_1.d.x, arg_0))))), true);
    var var_3 = select(select(vec2<bool>(any(select(vec4<bool>(true, var_1.e, true, false), vec4<bool>(false, false, var_1.e, var_2.e), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_f32(min(870f, global0.d.x)) <= -1881f), select(select(vec2<bool>(true, true), select(vec2<bool>(var_1.e, true), vec2<bool>(global0.e, false), false), select(vec2<bool>(true, true), vec2<bool>(var_1.e, global0.e), vec2<bool>(false, global0.e))), !select(vec2<bool>(global0.e, var_2.e), vec2<bool>(false, var_2.e), var_2.e), false), var_2.e), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x + arg_1.x) + var_2.d.x) < 1f, !(!var_2.e)), true);
    return var_0.wxy;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~66351u, 0u, _wgslsmith_clamp_u32(3927u, 36970u, 0u))), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-194f - global0.c.x), _wgslsmith_f_op_f32(round(arg_1.x)))), vec2<f32>(global0.d.x, arg_1.x), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(~83077u, func_3())), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 30381u, 0u, 0u), ~vec4<u32>(1u, 4294967295u, 44555u, 55499u))));
    global0 = Struct_1(-vec4<i32>(abs(-1i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), global0.a.xz), _wgslsmith_clamp_i32(-arg_3.x, max(global0.a.x, 1i), ~(-30690i)), -1i), max(arg_3, -max(global0.b, arg_3 & vec2<i32>(0i, global0.b.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(1652f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-513f))), _wgslsmith_div_f32(-796f, _wgslsmith_f_op_f32(min(global0.c.x, 154f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-240f)), _wgslsmith_f_op_f32(f32(-1f) * -392f)) - 575f), -904f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(trunc(-1278f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1000f) + -120f)), -328f), !arg_0 != !any(!vec3<bool>(arg_0, global0.e, arg_0)));
    global0 = Struct_1(vec4<i32>(global0.b.x, global0.b.x, _wgslsmith_mult_i32(firstTrailingBit(-8248i), u_input.a.x ^ arg_3.x), u_input.a.x) >> (abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(28801u, 4294967295u, var_0.x, 38384u), vec4<u32>(var_0.x, 10799u, var_0.x, 13187u))) % vec4<u32>(32u)), _wgslsmith_add_vec2_i32(~vec2<i32>(~u_input.a.x, ~u_input.a.x), min(_wgslsmith_div_vec2_i32(~vec2<i32>(global0.a.x, arg_3.x), min(arg_3, vec2<i32>(-1i, arg_3.x))), global0.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1015f)), global0.c.x, global0.d.x), _wgslsmith_f_op_vec4_f32(select(global0.d, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(-783f, -908f)), arg_1.x, global0.d.x, _wgslsmith_f_op_f32(round(-618f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.d) + _wgslsmith_f_op_vec4_f32(sign(global0.d))))), false)), global0.e);
    let var_1 = var_0.x;
    global0 = Struct_1(-vec4<i32>(abs(~0i), arg_3.x, 20540i, _wgslsmith_dot_vec4_i32(global0.a, global0.a)), vec2<i32>(u_input.a.x, global0.a.x) >> (~vec2<u32>(var_0.x, abs(var_0.x)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, -575f, global0.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.d.x, arg_1.x, global0.d.x), vec3<f32>(-161f, arg_1.x, global0.d.x))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(788f, -261f, global0.d.x))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.d)), global0.d), (_wgslsmith_f_op_f32(-global0.d.x) == _wgslsmith_f_op_f32(-arg_1.x)) && (1u >= ~(~var_0.x)));
    return arg_3.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(vec4<i32>(~abs(arg_0.b.x), 10446i, reverseBits(global0.b.x << (~4294967295u % 32u)), -u_input.a.x), _wgslsmith_clamp_vec2_i32(-(~vec2<i32>(74934i, u_input.a.x)), vec2<i32>(func_2(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(801f, global0.d.x, global0.d.x) + vec3<f32>(arg_0.c.x, arg_0.c.x, global0.d.x)), select(arg_0.e, false, global0.e), ~vec2<i32>(27459i, 1i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-36875i, arg_0.a.x, global0.b.x), arg_0.a.wxz))), vec2<i32>(global0.a.x, ~abs(1i))), vec3<f32>(_wgslsmith_f_op_f32(416f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(295f)) * _wgslsmith_f_op_f32(step(global0.d.x, global0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c.x))), _wgslsmith_f_op_f32(min(620f, _wgslsmith_f_op_f32(arg_0.d.x * 2092f)))), _wgslsmith_f_op_vec4_f32(global0.d * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, global0.c.x, global0.d.x, arg_0.c.x) * global0.d) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.d.x, arg_0.c.x, arg_0.d.x, arg_0.c.x)))))), true);
    var var_0 = reverseBits(countOneBits(_wgslsmith_dot_vec4_i32(global0.a, ~_wgslsmith_mod_vec4_i32(global0.a, arg_0.a))));
    var var_1 = 1i;
    let var_2 = true;
    let var_3 = Struct_1(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(i32(-1i) * -40861i, countOneBits(u_input.a.x), global0.a.x, 1i)), vec4<i32>(~firstTrailingBit(2147483647i), 7918i, _wgslsmith_dot_vec4_i32(-global0.a, global0.a), _wgslsmith_dot_vec3_i32(global0.a.zzw, vec3<i32>(u_input.a.x, -1i, global0.a.x)))), select(-arg_0.b, arg_0.b, global0.b.x == arg_0.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c), arg_0.d.wyx), arg_0.d, !var_2);
    return Struct_1(arg_0.a, var_3.a.yw, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d.x, _wgslsmith_f_op_f32(-1088f + _wgslsmith_f_op_f32(-var_3.d.x)), arg_0.c.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1192f, 148f, -1000f))))), _wgslsmith_f_op_vec4_f32(-arg_0.d), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, any(select(select(vec4<bool>(false, false, false, global0.e), vec4<bool>(global0.e, false, global0.e, global0.e), all(vec2<bool>(false, global0.e))), !(!vec4<bool>(global0.e, true, true, global0.e)), global0.e)), !all(select(!vec2<bool>(false, global0.e), vec2<bool>(true, global0.e), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(global0.e, global0.e)))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -39472i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, global0.b.x, global0.b.x) << (vec4<u32>(4294967295u, 35249u, 1u, 0u) % vec4<u32>(32u)), vec4<i32>(0i, 0i, 0i, u_input.a.x)), global0.b.x | -1i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x & u_input.a.x)), vec4<i32>(firstTrailingBit(global0.a.x) << (51097u % 32u), 1i, firstTrailingBit(global0.b.x) & min(0i, global0.a.x), ~1i), global0.a), u_input.a.zx, global0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1083f))), -1000f, 2521f, -434f)), true);
    global0 = func_1(Struct_1(var_1.a, (~vec2<i32>(global0.a.x, u_input.a.x) & _wgslsmith_mult_vec2_i32(global0.b, var_1.a.wx)) ^ abs(~vec2<i32>(47517i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d.yxx - vec3<f32>(global0.c.x, -1241f, var_1.c.x)))), _wgslsmith_f_op_vec4_f32(-global0.d), global0.e));
    var var_2 = _wgslsmith_mult_u32(func_3(), 42012u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, global0.a.x);
}

