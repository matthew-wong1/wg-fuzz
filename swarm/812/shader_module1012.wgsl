struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> vec3<bool> {
    global0 = select(select(select(vec3<bool>(global0.x, !global0.x, true), select(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, true, true), vec3<bool>(false, true, global0.x)), !vec3<bool>(global0.x, global0.x, false), !vec3<bool>(true, global0.x, true)), select(true, true, false)), select(vec3<bool>(true, select(global0.x, global0.x, false), global0.x), vec3<bool>(global0.x, true, all(global0.yz)), select(true, false, true)), global0.x), select(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, global0.x))), vec3<bool>(false, all(vec2<bool>(global0.x, global0.x)), any(!vec4<bool>(false, true, global0.x, true))), true), !select(vec3<bool>(!global0.x, global0.x, false), vec3<bool>(u_input.b.x < 46227u, global0.x, false), !(!vec3<bool>(false, true, global0.x))));
    var var_0 = reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0 & arg_0, -vec3<i32>(arg_0.x, 26284i, arg_0.x)), _wgslsmith_add_vec3_i32(firstTrailingBit(arg_0), arg_0)), _wgslsmith_sub_vec3_i32(~arg_0, reverseBits(arg_0))));
    var var_1 = _wgslsmith_f_op_f32(sign(arg_1.b.a));
    global0 = !(!select(vec3<bool>(global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, false)), all(global0.zx)), !(!vec3<bool>(global0.x, global0.x, global0.x)), false));
    var var_2 = vec3<u32>(0u, u_input.d.x, ~_wgslsmith_div_u32(u_input.a, ~(~u_input.a)));
    return vec3<bool>(all(!vec2<bool>(!global0.x, all(vec2<bool>(global0.x, false)))), global0.x, all(vec2<bool>(!global0.x, all(!global0.xx))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    global0 = !select(func_3(~vec3<i32>(arg_2.a, arg_2.a, arg_2.a), Struct_2(~arg_2.a, Struct_1(arg_1.x))), !select(select(vec3<bool>(false, global0.x, false), vec3<bool>(true, global0.x, false), vec3<bool>(false, global0.x, arg_0.x)), !vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, global0.x, arg_0.x)), vec3<bool>(true, true, true));
    global0 = select(vec3<bool>(!global0.x, !all(select(arg_0, arg_0, true)), true), select(vec3<bool>(any(select(vec3<bool>(false, global0.x, false), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, arg_0.x, global0.x))), !(arg_2.a > arg_2.a), (global0.x & global0.x) != global0.x), !vec3<bool>(false, true, any(vec3<bool>(false, arg_0.x, arg_0.x))), any(!(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), func_3(_wgslsmith_div_vec3_i32(~(~vec3<i32>(2147483647i, arg_2.a, arg_2.a)), vec3<i32>(arg_2.a, arg_2.a, arg_2.a) | (vec3<i32>(arg_2.a, arg_2.a, -36332i) << (vec3<u32>(u_input.a, u_input.d.x, u_input.d.x) % vec3<u32>(32u)))), Struct_2(arg_2.a, arg_2.b)));
    global0 = !vec3<bool>(arg_2.a < ~_wgslsmith_mult_i32(arg_2.a, 51557i), -2147483647i >= -_wgslsmith_add_i32(arg_2.a, arg_2.a), 0u <= (u_input.d.x | firstLeadingBit(u_input.c)));
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, _wgslsmith_mult_u32(31553u, u_input.d.x), ~38572u, 4294967295u), select(~vec4<u32>(u_input.a, u_input.b.x, u_input.a, 4294967295u), max(vec4<u32>(3539u, 35974u, 4294967295u, u_input.a), vec4<u32>(u_input.b.x, 16017u, u_input.d.x, 53348u)), !vec4<bool>(true, arg_0.x, false, arg_0.x)))), vec4<u32>(37385u, 132202u, ~u_input.b.x, 44154u));
    var var_1 = ~u_input.d;
    return ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.x, var_1.x, 1u, ~3583u), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 878u), vec2<u32>(var_0, var_1.x)), var_0, ~0u, 4294967295u)), ~var_0);
}

fn func_4(arg_0: u32) -> Struct_1 {
    global0 = select(!(!vec3<bool>(global0.x && global0.x, false, false)), vec3<bool>(global0.x, !(!global0.x) && true, false), vec3<bool>(true, any(!(!vec4<bool>(false, false, global0.x, global0.x))), true));
    global0 = func_3(-_wgslsmith_mod_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(-49968i, 1i), _wgslsmith_sub_i32(19502i, 1i)), -vec3<i32>(1i, 1i, 1i)), Struct_2(~select(~0i, -5149i, true), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1566f, _wgslsmith_f_op_f32(f32(-1f) * -286f))))));
    global0 = func_3(select(countOneBits(~vec3<i32>(2147483647i, 8449i, -62953i)), vec3<i32>(_wgslsmith_sub_i32(327i, firstTrailingBit(2147483647i)), 0i, -_wgslsmith_mod_i32(29835i, -2147483647i)), vec3<bool>(global0.x, true, global0.x)), Struct_2(35392i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-300f, -793f)) - var_0.a))));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.d), u_input.b) ^ reverseBits(firstLeadingBit(_wgslsmith_clamp_u32(arg_0, 0u, u_input.d.x))), 66536u);
    return Struct_1(_wgslsmith_f_op_f32(-1965f + var_0.a));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    var var_0 = !(global0.x && (_wgslsmith_sub_u32(u_input.d.x, u_input.a) == 0u));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f), arg_2.a));
    var var_2 = Struct_2(firstTrailingBit(arg_1.x), func_4(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x), ~u_input.b.x) | ~func_2(global0.yz, vec3<f32>(arg_2.a, -1105f, 772f), Struct_2(8609i, var_1))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(161f, _wgslsmith_f_op_f32(min(-799f, -718f)))), 947f, var_1.a >= -1000f)) * _wgslsmith_div_f32(var_2.b.a, -1241f)));
    var_0 = global0.x;
    return var_2.a;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: bool) -> Struct_2 {
    global0 = vec3<bool>(!all(func_3(~vec3<i32>(arg_1, arg_1, 25372i), Struct_2(arg_1, Struct_1(764f))).zy), arg_2, global0.x & arg_2);
    global0 = vec3<bool>(any(!vec2<bool>(arg_2, false)), true, any(vec4<bool>(func_3(vec3<i32>(25940i, 1i, 5335i), Struct_2(-16842i, Struct_1(arg_0))).x, func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -9328i, 2147483647i), vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(46366i, 2147483647i, 15783i)), Struct_2(arg_1, Struct_1(-573f))).x, ~3092u <= ~u_input.d.x, true)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-304f + _wgslsmith_f_op_f32(abs(-799f))))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)));
    var_1 = _wgslsmith_f_op_f32(1023f + -778f);
    return Struct_2(-1i, func_4(~_wgslsmith_mod_u32(~60260u, 6488u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1000f);
    let var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2057f))), _wgslsmith_mod_i32(~_wgslsmith_add_i32(firstTrailingBit(27168i), func_1(vec4<u32>(u_input.d.x, 16259u, u_input.b.x, 99183u), vec2<i32>(-20334i, -1i), Struct_1(318f))), _wgslsmith_sub_i32(1i, -1i)), 331f >= _wgslsmith_f_op_f32(var_0.a * -814f));
    var var_2 = func_5(func_4(1u).a, i32(-1i) * -1i, true);
    var var_3 = select(~(~(~min(0u, u_input.b.x))), u_input.c, !global0.x);
    var_2 = func_5(var_0.a, abs(1i), !(!any(!global0.xy)));
    let var_4 = firstTrailingBit(u_input.c);
    var var_5 = var_2.b;
    var_3 = _wgslsmith_clamp_u32(89274u, var_4, reverseBits(0u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_2.a);
}

