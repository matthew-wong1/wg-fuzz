struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 0u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = u_input.b.x;
    let var_1 = ~_wgslsmith_div_vec4_i32(-(~abs(u_input.b)), reverseBits(u_input.b));
    var var_2 = true;
    var var_3 = true;
    var_2 = u_input.a < _wgslsmith_add_u32(~(~50425u), 79619u);
    return _wgslsmith_mod_i32(_wgslsmith_mult_i32(reverseBits(reverseBits(var_0)), -1i), firstTrailingBit(_wgslsmith_dot_vec2_i32(~select(vec2<i32>(var_0, var_1.x), vec2<i32>(1i, -267i), true), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, var_0), var_1.xy, var_1.zx) >> (~vec2<u32>(12200u, 1u) % vec2<u32>(32u)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>) -> i32 {
    global0 = -16551i;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-526f * -1542f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -353f))))), max(-countOneBits(1i), 1i), u_input.a, 1u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-375f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -111f) * _wgslsmith_f_op_f32(-var_0.a))))));
    let var_2 = any(vec4<bool>(arg_0.x, any(arg_0.xzz), !all(!arg_0), false));
    global1 = u_input.a;
    return min(~u_input.b.x | -_wgslsmith_mod_i32(u_input.b.x, -1101i), _wgslsmith_add_i32(func_3() << (19855u % 32u), _wgslsmith_add_i32(arg_1.x, (33670i & var_0.b) | ~1i)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -294f), -645f)), func_4(vec4<bool>(true, min(u_input.a, 87575u) < (arg_0.x & arg_0.x), true == all(vec3<bool>(true, true, false)), true), _wgslsmith_sub_vec3_i32(-u_input.b.ywx, vec3<i32>(func_3(), 21158i, i32(-1i) * -2147483647i))), firstTrailingBit(arg_0.x), _wgslsmith_mod_u32(var_0, firstTrailingBit(arg_0.x)));
    return Struct_1(-941f, -(u_input.b.x | countOneBits(u_input.b.x)), ~(~_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(var_0, u_input.a))), _wgslsmith_dot_vec2_u32(arg_0.zy | firstLeadingBit(~vec2<u32>(var_1.c, 26425u)), abs(vec2<u32>(abs(var_1.d), 97225u))));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<f32>) -> bool {
    global1 = firstTrailingBit(min(~(~arg_1.d), 46748u));
    var var_0 = arg_2.x;
    var_0 = reverseBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(-13380i, arg_1.b), -(vec2<i32>(-9943i, u_input.b.x) | u_input.b.wz))) <= arg_0;
    var var_1 = ~(~(~firstTrailingBit(min(vec4<u32>(arg_1.d, u_input.a, 1u, u_input.a), vec4<u32>(48593u, arg_1.d, u_input.a, u_input.a)))));
    var_1 = _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.d, arg_1.d, u_input.a, arg_1.c), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, arg_1.c, 0u, var_1.x), vec4<u32>(4294967295u, var_1.x, u_input.a, 0u))), vec4<u32>(~(~1u << (arg_1.c % 32u)), ~arg_1.c, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.c, arg_1.d), ~vec2<u32>(1u, 4294967295u)), var_1.zz), 4294967295u));
    return arg_2.x;
}

fn func_6(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = -430f;
    let var_1 = ~(~vec4<u32>(u_input.a, reverseBits(6441u), arg_0.x, ~(~arg_0.x)));
    return func_2(vec3<u32>(arg_0.x, reverseBits(45821u), var_1.x));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = arg_0.c ^ 1u;
    var var_0 = arg_0.a;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-171f * arg_1.a), 1297f))));
    var var_1 = Struct_1(arg_1.a, u_input.b.x, 57975u, 65u);
    let var_2 = Struct_1(710f, 80242i, arg_0.d, arg_2.d);
    return Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_2.a, -1185f)))))), arg_0.b >> (arg_1.c % 32u), abs(countOneBits(3191u)), _wgslsmith_mod_u32(arg_0.c, u_input.a));
}

fn func_1() -> Struct_1 {
    global1 = 0u;
    global1 = _wgslsmith_mult_u32(~29794u, countOneBits(~u_input.a) >> (u_input.a % 32u));
    let var_0 = func_7(func_6(((vec4<u32>(u_input.a, 1u, u_input.a, 0u) & vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)) & (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u)))) & vec4<u32>(u_input.a ^ u_input.a, ~1u, ~u_input.a, 4811u), vec3<bool>(!select(false, true, false), true, func_5(1i, func_2(vec3<u32>(u_input.a, 81162u, u_input.a)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec4<f32>(1209f, -1457f, 320f, -1824f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1726f))))), -35080i, abs(u_input.a), ~u_input.a), Struct_1(func_6(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 6629u, u_input.a)), ~vec4<u32>(26825u, 23634u, u_input.a, 1u)), vec3<bool>(true, true, true)).a, -2147483647i, u_input.a, u_input.a));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), min(var_0.b, u_input.b.x) << (u_input.a % 32u), u_input.a, u_input.a);
    let var_2 = var_0;
    return func_6((vec4<u32>(var_1.d, 4294967295u, _wgslsmith_mult_u32(var_1.d, 1494u), 22192u) | countOneBits(~vec4<u32>(80659u, 4294967295u, var_1.c, var_1.c))) >> (firstTrailingBit(abs(vec4<u32>(29509u, u_input.a, 1u, var_1.c))) % vec4<u32>(32u)), !vec3<bool>(!any(vec4<bool>(true, true, false, true)), true, any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -3949i;
    let var_0 = true;
    var var_1 = Struct_1(-2511f, 0i, reverseBits(_wgslsmith_add_u32(0u, ~u_input.a)) >> (76904u % 32u), u_input.a);
    let var_2 = _wgslsmith_div_u32(47012u, 17681u);
    var_1 = func_1();
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(682f, _wgslsmith_f_op_f32(f32(-1f) * -212f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, -852f) - vec2<f32>(-1473f, var_1.a))))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(select(684f, 693f, any(vec3<bool>(true, var_0, var_0))))), vec2<f32>(var_1.a, func_2(~vec3<u32>(var_1.d, var_2, 6892u)).a))), vec2<bool>(-817f != var_1.a, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_2, countOneBits(1u), u_input.a << (u_input.a % 32u)) >> (u_input.a % 32u), u_input.a));
}

