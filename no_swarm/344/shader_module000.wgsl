struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(u_input.a.x, vec2<u32>(reverseBits(u_input.a.x), 36852u), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1358f, -1096f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1365f, 1400f) - _wgslsmith_div_f32(-427f, -762f))))));
    let var_1 = false;
    var var_2 = u_input.b;
    var_2 = vec2<u32>(select(countOneBits(14943u), ~1u, all(!vec2<bool>(var_0.c, var_0.c))), var_0.b.x);
    var_2 = vec2<u32>(u_input.c.x, u_input.c.x << (u_input.b.x % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1814f, 771f))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1967f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), -1443f, arg_0))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-438f - -653f) * _wgslsmith_f_op_f32(func_3()))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-392f)), _wgslsmith_f_op_f32(923f + 994f)), -372f));
    let var_1 = Struct_1(abs(1u), u_input.a.wy ^ vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, firstLeadingBit(4404u)), u_input.a.x), (1u >= u_input.a.x) & !(_wgslsmith_clamp_u32(4294967295u, u_input.c.x, u_input.a.x) < 1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-921f + 434f), _wgslsmith_div_f32(113f, 1000f))), -445f, u_input.c.x < u_input.c.x)));
    var var_2 = var_1;
    var_2 = Struct_1(var_1.b.x, countOneBits(~u_input.c.xy), false, -2167f);
    var var_3 = var_1;
    return select(!(!select(!vec3<bool>(var_1.c, var_3.c, arg_1.x), !vec3<bool>(false, var_3.c, false), false)), vec3<bool>(any(select(select(vec4<bool>(arg_0, var_3.c, true, false), vec4<bool>(true, var_3.c, true, true), arg_1.x), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, arg_1.x))), false, !((var_2.d <= var_3.d) && true)), vec3<bool>(true, !(arg_1.x && !var_1.c), var_3.c == false));
}

fn func_1() -> bool {
    var var_0 = 53944u;
    var var_1 = select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), func_2(true, vec2<bool>(true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), func_2(u_input.b.x == u_input.b.x, vec2<bool>(false, false))), vec3<bool>(true, select(select(all(vec4<bool>(true, true, false, false)), u_input.c.x > 1u, true), -202f <= _wgslsmith_f_op_f32(trunc(-604f)), !any(vec2<bool>(true, true))), true), true);
    let var_2 = _wgslsmith_f_op_f32(func_3());
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_f32(floor(var_2)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_2, var_2, var_1.x))))))));
    let var_4 = vec2<f32>(var_2, var_2);
    return select(select((select(u_input.b.x, 7137u, var_1.x) ^ u_input.c.x) == 18123u, false, var_1.x), var_1.x, !all(select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, false, false, true), vec4<bool>(true, var_1.x, false, false))) & (var_1.x && all(!vec2<bool>(var_1.x, false))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_u32(~(~(u_input.b.x & 34678u)), arg_1.x >> (u_input.b.x % 32u)), firstLeadingBit(vec2<u32>(7132u, arg_2.a)), true, _wgslsmith_f_op_f32(f32(-1f) * -234f));
    var var_1 = u_input.d.wx ^ firstTrailingBit(u_input.d.zw);
    var var_2 = arg_2;
    let var_3 = Struct_1((var_0.b.x >> (select(var_0.a, ~arg_1.x, !arg_2.c) % 32u)) ^ _wgslsmith_mod_u32(var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(54187u, 25485u, u_input.c.x, 0u), arg_1 << (arg_1 % vec4<u32>(32u)))), vec2<u32>(u_input.b.x, min(_wgslsmith_dot_vec2_u32(arg_2.b, select(var_0.b, vec2<u32>(u_input.a.x, arg_2.a), false)), var_0.a)), func_2(var_0.c, vec2<bool>(_wgslsmith_div_i32(-53971i, var_1.x) <= _wgslsmith_mult_i32(-1i, 1i), arg_0)).x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-403f, _wgslsmith_f_op_f32(sign(-108f))))));
    var var_4 = false;
    return 2552u ^ var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_add_vec3_u32(abs(~max(u_input.c, u_input.a.xyw)), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a | u_input.a, vec4<u32>(u_input.c.x, 1u, u_input.b.x, 0u)), u_input.a.x, u_input.b.x)), vec3<u32>(_wgslsmith_add_u32(0u, func_4(func_1(), u_input.a, Struct_1(4294967295u, u_input.c.yz, false, 561f), _wgslsmith_f_op_f32(f32(-1f) * -578f))), 20712u, u_input.a.x), select(select(func_2(true, select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec3<bool>(true, true, true), u_input.b.x < _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), vec3<bool>(18287u != select(u_input.c.x, 1u, false), true, true), false));
    var_0 = abs(~vec3<u32>(28166u & _wgslsmith_sub_u32(u_input.b.x, 54273u), _wgslsmith_mult_u32(u_input.b.x, 20104u), 4294967295u));
    let var_1 = Struct_1(~27127u, vec2<u32>(var_0.x, u_input.a.x >> (u_input.b.x % 32u)), !(true == func_1()) || true, _wgslsmith_f_op_f32(func_3()));
    var var_2 = min(u_input.d.yx, _wgslsmith_add_vec2_i32(min(vec2<i32>(17658i, -36154i), u_input.d.zx), select(u_input.d.xz, vec2<i32>(0i, -1i), var_1.c) | _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -15750i), vec2<i32>(-25949i, u_input.d.x))) | u_input.d.xy);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.d, var_1.d), _wgslsmith_f_op_f32(var_1.d + var_1.d)) - _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(var_1.d * 329f)))), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(1f - 1635f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d))));
    let var_4 = !select(!(!vec4<bool>(var_1.c, false, false, var_1.c)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), !vec4<bool>(true, false, false, var_1.c), select(vec4<bool>(true, var_1.c, true, var_1.c), vec4<bool>(true, var_1.c, var_1.c, true), false)), var_1.c), select(select(!vec4<bool>(true, false, var_1.c, true), vec4<bool>(true, true, true, true), all(vec3<bool>(var_1.c, var_1.c, var_1.c))), vec4<bool>(true, var_1.c == var_1.c, func_1(), var_1.c), var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(var_1.d, var_1.d)), var_1.d), var_3.xy, !any(vec3<bool>(false, false, false))))));
}

