struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = vec3<bool>(arg_1.a, any(vec2<bool>(false, !select(arg_3.x, false, true))), any(select(!select(vec3<bool>(false, true, arg_3.x), vec3<bool>(false, true, true), arg_0.d), vec3<bool>(true, select(false, arg_1.c.x, arg_1.c.x), true), !vec3<bool>(arg_0.e.c, arg_1.a, true))));
    var_0 = select(arg_0.b.c, vec3<bool>(all(arg_0.d), false, _wgslsmith_div_f32(arg_0.c.x, arg_1.b) < arg_0.c.x), true);
    var var_1 = min(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x ^ u_input.a.x, _wgslsmith_div_i32(23084i, u_input.a.x), -1930i), vec3<i32>(u_input.a.x | u_input.a.x, u_input.a.x, select(arg_0.a.x, -2147483647i, true))), 20174i, arg_0.a.x), ~select(_wgslsmith_div_vec3_i32(~arg_0.a, -arg_0.a), vec3<i32>(_wgslsmith_add_i32(0i, u_input.a.x), -1i | u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), true));
    var_1 = select(reverseBits(~u_input.a), -vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.a.x, 1i, 7546i, -2147483647i), vec4<i32>(arg_0.a.x, -2147483647i, u_input.a.x, 21064i), arg_1.a), vec4<i32>(-1i, var_1.x, 1i, 2147483647i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(17337i, var_1.x, 1i, arg_0.a.x), vec4<i32>(u_input.a.x, 1i, arg_0.a.x, var_1.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, var_1.x, 2147483647i, -698i), vec4<i32>(u_input.a.x, arg_0.a.x, -27158i, 8236i))), -var_1.x >> (0u % 32u)), any(select(!(!vec2<bool>(arg_3.x, true)), select(vec2<bool>(true, false), !vec2<bool>(true, arg_1.a), select(arg_0.d.yz, vec2<bool>(arg_3.x, false), arg_0.d.xx)), select(vec2<bool>(false, var_0.x), select(vec2<bool>(arg_3.x, arg_1.c.x), vec2<bool>(arg_3.x, false), true), select(vec2<bool>(arg_0.b.c.x, arg_0.d.x), vec2<bool>(var_0.x, false), true)))));
    var var_2 = _wgslsmith_mod_i32(-(~_wgslsmith_mult_i32(var_1.x, arg_0.a.x)), (i32(-1i) * -1i) << (_wgslsmith_mod_u32(~(~0u), 1u) % 32u));
    return select(vec4<bool>(all(!vec2<bool>(true, arg_1.a)), var_0.x, arg_0.d.x, !(!arg_3.x) && (!arg_3.x && all(vec3<bool>(arg_0.e.c, true, false)))), vec4<bool>(all(select(vec3<bool>(true, false, arg_1.a), vec3<bool>(false, var_0.x, arg_1.c.x), vec3<bool>(arg_1.c.x, false, arg_3.x))), !arg_0.b.c.x, arg_0.d.x, true), arg_3.x);
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> bool {
    let var_0 = Struct_2(false, _wgslsmith_f_op_f32(f32(-1f) * -239f), !vec3<bool>(any(vec2<bool>(arg_1.x, arg_1.x)), arg_1.x, !select(arg_1.x, false, arg_1.x)));
    var var_1 = i32(-1i) * -abs(-1i << (1u % 32u));
    var var_2 = Struct_2(all(vec4<bool>(!arg_1.x, u_input.a.x > _wgslsmith_mod_i32(u_input.a.x, 1i), ~arg_0 > ~arg_0, _wgslsmith_div_f32(var_0.b, var_0.b) >= _wgslsmith_f_op_f32(-var_0.b))), var_0.b, vec3<bool>(any(select(!vec4<bool>(arg_1.x, true, false, var_0.c.x), func_3(Struct_3(vec3<i32>(u_input.a.x, 2147483647i, 22270i), Struct_2(arg_1.x, var_0.b, var_0.c), vec3<f32>(var_0.b, 914f, var_0.b), vec3<bool>(true, var_0.a, var_0.c.x), Struct_1(vec4<f32>(-947f, var_0.b, 1000f, var_0.b), arg_1.x, true)), var_0, vec2<f32>(var_0.b, var_0.b), vec3<bool>(var_0.c.x, arg_1.x, true)), any(vec4<bool>(arg_1.x, var_0.c.x, false, false)))), true, any(vec3<bool>(any(vec4<bool>(true, true, true, var_0.c.x)), false, any(vec3<bool>(var_0.c.x, false, var_0.a))))));
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(select(-964f, -873f, true)))) * _wgslsmith_f_op_f32(-var_0.b))), vec3<bool>(any(func_3(Struct_3(vec3<i32>(-55849i, -2147483647i, u_input.a.x), var_0, vec3<f32>(var_0.b, var_0.b, 1081f), vec3<bool>(arg_1.x, var_0.c.x, true), Struct_1(vec4<f32>(-1000f, -1063f, var_0.b, var_2.b), true, arg_1.x)), Struct_2(false, 406f, var_2.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -697f)), func_3(Struct_3(u_input.a, Struct_2(arg_1.x, -327f, var_2.c), vec3<f32>(var_0.b, var_0.b, 2838f), vec3<bool>(var_0.c.x, false, true), Struct_1(vec4<f32>(-186f, var_0.b, -351f, -485f), true, true)), var_0, vec2<f32>(404f, 526f), vec3<bool>(false, false, false)).yxw).yx), true, !var_2.a));
    var_2 = Struct_2(!func_3(Struct_3(u_input.a, var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 1000f, var_2.b) - vec3<f32>(var_2.b, var_2.b, var_0.b)), func_3(Struct_3(vec3<i32>(-11543i, u_input.a.x, 15617i), Struct_2(true, var_0.b, vec3<bool>(false, false, false)), vec3<f32>(var_0.b, -606f, var_2.b), vec3<bool>(var_2.a, true, var_2.a), Struct_1(vec4<f32>(703f, -1709f, var_2.b, 895f), false, arg_1.x)), Struct_2(var_0.c.x, var_2.b, vec3<bool>(var_0.c.x, false, true)), vec2<f32>(-1070f, 2375f), vec3<bool>(var_0.c.x, var_2.c.x, false)).xxy, Struct_1(vec4<f32>(var_0.b, 206f, 1000f, 805f), true, var_0.a)), Struct_2(var_2.c.x | var_0.a, 115f, vec3<bool>(var_2.c.x, var_0.a, false)), vec2<f32>(var_0.b, var_2.b), var_2.c).x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(f32(-1f) * -1017f))), !vec3<bool>(var_2.c.x, var_2.a, _wgslsmith_clamp_u32(43671u, arg_0, 32406u) < reverseBits(33902u)));
    return !select(!(!(arg_1.x || true)), true, func_3(Struct_3(~u_input.a, Struct_2(var_0.a, var_2.b, vec3<bool>(false, true, arg_1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1642f, var_0.b, var_2.b), vec3<f32>(var_2.b, 248f, var_0.b))), select(var_0.c, var_2.c, var_0.c), Struct_1(vec4<f32>(var_2.b, -1779f, var_0.b, -1108f), var_2.a, var_0.a)), var_0, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b, -485f), vec2<f32>(-802f, var_2.b), arg_1.x)))), vec3<bool>(false, var_0.c.x, arg_1.x != true)).x);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_4(vec4<bool>(true, false, true, !(4294967295u <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 25224u), vec4<u32>(0u, 4294967295u, 40627u, 1u)))), select(~reverseBits(vec3<i32>(2147483647i, -1i, -2147483647i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(0i, -47154i, u_input.a.x), u_input.a), select(func_2(~0u, vec2<bool>(true, false)), !any(vec4<bool>(true, true, false, false)), true)), vec3<i32>(-u_input.a.x, ~(~2147483647i) >> (firstTrailingBit(max(30221u, 2234u)) % 32u), -u_input.a.x), Struct_2(_wgslsmith_mod_i32(-u_input.a.x, 2147483647i) > -19375i, -744f, !func_3(Struct_3(u_input.a, Struct_2(false, -1000f, vec3<bool>(true, false, true)), vec3<f32>(763f, -1518f, -1255f), vec3<bool>(true, false, true), Struct_1(vec4<f32>(306f, 1000f, -299f, 714f), false, true)), Struct_2(false, -449f, vec3<bool>(true, false, false)), vec2<f32>(-2004f, -1130f), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))).yxz));
    var var_1 = Struct_3(var_0.c, Struct_2(true, _wgslsmith_f_op_f32(var_0.d.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-584f)))), var_0.a.zzw), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-581f, 404f, var_0.d.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.b, 1053f, 1833f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1478f, -2349f, 1439f), vec3<f32>(-1364f, -971f, 1987f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(964f, var_0.d.b, -1972f), vec3<f32>(var_0.d.b, -1134f, var_0.d.b), var_0.a.wyz))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1272f, var_0.d.b, var_0.d.b)))))), !select(var_0.a.xzz, select(func_3(Struct_3(vec3<i32>(1i, var_0.b.x, var_0.b.x), var_0.d, vec3<f32>(403f, -814f, var_0.d.b), vec3<bool>(var_0.d.c.x, false, false), Struct_1(vec4<f32>(1000f, var_0.d.b, var_0.d.b, var_0.d.b), true, var_0.d.c.x)), Struct_2(false, 1194f, var_0.d.c), vec2<f32>(-297f, var_0.d.b), vec3<bool>(true, var_0.d.a, false)).xwz, !vec3<bool>(var_0.a.x, var_0.d.c.x, var_0.d.a), true), var_0.d.c), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.d.b, var_0.d.b, var_0.d.b, var_0.d.b), vec4<f32>(var_0.d.b, 1881f, var_0.d.b, var_0.d.b), var_0.d.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.b, var_0.d.b, var_0.d.b, 186f)))), any(var_0.d.c.xz), !(var_0.d.a || true)));
    var_0 = Struct_4(vec4<bool>(func_2(~_wgslsmith_div_u32(35039u, 1u), select(vec2<bool>(true, false), select(var_0.d.c.zx, var_0.d.c.yy, var_0.a.x), var_1.d.yy)), any(var_0.a), true, all(var_0.a.xyz)), ~vec3<i32>(_wgslsmith_sub_i32(abs(var_0.b.x), var_0.c.x | u_input.a.x), _wgslsmith_clamp_i32(select(-1i, var_1.a.x, true), _wgslsmith_add_i32(-19444i, var_1.a.x), -var_1.a.x), 1i), reverseBits(select(reverseBits(u_input.a >> (vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u))), abs(abs(vec3<i32>(2503i, -1i, -1i))), true)), var_1.b);
    let var_2 = vec2<i32>(-1i) * -(~var_0.b.zz);
    let var_3 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(4294967295u, 0u, 4294967295u))), vec3<u32>(20949u, 1u, ~(~min(1u, 0u))));
    return var_1.e;
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = func_1();
    var var_1 = -(((vec4<i32>(-40112i, 2147483647i, u_input.a.x, 2147483647i) >> (abs(vec4<u32>(71393u, 68489u, 303u, 51771u)) % vec4<u32>(32u))) & ~reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, 30745i, 44778i))) >> (~max(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(8016u, 1u, 38840u, 1u))) % vec4<u32>(32u)));
    var var_2 = func_1();
    var_1 = firstLeadingBit(~vec4<i32>(abs(u_input.a.x | 41958i), ~var_1.x, -1i, -u_input.a.x));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1542f + arg_0.a.x)), var_0.a.x)))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> vec3<i32> {
    let var_0 = ~(~(~vec4<u32>(62910u, 1u, _wgslsmith_mult_u32(4294967295u, 0u), 18496u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -430f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1207f + 2421f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1021f - -1433f)))));
    let var_2 = Struct_4(!vec4<bool>(arg_3.x, any(select(arg_3.yyy, vec3<bool>(arg_3.x, false, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, arg_3.x))), arg_3.x, arg_3.x), firstLeadingBit(min(~u_input.a, reverseBits(u_input.a))), -u_input.a, Struct_2(arg_3.x | any(!arg_3), arg_1, vec3<bool>(true, arg_3.x, u_input.a.x >= u_input.a.x)));
    var var_3 = !arg_3.wxw;
    let var_4 = select(var_2.d.c.xy, select(func_3(Struct_3(firstLeadingBit(var_2.b), var_2.d, vec3<f32>(var_1, var_1, -1350f), func_3(Struct_3(vec3<i32>(-18779i, var_2.b.x, 18942i), Struct_2(true, arg_1, var_2.d.c), vec3<f32>(arg_1, 179f, -1000f), arg_3.zyw, Struct_1(vec4<f32>(var_1, var_1, arg_2, arg_2), var_2.a.x, var_3.x)), Struct_2(true, var_1, vec3<bool>(true, var_3.x, false)), vec2<f32>(-244f, arg_0), var_2.d.c).xzy, Struct_1(vec4<f32>(-891f, 1000f, arg_1, 446f), var_2.a.x, false)), var_2.d, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(115f, -1489f), vec2<f32>(var_1, -457f)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, 943f), vec2<f32>(548f, arg_1)))), vec3<bool>(any(arg_3.zzw), !arg_3.x, true)).xw, func_3(Struct_3(reverseBits(var_2.b), var_2.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.b, arg_0, -631f)), select(arg_3.xzw, var_2.d.c, vec3<bool>(true, var_2.d.a, var_3.x)), Struct_1(vec4<f32>(arg_1, arg_2, -423f, -1250f), var_3.x, var_2.a.x)), Struct_2(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -1191f), arg_3.wyy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1435f, -464f)), var_2.a.wxx).wx, !arg_3.xz), select(!select(false, true, var_2.a.x) & (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 227u), var_0.wz) < var_0.x), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec2_u32(var_0.zx, vec2<u32>(4294967295u, 0u))) < var_0.x, func_3(Struct_3(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, u_input.a.x), vec3<i32>(0i, u_input.a.x, u_input.a.x)), Struct_2(false, arg_1, vec3<bool>(var_2.d.c.x, var_3.x, var_2.d.a)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(610f, -1862f, 591f))), select(arg_3.yzx, vec3<bool>(false, var_3.x, false), false), Struct_1(vec4<f32>(-1000f, -1231f, arg_0, arg_2), var_3.x, true)), Struct_2(2147483647i > var_2.c.x, _wgslsmith_f_op_f32(-203f - -530f), !var_2.a.wzz), vec2<f32>(_wgslsmith_f_op_f32(round(-2225f)), -1066f), select(select(arg_3.zzz, var_2.d.c, var_2.d.c.x), select(arg_3.wyx, vec3<bool>(arg_3.x, var_2.a.x, var_2.a.x), var_2.a.x), any(vec3<bool>(false, var_3.x, var_2.d.a)))).x));
    return -_wgslsmith_mod_vec3_i32(abs(var_2.c), -(~vec3<i32>(0i, u_input.a.x, u_input.a.x)) << (var_0.yyx % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(select(!vec4<bool>(false, false, true, any(vec2<bool>(true, false))), vec4<bool>(u_input.a.x >= _wgslsmith_mod_i32(u_input.a.x, -1i), true, true, any(vec2<bool>(false, true))), true), func_5(_wgslsmith_f_op_f32(func_4(func_1())), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_1().b)), u_input.a, Struct_2(true, _wgslsmith_f_op_f32(abs(561f)), func_3(Struct_3(countOneBits(vec3<i32>(-14776i, u_input.a.x, u_input.a.x)), Struct_2(false, -562f, vec3<bool>(true, true, false)), _wgslsmith_div_vec3_f32(vec3<f32>(-655f, 856f, -1857f), vec3<f32>(949f, -773f, -1044f)), vec3<bool>(true, true, true), Struct_1(vec4<f32>(-836f, -560f, 1726f, 111f), true, true)), Struct_2(true, _wgslsmith_div_f32(112f, 664f), vec3<bool>(true, true, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(489f, -1533f) + vec2<f32>(-886f, -930f)), vec2<f32>(550f, -305f)), vec3<bool>(true, true, true)).zxy));
    let var_1 = _wgslsmith_mod_i32(var_0.c.x, _wgslsmith_sub_i32(-2147483647i, -34419i));
    let x = u_input.a;
    s_output = StorageBuffer(-617i, -var_0.b.zy, vec3<i32>(u_input.a.x, _wgslsmith_clamp_i32(var_1, u_input.a.x, _wgslsmith_clamp_i32(-1i, ~(-67607i), u_input.a.x)), firstLeadingBit(23117i)), -(i32(-1i) * -16668i), _wgslsmith_f_op_f32(-var_0.d.b));
}

