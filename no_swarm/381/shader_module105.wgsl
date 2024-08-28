struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(reverseBits(~92823u) == _wgslsmith_dot_vec4_u32(~vec4<u32>(58493u, 18855u, 64u, 42055u), countOneBits(vec4<u32>(51895u, 14125u, 1u, 55414u))), _wgslsmith_div_i32(abs(2147483647i), ~2147483647i), -u_input.a), Struct_1(!select(true, true, true), u_input.a, max(u_input.a, select(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(16456i, 0i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), all(vec2<bool>(true, true))))), true, Struct_1(false, u_input.a, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(39308i, u_input.a, -1i, u_input.a) | vec4<i32>(36357i, 2147483647i, u_input.a, u_input.a), -vec4<i32>(u_input.a, -72426i, -34554i, 2147483647i)))), 749f);
    var var_1 = var_0.d.a;
    var var_2 = vec2<bool>(all(!vec3<bool>(true, any(vec4<bool>(var_0.a.a, true, var_0.a.a, var_0.c)), false)), true);
    let var_3 = Struct_1(_wgslsmith_clamp_u32(80501u, ~firstTrailingBit(1u), ~84970u) < 1u, u_input.a, u_input.a);
    let var_4 = var_0;
    return ~vec3<u32>(~abs(0u), ~_wgslsmith_sub_u32(4294967295u, 4294967295u), ~66043u) << (vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~14911u, ~51472u, 1u)), (_wgslsmith_clamp_u32(94814u, 26446u, 63729u) << (0u % 32u)) & ~max(0u, 1u)) % vec3<u32>(32u));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<u32>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 + 586f)), -593f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1251f, arg_0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(614f)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 * arg_0)))))));
    var var_1 = Struct_1(!(!(!(true && arg_1.x))), ~(~firstTrailingBit(-2988i)), 32812i);
    var var_2 = all(vec4<bool>(var_1.a || (var_1.a && var_1.a), !any(!arg_1), !arg_1.x, var_1.a));
    let var_3 = _wgslsmith_clamp_vec3_u32(arg_2, ~vec3<u32>(~37456u, ~max(arg_2.x, 1u), 4294967295u), ~min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_2.x, arg_2.x, 52485u), vec3<u32>(arg_2.x, 1u, 0u), vec3<u32>(arg_2.x, 46688u, 39127u)), func_3()));
    var_2 = false;
    return ~1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_add_u32(max(2879u, 7419u), firstLeadingBit(~_wgslsmith_mult_u32(1u, 1u)));
    var var_2 = arg_0;
    var_2 = arg_0;
    var var_3 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(675f + arg_2.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e), 630f)), !select(!vec3<bool>(false, arg_2.a.a, arg_0.a), vec3<bool>(false, all(vec2<bool>(false, arg_0.a)), var_2.a), !(!vec3<bool>(true, arg_2.d.a, true))), func_3());
    return Struct_2(arg_2.a, arg_2.d, var_2.a, Struct_1(any(select(select(vec3<bool>(false, arg_2.b.a, true), vec3<bool>(true, var_2.a, true), true), select(vec3<bool>(true, var_2.a, false), vec3<bool>(var_2.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_2.a.a, true)), vec3<bool>(false, true, true))), ~(arg_0.b >> (1u % 32u)), 1i), 260f);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = -(max(vec4<i32>(countOneBits(1i), -arg_0.d.b, u_input.a, min(arg_0.b.c, u_input.a)), abs(vec4<i32>(0i, u_input.a, u_input.a, 2147483647i))) ^ ~vec4<i32>(firstLeadingBit(arg_0.d.c), arg_0.a.b, u_input.a, arg_0.d.b));
    var var_1 = true;
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = abs(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i >> (arg_3.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(62796i, arg_0.c, 2147483647i, -22775i), vec4<i32>(-2147483647i, -2147483647i, arg_1.d.b, 37844i))), vec2<i32>(i32(-1i) * -1i, u_input.a)), 44266i));
    var var_1 = Struct_2(func_5(Struct_2(Struct_1(arg_1.b.a, arg_0.b, ~1i), Struct_1(true, ~19048i, 1i), select(arg_1.c, !arg_0.a, all(vec2<bool>(false, false))), Struct_1(arg_1.c, select(arg_1.b.c, 1i, true), _wgslsmith_mult_i32(0i, -14060i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.e + arg_1.e)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(677f + arg_1.e), _wgslsmith_f_op_f32(max(arg_1.e, arg_1.e)), -859f, -400f)))).d, func_5(func_2(arg_0, reverseBits(countOneBits(vec3<i32>(arg_0.c, 2147483647i, var_0.x))), arg_1), vec4<f32>(arg_1.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1758f, 647f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.e))), _wgslsmith_f_op_f32(max(1263f, -462f)))).a, all(select(select(vec3<bool>(false, true, arg_0.a), vec3<bool>(true, false, false), select(vec3<bool>(arg_1.c, arg_1.d.a, arg_1.d.a), vec3<bool>(arg_0.a, false, true), arg_1.a.a)), select(vec3<bool>(false, arg_0.a, arg_0.a), !vec3<bool>(false, false, arg_1.c), true), vec3<bool>(all(vec3<bool>(arg_0.a, true, arg_0.a)), func_5(Struct_2(arg_1.a, Struct_1(true, -95491i, arg_1.a.c), arg_0.a, arg_1.a, arg_1.e), vec4<f32>(arg_1.e, arg_1.e, 154f, arg_1.e)).c, arg_1.a.a))), arg_0, 1f);
    let var_2 = vec3<bool>(!(!(!select(var_1.b.a, false, false))), arg_1.a.a, !any(select(!vec3<bool>(var_1.a.a, arg_0.a, false), vec3<bool>(arg_0.a, false, true), false)));
    var var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(4294967295u, arg_2.x, 1u, arg_2.x) ^ vec4<u32>(2699u, arg_2.x, arg_2.x, 54919u)) ^ (~vec4<u32>(1u, arg_3.x, 4294967295u, arg_2.x) | (vec4<u32>(15874u, arg_3.x, arg_3.x, arg_3.x) | vec4<u32>(arg_3.x, arg_3.x, arg_3.x, arg_2.x))), min(~(vec4<u32>(4294967295u, 14646u, arg_3.x, 72018u) & vec4<u32>(arg_2.x, arg_2.x, 4294967295u, 3583u)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 13340u), vec4<u32>(arg_2.x, arg_2.x, 4294967295u, arg_2.x), var_2.x), min(vec4<u32>(1u, arg_2.x, 4294967295u, arg_3.x), vec4<u32>(arg_3.x, 4294967295u, 40860u, 24683u))))), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_3 ^ vec3<u32>(arg_3.x, arg_3.x, arg_2.x), vec3<u32>(4294967295u, 0u, 5485u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_3.x, arg_2.x, 0u), min(vec4<u32>(4294967295u, 62021u, arg_3.x, arg_3.x), vec4<u32>(54648u, arg_2.x, 15274u, 70414u))), ~arg_3.x, arg_2.x ^ arg_2.x, ~(~arg_3.x)));
    var var_4 = -405f;
    return var_1.d;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = any(vec2<bool>(false, false));
    var var_1 = arg_0.a;
    var var_2 = arg_0;
    var_1 = any(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1081f, 781f, true))) == _wgslsmith_div_f32(-189f, _wgslsmith_f_op_f32(f32(-1f) * -413f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) + _wgslsmith_f_op_f32(-1159f * 184f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-531f))), true));
    var var_3 = 2147483647i;
    return arg_0;
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = Struct_2(Struct_1(true, -1i, 2147483647i), func_7(func_6(Struct_1(true, ~(-2147483647i), 2147483647i), func_5(func_2(Struct_1(true, 0i, u_input.a), vec3<i32>(49843i, u_input.a, u_input.a), Struct_2(Struct_1(arg_0, 1i, -28047i), Struct_1(arg_0, u_input.a, u_input.a), false, Struct_1(arg_0, u_input.a, -1i), -436f)), vec4<f32>(-700f, -451f, 952f, 297f)), vec2<u32>(~8378u, ~0u), ~vec3<u32>(1u, 1u, 1u))), !arg_0, Struct_1(func_7(Struct_1(u_input.a <= 2147483647i, u_input.a, 1i)).a, func_2(Struct_1(!arg_0, -u_input.a, firstLeadingBit(u_input.a)), firstLeadingBit(firstTrailingBit(vec3<i32>(u_input.a, 3698i, u_input.a))), func_5(Struct_2(Struct_1(true, -10303i, 1i), Struct_1(true, u_input.a, u_input.a), true, Struct_1(true, u_input.a, u_input.a), 386f), vec4<f32>(930f, -1000f, 611f, -1593f))).a.b, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -919f) + -1036f))));
    return _wgslsmith_f_op_f32(-var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(-706f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-840f - -244f) - _wgslsmith_f_op_f32(func_1(true)))) - vec2<f32>(1f, 1f)), _wgslsmith_dot_vec4_i32(-((vec4<i32>(u_input.a, u_input.a, 4161i, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 1i, 41883i, u_input.a), vec4<i32>(u_input.a, u_input.a, 75826i, u_input.a))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(47718i, 2147483647i, u_input.a, 25508i), vec4<i32>(u_input.a, 13430i, u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-19654i, -2147483647i, u_input.a, -38487i), vec4<i32>(5729i, u_input.a, -2114i, 2147483647i))) << (vec4<u32>(~28959u, 4294967295u, _wgslsmith_add_u32(23005u, 30545u), ~1u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))));
}

