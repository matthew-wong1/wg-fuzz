struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec3<f32> = vec3<f32>(-433f, -1528f, -661f);

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: f32) -> u32 {
    global2 = arg_0;
    let var_0 = Struct_1(~vec4<u32>(arg_0.c.x, 30131u, 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(global2.a, vec4<u32>(1u, global2.a.x, 1u, 38057u)), vec4<u32>(u_input.a.x, arg_0.a.x, 64800u, global2.c.x))), -vec2<i32>(~(~(-1i)), abs(-global2.b.x)), ~(arg_0.c ^ vec3<u32>(min(arg_2, 4294967295u), countOneBits(25253u), 4578u)));
    global0 = var_0.b.x;
    global1 = vec3<f32>(1000f, arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f)), _wgslsmith_div_f32(1765f, 672f)))));
    let var_1 = vec2<bool>(true | !(true || (arg_3 >= arg_3)), any(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    return ~(~var_0.a.x);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = countOneBits(abs(_wgslsmith_div_vec2_u32(~min(vec2<u32>(1u, u_input.a.x), global2.c.yx), ~u_input.a)));
    global2 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, global1.x, global1.x)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1166f - global1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x + -1063f))), global1.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 879f, -801f) + vec3<f32>(global1.x, global1.x, global1.x)))))));
    return global2.c.xx;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(257f, -475f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), global1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -858f)))) + vec4<f32>(_wgslsmith_f_op_f32(1537f - _wgslsmith_f_op_f32(sign(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1231f)), _wgslsmith_f_op_f32(f32(-1f) * -1011f), _wgslsmith_f_op_f32(-arg_3)))));
    let var_1 = func_4(4294967295u, Struct_1(vec4<u32>(func_3(arg_1, -209f, arg_1.a.x, 1401f), ~global2.a.x, 0u, 33965u), -arg_0.b, _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 12519u, global2.c.x), vec3<u32>(3558u, global2.a.x, 1u)), arg_1.a.wyy))) << (global2.a.xz % vec2<u32>(32u));
    var var_2 = arg_1;
    var var_3 = -22011i << (_wgslsmith_mult_u32(abs(countOneBits(global2.c.x)), min(21378u, 1u)) % 32u);
    var_2 = Struct_1(select(vec4<u32>(53540u, arg_0.c.x & (u_input.a.x | global2.a.x), ~(~1u), func_4(func_4(arg_0.c.x, Struct_1(arg_0.a, vec2<i32>(arg_2.x, -2147483647i), vec3<u32>(global2.a.x, u_input.a.x, global2.a.x))).x, Struct_1(global2.a, vec2<i32>(u_input.b, var_2.b.x), vec3<u32>(4294967295u, 0u, 3402u))).x), ~(vec4<u32>(arg_1.c.x, 1u, 65393u, 29386u) & _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 67632u, u_input.a.x, 10020u), vec4<u32>(u_input.a.x, 4294967295u, 26280u, arg_1.a.x))), vec4<bool>(true, true, true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false)))), select(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(arg_2.x, arg_1.b.x)), _wgslsmith_mult_vec2_i32(-vec2<i32>(var_2.b.x, u_input.b), ~arg_1.b), -vec2<i32>(arg_1.b.x, arg_0.b.x)), firstTrailingBit(firstTrailingBit(vec2<i32>(1i, arg_1.b.x))) ^ _wgslsmith_clamp_vec2_i32(max(arg_2.zx, vec2<i32>(arg_0.b.x, 25529i)), arg_0.b ^ var_2.b, global2.b), select(vec2<bool>(all(vec3<bool>(false, false, false)), all(vec3<bool>(false, false, false))), vec2<bool>(9758i <= var_2.b.x, all(vec2<bool>(false, true))), vec2<bool>(true, true))), vec3<u32>(0u, arg_1.a.x, 1u));
    return ~(~0u);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(~7034u, 54484u, 4294967295u);
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(1029f + global1.x))))), global1.x, 103f));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(-380f + global1.x), _wgslsmith_f_op_f32(-1201f + -670f))))) - vec3<f32>(global1.x, _wgslsmith_f_op_f32(-1948f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(-1000f, -362f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.x)), -1219f))));
    var var_1 = Struct_1(arg_2, global2.b, ~global2.a.zyz);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-global1.x), -152f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, -455f, true | all(vec3<bool>(true, true, true)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x))) - _wgslsmith_f_op_f32(-global1.x))));
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> bool {
    global0 = _wgslsmith_add_i32(arg_0.b.x, 0i);
    let var_0 = func_5(vec2<u32>(arg_0.a.x, global2.c.x), Struct_1(vec4<u32>(global2.c.x, _wgslsmith_add_u32(4294967295u, ~u_input.a.x), _wgslsmith_clamp_u32(97510u, global2.a.x, 61749u) | global2.c.x, 31594u), vec2<i32>(_wgslsmith_mod_i32(u_input.b, -56066i), _wgslsmith_mult_i32(global2.b.x, arg_0.b.x)) ^ max(global2.b, -vec2<i32>(36741i, -2147483647i)), vec3<u32>(~func_2(arg_0, arg_0, vec3<i32>(54749i, -1i, u_input.b), arg_2), func_4(1u, arg_0).x ^ 1u, 4294967295u)), vec4<u32>(_wgslsmith_mod_u32(~(~1u), u_input.a.x), ~(~0u) << ((_wgslsmith_mult_u32(global2.c.x, arg_0.c.x) | ~4294967295u) % 32u), reverseBits(~u_input.a.x) >> (firstLeadingBit(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 25241u)) % 32u), _wgslsmith_mod_u32(80981u << (countOneBits(0u) % 32u), ~_wgslsmith_add_u32(global2.c.x, 4294967295u))));
    var var_1 = false;
    global1 = vec3<f32>(-252f, -399f, _wgslsmith_f_op_f32(-global1.x));
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_2, 2236f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(230f, 126f, arg_2) * vec3<f32>(global1.x, 284f, -941f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -501f, 443f) - vec3<f32>(-119f, arg_2, global1.x)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(831f, global1.x, 484f)) + vec3<f32>(global1.x, global1.x, -1935f))))));
    return true | (arg_1 || true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, false)), func_1(Struct_1(global2.a, global2.b, global2.c), false, global1.x), true, true)), select(select(vec4<bool>(any(vec2<bool>(true, false)), false, true, all(vec3<bool>(false, false, true))), vec4<bool>(true, 4294967295u > global2.a.x, true, true), true), vec4<bool>(true, true, true, true), !vec4<bool>(any(vec2<bool>(false, false)), false, 6697i > global2.b.x, false)), vec4<bool>(true, true, !(countOneBits(global2.b.x) <= global2.b.x), false));
    global2 = Struct_1(~global2.a, global2.b, vec3<u32>(func_3(Struct_1(~vec4<u32>(4294967295u, global2.c.x, 55798u, 24572u), max(vec2<i32>(40574i, u_input.b), global2.b), global2.a.xyx | global2.c), 219f, ~func_2(Struct_1(vec4<u32>(109u, global2.a.x, 26062u, u_input.a.x), vec2<i32>(global2.b.x, 3677i), global2.a.ywx), Struct_1(global2.a, vec2<i32>(1i, -2147483647i), vec3<u32>(49042u, u_input.a.x, u_input.a.x)), vec3<i32>(global2.b.x, -1i, u_input.b), -938f), _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(-global1.x), !var_0.x))), u_input.a.x, select(1u, 4294967295u, var_0.x) >> (func_3(Struct_1(global2.a, vec2<i32>(u_input.b, global2.b.x), global2.a.yzw), _wgslsmith_div_f32(global1.x, global1.x), ~73032u, _wgslsmith_f_op_f32(-global1.x)) % 32u)));
    global0 = global2.b.x;
    var var_1 = global1.x;
    var_0 = select(select(vec4<bool>(false, !var_0.x, true, _wgslsmith_f_op_f32(1418f * global1.x) > global1.x), !vec4<bool>(var_0.x, false, var_0.x, var_0.x), false), select(vec4<bool>(true, _wgslsmith_add_u32(0u, 1579u) == u_input.a.x, _wgslsmith_f_op_f32(-global1.x) > _wgslsmith_f_op_f32(min(global1.x, -1822f)), false), vec4<bool>(true, false, true, false), any(vec4<bool>(var_0.x, false, true, false))), var_0.x);
    let var_2 = func_5(select(vec2<u32>(countOneBits(global2.c.x), 1u), vec2<u32>(_wgslsmith_add_u32(global2.a.x, 24084u), firstLeadingBit(0u)), !vec2<bool>(false, var_0.x)) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 0u), u_input.a, ~u_input.a), func_5(vec2<u32>(4294967295u >> (global2.a.x % 32u), func_5(vec2<u32>(u_input.a.x, global2.a.x), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec2<i32>(0i, -2147483647i), vec3<u32>(u_input.a.x, 44561u, 4294967295u)), global2.a).c.x | u_input.a.x), func_5(global2.c.xz, func_5(select(global2.c.zz, global2.a.yw, true), func_5(vec2<u32>(2704u, global2.a.x), Struct_1(global2.a, global2.b, vec3<u32>(28831u, global2.c.x, 0u)), global2.a), vec4<u32>(global2.a.x, 12654u, 35304u, 1u)), ~vec4<u32>(1u, 11114u, global2.a.x, global2.c.x) >> (~vec4<u32>(global2.c.x, 1u, global2.c.x, global2.a.x) % vec4<u32>(32u))), vec4<u32>(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 73557u, 16849u), vec4<u32>(27616u, u_input.a.x, 0u, u_input.a.x)), ~37308u, global2.a.x)), vec4<u32>(0u, u_input.a.x & ~0u, _wgslsmith_mod_u32(~32257u, _wgslsmith_mod_u32(u_input.a.x, 0u) ^ _wgslsmith_add_u32(global2.a.x, 24139u)), ~global2.a.x));
    var var_3 = select(vec4<bool>(var_0.x, any(!select(vec3<bool>(false, var_0.x, false), var_0.zxx, vec3<bool>(false, true, false))), !all(!vec4<bool>(var_0.x, var_0.x, true, true)), false), vec4<bool>(all(select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x))), !var_0.x, all(!var_0.zzx), var_0.x), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(394f, -144f, -350f, -777f) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1000f, global1.x, -1502f), vec4<f32>(-168f, global1.x, -587f, 529f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -738f, -474f), vec3<f32>(global1.x, -331f, 1031f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-940f, global1.x, -124f), vec3<f32>(global1.x, global1.x, global1.x)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, 637f, -1846f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2511f, 827f, global1.x) + vec3<f32>(-2255f, global1.x, -1122f)))))), var_2.b.x);
}

