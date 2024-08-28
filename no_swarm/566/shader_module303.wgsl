struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: u32) -> i32 {
    global0 = Struct_1(vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(floor(global0.b)));
    var var_0 = ~arg_1;
    let var_1 = vec3<u32>(arg_1, select(~u_input.d.x, ~(~1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, arg_1, 9217u), u_input.c)), !global0.a.x && true), _wgslsmith_dot_vec4_u32(u_input.b << (abs(u_input.b >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, 0u, arg_1, u_input.b.x) >> (firstTrailingBit(vec4<u32>(arg_0, 30116u, 13985u, arg_1)) % vec4<u32>(32u)), ~u_input.b & _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, u_input.d.x, 25288u, u_input.b.x), vec4<u32>(arg_0, 31302u, 42627u, 0u), u_input.b))));
    var var_2 = Struct_1(vec2<bool>(any(vec2<bool>(global0.a.x, global0.b.x <= global0.b.x)), true), vec3<f32>(_wgslsmith_div_f32(164f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, global0.b.x))), global0.b.x, _wgslsmith_f_op_f32(1545f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b.x)) - global0.b.x))));
    let var_3 = abs(reverseBits(firstTrailingBit(min(~u_input.b.zxz, abs(vec3<u32>(0u, arg_1, 0u))))));
    return -35866i;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(global0.a, global0.b);
    var var_1 = vec4<i32>(24175i, _wgslsmith_mult_i32((_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, u_input.a, u_input.a), vec4<i32>(-13767i, -1376i, 2147483647i, u_input.a)) ^ (u_input.a & 2147483647i)) << (~_wgslsmith_mult_u32(u_input.b.x, u_input.d.x) % 32u), countOneBits(~firstLeadingBit(1i))), max(-21849i, func_3(~4294967295u ^ u_input.c.x, _wgslsmith_sub_u32(abs(u_input.b.x), ~4294967295u))), ~(-7352i));
    var var_2 = _wgslsmith_f_op_f32(round(arg_0.x));
    let var_3 = _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(~(u_input.b.wxy ^ u_input.b.ywx), u_input.b.xzz), u_input.d.x >> (countOneBits(_wgslsmith_mult_u32(4294967295u >> (u_input.c.x % 32u), 1u)) % 32u));
    var_1 = reverseBits(max(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, 0i, 2147483647i), vec4<i32>(-27162i, 29779i, u_input.a, 4456i)), vec4<i32>(u_input.a, u_input.a, 1i, -1i)) ^ ~firstLeadingBit(vec4<i32>(u_input.a, -42736i, 23325i, -5311i))) >> (~firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(4499u, 4294967295u), 55723u, 1u, 4294967295u)) % vec4<u32>(32u));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(!(!vec2<bool>(!global0.a.x, arg_1.a.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-856f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1472f)) + _wgslsmith_f_op_f32(ceil(1526f))), _wgslsmith_f_op_f32(-global0.b.x)), arg_1.b, true)));
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, abs(2147483647i), 2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-8733i, u_input.a, 2147483647i, 41716i), -vec4<i32>(-20819i, 2147483647i, -91799i, -41782i))), ~(vec4<i32>(-2147483647i, u_input.a, u_input.a, 9532i) & ~vec4<i32>(-2147483647i, u_input.a, u_input.a, 0i)), vec4<i32>(-1i, -1i, u_input.a, _wgslsmith_div_i32(max(u_input.a, u_input.a), -u_input.a))) | vec4<i32>(u_input.a ^ -16514i, _wgslsmith_mult_i32(25831i, u_input.a), -1i, u_input.a ^ (i32(-1i) * -6928i));
    global0 = arg_1;
    global0 = Struct_1(!select(select(vec2<bool>(global0.a.x, global0.a.x), var_0.a, arg_0.a), select(arg_0.a, vec2<bool>(true, true), true), true), _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 1243f, -1111f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.b))))));
    var var_2 = var_1;
    return all(select(!vec3<bool>(false || arg_1.a.x, true, arg_0.a.x), !select(vec3<bool>(false, true, global0.a.x), select(vec3<bool>(global0.a.x, arg_1.a.x, false), vec3<bool>(global0.a.x, arg_1.a.x, var_0.a.x), vec3<bool>(true, global0.a.x, true)), true), true));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !(!vec4<bool>(arg_0.b.x != arg_0.b.x, false, true, func_4(Struct_1(global0.a, arg_0.b), func_2(vec2<f32>(-1111f, global0.b.x)))));
    global0 = arg_0;
    let var_1 = arg_0;
    global0 = Struct_1(!(!select(vec2<bool>(false, global0.a.x), !arg_0.a, false)), var_1.b);
    var var_2 = arg_0;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_0;
    return arg_1;
}

fn func_6(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    global0 = arg_2;
    var var_0 = select(!select(!(!vec4<bool>(true, false, global0.a.x, global0.a.x)), vec4<bool>(true, !arg_2.a.x, !arg_2.a.x, func_4(Struct_1(vec2<bool>(arg_2.a.x, true), vec3<f32>(-878f, arg_2.b.x, arg_2.b.x)), arg_2)), !any(vec4<bool>(false, false, false, global0.a.x))), select(select(vec4<bool>(false, 8958i != u_input.a, true, !arg_2.a.x), !select(vec4<bool>(global0.a.x, false, false, global0.a.x), vec4<bool>(global0.a.x, arg_2.a.x, false, global0.a.x), vec4<bool>(false, global0.a.x, false, false)), any(vec4<bool>(global0.a.x, arg_2.a.x, true, false))), select(vec4<bool>(arg_2.a.x, !arg_2.a.x, true, all(vec4<bool>(arg_2.a.x, true, true, arg_2.a.x))), select(select(vec4<bool>(true, false, global0.a.x, false), vec4<bool>(global0.a.x, true, false, true), vec4<bool>(global0.a.x, arg_2.a.x, false, true)), select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), vec4<bool>(false, global0.a.x, true, true), vec4<bool>(true, true, false, arg_2.a.x)), vec4<bool>(global0.a.x, arg_2.a.x, global0.a.x, global0.a.x)), true), select(!(!vec4<bool>(true, false, arg_2.a.x, true)), !(!vec4<bool>(global0.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x)), vec4<bool>(func_5(arg_2, arg_2).a.x, all(vec3<bool>(true, true, arg_2.a.x)), false, true))), arg_2.a.x);
    var_0 = select(!vec4<bool>(!global0.a.x, any(!vec4<bool>(true, global0.a.x, var_0.x, false)), any(!vec4<bool>(true, arg_2.a.x, false, arg_2.a.x)), -17830i <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a))), vec4<bool>(!global0.a.x, !(!var_0.x) & any(vec4<bool>(var_0.x, false, false, global0.a.x)), all(vec3<bool>(global0.a.x, global0.a.x, func_5(arg_2, arg_2).a.x)), true || global0.a.x), select(select(!(!vec4<bool>(var_0.x, false, true, arg_2.a.x)), !vec4<bool>(var_0.x, false, true, arg_2.a.x), select(select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(false, var_0.x, false, false), vec4<bool>(arg_2.a.x, true, true, true)), !vec4<bool>(false, false, arg_2.a.x, arg_2.a.x), vec4<bool>(var_0.x, true, var_0.x, false))), !(!(!vec4<bool>(var_0.x, true, true, var_0.x))), u_input.a <= ~_wgslsmith_div_i32(0i, -27239i)));
    global0 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b.xy), func_2(_wgslsmith_f_op_vec2_f32(exp2(global0.b.zx))).b.zx));
    var var_1 = func_1(Struct_1(vec2<bool>(true, func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b.x, 1123f), vec2<f32>(global0.b.x, -1314f), global0.a.x))).a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(2300f, global0.b.x, arg_2.b.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2823f, arg_0, -682f))))));
    return countOneBits(u_input.a);
}

fn func_7(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_1 {
    global0 = func_5(Struct_1(!func_1(func_1(Struct_1(global0.a, vec3<f32>(505f, global0.b.x, -1000f)))).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b))), Struct_1(global0.a, global0.b));
    var var_0 = Struct_1(global0.a, func_5(func_1(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.b.x)))), Struct_1(vec2<bool>(true, global0.a.x), global0.b)).b);
    var var_1 = !vec3<bool>(any(!vec3<bool>(global0.a.x, global0.a.x, var_0.a.x)), func_6(_wgslsmith_f_op_f32(ceil(var_0.b.x)), vec2<u32>(10308u, 15025u), func_2(var_0.b.xx)) == arg_1.x, all(vec4<bool>(any(var_0.a), global0.a.x, global0.a.x, global0.a.x || false)));
    let var_2 = var_0.b.x;
    var var_3 = abs(41633u);
    return Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-var_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_7(vec4<i32>(u_input.a & (abs(-1i) & (u_input.a >> (22336u % 32u))), u_input.a, u_input.a, func_6(-1312f, firstTrailingBit(u_input.c.xy), func_5(Struct_1(global0.a, vec3<f32>(global0.b.x, 1484f, -757f)), func_1(Struct_1(vec2<bool>(false, true), global0.b))))), vec3<i32>(u_input.a, countOneBits(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 53791u, 60046u, u_input.c.x), vec4<u32>(1u, u_input.d.x, 1u, u_input.c.x)), 36028u)), abs(~(44506i | u_input.a))));
    global0 = func_1(Struct_1(func_2(global0.b.zx).a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(global0.b, _wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(global0.b.x, -172f, 1978f)), false && global0.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) - vec3<f32>(global0.b.x, global0.b.x, global0.b.x))))));
    var var_0 = Struct_1(!vec2<bool>(!(global0.b.x >= global0.b.x), func_7(reverseBits(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)), select(vec3<i32>(u_input.a, 73748i, 15154i), vec3<i32>(2147483647i, u_input.a, u_input.a), global0.a.x)).a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(265f, 445f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.b.x, global0.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(global0.b)), global0.b, global0.a.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) - global0.b)), true)));
    let var_1 = select(select(!select(vec4<bool>(false, false, global0.a.x, true), select(vec4<bool>(var_0.a.x, false, var_0.a.x, false), vec4<bool>(global0.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(false, global0.a.x, global0.a.x, true)), select(vec4<bool>(var_0.a.x, true, false, global0.a.x), vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x), global0.a.x)), select(select(vec4<bool>(var_0.a.x, global0.a.x, true, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, var_0.a.x), select(vec4<bool>(var_0.a.x, false, true, global0.a.x), vec4<bool>(false, false, var_0.a.x, var_0.a.x), true)), vec4<bool>(global0.a.x | var_0.a.x, any(vec3<bool>(var_0.a.x, false, false)), true, false), true), select(!select(vec4<bool>(global0.a.x, true, var_0.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, true, true), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, var_0.a.x)), vec4<bool>(!global0.a.x, global0.a.x, var_0.a.x, true), false)), select(!(!vec4<bool>(true, var_0.a.x, false, false)), select(!(!vec4<bool>(var_0.a.x, global0.a.x, false, global0.a.x)), select(vec4<bool>(global0.a.x, true, var_0.a.x, var_0.a.x), select(vec4<bool>(false, global0.a.x, var_0.a.x, global0.a.x), vec4<bool>(true, global0.a.x, var_0.a.x, var_0.a.x), global0.a.x), func_2(global0.b.xy).a.x), select(!vec4<bool>(global0.a.x, false, true, false), select(vec4<bool>(true, true, true, global0.a.x), vec4<bool>(false, global0.a.x, var_0.a.x, global0.a.x), vec4<bool>(false, true, var_0.a.x, global0.a.x)), !vec4<bool>(var_0.a.x, var_0.a.x, true, global0.a.x))), !select(vec4<bool>(true, false, var_0.a.x, global0.a.x), select(vec4<bool>(var_0.a.x, global0.a.x, true, global0.a.x), vec4<bool>(var_0.a.x, global0.a.x, true, true), vec4<bool>(false, global0.a.x, true, false)), global0.a.x)), func_4(func_2(var_0.b.xy), Struct_1(vec2<bool>(global0.a.x, var_0.a.x && global0.a.x), global0.b)));
    var var_2 = Struct_1(func_5(func_2(_wgslsmith_f_op_vec2_f32(var_0.b.yz - var_0.b.xz)), Struct_1(!vec2<bool>(global0.a.x, true), global0.b)).a, _wgslsmith_f_op_vec3_f32(exp2(var_0.b)));
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(firstLeadingBit(-u_input.a | -47558i), -498i >> (~u_input.b.x % 32u), u_input.a), 45882i, -u_input.a);
    global0 = func_7(min(vec4<i32>(var_3, countOneBits(~var_3), ~1i, var_3), (countOneBits(vec4<i32>(u_input.a, 56729i, u_input.a, var_3)) ^ ~vec4<i32>(0i, u_input.a, -48129i, u_input.a)) << (((u_input.b << (u_input.b % vec4<u32>(32u))) | select(vec4<u32>(0u, 55436u, 13157u, 55014u), u_input.b, false)) % vec4<u32>(32u))), min(_wgslsmith_div_vec3_i32(~vec3<i32>(-2147483647i, -1i, u_input.a), vec3<i32>(firstTrailingBit(var_3), -24216i, var_3 >> (4294967295u % 32u))), _wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, u_input.a, 1i) ^ vec3<i32>(u_input.a, -1i, 34014i), vec3<i32>(-1i, var_3 << (u_input.c.x % 32u), -8232i))));
    var_2 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1065f, 127f)), var_2.b.zy)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b.yz, global0.b.yx))) + global0.b.yy));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstTrailingBit(max(u_input.c.x << (4294967295u % 32u), u_input.c.x)), u_input.b.x, _wgslsmith_dot_vec3_u32(max(abs(u_input.b.zww), abs(u_input.b.xwz)), u_input.b.yzz)));
}

