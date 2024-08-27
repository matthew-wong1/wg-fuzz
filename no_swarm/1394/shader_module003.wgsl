struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    let var_0 = max(21684u & ~(~_wgslsmith_div_u32(u_input.a.x, 11336u)), global0.c.x);
    global0 = Struct_1(global0.b.x, global0.b, ~(~vec4<u32>(global0.c.x, u_input.a.x, global0.c.x, 4294967295u >> (u_input.a.x % 32u))));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -826f))))) * 166f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-617f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-global0.b.x), global0.a))), ~(~vec4<u32>(select(15691u, 16404u, true), firstLeadingBit(var_0), countOneBits(0u), u_input.a.x)));
    var var_1 = 4294967295u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))) * 831f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(591f, _wgslsmith_f_op_f32(1216f * global0.b.x), -912f, _wgslsmith_f_op_f32(floor(-928f))))), _wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1269f, global0.a, global0.a)), global0.b)))), firstTrailingBit(~global0.c >> (~(~global0.c) % vec4<u32>(32u))));
    return _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(trunc(773f))) < 931f;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> i32 {
    let var_0 = select(select(!vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, arg_0, true, !arg_0), vec4<bool>(arg_0, func_3(), !any(vec2<bool>(true, true)), all(vec2<bool>(arg_0, arg_0)))), vec4<bool>(all(vec4<bool>(!arg_0, true, true, arg_0)), arg_0, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b.x))) > global0.b.x), !(!select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), true), vec4<bool>(arg_0, true, false, arg_0), true)));
    var var_1 = vec4<bool>(arg_0 && true, !arg_0, false, arg_0);
    let var_2 = true;
    var var_3 = u_input.a;
    let var_4 = Struct_2(global0.b.xy);
    return -23070i;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(arg_3.b.zyy));
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_2.b.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(129f, arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(select(491f, arg_0.a.x, false))), global0.a), arg_2.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, 23117u ^ ~u_input.a.x, global0.c.x & 1u, _wgslsmith_div_u32(0u, countOneBits(13499u))), u_input.a));
    let var_1 = u_input.a.x;
    var_0 = _wgslsmith_f_op_vec3_f32(abs(global0.b.xzw));
    global0 = arg_2;
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> vec4<u32> {
    let var_0 = func_4(Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, global0.a) + _wgslsmith_div_vec2_f32(vec2<f32>(1230f, global0.b.x), vec2<f32>(global0.b.x, global0.a))), arg_1.a))), vec3<bool>(any(vec3<bool>(0u < global0.c.x, arg_2, arg_2)), !((i32(-1i) * -1i) <= func_2(false, vec2<i32>(0i, 14853i))), all(!(!vec3<bool>(true, arg_0, true)))), Struct_1(_wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(783f, -1633f, global0.a, -237f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a, global0.b.x, global0.b.x, global0.b.x), vec4<f32>(global0.a, global0.a, -1686f, -363f))))), vec4<u32>(62446u | u_input.a.x, ~0u, ~global0.c.x, 4294967295u ^ u_input.a.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, global0.c.x), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, global0.c.x, 4678u))) % vec4<u32>(32u))), Struct_1(127f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(round(-172f))) - vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(exp2(global0.b.x)), 493f, _wgslsmith_f_op_f32(select(global0.b.x, 252f, true)))), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(global0.c.x, global0.c.x, 397u, global0.c.x)) | ~u_input.a, ~vec4<u32>(u_input.a.x, global0.c.x, 4294967295u, 1u) << (select(vec4<u32>(u_input.a.x, 1u, 4294967295u, global0.c.x), u_input.a, arg_0) % vec4<u32>(32u)))));
    let var_1 = func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1335f, global0.b.x))), !(!(!select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_2, false, false), vec3<bool>(arg_0, false, false)))), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.a.x, var_0.b.x))) + _wgslsmith_f_op_vec2_f32(floor(global0.b.yx)))), select(vec3<bool>(arg_2, false, arg_0), vec3<bool>(!arg_2, !arg_0, true), true), var_0, func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, -1262f))), select(select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, arg_2, arg_2), arg_0), vec3<bool>(arg_2, arg_0, false), !vec3<bool>(arg_2, false, arg_2)), Struct_1(var_0.b.x, _wgslsmith_f_op_vec4_f32(-global0.b), vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x) | vec4<u32>(0u, global0.c.x, 1u, 0u)), Struct_1(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_vec4_f32(floor(global0.b)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.c.x, 4294967295u, 1u, u_input.a.x), var_0.c)))), var_0);
    let var_2 = ~var_1.c.x;
    global0 = func_4(arg_1, !vec3<bool>(arg_0, select(arg_0, false, true), all(vec3<bool>(false, false, false))), func_4(arg_1, select(select(!vec3<bool>(arg_0, arg_0, true), !vec3<bool>(arg_0, false, true), select(vec3<bool>(false, arg_0, false), vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, true, false))), vec3<bool>(false && arg_2, true, all(vec2<bool>(false, false))), arg_0), var_0, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1430f, global0.b.x) - _wgslsmith_f_op_f32(max(-216f, arg_1.a.x))), vec4<f32>(337f, _wgslsmith_f_op_f32(step(1202f, arg_1.a.x)), _wgslsmith_f_op_f32(step(var_0.b.x, var_1.a)), -800f), vec4<u32>(var_0.c.x, u_input.a.x, firstTrailingBit(27549u), 98292u))), Struct_1(234f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_1.b + vec4<f32>(global0.b.x, global0.b.x, global0.a, global0.b.x)), var_1.b))), vec4<u32>(7420u, var_0.c.x, 124873u, var_0.c.x)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-403f + 1544f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - -489f) + _wgslsmith_f_op_f32(-var_0.b.x)));
    return ~min(countOneBits(_wgslsmith_div_vec4_u32(countOneBits(u_input.a), vec4<u32>(u_input.a.x, var_1.c.x, var_1.c.x, 4294967295u))), _wgslsmith_mod_vec4_u32(u_input.a, ~(vec4<u32>(117704u, 66830u, var_0.c.x, 0u) >> (vec4<u32>(var_0.c.x, 0u, var_1.c.x, global0.c.x) % vec4<u32>(32u)))));
}

fn func_5(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~((vec3<u32>(arg_0.c.x, 4294967295u, global0.c.x) << (u_input.a.zwz % vec3<u32>(32u))) ^ vec3<u32>(45258u, global0.c.x, arg_0.c.x)), u_input.a.xyy, (vec3<u32>(u_input.a.x, 0u, global0.c.x) ^ ~vec3<u32>(u_input.a.x, 38880u, 5639u)) >> (_wgslsmith_div_vec3_u32(firstLeadingBit(u_input.a.zyy), ~arg_0.c.wxx) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(abs((arg_0.c.yxy << (global0.c.xxy % vec3<u32>(32u))) << (vec3<u32>(global0.c.x, u_input.a.x, arg_0.c.x) % vec3<u32>(32u))), ~global0.c.wzy, _wgslsmith_mult_vec3_u32(~(~arg_0.c.www), arg_0.c.xzw >> (countOneBits(u_input.a.zxw) % vec3<u32>(32u)))));
    var_0 = global0.c.xxz;
    var var_1 = u_input.a;
    var_0 = _wgslsmith_sub_vec3_u32(var_1.wxy, firstLeadingBit(~(firstTrailingBit(arg_0.c.zxz) ^ min(u_input.a.wyx, vec3<u32>(23432u, arg_0.c.x, 0u)))));
    global0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -939f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(select(-713f, 970f, true))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(624f)) * _wgslsmith_f_op_f32(f32(-1f) * -276f)), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(853f, _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_vec4_f32(trunc(arg_0.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), arg_0.c);
    return ~(~vec2<i32>(~min(51861i, -19388i), _wgslsmith_mod_i32(-47944i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 43527i), max(reverseBits(vec2<i32>(-2147483647i, 37328i << (u_input.a.x % 32u))), func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -255f), vec4<f32>(global0.a, 822f, 969f, global0.b.x), func_1(true, Struct_2(global0.b.wx), true)))));
    var var_1 = !(!vec4<bool>(abs(global0.c.x) == 1u, true, (8371u != u_input.a.x) || all(vec4<bool>(true, true, false, false)), true));
    var var_2 = u_input.a.x;
    let var_3 = vec3<bool>(u_input.a.x <= u_input.a.x, any(var_1.yzw), select(var_1.x, true, !all(vec4<bool>(true, true, true, true))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.zy + _wgslsmith_f_op_vec2_f32(global0.b.xw - global0.b.ww))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -1175f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0.b.wx)) * vec2<f32>(762f, global0.a)))));
    let var_5 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_4.a)) - _wgslsmith_div_vec2_f32(vec2<f32>(600f, _wgslsmith_f_op_f32(f32(-1f) * -1703f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(319f, -164f) - global0.b.wx), global0.b.ww))));
    var var_6 = Struct_1(_wgslsmith_f_op_f32(1435f - 1204f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1610f, -1867f), -1000f, _wgslsmith_f_op_f32(step(global0.a, var_5.a.x)), _wgslsmith_f_op_f32(global0.a * global0.a)) - _wgslsmith_f_op_vec4_f32(-global0.b)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(711f, 1409f, -287f, 860f), vec4<f32>(global0.a, var_5.a.x, -1727f, var_5.a.x))), global0.b), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(global0.b, vec4<f32>(1785f, -920f, 1280f, -942f)))))))), func_1(!(!all(var_3)), var_5, var_1.x));
    var var_7 = ~firstTrailingBit(max(vec4<i32>(2147483647i, var_0.x, -8658i, var_0.x), min(vec4<i32>(0i, var_0.x, -877i, var_0.x), vec4<i32>(1i, var_0.x, var_0.x, -2147483647i))) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, u_input.a.x, var_6.c.x), u_input.a.ywz), _wgslsmith_add_u32(0u, 31266u), u_input.a.x, _wgslsmith_add_u32(9696u, 1451u)) % vec4<u32>(32u)));
    var var_8 = reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_6.c.x, select(u_input.a.x, global0.c.x, false), abs(31229u)), u_input.a.xzx) ^ 7336u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.b.x), var_0.x, vec4<u32>(~1u, max(u_input.a.x, ~(global0.c.x | global0.c.x)), ~firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 87349u)), 0u), global0.b, _wgslsmith_sub_i32(1i, func_5(Struct_1(_wgslsmith_f_op_f32(-603f + -244f), vec4<f32>(607f, var_6.b.x, -376f, -912f), _wgslsmith_sub_vec4_u32(var_6.c, vec4<u32>(3881u, u_input.a.x, 9090u, 4294967295u)))).x));
}

