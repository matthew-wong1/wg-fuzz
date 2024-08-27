struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 0i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = abs(vec3<u32>(1u, 1u, 1u));
    global0 = u_input.b.yx;
    var var_1 = u_input.b.x;
    var_1 = _wgslsmith_sub_i32(-2147483647i, i32(-1i) * -u_input.b.x);
    var_1 = -reverseBits(~(-1i));
    return true;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(select(firstTrailingBit(1u) >= 1u, arg_3 | arg_3, arg_0), countOneBits(u_input.a) != (u_input.a >> (48532u % 32u)), vec2<bool>(arg_3, arg_3), !(!select(false, false, any(vec4<bool>(false, arg_0, true, arg_0)))));
    global0 = vec2<i32>(u_input.b.x, -35170i);
    var var_1 = 1u << (firstTrailingBit(1u) % 32u);
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> bool {
    global0 = u_input.b.yy;
    let var_0 = func_3(!((any(vec3<bool>(arg_2.d, arg_2.d, true)) || true) & ((arg_2.b || arg_2.a) & (arg_2.b == false))), func_3(arg_2.d, func_3(false || func_2(vec2<f32>(arg_1, arg_0)), func_3(!arg_2.a, Struct_1(true, false, vec2<bool>(false, arg_2.b), false), arg_0, arg_2.d), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-147f, arg_0)))), any(vec4<bool>(false, false, true, arg_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2022f) - _wgslsmith_f_op_f32(1907f + _wgslsmith_f_op_f32(-arg_0))), !any(!vec2<bool>(arg_2.c.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -1301f), _wgslsmith_f_op_f32(arg_1 + 271f) >= -172f);
    let var_1 = var_0;
    global0 = firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global0.x, abs(-1i)), ~(-43361i)), -(vec2<i32>(global0.x, u_input.a) ^ select(u_input.b.zy, u_input.b.xy, var_1.b))));
    global0 = abs(u_input.b.zx | u_input.b.zy);
    return all(vec2<bool>(all(vec4<bool>(var_0.d, arg_2.c.x, arg_2.d, false != var_1.c.x)), !(func_3(var_1.a, Struct_1(var_0.d, true, vec2<bool>(false, arg_2.a), var_1.a), arg_1, var_0.b).b | arg_2.a)));
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: bool) -> Struct_2 {
    global0 = vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, 0i) | ~u_input.b.x, 9978i), i32(-1i) * -1i);
    var var_0 = !vec3<bool>(func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-565f, -274f), arg_0))), !arg_2, false);
    var var_1 = Struct_1(all(!func_3(false, func_3(false, Struct_1(false, var_0.x, vec2<bool>(false, arg_2), true), arg_0.x, true), _wgslsmith_f_op_f32(round(arg_0.x)), arg_0.x != arg_0.x).c), !var_0.x, select(func_3(func_4(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x, func_3(arg_1, Struct_1(var_0.x, arg_2, var_0.xy, false), arg_0.x, false), ~26361u), func_3(arg_1, Struct_1(arg_1, arg_2, var_0.xx, arg_2), _wgslsmith_f_op_f32(ceil(-164f)), arg_1 || arg_1), _wgslsmith_f_op_f32(-arg_0.x), func_3(arg_2 != arg_2, func_3(arg_1, Struct_1(var_0.x, true, var_0.zx, true), arg_0.x, true), arg_0.x, true).c.x).c, var_0.xx, var_0.x), func_2(arg_0));
    var_1 = func_3(true, Struct_1(arg_2, false, select(vec2<bool>(u_input.a > u_input.b.x, var_0.x), var_0.zx, any(vec4<bool>(arg_2, var_1.a, false, false)) | true), func_4(-1988f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x), Struct_1(false, !arg_1, !vec2<bool>(var_0.x, arg_2), !var_0.x), ~_wgslsmith_sub_u32(0u, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, 529f)) - arg_0.x), arg_1);
    var var_2 = Struct_2(global0.x, vec4<i32>(u_input.b.x >> (29257u % 32u), u_input.b.x, u_input.b.x, -(min(global0.x, 23796i) << (54703u % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(882f, 623f, arg_0.x), vec3<f32>(-278f, arg_0.x, arg_0.x)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1496f, -639f, arg_0.x) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1406f, 679f, -499f)))))));
    return Struct_2((u_input.a >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(21857u, 1u), ~vec2<u32>(4294967295u, 0u)) % 32u)) << (_wgslsmith_mod_u32(~1u, _wgslsmith_mod_u32(~43394u, _wgslsmith_dot_vec4_u32(vec4<u32>(142506u, 1u, 88307u, 4294967295u), vec4<u32>(6362u, 0u, 39756u, 83236u)))) % 32u), vec4<i32>(0i, u_input.a, -37075i, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, u_input.a, global0.x), vec3<i32>(5790i, global0.x, global0.x)) | ~0i)), var_2.c);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(300f, arg_2)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_2), 1005f))), func_4(arg_2, _wgslsmith_f_op_f32(-777f * _wgslsmith_f_op_f32(step(502f, _wgslsmith_f_op_f32(-1831f + arg_2)))), func_3(!(49305i < u_input.a), Struct_1(func_2(vec2<f32>(-1879f, arg_2)), all(vec4<bool>(arg_0, arg_3.a, arg_1, arg_3.a)), !arg_3.c, false), arg_2, countOneBits(u_input.a) < (global0.x ^ global0.x)), ~firstLeadingBit(69338u)), !arg_0);
    var var_1 = any(select(select(!vec4<bool>(arg_0, arg_0, arg_3.a, true), !vec4<bool>(false, false, arg_3.b, false), !select(vec4<bool>(arg_1, arg_3.d, true, arg_1), vec4<bool>(true, arg_1, false, false), vec4<bool>(true, arg_3.a, arg_3.a, arg_3.c.x))), select(!vec4<bool>(arg_3.c.x, false, true, false), vec4<bool>(false, arg_0, arg_0 && arg_3.b, arg_0), !select(vec4<bool>(arg_3.c.x, false, arg_0, arg_0), vec4<bool>(false, true, arg_1, arg_3.c.x), true)), vec4<bool>(true, u_input.a > -u_input.a, all(arg_3.c), !(!arg_0))));
    let var_2 = var_0.c.x;
    var var_3 = _wgslsmith_dot_vec2_i32(-func_5(vec2<f32>(-1558f, arg_2), arg_1 & any(vec3<bool>(arg_1, arg_1, arg_3.a)), true).b.wz, vec2<i32>(~global0.x & ~countOneBits(global0.x), firstLeadingBit(u_input.b.x)));
    var var_4 = true;
    return true;
}

fn func_6(arg_0: f32, arg_1: bool, arg_2: vec4<u32>, arg_3: vec4<f32>) -> vec2<f32> {
    global0 = abs(-(~reverseBits(~vec2<i32>(-1i, -1i))));
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) * _wgslsmith_f_op_f32(arg_3.x * arg_0)), arg_0) + vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(-arg_3.x))), any(!(!(!vec4<bool>(true, arg_1, arg_1, arg_1)))), false);
    let var_1 = vec4<u32>(24031u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(1u), 0u & arg_2.x), vec2<u32>(80132u, _wgslsmith_mult_u32(1u, 60411u))), firstLeadingBit(_wgslsmith_div_u32(reverseBits(_wgslsmith_mod_u32(arg_2.x, 0u)), 25096u)), _wgslsmith_dot_vec3_u32(arg_2.yzx, ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, 58540u), ~arg_2.yxy)));
    let var_2 = func_3(arg_1, Struct_1(arg_1, (arg_2.x > abs(arg_2.x)) | arg_1, select(vec2<bool>(true, func_1(true, arg_1, 2294f, Struct_1(arg_1, arg_1, vec2<bool>(false, true), arg_1))), !select(vec2<bool>(false, true), vec2<bool>(arg_1, false), arg_1), select(select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false)), !vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1))), any(vec3<bool>(arg_1, !arg_1, false))), _wgslsmith_f_op_f32(f32(-1f) * -1373f), !arg_1 | false);
    global0 = vec2<i32>(-2147483647i | global0.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(14694i, global0.x, 2147483647i, abs(-37124i)), vec4<i32>(firstLeadingBit(-16919i), 1i, 1i, ~0i)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-808f, -2202f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.c.yx))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-648f - arg_0) + _wgslsmith_f_op_f32(-1613f * var_0.c.x)))));
}

fn func_7(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<u32>, arg_3: f32) -> vec2<i32> {
    global0 = select(func_5(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_3), -654f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-468f, arg_3))))), true, !any(select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, false, false), arg_1))).b.ww, u_input.b.zz, func_3(arg_1, func_3(true, Struct_1(any(vec3<bool>(arg_1, false, arg_1)), true, func_3(true, Struct_1(arg_1, true, vec2<bool>(true, arg_1), true), arg_0.x, true).c, arg_1), arg_0.x, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-999f, -317f) - -1065f))), !arg_1).b);
    global0 = ~(-(~vec2<i32>(-u_input.b.x, global0.x)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_0.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x)))))) - -1502f);
    global0 = vec2<i32>(select(1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(~0i, 28522i), ~(global0.x ^ 2147483647i)), !(any(vec3<bool>(false, true, true)) || !arg_1)), func_5(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(811f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 * arg_0)), arg_1)), any(!func_3(true, Struct_1(arg_1, arg_1, vec2<bool>(true, arg_1), false), arg_0.x, arg_1).c), all(select(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), true), select(vec3<bool>(true, true, false), vec3<bool>(arg_1, false, false), vec3<bool>(false, arg_1, false)), true))).b.x);
    var var_1 = ~vec3<i32>(firstTrailingBit(-_wgslsmith_mod_i32(-1i, global0.x)), u_input.a, -44488i);
    return _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(-22748i, u_input.a)) >> ((abs(~arg_2.yy) << ((arg_2.wy >> (max(arg_2.yy, arg_2.yw) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), var_1.xy ^ _wgslsmith_add_vec2_i32(func_5(_wgslsmith_f_op_vec2_f32(-arg_0), false == arg_1, true).b.yx, u_input.b.zx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~firstTrailingBit(func_7(_wgslsmith_f_op_vec2_f32(func_6(_wgslsmith_f_op_f32(-218f + 1117f), func_1(false, true, 1018f, Struct_1(false, true, vec2<bool>(false, true), false)), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-234f, -362f, -826f, -978f) - vec4<f32>(1718f, 339f, 1433f, -231f)))), false, countOneBits(vec4<u32>(73871u, 0u, 0u, 30486u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1695f - 1494f))));
    global0 = u_input.b.xy;
    let var_0 = Struct_1(all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)), select(vec2<bool>(all(vec2<bool>(true, true)), any(func_3(false, Struct_1(true, false, vec2<bool>(true, true), false), 1698f, false).c)), select(vec2<bool>(all(vec2<bool>(false, false)), false), vec2<bool>(true, global0.x <= u_input.a), !all(vec2<bool>(false, true))), vec2<bool>(true, true)), !any(vec3<bool>(true, false, false)));
    var var_1 = _wgslsmith_f_op_f32(abs(-133f));
    global0 = min(~vec2<i32>(-2147483647i, firstLeadingBit(global0.x)), -(u_input.b.zx << (~(~vec2<u32>(0u, 4067u)) % vec2<u32>(32u))));
    let var_2 = Struct_1(any(vec2<bool>(var_0.c.x, 78854i == global0.x)), false, var_0.c, all(select(vec3<bool>(true, true, false), select(!vec3<bool>(true, var_0.c.x, var_0.c.x), select(vec3<bool>(var_0.b, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.b), true), var_0.c.x), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1565f), _wgslsmith_div_f32(1199f, -407f), func_3(true, Struct_1(true, false, var_0.c, true), -178f, false), 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, 0u, 43197u), vec2<i32>(global0.x, ~1i), vec4<u32>(firstTrailingBit(max(~1u, ~1u)), 1u, firstLeadingBit(~1u), abs(4294967295u)), vec4<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -35909i, u_input.b.x), max(vec4<i32>(19160i, u_input.b.x, -1i, 2147483647i), vec4<i32>(44274i, u_input.b.x, -10117i, 1i))), 28287i, !(!var_2.c.x)), ~(-16922i), _wgslsmith_mod_i32(0i, global0.x) | abs(global0.x), 0i));
}

