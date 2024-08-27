struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-174f, 1139f);

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = !select(select(select(!vec4<bool>(false, false, true, global1.x), !vec4<bool>(true, global1.x, arg_0.x, false), !vec4<bool>(arg_0.x, global1.x, true, false)), !select(vec4<bool>(global1.x, false, arg_0.x, arg_0.x), vec4<bool>(false, global1.x, false, true), true), true), !(!(!vec4<bool>(global1.x, global1.x, global1.x, true))), arg_0.x);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-413f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1616f))));
    var var_1 = Struct_1(~1u, vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, -1027f), countOneBits(select(vec3<i32>(countOneBits(19924i), -85174i, 1i), ~vec3<i32>(0i, 1i, 0i), all(select(vec2<bool>(var_0.x, arg_0.x), var_0.wx, global1.x)))), global0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global0.x) - _wgslsmith_f_op_f32(1351f + global0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(round(-447f))))));
    var_1 = Struct_1(abs(4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, _wgslsmith_div_f32(1000f, 468f)) + var_1.b), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * 630f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-376f)))));
    let var_2 = Struct_1(0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(min(var_1.b, vec3<f32>(355f, 697f, -832f))))), var_1.c, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e - 1000f)), _wgslsmith_f_op_f32(step(326f, -315f)))));
    return 278u;
}

fn func_2() -> vec2<f32> {
    var var_0 = min(reverseBits(~firstLeadingBit(vec4<u32>(26466u, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 19112u, u_input.a.x, 4294967295u) % vec4<u32>(32u)))), vec4<u32>(func_3(select(select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_mod_u32(1u, ~(~13969u)), 42675u, 0u));
    var_0 = ~vec4<u32>(abs(23804u) & countOneBits(select(10221u, 11012u, global1.x)), _wgslsmith_mod_u32(reverseBits(~var_0.x), _wgslsmith_mult_u32(var_0.x, firstTrailingBit(4294967295u))), 4294967295u, 57492u);
    let var_1 = Struct_1(_wgslsmith_mod_u32(abs(~1u) & ~(var_0.x ^ u_input.a.x), func_3(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -201f, global0.x)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, global0.x, 757f), vec3<f32>(-464f, global0.x, 757f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-256f, 729f, 1407f))))))), vec3<i32>(1i, -firstLeadingBit(1i), abs(-4027i)), _wgslsmith_f_op_f32(step(global0.x, -1484f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))))));
    global1 = select(select(!vec2<bool>(!global1.x, true), !(!select(vec2<bool>(false, global1.x), vec2<bool>(false, true), vec2<bool>(true, global1.x))), vec2<bool>(false, !all(vec4<bool>(true, true, false, global1.x)))), vec2<bool>(~(~4294967295u) == abs(~var_1.a), global0.x > global0.x), vec2<bool>(!global1.x, !global1.x));
    let var_2 = vec4<i32>(_wgslsmith_div_i32(var_1.c.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.c.x, ~var_1.c.x), 2147483647i, _wgslsmith_div_i32(-24467i, max(7134i, var_1.c.x)))), countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_1.c.x, -1i, var_1.c.x, 1i), vec4<i32>(var_1.c.x, 1i, var_1.c.x, 19238i), global1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.c.x, -8341i, 7345i, var_1.c.x), vec4<i32>(1i, var_1.c.x, var_1.c.x, -60047i))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.x, var_1.c.x, var_1.c.x, -54465i), vec4<i32>(var_1.c.x, 23451i, var_1.c.x, var_1.c.x))))), var_1.c.x, _wgslsmith_add_i32(-countOneBits(-var_1.c.x), 0i));
    return var_1.b.yy;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(125f, global0.x)) * _wgslsmith_f_op_vec2_f32(func_2())) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-493f, -593f)))));
    global1 = !select(vec2<bool>(true, true), !(!(!vec2<bool>(global1.x, false))), !vec2<bool>(select(false, global1.x, global1.x), arg_0 < 0u));
    global1 = !vec2<bool>(global1.x, false);
    var var_0 = 0i;
    let var_1 = global1.x;
    return min(u_input.a.x, _wgslsmith_mod_u32(abs(arg_0), max(4294967295u, 54790u))) >> (~(arg_0 << (~1u % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1985f, global0.x)))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))));
    var var_0 = select(vec4<bool>(true, !global1.x, true, 1u <= func_1(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 28338u), ~vec3<i32>(12607i, 41789i, -53225i))), vec4<bool>(global1.x, global1.x, global1.x, !(-914f < global0.x) & any(!vec4<bool>(false, global1.x, global1.x, global1.x))), global1.x || (_wgslsmith_mult_u32(1u, ~4294967295u) > (~u_input.a.x << (~1u % 32u))));
    var var_1 = Struct_1(~(~u_input.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1034f, global0.x) + vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, global0.x, global0.x))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(915f, 871f, -1274f) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(323f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(779f, -1643f, global0.x) + vec3<f32>(global0.x, -781f, -2104f)))))), _wgslsmith_sub_vec3_i32(select(~(-vec3<i32>(1i, -1i, 2147483647i)), -vec3<i32>(-2147483647i, -12917i, 1i), select(select(vec3<bool>(false, false, false), var_0.yyy, global1.x), select(vec3<bool>(false, false, false), vec3<bool>(global1.x, global1.x, true), global1.x), select(var_0.zzy, var_0.xyy, var_0.x))), abs(~(~vec3<i32>(-54051i, 2147483647i, -13918i)))), global0.x, 1044f);
    var var_2 = select(var_0.zzy, select(!select(select(vec3<bool>(true, global1.x, true), var_0.xzw, vec3<bool>(var_0.x, false, global1.x)), select(var_0.zxw, vec3<bool>(global1.x, false, true), var_0.wxx), !var_0.wyx), select(var_0.yxx, var_0.wzy, all(!vec2<bool>(global1.x, global1.x))), select(select(var_0.zyx, !var_0.yxw, true), var_0.wxy, all(var_0.yy))), vec3<bool>(!global1.x, any(vec2<bool>(all(var_0.wy), true)), !(any(vec2<bool>(true, true)) || var_0.x)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(var_1.b.yx, var_1.b.xx)))))))));
    var var_3 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 0u, reverseBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x))), vec4<u32>(~1u, 1u, _wgslsmith_mult_u32(1u, u_input.a.x), _wgslsmith_clamp_u32(2714u, u_input.a.x, u_input.a.x) >> ((u_input.a.x | u_input.a.x) % 32u)));
    let var_4 = u_input.a ^ ~select(vec3<u32>(1u, var_1.a, 0u) ^ vec3<u32>(u_input.a.x, var_1.a, 1u), vec3<u32>(func_3(var_0.wz), 13554u, 1u << (u_input.a.x % 32u)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(843f, 1472f, _wgslsmith_f_op_f32(min(-1806f, _wgslsmith_f_op_f32(abs(-333f)))), _wgslsmith_div_f32(569f, -1059f)))), var_1.b);
}

