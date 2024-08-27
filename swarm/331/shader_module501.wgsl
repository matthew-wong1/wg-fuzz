struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_3;
    var var_1 = ~30149u;
    var_0 = arg_3;
    var_1 = 4294967295u;
    global0 = Struct_1(vec4<bool>(var_0.a.x, !(!all(vec3<bool>(arg_1, false, false))), ~var_0.c.x <= _wgslsmith_add_u32(global0.c.x, arg_3.c.x), _wgslsmith_mult_i32(i32(-1i) * -34998i, arg_0.x) < 1i), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), -1000f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1232f)))), arg_3.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(630f, 852f) - _wgslsmith_f_op_f32(floor(global0.d)))))), vec2<bool>(true, true));
    return ~(~(2147483647i >> (_wgslsmith_add_u32(_wgslsmith_mult_u32(75184u, arg_2), 1u | var_0.c.x) % 32u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> Struct_1 {
    global0 = arg_1;
    let var_0 = ~(-(_wgslsmith_mult_vec4_i32(vec4<i32>(-4443i, -2147483647i, -63559i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 2147483647i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_0.x, arg_2, arg_0.x), vec4<i32>(arg_2, arg_0.x, 2147483647i, 0i))) ^ ~(vec4<i32>(u_input.b.x, 0i, arg_0.x, u_input.b.x) ^ (vec4<i32>(2147483647i, u_input.b.x, arg_2, arg_0.x) ^ vec4<i32>(arg_0.x, u_input.b.x, arg_0.x, 1i))));
    let var_1 = vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(0u, u_input.a), 1u, 11190u) >> (_wgslsmith_dot_vec2_u32(~global0.c, global0.c) % 32u), 20383u, ~global0.c.x, global0.c.x);
    let var_2 = Struct_1(!(!(!select(arg_1.a, vec4<bool>(arg_1.e.x, global0.e.x, true, false), global0.e.x))), true, arg_1.c, _wgslsmith_f_op_f32(-arg_1.d), arg_1.a.xz);
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(countOneBits(_wgslsmith_div_u32(global0.c.x, ~1u)), var_1.x), u_input.a, var_2.c.x, u_input.a);
    return var_2;
}

fn func_1(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = vec2<u32>(4294967295u, 5281u);
    let var_1 = func_3(vec2<i32>(~(-reverseBits(u_input.b.x)), u_input.b.x), Struct_1(!(!select(vec4<bool>(false, arg_0.x, arg_0.x, false), arg_0, arg_0.x)), false, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) + -1081f), select(!global0.a.yz, global0.e, arg_0.zy)), func_2(-vec3<i32>(-u_input.b.x, u_input.b.x, -2147483647i), all(vec3<bool>(all(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), any(arg_0), true)), 19043u, Struct_1(select(!arg_0, vec4<bool>(true, arg_0.x, global0.b, arg_0.x), select(global0.a, arg_0, global0.a.x)), global0.e.x, firstLeadingBit(~var_0), _wgslsmith_f_op_f32(-821f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<bool>(arg_0.x, any(vec2<bool>(global0.e.x, true))))), -463f);
    global0 = var_1;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d))) - _wgslsmith_div_f32(var_1.d, global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1033f)))), -942f);
    var var_3 = var_1;
    return vec4<bool>(u_input.b.x >= u_input.b.x, func_3(max(-(u_input.b | u_input.b), u_input.b), func_3(vec2<i32>(min(0i, -1598i), firstLeadingBit(u_input.b.x)), Struct_1(select(global0.a, var_1.a, false), arg_0.x, var_1.c, global0.d, func_3(u_input.b, var_1, 38770i, var_3.d).e), -u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d * -890f))), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 1449f)))).a.x, func_3(u_input.b, Struct_1(vec4<bool>(true, arg_0.x, any(global0.a.yxz), false), _wgslsmith_sub_i32(u_input.b.x, -97483i) <= 0i, func_3(vec2<i32>(23642i, 15254i), Struct_1(vec4<bool>(arg_0.x, true, arg_0.x, var_1.b), true, vec2<u32>(4294967295u, 0u), -1732f, vec2<bool>(var_1.b, var_3.e.x)), -12139i, var_2.x).c, -454f, global0.a.zx), countOneBits(~(-1i)), _wgslsmith_f_op_f32(round(global0.d))).b, !arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(any(func_1(!vec4<bool>(global0.a.x, false, true, false))), !func_1(vec4<bool>(global0.e.x, global0.b, global0.b, global0.b)).x, all(vec4<bool>(true, false, false && global0.b, any(vec2<bool>(true, global0.a.x))))) || !global0.a.x;
    global0 = func_3(reverseBits(_wgslsmith_mod_vec2_i32(u_input.b, min(u_input.b, vec2<i32>(-2147483647i, 29815i)))) | select(vec2<i32>(2147483647i, u_input.b.x), u_input.b & u_input.b, true), func_3(u_input.b, Struct_1(global0.a, global0.a.x | global0.b, vec2<u32>(1u, abs(global0.c.x)), 544f, func_1(!global0.a).wz), u_input.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_add_i32(u_input.b.x, ~1i), 372f);
    global0 = Struct_1(vec4<bool>(false, select(!global0.b, var_0, func_1(!vec4<bool>(global0.e.x, false, false, global0.e.x)).x), var_0, abs(u_input.b.x) == _wgslsmith_div_i32(u_input.b.x | u_input.b.x, ~u_input.b.x)), (global0.c.x ^ 37914u) == u_input.a, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(-global0.d)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.d)))), global0.e);
    global0 = func_3(~countOneBits(min(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), u_input.b), -u_input.b)), Struct_1(global0.a, true, ~(~global0.c) << (_wgslsmith_mult_vec2_u32(select(global0.c, vec2<u32>(0u, 1u), global0.b), vec2<u32>(u_input.a, 53780u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(trunc(-1161f)), select(select(vec2<bool>(true, true), select(global0.e, global0.e, vec2<bool>(global0.e.x, true)), true), func_3(-u_input.b, func_3(vec2<i32>(0i, -47055i), Struct_1(global0.a, false, vec2<u32>(u_input.a, u_input.a), -1241f, vec2<bool>(true, true)), -23279i, 1000f), 2147483647i, _wgslsmith_div_f32(global0.d, global0.d)).e, func_3(min(u_input.b, u_input.b), func_3(u_input.b, Struct_1(vec4<bool>(false, false, false, global0.e.x), var_0, vec2<u32>(1u, u_input.a), global0.d, global0.a.wy), 0i, global0.d), 1i, -564f).e)), u_input.b.x ^ ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(8322i, -44712i, 6708i)), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -152f));
    global0 = func_3(u_input.b, func_3(min(abs(u_input.b), firstLeadingBit(-vec2<i32>(u_input.b.x, u_input.b.x))), func_3(_wgslsmith_sub_vec2_i32(u_input.b, u_input.b) | (vec2<i32>(-2147483647i, u_input.b.x) ^ vec2<i32>(48385i, 3791i)), Struct_1(vec4<bool>(true, true, true, global0.a.x), true, ~global0.c, 1f, !vec2<bool>(var_0, global0.b)), _wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x), -36813i, ~(-1i)), global0.d), 10475i, 840f), 2147483647i, global0.d);
    var var_1 = select(func_1(!vec4<bool>(true & global0.e.x, true, false, true)).wxy, global0.a.wzx, func_1(select(!global0.a, !func_1(vec4<bool>(var_0, true, true, true)), func_3(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 33661i), u_input.b), Struct_1(vec4<bool>(false, var_0, false, false), true, vec2<u32>(4294967295u, 1u), 361f, global0.a.yz), 2147483647i, -1736f).a.x)).xwz);
    let var_2 = -_wgslsmith_clamp_i32(-firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2557i, -31781i, -35348i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -58763i, u_input.b.x))), ~max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 8865i, 0i)), _wgslsmith_sub_i32(-1i, u_input.b.x)), abs(-54717i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(692f, global0.d, 108f, -346f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, 1616f, -862f, -1325f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, global0.d, global0.d, global0.d) + vec4<f32>(global0.d, global0.d, global0.d, -1387f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, -356f, -796f, global0.d)), global0.a))))), vec3<u32>(u_input.a ^ 1u, 66260u, ~(_wgslsmith_mult_u32(u_input.a, 0u) ^ ~u_input.a)), ~global0.c, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(26699i, u_input.b.x, u_input.b.x) ^ vec3<i32>(2147483647i, u_input.b.x, 0i), select(vec3<i32>(var_2, u_input.b.x, 2147483647i), vec3<i32>(2147483647i, -1i, u_input.b.x), false)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, var_2), -vec3<i32>(2147483647i, var_2, -2147483647i), vec3<i32>(var_2, -1i, var_2) & vec3<i32>(0i, var_2, 2865i))), ~vec3<i32>(_wgslsmith_mult_i32(2147483647i, 1i), -7452i, _wgslsmith_add_i32(1i, var_2))));
}

