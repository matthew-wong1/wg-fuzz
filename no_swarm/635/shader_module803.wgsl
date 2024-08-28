struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    let var_0 = Struct_3(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(0u, u_input.b.x) & u_input.b.ww), u_input.b.zw, reverseBits(select(u_input.b.xy, ~vec2<u32>(arg_3, 13387u), u_input.a.x < 1i))), vec2<u32>(42340u, _wgslsmith_add_u32(0u, reverseBits(18361u))));
    var var_1 = vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_2.x)))), -914f)) - -119f));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-472f, -1595f, arg_0.x) * vec3<f32>(518f, var_1.x, arg_2.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_0.x, -447f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-1010f + _wgslsmith_f_op_f32(min(arg_0.x, -173f))), arg_0.x)) + _wgslsmith_f_op_vec3_f32(-arg_2.wwz));
    var_1 = arg_2.wxy;
    var_1 = arg_2.yxw;
    return -84630i;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32) -> vec4<f32> {
    var var_0 = func_3(vec3<f32>(_wgslsmith_f_op_f32(floor(1062f)), -1134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -111f)))), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -2179f, arg_0, 319f)))), u_input.b.x);
    var_0 = -(u_input.a.x >> (39108u % 32u));
    var var_1 = (~(~u_input.b.x) >= firstLeadingBit(arg_1)) || true;
    var_0 = -18393i;
    let var_2 = -33165i;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(544f, -330f, -864f, 292f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-494f, -459f, -1984f, arg_0), vec4<f32>(arg_0, -1000f, 769f, arg_2)))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, -1089f, -1000f, 826f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1137f, 1411f, -292f, arg_2), vec4<f32>(1337f, -668f, arg_0, arg_0), false))))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = arg_2.a;
    var var_1 = Struct_2(Struct_1(firstTrailingBit(arg_2.a.a) << (~abs(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), -410f), vec2<i32>(~2147483647i, 0i));
    var var_2 = arg_2;
    var_1 = Struct_2(Struct_1(var_2.a.a, var_2.a.b), ~var_0.a.yx);
    let var_3 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), true), false));
    return Struct_3(vec2<u32>(_wgslsmith_div_u32(1u, u_input.b.x), u_input.b.x), ~max(countOneBits(vec2<u32>(1u, u_input.b.x)) >> (u_input.b.xw % vec2<u32>(32u)), vec2<u32>(select(40012u, u_input.b.x, true), 26699u)));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_1(~vec4<i32>(firstLeadingBit(-u_input.a.x), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(-9439i, u_input.a.x))), abs(_wgslsmith_sub_i32(u_input.c, -25301i)), u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2409f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) - _wgslsmith_f_op_f32(-431f - -2521f)), 329f))));
    let var_1 = reverseBits(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-1i, var_0.a.x, -6239i)), u_input.a.zwy)) | (select(countOneBits(select(u_input.a.zyy, vec3<i32>(u_input.a.x, -2147483647i, var_0.a.x), vec3<bool>(arg_2, arg_0, true))), select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, var_0.a.x), vec3<i32>(u_input.c, 0i, -27084i)), -u_input.a.ywz, arg_0), arg_0) << (_wgslsmith_mod_vec3_u32(u_input.b.wxy, vec3<u32>(~arg_3.b.x, u_input.b.x >> (1u % 32u), arg_3.b.x)) % vec3<u32>(32u)));
    var var_2 = Struct_4(Struct_1(vec4<i32>(abs(1i) << (_wgslsmith_mod_u32(u_input.b.x, arg_1.a.x) % 32u), var_1.x, min(2147483647i, 0i), var_1.x), _wgslsmith_f_op_f32(190f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -145f)))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.a.x ^ var_1.x, ~(-27008i)), 1i), countOneBits(select(2147483647i, ~var_0.a.x, any(vec2<bool>(false, true)))), var_1.x), all(vec4<bool>(any(!vec2<bool>(arg_2, true)), arg_2 & !arg_0, arg_0, arg_0)), any(!(!(!vec2<bool>(arg_2, true)))));
    var_2 = Struct_4(Struct_1(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(var_2.a.a, vec4<i32>(-44947i, var_2.a.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(step(var_2.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * var_0.b))))), (-vec3<i32>(-46869i, -2147483647i, u_input.a.x) ^ vec3<i32>(-9221i & var_1.x, u_input.c, 1i)) & (-firstLeadingBit(vec3<i32>(var_1.x, var_2.b.x, var_2.a.a.x)) << ((firstLeadingBit(u_input.b.yzw) >> (_wgslsmith_mult_vec3_u32(u_input.b.xwx, vec3<u32>(4294967295u, arg_1.b.x, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u))), true, any(vec3<bool>(true, true, true)));
    var_2 = Struct_4(Struct_1(_wgslsmith_sub_vec4_i32(~u_input.a, var_2.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-950f, 663f, false)))))), (min(var_1, ~vec3<i32>(var_2.b.x, 1i, -58446i)) >> (vec3<u32>(0u, ~35218u, ~56409u) % vec3<u32>(32u))) << (abs(~vec3<u32>(arg_1.b.x, 4294967295u, arg_3.b.x)) % vec3<u32>(32u)), true && !arg_0, any(vec2<bool>((false & arg_2) | (arg_2 && arg_0), true)));
    return Struct_1(vec4<i32>(_wgslsmith_mult_i32(1i, -2147483647i), 23045i, _wgslsmith_sub_i32(~var_0.a.x, var_0.a.x), u_input.c), var_0.b);
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: f32, arg_3: vec3<i32>) -> vec3<i32> {
    let var_0 = -2147483647i;
    var var_1 = !vec2<bool>(any(vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, true)), all(vec2<bool>(false, false)))), false);
    var var_2 = func_5(var_1.x, Struct_3(u_input.b.wy, vec2<u32>(_wgslsmith_div_u32(~u_input.b.x, ~arg_1.d), arg_1.d)), var_1.x, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(979f * arg_1.b.x), 1u, -1295f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 294f, arg_2, 413f)))), ~vec3<i32>(arg_0 & u_input.c, arg_0, arg_1.a.x), Struct_2(Struct_1(vec4<i32>(arg_3.x, 11316i, arg_1.e.x, 1i) >> (u_input.b % vec4<u32>(32u)), _wgslsmith_f_op_f32(-arg_2)), abs(vec2<i32>(25402i, arg_3.x)))));
    var var_3 = u_input.b.zzw;
    let var_4 = Struct_3(max(var_3.yx & ~vec2<u32>(32151u, 1u), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(var_3.yx, vec2<u32>(arg_1.d, var_3.x)), u_input.b.ww)), var_3.yy);
    return vec3<i32>(~_wgslsmith_dot_vec3_i32(~select(arg_1.a.www, vec3<i32>(-2147483647i, u_input.c, 26074i), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<i32>(var_0 << (arg_1.d % 32u), arg_3.x, _wgslsmith_mod_i32(-2147483647i, 1i))), u_input.c, 0i);
}

fn func_6(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec4<f32>) -> i32 {
    let var_0 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(max(_wgslsmith_mult_i32(arg_1.x, u_input.a.x), u_input.a.x | u_input.c), arg_1.x), arg_1.x), 12719i, arg_1.x << (((~4294967295u >> (~u_input.b.x % 32u)) ^ u_input.b.x) % 32u));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_2(1688f, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 4294967295u, 1u), reverseBits(u_input.b.xxy)), _wgslsmith_f_op_f32(arg_2.x * 142f))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-116f + _wgslsmith_div_f32(arg_2.x, arg_2.x))));
    let var_2 = _wgslsmith_div_i32(u_input.a.x, -(~(-10143i) & (-1i << (~u_input.b.x % 32u))));
    var var_3 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(624f, -504f, true)) - var_1) != 1574f, Struct_3(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), ~u_input.b.yx)), u_input.b.yz), all(select(vec3<bool>(all(vec2<bool>(true, false)), true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2)) - _wgslsmith_f_op_vec4_f32(-arg_2)), vec3<i32>(10709i, 19933i, _wgslsmith_sub_i32(-38214i, var_2 ^ arg_1.x)), Struct_2(func_5(true, Struct_3(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), true, func_4(vec4<f32>(-321f, 1239f, arg_2.x, -706f), arg_1, Struct_2(Struct_1(vec4<i32>(var_0.x, var_0.x, var_0.x, 2147483647i), arg_2.x), vec2<i32>(var_0.x, -35073i)))), firstTrailingBit(~u_input.a.xz))));
    let var_4 = _wgslsmith_mult_u32(~19198u, abs(_wgslsmith_div_u32(~1u, _wgslsmith_clamp_u32(u_input.b.x ^ 0u, ~u_input.b.x, ~u_input.b.x))));
    return _wgslsmith_add_i32(var_3.a.x, var_2);
}

fn func_7(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = 1u << (~u_input.b.x % 32u);
    let var_1 = Struct_3(u_input.b.zz, _wgslsmith_add_vec2_u32(vec2<u32>(8281u, min(36556u, 60190u)) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, var_0), u_input.b.zz, vec2<u32>(0u, 2468u)), ~u_input.b.xw), select(vec2<u32>(var_0 ^ arg_0.d, ~39063u), select(select(vec2<u32>(var_0, 4294967295u), vec2<u32>(var_0, 9485u), true), firstLeadingBit(vec2<u32>(1u, 4294967295u)), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(false, false)))));
    let var_2 = Struct_3(vec2<u32>(31660u, reverseBits(max(u_input.b.x ^ 4294967295u, 67522u))), reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(~56680u, firstTrailingBit(var_1.b.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0, arg_0.d, var_0), vec4<u32>(1u, 50222u, 25613u, 0u)), 24053u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.b * _wgslsmith_f_op_f32(f32(-1f) * -2115f)), _wgslsmith_f_op_vec4_f32(func_2(1205f, select(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, 1u), vec2<u32>(arg_0.d, 23315u)), 36787u, all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(-arg_0.b.x))).x, 823f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f * arg_1.a.b)) * 1518f))));
    var var_4 = arg_0;
    return Struct_2(func_5((_wgslsmith_div_i32(arg_1.b.x, var_4.a.x) < -52082i) == (_wgslsmith_f_op_f32(step(arg_0.b.x, -929f)) != _wgslsmith_div_f32(var_4.b.x, -2097f)), var_2, arg_0.c >= -1i, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3 * var_3)), ~(-arg_2.zyy), Struct_2(func_5(false, var_2, true, var_1), arg_0.a.zy))), arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~63737u, ~u_input.b.x), ~22776u, u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x >> (u_input.b.x % 32u), u_input.b.x), 1271u)) & ~u_input.b.x;
    var var_1 = func_7(Struct_5(_wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.a.x, u_input.a.x), vec4<i32>(u_input.c, 31510i, u_input.a.x, 2147483647i))) & (~u_input.a ^ countOneBits(vec4<i32>(1i, u_input.a.x, -7618i, 17166i))), vec3<f32>(_wgslsmith_div_f32(-1096f, -1633f), _wgslsmith_f_op_f32(-1f), -470f), -func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1202f, 631f)), func_1(2147483647i, Struct_5(vec4<i32>(-11011i, 46367i, u_input.a.x, 16953i), vec3<f32>(-118f, 2193f, 1784f), -1i, u_input.b.x, u_input.a.xy), -1000f, u_input.a.zzx), vec4<f32>(-744f, -127f, 459f, -643f)), u_input.b.x, _wgslsmith_add_vec2_i32(-u_input.a.wy, u_input.a.xw)), Struct_2(Struct_1(min(vec4<i32>(-1i, -61592i, -47108i, 0i), select(vec4<i32>(u_input.a.x, u_input.a.x, -9996i, u_input.c), vec4<i32>(u_input.a.x, -38959i, u_input.c, u_input.a.x), false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1316f, -2501f) - -188f)), u_input.a.ww), u_input.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.b))))) * _wgslsmith_f_op_f32(420f + _wgslsmith_f_op_f32(f32(-1f) * -347f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(var_1.a.a, u_input.a));
}

