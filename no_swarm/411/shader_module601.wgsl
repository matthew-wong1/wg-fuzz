struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
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

var<private> global0: bool = false;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(reverseBits(min(~1i, _wgslsmith_clamp_i32(-9379i, firstTrailingBit(u_input.b), _wgslsmith_add_i32(u_input.e.x, u_input.b)))), (~(~4294967295u) & reverseBits(~u_input.c)) == u_input.c, -abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.d, 0i) & vec3<i32>(u_input.b, 31276i, u_input.e.x), _wgslsmith_mod_vec3_i32(vec3<i32>(4866i, -9366i, u_input.a.x), u_input.a), u_input.e.wyw)), select(vec3<bool>(true, true, true), vec3<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true), !any(vec3<bool>(true, false, true))));
    var var_1 = Struct_1(_wgslsmith_div_i32(-5513i, abs(u_input.a.x)) | ~min(var_0.a >> (41165u % 32u), u_input.e.x), true, ~vec3<i32>(var_0.c.x, -17061i, i32(-1i) * -u_input.e.x), vec3<bool>(!(var_0.d.x == var_0.b), var_0.b, !(!var_0.b) | var_0.d.x));
    var_1 = Struct_1(-1i, !(!select(var_0.d.x, var_0.d.x, var_1.b) || (true && (false & var_1.d.x))), vec3<i32>(min(~var_1.a, -var_0.c.x & u_input.b), 2147483647i, abs((i32(-1i) * -2147483647i) << (u_input.c % 32u))), select(var_1.d, select(var_0.d, select(select(var_0.d, vec3<bool>(true, false, var_0.d.x), var_1.d), var_0.d, true), var_0.d.x), select(vec3<bool>(false, true, var_1.d.x), !select(var_0.d, vec3<bool>(var_1.d.x, var_1.b, var_0.b), vec3<bool>(false, true, true)), var_0.d)));
    global0 = var_1.b;
    var_1 = Struct_1(u_input.a.x, (u_input.c > _wgslsmith_div_u32(u_input.c, ~4294967295u)) & (-u_input.d < (_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.c.x), var_0.c.zx) << (u_input.c % 32u))), vec3<i32>(var_0.a, -abs(_wgslsmith_div_i32(u_input.e.x, var_0.c.x)), countOneBits(1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.d, var_1.a), vec4<i32>(-4759i, -38921i, var_1.a, u_input.e.x)))), select(!vec3<bool>(var_0.b, true, false), select(vec3<bool>(all(var_0.d.zy), var_0.b, true), !vec3<bool>(var_1.d.x, var_0.b, false), var_1.d), false));
    return 1u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = vec4<u32>(0u, ~u_input.c | u_input.c, 1u, u_input.c) | ~vec4<u32>(6539u, u_input.c, 77674u & u_input.c, func_3());
    var var_1 = Struct_1(2147483647i, true, u_input.e.xzy, !vec3<bool>(arg_0, true, true));
    var var_2 = vec4<bool>(var_1.d.x, false, !(!all(select(var_1.d.zx, vec2<bool>(false, var_1.b), arg_0))), any(var_1.d));
    var var_3 = var_1.d;
    let var_4 = 0u;
    return Struct_1(_wgslsmith_div_i32(abs(66340i), _wgslsmith_clamp_i32(var_1.a, ~var_1.c.x, ~(-2147483647i)) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(24516u, 4294967295u, 94420u), vec3<u32>(var_4, 4294967295u, 19482u)), 4294967295u) % 32u)), var_2.x & arg_0, vec3<i32>(-(-var_1.a | _wgslsmith_div_i32(1i, 1i)), 34057i, -1i), vec3<bool>((true && !var_2.x) & all(var_2.yw), false, !(_wgslsmith_add_u32(23969u, var_0.x) >= max(51872u, var_4))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    let var_0 = vec4<u32>((125054u ^ u_input.c) << (1u % 32u), ~_wgslsmith_mod_u32(~4294967295u, _wgslsmith_div_u32(u_input.c, 1u)), ~(45721u >> (~func_3() % 32u)), ~abs(1u));
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(abs(-u_input.a.x), firstTrailingBit(i32(-1i) * -2147483647i), arg_1.a, _wgslsmith_dot_vec3_i32(max(arg_1.c, arg_1.c), reverseBits(arg_1.c))) | vec4<i32>(arg_1.c.x, -11265i, u_input.a.x, select(i32(-1i) * -1i, arg_1.a, arg_1.d.x)), _wgslsmith_mult_vec4_i32((_wgslsmith_mod_vec4_i32(u_input.e, vec4<i32>(arg_0, -1i, -2147483647i, arg_1.c.x)) >> (~vec4<u32>(340u, arg_2.x, var_0.x, u_input.c) % vec4<u32>(32u))) ^ ~_wgslsmith_mult_vec4_i32(u_input.e, vec4<i32>(2147483647i, arg_1.c.x, arg_1.c.x, -1i)), u_input.e));
    let var_2 = vec2<f32>(417f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1370f))))));
    let var_3 = arg_1.b;
    var var_4 = arg_1;
    return true;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> f32 {
    let var_0 = vec2<i32>(u_input.a.x, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x ^ -13999i, 0i), ~u_input.d));
    global0 = func_4(max(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d, -59974i), ~var_0.x), (reverseBits(u_input.e.x) << (0u % 32u)) >> (~(~arg_1) % 32u)), func_2(true), ~vec2<u32>(~_wgslsmith_add_u32(4294967295u, arg_1), ~_wgslsmith_add_u32(u_input.c, 1u)));
    let var_1 = _wgslsmith_f_op_f32(405f + _wgslsmith_f_op_f32(sign(-397f)));
    let var_2 = (vec4<u32>(arg_1, max(u_input.c, ~0u), u_input.c, 0u) | _wgslsmith_mod_vec4_u32(select(~vec4<u32>(47657u, 2540u, u_input.c, u_input.c), vec4<u32>(1u, arg_1, 19090u, u_input.c), vec4<bool>(true, true, true, true)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4564u, u_input.c, arg_1, arg_1), vec4<u32>(15623u, u_input.c, u_input.c, 1u)))) & (~min(reverseBits(vec4<u32>(arg_1, u_input.c, 1u, u_input.c)), vec4<u32>(u_input.c, 1u, arg_1, arg_1) >> (vec4<u32>(119394u, 25530u, arg_1, 22995u) % vec4<u32>(32u))) | vec4<u32>(~u_input.c, _wgslsmith_mod_u32(1773u, 28283u), 29651u, ~(~u_input.c)));
    var var_3 = func_2(all(vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2377f, 1049f, 1976f, -1400f))))), firstTrailingBit(45952u) | reverseBits(4294967295u)))));
    var var_1 = vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !any(vec2<bool>(true, true)) && false, false);
    let var_2 = true;
    global0 = false;
    var_1 = select(select(select(vec4<bool>(true, true, true, !var_1.x), !vec4<bool>(true, var_2, false, false), any(vec2<bool>(true, true))), !select(vec4<bool>(var_1.x, var_2, var_2, var_1.x), vec4<bool>(var_1.x, var_2, false, var_1.x), !var_1.x), select(vec4<bool>(any(vec3<bool>(var_2, var_2, var_1.x)), var_1.x, true, true), vec4<bool>(true, var_1.x, var_1.x, var_2), vec4<bool>(false, var_1.x & true, -17857i >= u_input.a.x, var_2))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_2 && var_1.x, true, var_1.x), vec4<bool>(true, true, true, !var_2), select(select(vec4<bool>(var_2, var_1.x, false, false), vec4<bool>(var_2, var_2, var_2, var_2), vec4<bool>(false, var_1.x, true, var_2)), vec4<bool>(true, true, var_1.x, var_2), select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(var_2, false, var_2, true), var_1.x))), !vec4<bool>(false, true, select(true, false, var_1.x), !var_1.x)), !vec4<bool>(true, all(var_1.yyw), 567f < _wgslsmith_f_op_f32(step(var_0, -2457f)), var_2));
    let var_3 = var_0 < 594f;
    global0 = true;
    let var_4 = select(select(vec4<bool>(true, select(true, var_1.x && var_1.x, var_1.x), !(var_3 | false), max(u_input.d, u_input.d) < ~u_input.e.x), select(!vec4<bool>(true, false, var_2, true), select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(false, true, true, var_1.x), select(vec4<bool>(var_1.x, false, true, var_3), vec4<bool>(var_3, false, var_3, var_3), var_1.x)), !(458f != var_0)), vec4<bool>(var_2, all(vec2<bool>(var_1.x, true)), true, var_2)), !vec4<bool>(false, any(func_2(var_3).d), _wgslsmith_f_op_f32(-var_0) > _wgslsmith_f_op_f32(408f - var_0), !func_4(0i, Struct_1(0i, var_2, vec3<i32>(u_input.a.x, u_input.e.x, -25264i), vec3<bool>(true, var_3, false)), vec2<u32>(u_input.c, 4294967295u))), vec4<bool>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 88459u, 50353u), vec4<u32>(4294967295u, 4294967295u, 0u, u_input.c)) == min(u_input.c, u_input.c), true, !(!all(vec3<bool>(var_2, var_3, false))), 2147483647i > u_input.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

