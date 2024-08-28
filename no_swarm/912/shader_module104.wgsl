struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 1i, -186f, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = vec2<bool>(true, true);
    var_0 = !select(vec2<bool>(var_0.x, any(vec3<bool>(false, true, false))), vec2<bool>(false, false), vec2<bool>(any(vec4<bool>(global0.a, true, false, true)), (global0.d >= 0u) == true));
    var_0 = !select(select(vec2<bool>(any(vec4<bool>(true, false, var_0.x, true)), true), select(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, false), var_0.x), vec2<bool>(true, var_0.x), global0.a), !select(vec2<bool>(false, global0.a), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false))), !vec2<bool>(global0.a, true), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(var_0.x, false), true), !(!vec2<bool>(var_0.x, false))));
    let var_1 = true;
    let var_2 = vec4<f32>(-103f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c * 932f))))), -641f, 1974f);
    return countOneBits(u_input.b);
}

fn func_2(arg_0: vec4<u32>) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_add_vec2_u32(func_3(abs(min(vec3<u32>(global0.d, u_input.c, 1u), arg_0.ywy)), Struct_2(arg_0.ww)), max(~(~arg_0.yy), select(countOneBits(vec2<u32>(u_input.c, 26432u)), vec2<u32>(arg_0.x, 50192u), vec2<bool>(false, global0.a)))));
    global0 = Struct_1(global0.a, ~u_input.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(272f)) * 399f)))), global0.d);
    var var_1 = !select(all(!vec2<bool>(false, global0.a)), true, (global0.d | 0u) > 0u);
    var var_2 = Struct_1(global0.a, -2147483647i, _wgslsmith_f_op_f32(-global0.c), abs(var_0.a.x));
    var_2 = Struct_1(~abs(u_input.a) == _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global0.b, u_input.a), 27467i, 30654i & global0.b), abs(abs(vec3<i32>(1i, -26770i, global0.b)))), 1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + 575f)) + global0.c), 1725f, false)), 37827u);
    return min(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global0.b, 1i, global0.b, global0.b), abs(select(vec4<i32>(var_2.b, var_2.b, u_input.a, u_input.a), vec4<i32>(2147483647i, var_2.b, -11782i, 0i), global0.a)), vec4<i32>(19478i, ~20295i, i32(-1i) * -1i, firstLeadingBit(-1i))) >> (_wgslsmith_sub_vec4_u32(reverseBits(abs(arg_0)), _wgslsmith_div_vec4_u32(~arg_0, arg_0)) % vec4<u32>(32u)), vec4<i32>(firstTrailingBit(_wgslsmith_mod_i32(-9763i, ~global0.b)), firstLeadingBit(~(i32(-1i) * -1467i)), global0.b, var_2.b >> (~(~23719u) % 32u)));
}

fn func_4(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(u_input.c, global0.d), global0.d);
    var var_1 = -arg_0;
    var_1 = countOneBits(_wgslsmith_mult_vec4_i32(firstTrailingBit(-vec4<i32>(-1i, 6837i, 0i, global0.b)), -_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -1i, -26110i), arg_0)));
    var_1 = ~arg_0;
    global0 = Struct_1(true, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(19973i, arg_0.x), -var_1.zx) >> (_wgslsmith_mult_u32(4294967295u | u_input.c, global0.d) % 32u), -_wgslsmith_add_i32(~arg_0.x, ~u_input.a)), _wgslsmith_f_op_f32(round(589f)), global0.d | ~(~77316u));
    return Struct_2(abs(firstTrailingBit(func_3(firstTrailingBit(vec3<u32>(global0.d, global0.d, u_input.c)), Struct_2(vec2<u32>(u_input.c, 21549u))))));
}

fn func_5(arg_0: Struct_2) -> bool {
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(-15104i, -u_input.a, max(global0.b, -u_input.a)) >> (18144u % 32u), 1i, 2147483647i, ~select(~global0.b, i32(-1i) * -global0.b, false));
    var var_1 = vec4<u32>(_wgslsmith_clamp_u32(global0.d, arg_0.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 36336u) >> (_wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, u_input.b) % vec2<u32>(32u)), ~u_input.b)), ~_wgslsmith_clamp_u32(9657u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 21399u), vec3<u32>(15691u, 4294967295u, u_input.c)), ~62265u), 50029u), ~arg_0.a.x, ~(~55927u));
    var var_2 = -558f;
    var var_3 = Struct_1(global0.a, 1i, -564f, var_1.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -907f))) - _wgslsmith_f_op_f32(round(global0.c)));
    return any(!select(!select(vec4<bool>(false, false, global0.a, true), vec4<bool>(true, false, false, true), vec4<bool>(var_3.a, false, true, global0.a)), !vec4<bool>(global0.a, true, global0.a, true), _wgslsmith_f_op_f32(round(var_3.c)) > _wgslsmith_div_f32(var_3.c, global0.c)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<u32> {
    global0 = Struct_1(~4900u <= (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(arg_1, arg_0)), 1u, firstLeadingBit(1u)) >> (max(24071u, arg_0) % 32u)), global0.b, -521f, 25593u);
    var var_0 = vec4<bool>(select(any(vec2<bool>(global0.c < global0.c, global0.a && global0.a)), all(vec3<bool>(global0.a, global0.a == global0.a, true)), true), func_5(func_4(_wgslsmith_add_vec4_i32(func_2(vec4<u32>(9277u, 39174u, 11427u, 61629u)), ~vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i)))), any(select(!(!vec3<bool>(true, true, global0.a)), select(vec3<bool>(false, global0.a, global0.a), select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(false, true, global0.a), vec3<bool>(global0.a, global0.a, true)), vec3<bool>(global0.a, global0.a, global0.a)), vec3<bool>(false, global0.a, func_5(arg_3)))), all(!vec4<bool>(true, global0.a, global0.a, any(vec4<bool>(true, false, global0.a, global0.a)))));
    var var_1 = Struct_1(any(vec2<bool>(var_0.x, true)) == any(!select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(false, global0.a, false, global0.a), vec4<bool>(var_0.x, true, global0.a, false))), -_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, global0.b), vec2<i32>(u_input.a, -30341i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.c))) - _wgslsmith_f_op_f32(max(2415f, global0.c))), firstTrailingBit(countOneBits(abs(~global0.d))));
    var var_2 = Struct_1(all(vec4<bool>(var_1.a, any(vec4<bool>(false, false, true, global0.a)), true, true)) & any(!select(vec2<bool>(global0.a, true), vec2<bool>(true, true), false)), ~_wgslsmith_add_i32(~min(2147483647i, 2147483647i), 11991i), _wgslsmith_f_op_f32(f32(-1f) * -186f), ~(~_wgslsmith_div_u32(0u, global0.d)));
    var var_3 = func_4(vec4<i32>(0i & global0.b, 1i, ((u_input.a >> (1u % 32u)) & _wgslsmith_div_i32(1i, global0.b)) ^ firstTrailingBit(func_2(vec4<u32>(global0.d, arg_1, 0u, global0.d)).x), var_1.b));
    return ~(~vec3<u32>(1u, 1u, 1u) & _wgslsmith_mult_vec3_u32(min(~vec3<u32>(u_input.c, u_input.c, arg_0), vec3<u32>(u_input.b.x, arg_0, arg_0) | vec3<u32>(28448u, 0u, 7753u)), vec3<u32>(1u, 46311u, var_3.a.x)));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = 10040i;
    let var_1 = func_4(_wgslsmith_add_vec4_i32(-vec4<i32>(~global0.b, 1i, 0i, global0.b), vec4<i32>(-2147483647i, global0.b, -arg_1.b, 0i)));
    global0 = arg_1;
    var var_2 = vec4<bool>(false, false, all(vec4<bool>(all(!vec3<bool>(arg_1.a, arg_1.a, true)), arg_1.a, arg_1.b >= -32601i, true)), global0.a);
    var var_3 = var_2.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_6(func_1(global0.d << (global0.d % 32u), global0.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, global0.c, -181f, global0.c) * vec4<f32>(-778f, 168f, global0.c, global0.c)), Struct_2(vec2<u32>(u_input.c, global0.d))) >> (vec3<u32>(~u_input.c, 0u, u_input.c | global0.d) % vec3<u32>(32u)), Struct_1(all(vec2<bool>(false, global0.a)), ~(~global0.b), _wgslsmith_f_op_f32(round(1000f)), ~global0.d), ~global0.d), abs(abs(-_wgslsmith_clamp_i32(32103i, 8935i, global0.b))), global0.c, ~global0.d);
    var_0 = Struct_1(!global0.a, 34090i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2032f), _wgslsmith_f_op_f32(step(-1000f, 594f)))), 1u);
    var var_1 = !(!vec2<bool>(var_0.a, _wgslsmith_f_op_f32(exp2(global0.c)) != 1842f));
    let var_2 = Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~(~u_input.b), _wgslsmith_mult_vec2_u32(abs(u_input.b), u_input.b | vec2<u32>(14426u, 11172u))), u_input.b));
    var_0 = Struct_1(var_0.a, func_2(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.c, 4294967295u, var_2.a.x, global0.d), vec4<u32>(global0.d, global0.d, 0u, 0u), true), ~vec4<u32>(1u, var_2.a.x, u_input.c, 72857u)), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, var_2.a.x), ~global0.d, var_0.d, 6317u))).x, global0.c, ~abs(var_0.d));
    let var_3 = Struct_1(global0.a, -2147483647i, global0.c, 0u);
    var var_4 = Struct_2(~func_1(var_3.d, var_2.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c, -2408f, 340f, global0.c)))), Struct_2(vec2<u32>(var_3.d, 4294967295u) ^ var_2.a)).xy);
    let var_5 = all(select(vec4<bool>(!all(vec2<bool>(false, false)), global0.b != u_input.a, any(vec2<bool>(true, true)), all(vec4<bool>(true, false, true, var_0.a))), !vec4<bool>(var_1.x, 1i <= u_input.a, true, false), !(!(-1438f > var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c, var_0.c, var_0.c) * vec3<f32>(var_0.c, 1822f, var_3.c)) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.c, global0.c, global0.c)))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, _wgslsmith_add_i32(u_input.a, -31567i), firstTrailingBit(-16622i)) ^ abs(vec4<i32>(-33881i, 3453i, 2147483647i, u_input.a)), abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(global0.b, u_input.a, u_input.a, -36815i), firstLeadingBit(vec4<i32>(-2147483647i, u_input.a, 0i, u_input.a)))), abs(max(vec4<i32>(global0.b, var_0.b, 0i, var_0.b), vec4<i32>(1i, u_input.a, u_input.a, 0i))) | _wgslsmith_div_vec4_i32(max(vec4<i32>(var_0.b, 0i, u_input.a, 0i), vec4<i32>(-14747i, -43907i, u_input.a, global0.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b, -1i, 5018i, global0.b), vec4<i32>(-13797i, var_3.b, 1i, var_3.b)))), var_2.a);
}

