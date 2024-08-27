struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<i32>) -> vec3<f32> {
    let var_0 = !vec4<bool>(true, !(_wgslsmith_f_op_f32(max(574f, 873f)) != _wgslsmith_f_op_f32(sign(621f))), true && all(vec2<bool>(true, false)), false);
    let var_1 = Struct_3(207f);
    let var_2 = var_1;
    let var_3 = var_0.x;
    let var_4 = Struct_4(Struct_2(any(select(!vec3<bool>(true, false, var_0.x), !var_0.xyx, !vec3<bool>(true, var_3, var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(556f, var_2.a) * vec2<f32>(var_2.a, var_1.a))) - vec2<f32>(var_1.a, var_1.a)), vec4<u32>(countOneBits(~u_input.b), 7680u, ~44442u, 56274u)), all(!select(var_0.xy, vec2<bool>(false, true), var_0.ww)), _wgslsmith_f_op_f32(select(738f, _wgslsmith_f_op_f32(-var_1.a), var_0.x)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-163f, var_4.a.b.x, var_1.a))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(424f, var_1.a, var_2.a))))));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, 42548u, arg_1, 1u), vec4<u32>(arg_1, u_input.d.x, arg_1, 11047u)), vec4<u32>(63794u, u_input.d.x, 32817u, u_input.b) >> (vec4<u32>(30137u, arg_1, 37444u, u_input.d.x) % vec4<u32>(32u))), ~firstTrailingBit(_wgslsmith_clamp_u32(0u, 4294967295u, 1u)), vec2<i32>(u_input.e, _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(u_input.c, -1i))))) * vec3<f32>(arg_0.a, 660f, arg_0.a));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1038f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a - arg_0.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1294f), _wgslsmith_f_op_f32(arg_0.a * -113f))));
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(u_input.d.x, arg_1, arg_1)) << (min(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 47217u, 53797u), vec3<u32>(arg_1, arg_1, u_input.d.x)), vec3<u32>(15605u, 41316u, u_input.b)) % vec3<u32>(32u)), ~abs(~vec3<u32>(arg_1, 33056u, u_input.b))), ~(_wgslsmith_div_vec3_u32(vec3<u32>(47228u, arg_1, u_input.b) << (vec3<u32>(u_input.d.x, 1u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(u_input.b, arg_1, arg_1) << (vec3<u32>(4294967295u, arg_1, 19677u) % vec3<u32>(32u))) | vec3<u32>(90589u >> (u_input.d.x % 32u), ~arg_1, ~arg_1)));
    var var_3 = !(!(all(vec2<bool>(true, true)) & all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)))));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zy * var_0.yz)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, -1000f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1525f, 1978f), var_0.zy)), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, 1153f), var_0.yz)))))), u_input.e);
    return Struct_2(all(select(vec4<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, false)), any(vec4<bool>(false, false, true, true)), true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a.x, -992f)) * var_4.a))))), _wgslsmith_div_vec4_u32(min(firstLeadingBit(~vec4<u32>(1u, 12892u, u_input.b, 1u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 61178u, u_input.d.x, arg_1), vec4<u32>(13548u, u_input.b, 0u, u_input.b)), 42302u, ~u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 0u, 36122u), vec4<u32>(u_input.b, 14310u, u_input.b, arg_1)))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(0u, var_2.x), u_input.d.x | var_2.x, ~0u, ~23564u), vec4<u32>(~23457u, abs(arg_1), 87562u, arg_1))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> Struct_5 {
    let var_0 = vec4<u32>(0u, ~arg_2, 50021u, u_input.b);
    let var_1 = select(!select(!vec4<bool>(true, arg_1, false, arg_0.a), select(vec4<bool>(false, arg_1, false, true), select(vec4<bool>(true, false, arg_0.a, arg_0.a), vec4<bool>(false, arg_1, arg_1, false), arg_1), false), false), vec4<bool>(true, ~u_input.b <= ~(arg_2 & 1u), arg_0.a, false), any(vec3<bool>(true, any(!vec2<bool>(arg_1, false)), true)));
    var var_2 = countOneBits(_wgslsmith_div_vec2_u32(min(vec2<u32>(var_0.x, arg_0.c.x), vec2<u32>(arg_2, arg_0.c.x)) ^ reverseBits(vec2<u32>(7734u, 4294967295u)), ~vec2<u32>(u_input.b, var_0.x)) >> (_wgslsmith_mult_vec2_u32(var_0.ww, ~(~vec2<u32>(1u, var_0.x))) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), arg_0.b.x);
    var_2 = arg_0.c.zz;
    return Struct_5(var_3);
}

fn func_5(arg_0: Struct_5) -> vec2<f32> {
    var var_0 = Struct_4(func_2(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2043f + arg_0.a), 109f)), firstTrailingBit(u_input.b)), !select(select(any(vec2<bool>(false, true)), any(vec3<bool>(false, true, false)), true), true, all(vec4<bool>(true, true, true, true))), 768f);
    var_0 = Struct_4(var_0.a, select(~(var_0.a.c.x ^ 7747u), ~_wgslsmith_clamp_u32(var_0.a.c.x, 33932u, 1u), true) < 0u, _wgslsmith_div_f32(1020f, var_0.c));
    var_0 = Struct_4(var_0.a, !(!var_0.b), 458f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.b) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, arg_0.a))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -655f)) - var_0.a.b))), _wgslsmith_div_i32(-u_input.a.x, 2147483647i));
    return var_0.a.b;
}

fn func_6(arg_0: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.a.x + -792f);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(0u, 0u, 4294967295u, u_input.d.x), u_input.b, vec2<i32>(33125i, -41974i)))) * vec3<f32>(_wgslsmith_f_op_f32(round(447f)), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(trunc(arg_0.a.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1195f, var_1.x, 1426f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -1576f, var_1.x), vec3<f32>(-904f, arg_0.a.x, 154f), vec3<bool>(true, false, false))), true))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -400f);
    var_0 = -706f;
    return Struct_4(func_2(Struct_3(_wgslsmith_div_f32(-1255f, _wgslsmith_f_op_f32(619f + var_1.x))), _wgslsmith_mod_u32(min(~18841u, u_input.b), u_input.b)), !all(vec3<bool>(all(vec2<bool>(false, true)), true, true)), -1297f);
}

fn func_1() -> vec3<f32> {
    var var_0 = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(func_5(func_4(func_2(Struct_3(-1344f), 9382u), func_2(Struct_3(354f), 1u).a, u_input.d.x))), reverseBits(u_input.a.x)));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(~0u, _wgslsmith_mod_u32(29255u, var_0.a.c.x), ~u_input.d.x, ~var_0.a.c.x), var_0.a.c), _wgslsmith_mult_u32(var_0.a.c.x, 102061u), var_0.a.c.x);
    let var_2 = var_0.a.b;
    var var_3 = var_2.x;
    var_1 = vec3<u32>(4294967295u, var_0.a.c.x, _wgslsmith_sub_u32(var_0.a.c.x, 4294967295u));
    return vec3<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(var_0.a.b.x * _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 54373u, var_1.x, var_0.a.c.x), vec4<u32>(u_input.b, var_0.a.c.x, var_0.a.c.x, var_1.x)), ~var_0.a.c.x, u_input.a)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -940f)))), -2020f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-285f, 1000f, 938f), vec3<f32>(417f, -180f, -1162f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(509f, 1174f, -131f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(990f, -776f, -1145f), vec3<f32>(1000f, 134f, -602f))), true)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_1()))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_1()).x;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -607f), _wgslsmith_f_op_f32(var_1 + -643f), _wgslsmith_f_op_f32(select(-1000f, 778f, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 1848f, var_0.x)))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, _wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(-var_1))))));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, 1234f, _wgslsmith_f_op_f32(step(-307f, _wgslsmith_f_op_vec3_f32(func_1()).x)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1()).x * var_0.x), -361f)), 184f, -894f);
    var var_2 = ~84061u;
    let var_3 = 2147483647i;
    var_2 = func_2(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(-var_1)) - var_1)), 45450u).c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, ~(~vec3<i32>(~u_input.a.x, firstLeadingBit(u_input.e), -1i)), u_input.b, countOneBits(u_input.b), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3, firstTrailingBit(u_input.e)), -u_input.a << (func_2(Struct_3(-343f), u_input.d.x).c.zw % vec2<u32>(32u))), 1i, ~(35555i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 23506u), vec4<u32>(10424u, u_input.b, 4294967295u, 67085u)) % 32u))));
}

