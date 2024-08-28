struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -398f))), _wgslsmith_f_op_f32(189f * 967f))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(772f, global0.x))))) + vec2<f32>(-287f, _wgslsmith_f_op_f32(global0.x - global0.x)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(247f - _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(max(100f, global0.x))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(458f, global0.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1110f, 328f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.x) * vec2<f32>(global0.x, global0.x))))))));
    let var_0 = Struct_4(!vec3<bool>(!any(vec3<bool>(true, true, false)), true, !(-50012i < u_input.a)), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, 1094f))))), select(vec4<i32>(-1i, 1i, -45487i, u_input.a) | vec4<i32>(15978i, 2147483647i, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, 15871i), true), vec3<u32>(54844u, _wgslsmith_clamp_u32(68211u, 0u, 0u), 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1590f, global0.x), vec2<f32>(global0.x, global0.x), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(266f, 1253f), vec2<f32>(-1937f, 1000f), vec2<bool>(false, true)))), 1u), vec3<f32>(global0.x, 148f, _wgslsmith_f_op_f32(-global0.x))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(-710f, 387f)), var_0.b.a.d.x)), global0.x);
    var var_1 = var_0.b.a.e;
    return var_0.b.a.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(sign(arg_0.d));
    var var_0 = global0.x;
    let var_1 = reverseBits(~vec3<i32>(-1i, u_input.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, u_input.b.x), arg_0.b.xyz), func_3()));
    var_0 = global0.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, global0.x)))))), ~_wgslsmith_div_vec4_i32(~arg_0.b >> (~vec4<u32>(48301u, arg_0.c.x, arg_0.e, arg_0.c.x) % vec4<u32>(32u)), arg_0.b), ~vec3<u32>(abs(7694u), 0u, arg_0.e), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), arg_0.d.x), arg_0.e);
    return Struct_3(Struct_1(arg_0.a, ~arg_0.b, _wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_2.c.x, var_2.e), arg_0.c)), countOneBits(~var_2.c)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, arg_0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_2.a))), arg_3)), var_2.c.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1058f, var_2.d.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> i32 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1215f + arg_1))), _wgslsmith_f_op_f32(round(-1395f)))));
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(arg_3.b.a.d, arg_0.d))))), arg_0.b, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~arg_3.b.a.c, vec3<u32>(42641u, 0u, 43689u)), vec3<u32>(arg_2.a.c.x, arg_0.e, _wgslsmith_dot_vec2_u32(arg_3.b.a.c.xz, vec2<u32>(1u, arg_3.b.a.e)))), func_2(Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a - arg_0.d), vec4<i32>(20429i, -20531i, arg_2.a.b.x, 48173i), ~arg_2.a.c, arg_2.b.xx, firstTrailingBit(4294967295u)), arg_2.a.b.x, all(!vec4<bool>(arg_3.a.x, arg_3.a.x, true, arg_3.a.x)), all(arg_3.a.xy) == false).a.a, arg_2.a.c.x), -27707i, arg_3.a.x & (!select(arg_3.a.x, arg_3.a.x, false) && any(vec3<bool>(arg_3.a.x, true, false))), (u_input.b.x & arg_0.b.x) <= arg_3.b.a.b.x);
    var var_1 = Struct_3(arg_3.b.a, vec3<f32>(_wgslsmith_f_op_f32(step(arg_2.a.d.x, _wgslsmith_f_op_f32(select(arg_0.d.x, global0.x, !arg_3.a.x)))), 699f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), arg_3.b.b.x, true))));
    let var_2 = Struct_2(func_2(func_2(var_1.a, arg_2.a.b.x << (~47152u % 32u), false, 0u > (var_0.a.e ^ 37114u)).a, func_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(595f, 100f) - vec2<f32>(1469f, global0.x)), ~var_1.a.b, var_0.a.c, var_0.a.d, var_1.a.c.x | 60388u), ~(-2147483647i), true, all(arg_3.a.xy)).a.b.x, !(var_1.a.c.x >= ~var_0.a.e), all(vec4<bool>(arg_3.a.x, true, arg_3.a.x, false)) && !any(arg_3.a.xz)).a);
    var var_3 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_3.b.a.a, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(395f, 1183f))), select(arg_3.a.yy, vec2<bool>(arg_3.a.x, arg_3.a.x), true))), firstLeadingBit(vec4<i32>(-2147483647i, u_input.b.x, 0i, 2147483647i)), vec3<u32>(min(1u, var_2.a.c.x), _wgslsmith_mod_u32(1u, 4294967295u), 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-718f, -1205f) - vec2<f32>(847f, arg_1))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.c.x, 1u, 56542u, arg_0.e), vec4<u32>(0u, arg_3.b.a.c.x, 93764u, 4512u)), ~vec4<u32>(arg_2.a.c.x, 1u, 90136u, 4294967295u))), _wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(2147483647i, u_input.b.x)), var_2.a.b.x), true, arg_3.a.x).a, -1i, true, !(!(!arg_3.a.x))).a;
    return firstTrailingBit(1i);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-198f, -1748f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 518f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 842f) + vec2<f32>(global0.x, -2219f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(min(-855f, 1754f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(810f, -1029f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, global0.x)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1095f) - vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(755f, -1172f)))))));
    let var_0 = func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, -490f))), vec2<f32>(-204f, global0.x), false)), -max(vec4<i32>(2215i, 6008i, -20899i, u_input.a), vec4<i32>(u_input.a, 1i, 25002i, -13409i)), _wgslsmith_mod_vec3_u32(vec3<u32>(25091u, 1u, 0u), select(vec3<u32>(4294967295u, 36781u, 63616u), vec3<u32>(25336u, 61818u, 16896u), vec3<bool>(true, arg_1.x, arg_1.x))), func_2(Struct_1(vec2<f32>(-969f, 500f), arg_0, vec3<u32>(0u, 0u, 0u), vec2<f32>(global0.x, global0.x), 4294967295u), _wgslsmith_dot_vec2_i32(arg_0.xx, u_input.b), select(false, arg_1.x, arg_1.x), false).b.zy, 1u), u_input.b.x, !arg_1.x, true).a, -1i, true, any(vec4<bool>(true, arg_1.x, true, true)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1034f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(339f - -867f), _wgslsmith_f_op_f32(min(global0.x, global0.x)))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b.x, 706f))) + _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(min(-1204f, 532f))))))));
    let var_2 = _wgslsmith_mult_vec2_i32(select(reverseBits(_wgslsmith_div_vec2_i32(firstLeadingBit(u_input.b), -vec2<i32>(u_input.b.x, -1i))), -(countOneBits(vec2<i32>(0i, arg_0.x)) & func_2(var_0.a, 0i, true, true).a.b.zw), select(arg_1.wy, arg_1.yz, !all(vec4<bool>(false, true, true, false)))), vec2<i32>(-45259i, ~firstTrailingBit(reverseBits(-20525i))));
    return var_0.b;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> vec3<f32> {
    let var_0 = ~(~(~(~27474u)));
    global0 = _wgslsmith_f_op_vec2_f32(-arg_1);
    global0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, -307f)));
    let var_1 = _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(~var_0, _wgslsmith_sub_u32(var_0, 1u)), var_0 >> (~2113u % 32u)));
    var var_2 = select(-1i, -countOneBits(_wgslsmith_mult_i32(u_input.a, -u_input.a)), _wgslsmith_f_op_f32(ceil(356f)) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    return _wgslsmith_f_op_vec3_f32(func_5(vec4<i32>(13983i, 20020i, _wgslsmith_add_i32(19674i, ~(~(-21256i))), func_4(Struct_1(vec2<f32>(1685f, arg_1.x), vec4<i32>(19950i, u_input.b.x, -1i, 5103i), vec3<u32>(0u, 33629u, 521u), arg_1, var_0), _wgslsmith_f_op_f32(ceil(global0.x)), func_2(Struct_1(vec2<f32>(986f, -2384f), vec4<i32>(2147483647i, 0i, 9579i, u_input.b.x), vec3<u32>(1u, var_0, 2336u), arg_1, var_0), u_input.a, true, false), Struct_4(vec3<bool>(arg_0, arg_0, arg_0), Struct_3(Struct_1(vec2<f32>(arg_1.x, global0.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, 7358i), vec3<u32>(38360u, var_0, var_1), arg_1, var_1), vec3<f32>(global0.x, 831f, arg_1.x)))) ^ 1i), !vec4<bool>(true, !arg_0 || !arg_0, all(select(vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(true, true, arg_0, true), vec4<bool>(true, arg_0, arg_0, false))), true)));
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec3<f32>) -> f32 {
    var var_0 = select(!(!vec2<bool>(arg_0, true)), !vec2<bool>(true, !arg_0), true | !(!(true || arg_0)));
    var_0 = !select(vec2<bool>(true, !(!var_0.x)), select(select(vec2<bool>(true, true), select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), var_0.x), all(vec2<bool>(true, arg_0))), vec2<bool>(arg_0, arg_0), true), !all(vec4<bool>(true, true, true, var_0.x)));
    var var_1 = ~abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.c.x, 4294967295u, arg_1.a.e, 1u), vec4<u32>(41629u, 0u, arg_1.a.e, 48128u)) & ~vec4<u32>(4294967295u, 63227u, arg_1.a.c.x, 4294967295u), vec4<u32>(~arg_2.a.c.x, 1u, ~1u, ~arg_1.a.e), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 38988u, 0u, arg_1.a.e), vec4<u32>(4294967295u, arg_1.a.c.x, arg_1.a.e, arg_2.a.e) >> (vec4<u32>(arg_1.a.c.x, arg_2.a.c.x, 0u, 0u) % vec4<u32>(32u)))));
    let var_2 = Struct_4(!vec3<bool>(all(!vec2<bool>(var_0.x, true)), arg_0, false), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1.a.a))), arg_2.a.b, arg_1.a.c, _wgslsmith_f_op_vec2_f32(ceil(arg_1.a.d)), max(_wgslsmith_mod_u32(15994u, 19873u), arg_1.a.c.x << (arg_1.a.c.x % 32u))), _wgslsmith_f_op_vec3_f32(arg_3 - arg_3)));
    let var_3 = var_0.x;
    return 1145f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(global0.x - global0.x))));
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(0i, (u_input.b.x >> (46511u % 32u)) >> (_wgslsmith_clamp_u32(4294967295u, 87157u, 1u) % 32u)), 2147483647i, u_input.b.x | -1i), -_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(3439i, -6391i), 0i, u_input.b.x), vec3<i32>(~2147483647i, _wgslsmith_mult_i32(u_input.b.x, u_input.a), _wgslsmith_mult_i32(u_input.a, -5255i))));
    var var_1 = 0i;
    var_1 = u_input.a;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1660f, 582f))) - vec2<f32>(856f, global0.x)) - vec2<f32>(_wgslsmith_f_op_f32(abs(410f)), _wgslsmith_div_f32(global0.x, 358f))), ~vec4<i32>(~(-2147483647i), countOneBits(u_input.b.x), i32(-1i) * -2147483647i, countOneBits(-2147483647i)), ~select(vec3<u32>(9995u, 54991u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(3016u, 12656u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 43775u)), true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x))), 171f), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(40036u, 4294967295u)), countOneBits(1u))));
    global0 = vec2<f32>(var_2.a.d.x, _wgslsmith_f_op_f32(round(global0.x)));
    let var_3 = _wgslsmith_f_op_f32(407f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(true, Struct_2(Struct_1(var_2.a.a, vec4<i32>(17336i, var_0, 6687i, 70099i), var_2.a.c, vec2<f32>(global0.x, global0.x), var_2.a.c.x)), Struct_3(Struct_1(vec2<f32>(global0.x, var_2.a.d.x), vec4<i32>(var_0, -2147483647i, -1i, 20236i), vec3<u32>(var_2.a.c.x, 6810u, 0u), var_2.a.d, var_2.a.e), _wgslsmith_f_op_vec3_f32(func_1(true, vec2<f32>(-515f, -272f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 813f, global0.x), vec3<f32>(global0.x, global0.x, 289f), false))))), _wgslsmith_f_op_f32(-func_2(var_2.a, -1i, true, true).a.d.x)));
    var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.b.x, u_input.b.x, _wgslsmith_dot_vec3_i32(countOneBits(var_2.a.b.xwz), func_2(Struct_1(vec2<f32>(297f, global0.x), vec4<i32>(-1i, u_input.b.x, 2147483647i, u_input.a), vec3<u32>(var_2.a.e, 66111u, var_2.a.e), var_2.a.d, var_2.a.e), -2147483647i, true, false).a.b.ywx), var_0), var_2.a.b), ~func_2(var_2.a, ~(-49527i), true, false).a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-330f, _wgslsmith_clamp_vec3_u32(vec3<u32>(func_2(Struct_1(vec2<f32>(var_2.a.a.x, 129f), vec4<i32>(-62395i, 0i, -40431i, 17562i), var_2.a.c, vec2<f32>(-432f, var_2.a.d.x), 0u), _wgslsmith_mult_i32(-2147483647i, 1i), u_input.a >= 2147483647i, all(vec4<bool>(false, false, true, false))).a.c.x, _wgslsmith_add_u32(4294967295u, var_2.a.e) << (abs(1577u) % 32u), ~var_2.a.e), _wgslsmith_sub_vec3_u32(firstLeadingBit(var_2.a.c), _wgslsmith_mod_vec3_u32(var_2.a.c, ~var_2.a.c)), vec3<u32>(~select(59257u, 4294967295u, false), ~var_2.a.c.x, _wgslsmith_clamp_u32(var_2.a.c.x, ~4294967295u, min(var_2.a.e, var_2.a.e)))), var_2.a.b.wzy, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3, _wgslsmith_f_op_vec3_f32(func_1(any(vec3<bool>(true, false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1289f, 543f) * vec2<f32>(global0.x, var_2.a.a.x)))).x)));
}

