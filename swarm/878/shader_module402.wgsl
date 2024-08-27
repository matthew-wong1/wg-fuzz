struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: u32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32, arg_3: i32) -> i32 {
    global0 = arg_0;
    global0 = Struct_2(1141f, arg_0.b, Struct_1(_wgslsmith_clamp_u32(0u, u_input.a.x, reverseBits(global0.c.a)), 33324u, arg_0.c.c, arg_0.b.d, -1i));
    var var_0 = _wgslsmith_f_op_f32(sign(-1176f));
    global1 = _wgslsmith_dot_vec4_u32(u_input.a, ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, global0.c.a, u_input.a.x, arg_0.c.a))), u_input.a));
    let var_1 = global0.b.d >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, -796f, true)));
    return firstTrailingBit(-(~arg_0.b.c.x));
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = select(vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(select(global0.b.c.zz, vec2<i32>(1i, -38468i) ^ global0.c.c.yx, -1i > global0.b.e), _wgslsmith_clamp_vec2_i32(global0.c.c.zx, vec2<i32>(2147483647i, global0.b.e), vec2<i32>(global0.c.c.x, global0.b.e))), -1i, -44i), vec4<i32>(abs(1i) & -(~global0.b.e), ((global0.b.c.x >> (global0.c.a % 32u)) & global0.b.c.x) >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(78759u, 74341u, 6291u, u_input.a.x)) % 32u), global0.c.c.x ^ -func_3(Struct_2(-1126f, Struct_1(global0.b.a, u_input.a.x, global0.b.c, -1616f, -69826i), global0.b), vec4<f32>(-106f, global0.c.d, -1141f, 1495f), global0.b.c.x, 2147483647i), func_3(Struct_2(_wgslsmith_f_op_f32(-global0.c.d), global0.c, Struct_1(56598u, global0.c.a, global0.b.c, global0.c.d, 8775i)), vec4<f32>(_wgslsmith_f_op_f32(floor(742f)), _wgslsmith_f_op_f32(global0.a - global0.b.d), 1547f, _wgslsmith_f_op_f32(-global0.b.d)), ~29853i, _wgslsmith_dot_vec2_i32(global0.b.c.xy, global0.b.c.xz) & global0.c.e)), select(!vec4<bool>(global0.b.e >= -1i, any(arg_0), all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), arg_0.x), select(select(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), false), !arg_0.x), vec4<bool>(!arg_0.x, global0.b.c.x >= 9463i, any(vec4<bool>(true, arg_0.x, false, false)), true), true), !(!(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -949f), global0.b, Struct_1(32477u, global0.b.a, vec3<i32>(1i, 34291i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.c.e), vec2<i32>(11907i, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f + _wgslsmith_f_op_f32(1354f + global0.b.d))), global0.b.c.x & -10534i));
    let var_2 = 55042u;
    var_0 = vec4<i32>(-5109i, 55029i, _wgslsmith_add_i32(global0.c.c.x, firstLeadingBit(global0.c.c.x)), countOneBits(var_1.b.e));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a, global0.c.d), vec2<f32>(809f, global0.c.d))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1188f, -784f))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c.d, var_1.b.d)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.c.d, var_1.b.d))))))));
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -258f))), Struct_1(86506u, 1u, global0.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(104f - _wgslsmith_f_op_f32(sign(global0.c.d))) - _wgslsmith_f_op_f32(ceil(433f))), -var_0.x), var_1.c);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: f32) -> Struct_1 {
    global0 = func_2(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, true), any(vec2<bool>(true, false)))));
    let var_0 = vec3<bool>(false, true, !(0i <= (2147483647i | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -2147483647i, 2147483647i), vec4<i32>(arg_1, global0.c.c.x, arg_1, 0i)))));
    global1 = arg_2;
    let var_1 = func_2(vec2<bool>(false, false));
    var var_2 = vec4<bool>(select(any(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), select((62279u < var_1.b.a) & true, var_0.x, false), any(select(select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x)), vec4<bool>(false, var_0.x, var_0.x, false), false))), 49444u > var_1.c.a, all(!vec3<bool>(true, var_1.c.e > 0i, true)), all(!(!var_0)));
    return global0.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = select(arg_0.www, arg_0.xyz, false);
    global0 = arg_1;
    let var_1 = _wgslsmith_mult_u32(u_input.a.x, 0u | _wgslsmith_dot_vec4_u32(~abs(u_input.a), ~(~u_input.a)));
    var var_2 = select(_wgslsmith_sub_vec4_i32(-(vec4<i32>(2367i, -37714i, arg_1.b.c.x, -24847i) | vec4<i32>(global0.b.e, arg_1.b.e, -29533i, arg_1.c.e)), firstLeadingBit(-vec4<i32>(2147483647i, 1i, -51861i, -10191i))) ^ max(_wgslsmith_sub_vec4_i32(vec4<i32>(-12987i, arg_1.b.e, -6239i, 1i), vec4<i32>(arg_1.c.e, global0.b.c.x, 2147483647i, arg_1.c.c.x)) & max(vec4<i32>(global0.c.c.x, arg_1.c.c.x, -1i, global0.b.e), vec4<i32>(arg_1.b.e, 1i, 0i, global0.c.c.x)), _wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, global0.b.c.x, -2147483647i, 1i), abs(vec4<i32>(arg_1.c.c.x, -4173i, global0.c.c.x, global0.b.c.x)))), vec4<i32>(func_1(global0.c.d, global0.c.c.x, 85317u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-493f)), arg_1.c.d))).c.x, ~(-1i), global0.c.e, max(_wgslsmith_sub_i32(global0.c.c.x, select(1i, 12102i, arg_0.x)), 44311i | select(-16170i, arg_1.c.c.x, false))), !arg_0);
    var var_3 = vec3<bool>(select(select(~u_input.a.x > u_input.a.x, select(global0.b.d > 391f, true, true), !arg_0.x), !any(vec4<bool>(true, true, arg_0.x, false)), true), true, !any(arg_0));
    return Struct_2(_wgslsmith_f_op_f32(min(arg_1.c.d, 2073f)), func_1(global0.b.d, ~(-13893i), ~reverseBits(abs(4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f + _wgslsmith_f_op_f32(1640f + global0.a)))), Struct_1(u_input.a.x, 93554u, var_2.xwy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.d) * _wgslsmith_f_op_f32(select(global0.b.d, global0.a, true)))), arg_1.c.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!vec4<bool>(!any(vec3<bool>(true, true, false)), false, select(select(true, false, true), true, true), true), Struct_2(_wgslsmith_f_op_f32(243f * _wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(trunc(global0.b.d)))), Struct_1(countOneBits(reverseBits(0u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yx), _wgslsmith_mod_vec3_i32(global0.b.c >> (u_input.a.wzw % vec3<u32>(32u)), global0.c.c), global0.b.d, -4419i), func_1(_wgslsmith_f_op_f32(167f + -361f), _wgslsmith_dot_vec2_i32(global0.b.c.zy, vec2<i32>(global0.c.c.x, global0.c.c.x)), _wgslsmith_add_u32(u_input.a.x | 47823u, 36062u), global0.a)));
    let var_1 = !(!(1u <= var_0.c.b) || all(vec3<bool>(true, true, true)));
    var var_2 = vec4<bool>(!((firstLeadingBit(global0.c.c.x) >= global0.c.e) != !var_1), all(vec4<bool>(!(var_1 || false), -880f < _wgslsmith_f_op_f32(abs(var_0.a)), !var_1, false)), var_1, (-countOneBits(var_0.c.e) >> (_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(var_0.c.a, u_input.a.x) & u_input.a.ww) % 32u)) < _wgslsmith_clamp_i32(-10227i, var_0.c.c.x, global0.c.e));
    global1 = (~global0.b.b << (111647u % 32u)) >> (abs(0u) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1154f, func_4(vec4<bool>(false, var_2.x, false, var_2.x), Struct_2(1320f, global0.c, Struct_1(1u, 38131u, global0.b.c, 119f, var_0.b.c.x))).c.d, _wgslsmith_f_op_f32(ceil(global0.b.d)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 812f, -627f))), vec3<f32>(global0.c.d, 1109f, _wgslsmith_f_op_f32(global0.b.d + var_0.b.d)), vec3<bool>(any(vec2<bool>(true, var_2.x)), true, true)))), vec3<i32>(-9229i, _wgslsmith_sub_i32(func_3(Struct_2(var_0.b.d, global0.b, global0.b), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.c.d, 408f, 1432f, 1055f))), var_0.b.c.x ^ -18991i, -var_0.b.e), abs(-1i)), -31414i), -_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, var_0.b.c.x), global0.c.e, var_0.b.c.x << (26922u % 32u)), abs(func_2(var_2.zy).c.c)));
}

