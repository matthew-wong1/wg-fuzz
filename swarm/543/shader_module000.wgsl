struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-3534f, 586f), vec2<f32>(-763f, 766f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(111f, -873f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-684f, -1000f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(501f, -843f))))))));
    var var_1 = reverseBits(~(-1i));
    let var_2 = 1655i << (~(u_input.a.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x)) % 32u)) % 32u);
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1417f - 485f)))), _wgslsmith_f_op_f32(f32(-1f) * -429f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-562f, _wgslsmith_f_op_f32(var_0.x - var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))))), vec4<i32>(0i, 2147483647i, -2147483647i, -14702i) & vec4<i32>(~267i, ~2147483647i, ~max(var_2, 0i), ~var_2), vec2<bool>(~(var_2 | -1i) == 1i, true), vec3<f32>(-1094f, -1446f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-722f)), -131f, true))));
    let var_4 = Struct_4(!(!vec3<bool>(true, !var_3.d.x, var_3.d.x)), Struct_3(select(select(vec4<u32>(4294967295u, 1u, 0u, 14095u), vec4<u32>(4294967295u, 1u, 109427u, 28539u), !vec4<bool>(var_3.d.x, false, true, var_3.d.x)), ~reverseBits(vec4<u32>(u_input.a.x, 12843u, 21461u, 12539u)), false), -18110i), Struct_3(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(reverseBits(0u), ~86384u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13311u, 1u), vec3<u32>(3881u, u_input.a.x, 90671u)), _wgslsmith_sub_u32(4294967295u, u_input.a.x))), abs(var_2 & var_2) >> (abs(reverseBits(u_input.a.x)) % 32u)), ~vec4<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 10206u), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))), _wgslsmith_clamp_u32(~37704u, 0u, u_input.a.x | 0u), _wgslsmith_sub_u32(1u, countOneBits(u_input.a.x))));
    return 0i;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec2<f32> {
    let var_0 = !vec3<bool>(any(!(!vec3<bool>(arg_0.x, false, arg_0.x))), arg_1.a.x > _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1030f)), 103f), arg_3 > arg_1.c.x);
    let var_1 = Struct_3(vec4<u32>(u_input.a.x, u_input.a.x, ~(~62843u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) >> (abs(vec3<u32>(u_input.a.x, 37695u, 1u)) % vec3<u32>(32u)), vec3<u32>(max(u_input.a.x, u_input.a.x), 1u, 1u >> (u_input.a.x % 32u)))), 0i);
    global0 = true;
    var var_2 = Struct_3(_wgslsmith_mult_vec4_u32(~(var_1.a & var_1.a) >> (var_1.a % vec4<u32>(32u)), firstLeadingBit(~abs(vec4<u32>(48863u, 102192u, 4294967295u, u_input.a.x)))), -(~func_3()));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_1.e.xx)))))))));
}

fn func_2(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(func_4(vec2<bool>(true, true), arg_0.c, 1000f, func_3())), _wgslsmith_f_op_f32(-arg_0.c.b), arg_0.c.c, arg_2, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.e.x)) - arg_0.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1172f), 1127f)), vec3<i32>(-1i) * -arg_1, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(297f, arg_0.c.e.x, true)) - -1000f), arg_0.c.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_4(vec2<bool>(arg_2.x, false), Struct_1(arg_0.c.e.yz, arg_0.c.a.x, arg_0.c.c, vec2<bool>(arg_2.x, arg_2.x), arg_0.a.e), 409f, -2147483647i)).x, _wgslsmith_f_op_f32(499f * arg_0.a.e.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1276f - 1287f))))), _wgslsmith_clamp_vec4_i32(abs(arg_0.c.c) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 24807u) % vec4<u32>(32u)), vec4<i32>(~arg_0.a.c.x, countOneBits(arg_1.x), arg_1.x, ~(-8138i)), firstTrailingBit(min(vec4<i32>(-27456i, -1i, arg_0.c.c.x, arg_0.b.x), vec4<i32>(arg_1.x, arg_1.x, 0i, arg_0.a.c.x)))), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -879f) >= _wgslsmith_f_op_f32(min(-910f, arg_0.a.b)), arg_0.c.d.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(arg_0.c.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(-2802f, arg_0.c.b, arg_0.a.e.x) - arg_0.c.e))))));
    var var_1 = vec2<i32>(-1i, _wgslsmith_sub_i32(-(13189i << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, 42926u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 62710u)) % 32u)), arg_1.x));
    let var_2 = Struct_4(!(!select(select(vec3<bool>(false, arg_2.x, true), vec3<bool>(false, var_0.c.d.x, var_0.c.d.x), vec3<bool>(arg_2.x, true, var_0.c.d.x)), vec3<bool>(true, arg_0.c.d.x, arg_2.x), any(vec4<bool>(arg_0.c.d.x, false, true, var_0.a.d.x)))), Struct_3(vec4<u32>(reverseBits(u_input.a.x), u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a << (u_input.a % vec2<u32>(32u)), u_input.a), u_input.a.x), 2147483647i), Struct_3(vec4<u32>(_wgslsmith_add_u32(select(18513u, u_input.a.x, false), reverseBits(u_input.a.x)), _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), ~1u, select(4566u, ~70664u, !var_0.c.d.x)), arg_0.a.c.x), vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(~(~u_input.a.x), abs(u_input.a.x)), 20047u, u_input.a.x));
    var_1 = arg_1.xy;
    var var_3 = ~vec3<u32>(_wgslsmith_clamp_u32(21690u, 27513u, 17469u), firstTrailingBit(_wgslsmith_clamp_u32(~21838u, abs(u_input.a.x), countOneBits(u_input.a.x))), ~(~u_input.a.x) & u_input.a.x);
    return select(select(select(vec4<bool>(any(vec4<bool>(true, false, arg_2.x, var_0.a.d.x)), false, arg_0.a.d.x, 22175i < arg_0.b.x), vec4<bool>(true, !var_2.a.x, false, var_2.a.x), vec4<bool>(var_0.a.e.x == var_0.c.e.x, all(vec4<bool>(arg_0.a.d.x, true, var_2.a.x, arg_2.x)), !var_0.a.d.x, true)), select(!(!vec4<bool>(var_0.c.d.x, arg_2.x, var_0.a.d.x, true)), select(!vec4<bool>(false, arg_2.x, var_0.c.d.x, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, var_0.c.d.x, arg_0.a.d.x), arg_0.a.d.x), vec4<bool>(var_2.a.x, arg_0.a.d.x, var_2.a.x, var_2.a.x)), arg_2.x || true), select(select(select(vec4<bool>(true, var_0.c.d.x, false, false), vec4<bool>(arg_0.c.d.x, arg_2.x, arg_0.c.d.x, true), arg_2.x), vec4<bool>(false, true, var_0.a.d.x, arg_2.x), !vec4<bool>(true, var_0.a.d.x, false, false)), select(!vec4<bool>(false, false, arg_0.c.d.x, arg_0.a.d.x), vec4<bool>(arg_2.x, true, true, true), !vec4<bool>(var_2.a.x, var_0.a.d.x, arg_0.a.d.x, arg_2.x)), true)), !select(!(!vec4<bool>(true, var_2.a.x, arg_2.x, false)), select(!vec4<bool>(arg_2.x, arg_0.a.d.x, true, false), vec4<bool>(var_0.c.d.x, true, var_0.c.d.x, arg_2.x), !vec4<bool>(var_2.a.x, var_2.a.x, true, true)), select(vec4<bool>(false, var_2.a.x, true, arg_0.c.d.x), vec4<bool>(arg_0.c.d.x, false, var_2.a.x, true), !vec4<bool>(var_0.a.d.x, true, false, true))), vec4<bool>((~arg_1.x | 18823i) <= 2147483647i, any(!var_2.a.zx), arg_2.x, true));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    let var_0 = -1884f;
    global0 = !all(!func_2(Struct_5(Struct_1(vec2<f32>(-698f, -1710f), 1173f, vec4<i32>(arg_0.x, 6445i, arg_0.x, arg_0.x), vec2<bool>(true, false), vec3<f32>(var_0, var_0, 1231f)), arg_0.zzw, Struct_1(vec2<f32>(var_0, 2351f), var_0, vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 7852i), vec2<bool>(true, true), vec3<f32>(-665f, var_0, var_0))), vec3<i32>(arg_0.x, arg_0.x, 1i), vec2<bool>(true, true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1799f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0 ^ vec4<i32>(_wgslsmith_clamp_i32(-84916i, _wgslsmith_sub_i32(28098i, arg_0.x), _wgslsmith_add_i32(arg_0.x, 11826i)), arg_0.x, 9580i, -42364i), !select(vec2<bool>(true, true), !func_2(Struct_5(Struct_1(vec2<f32>(var_0, 1409f), var_0, arg_0, vec2<bool>(true, false), vec3<f32>(1159f, -1474f, var_0)), vec3<i32>(arg_0.x, arg_0.x, arg_0.x), Struct_1(vec2<f32>(-1393f, -781f), 187f, arg_0, vec2<bool>(false, false), vec3<f32>(var_0, 179f, 186f))), vec3<i32>(arg_0.x, -13052i, arg_0.x), vec2<bool>(false, true)).yz, 1i <= ~arg_0.x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1378f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_div_f32(-244f, var_0)))));
    let var_2 = 18654i;
    global0 = false;
    return _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3482f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.a.x))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1189f)) + _wgslsmith_div_f32(var_1.e.x, -1633f))))));
}

fn func_5(arg_0: f32, arg_1: vec2<u32>) -> bool {
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(floor(1246f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, -1194f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1096f)))), vec4<i32>(~(-56441i), reverseBits(select(23627i, -1i, false)), _wgslsmith_mod_i32(2147483647i, 10212i), 1i), vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 + arg_0), -1000f, _wgslsmith_f_op_f32(ceil(arg_0))))), ~(-vec3<i32>(1i, 1i, ~2147483647i)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_0), 1521f, vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-42406i, 0i) >> (u_input.a % vec2<u32>(32u)), ~vec2<i32>(2147483647i, -46830i)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-37963i, 13800i, 2147483647i, 2147483647i))), select(func_2(Struct_5(Struct_1(vec2<f32>(arg_0, arg_0), 210f, vec4<i32>(8701i, -62001i, -1i, -3140i), vec2<bool>(false, false), vec3<f32>(arg_0, 255f, arg_0)), vec3<i32>(2147483647i, -2147483647i, -2147483647i), Struct_1(vec2<f32>(arg_0, 463f), -1435f, vec4<i32>(2147483647i, -1i, -10405i, -1i), vec2<bool>(false, true), vec3<f32>(356f, arg_0, 769f))), vec3<i32>(42969i, 2328i, -4997i), vec2<bool>(true, false)).wy, vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(arg_0, -921f, -385f))) * vec3<f32>(-1806f, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(select(1253f, arg_0, true))))));
    return select(select(all(vec2<bool>(!var_0.c.d.x, true)), var_0.c.d.x, !any(vec3<bool>(false, var_0.c.d.x, var_0.a.d.x))), !all(select(func_2(Struct_5(Struct_1(var_0.c.e.yy, var_0.a.b, vec4<i32>(-2147483647i, -11198i, 28891i, var_0.b.x), var_0.c.d, vec3<f32>(var_0.c.e.x, arg_0, -1450f)), var_0.a.c.xww, var_0.c), var_0.b, vec2<bool>(true, var_0.a.d.x)).zx, !var_0.c.d, false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_f_op_f32(-446f + _wgslsmith_f_op_f32(func_1(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 7440i, 2147483647i, 22382i), vec4<i32>(45804i, 1i, 2971i, 21860i))))), min(u_input.a, vec2<u32>(u_input.a.x, 71527u)));
    global0 = all(!func_2(Struct_5(Struct_1(vec2<f32>(-1513f, -1211f), -400f, vec4<i32>(1i, 11787i, -2147483647i, -2147483647i), vec2<bool>(false, true), vec3<f32>(174f, 1354f, -582f)), abs(vec3<i32>(971i, -81703i, 0i)), Struct_1(vec2<f32>(143f, -300f), 579f, vec4<i32>(60536i, 737i, 0i, 35070i), vec2<bool>(false, true), vec3<f32>(905f, 923f, -1034f))), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(1i, 0i, 0i)), vec3<i32>(2147483647i, -2147483647i, -29651i), vec3<i32>(-13834i, 0i, -1i)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))).ywx);
    var var_0 = Struct_4(!(!(!func_2(Struct_5(Struct_1(vec2<f32>(-689f, -447f), 495f, vec4<i32>(53873i, -70228i, 2147483647i, -1i), vec2<bool>(true, false), vec3<f32>(566f, -717f, 417f)), vec3<i32>(2147483647i, 1i, 45534i), Struct_1(vec2<f32>(547f, 551f), -1318f, vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 52000i), vec2<bool>(false, true), vec3<f32>(272f, 125f, 1289f))), vec3<i32>(8378i, 0i, -15877i), vec2<bool>(true, true)).zyz)), Struct_3(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u), select(_wgslsmith_dot_vec3_i32(-vec3<i32>(4751i, 54677i, 1i), ~vec3<i32>(-1i, -2147483647i, 2147483647i)), _wgslsmith_mod_i32(~(-10186i), 24745i), true)), Struct_3(~(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), min(max(~(-967i), 1i), 0i)), select(~min(~vec4<u32>(78635u, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u))), ~vec4<u32>(u_input.a.x, 37122u, ~u_input.a.x, _wgslsmith_add_u32(4294967295u, u_input.a.x)), _wgslsmith_mod_i32(~1502i, _wgslsmith_mult_i32(1854i, -8633i)) > ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -39699i, 2147483647i), vec4<i32>(52885i, 2147483647i, -1i, 1i))));
    var_0 = Struct_4(func_2(Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1180f, -536f) + vec2<f32>(177f, -858f)), _wgslsmith_f_op_f32(595f - -655f), firstTrailingBit(vec4<i32>(var_0.c.b, 2147483647i, 16397i, var_0.c.b)), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(302f, -1158f, 164f)))), -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, -1i), vec3<i32>(-2147483647i, var_0.c.b, var_0.c.b)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(852f, -368f), vec2<f32>(-1000f, 411f), vec2<bool>(var_0.a.x, true))), _wgslsmith_f_op_f32(f32(-1f) * -137f), max(vec4<i32>(-16096i, var_0.c.b, var_0.c.b, var_0.b.b), vec4<i32>(var_0.b.b, 3909i, var_0.b.b, var_0.b.b)), vec2<bool>(true, var_0.a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1075f, -455f, -1000f), vec3<f32>(1618f, 426f, -494f), var_0.a)))), firstTrailingBit(~vec3<i32>(33067i, -1i, 1i)), vec2<bool>(any(!vec3<bool>(false, var_0.a.x, false)), false)).wyw, var_0.c, Struct_3(firstTrailingBit(abs(select(var_0.c.a, vec4<u32>(0u, 72862u, 4294967295u, 0u), true))), ~(-38641i)), ~var_0.b.a);
    global0 = var_0.a.x;
    var_0 = Struct_4(!var_0.a, var_0.c, Struct_3(vec4<u32>(4294967295u, 4601u, _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 1u), vec2<u32>(1u, 51563u) ^ vec2<u32>(var_0.d.x, 0u))), var_0.b.b), ~abs(vec4<u32>(24014u, 4294967295u, 12148u, u_input.a.x)) << (~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.a.x, var_0.c.a.x, u_input.a.x, u_input.a.x), var_0.d), var_0.d) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-abs(countOneBits(vec2<i32>(var_0.c.b, var_0.b.b))), _wgslsmith_div_vec2_i32(-vec2<i32>(20824i, 15913i), vec2<i32>(-var_0.c.b, i32(-1i) * -47535i))), -vec2<i32>(~var_0.c.b, 1i));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-1f))) + -1564f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-582f, 2049f, true)) - -1078f)));
    let x = u_input.a;
    s_output = StorageBuffer(371f, _wgslsmith_add_u32(~var_0.b.a.x ^ _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.d.x, u_input.a.x, u_input.a.x), var_0.d.yyz, vec3<u32>(52191u, 4294967295u, 55912u)), vec3<u32>(u_input.a.x, var_0.c.a.x, 3522u)), var_0.d.x), abs(vec4<u32>(abs(6017u) >> (~4294967295u % 32u), max(~122408u, ~var_0.b.a.x), ~_wgslsmith_dot_vec2_u32(var_0.b.a.yz, vec2<u32>(u_input.a.x, var_0.d.x)), reverseBits(var_0.c.a.x & var_0.c.a.x))));
}

