struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = Struct_3(vec3<i32>(select(_wgslsmith_add_i32(u_input.b, reverseBits(-24216i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1952i, u_input.c.x, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, -26793i), u_input.c, vec3<i32>(-1i, u_input.c.x, 2147483647i))), false), -1i >> ((u_input.a.x ^ u_input.e.x) % 32u), _wgslsmith_div_i32(select(-60473i, 0i, any(arg_0)), firstLeadingBit(1i))), Struct_2(vec4<bool>(_wgslsmith_f_op_f32(abs(-960f)) <= _wgslsmith_f_op_f32(floor(997f)), arg_0.x, any(!vec3<bool>(false, arg_0.x, arg_0.x)), arg_0.x), Struct_1(_wgslsmith_f_op_f32(2416f - -1298f), -(~vec3<i32>(28551i, 2147483647i, u_input.c.x))), -6506i), arg_0, vec4<u32>(~_wgslsmith_clamp_u32(68514u ^ u_input.d.x, ~u_input.d.x, 4294967295u), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(77885u, ~0u, _wgslsmith_div_u32(31622u, 1u), abs(u_input.a.x)), vec4<u32>(~17012u, u_input.d.x, 1u, ~u_input.a.x)), _wgslsmith_dot_vec4_u32(u_input.e, abs(vec4<u32>(69896u, u_input.d.x, 0u, 4294967295u)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-869f)))), 1000f, !select(arg_0.x, false, arg_0.x))), 1287f, _wgslsmith_f_op_f32(max(878f, 192f))));
    var var_1 = -1000f;
    let var_2 = Struct_2(select(!select(vec4<bool>(var_0.b.a.x, false, var_0.c.x, true), select(vec4<bool>(var_0.b.a.x, false, var_0.c.x, var_0.b.a.x), vec4<bool>(false, true, var_0.b.a.x, true), true), all(var_0.b.a.wxx)), !vec4<bool>(var_0.b.a.x, true, false, arg_0.x), var_0.b.a.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.e.x, var_0.b.b.a), _wgslsmith_f_op_f32(select(var_0.e.x, -406f, arg_0.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.b.a)))), vec3<i32>(var_0.b.b.b.x, var_0.b.b.b.x, u_input.c.x)), -1i);
    let var_3 = var_0.b.b.a;
    var var_4 = -2147483647i;
    return var_2.b.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_1.b.b;
    var var_1 = ~select(u_input.c.xy, -vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, arg_0.b.x), arg_2.b.b)), u_input.a.x >= ~_wgslsmith_mod_u32(40160u, arg_1.d.x));
    var_1 = _wgslsmith_div_vec2_i32(abs(arg_0.b.yy), _wgslsmith_mult_vec2_i32(min(countOneBits(vec2<i32>(var_1.x, arg_3.b.x)), _wgslsmith_mod_vec2_i32(-vec2<i32>(arg_1.a.x, -37857i), -vec2<i32>(arg_0.b.x, 7640i))), vec2<i32>(_wgslsmith_mod_i32(-1i, -28561i), -9270i) ^ abs(vec2<i32>(var_0.b.x, var_1.x) | vec2<i32>(0i, 0i))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.e)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(arg_1.e)))))), select(vec3<bool>(arg_2.a.x, arg_2.a.x, false), arg_2.a.xzy, !(2147483647i >= var_0.b.x))));
    var var_3 = arg_0;
    return arg_2.a;
}

fn func_2() -> Struct_2 {
    return Struct_2(func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1537f * 191f), -789f), ~(u_input.c << (vec3<u32>(u_input.a.x, u_input.e.x, 4294967295u) % vec3<u32>(32u)))), Struct_3(min(vec3<i32>(-28084i, u_input.c.x, u_input.c.x), vec3<i32>(-2147483647i, u_input.b, -2147483647i)), Struct_2(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), Struct_1(1496f, u_input.c), ~u_input.b), vec3<bool>(any(vec4<bool>(true, false, true, false)), true, -2147483647i < u_input.c.x), _wgslsmith_mod_vec4_u32(u_input.e ^ u_input.e, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 16616u, u_input.a.x), u_input.e)), vec3<f32>(_wgslsmith_f_op_f32(floor(2869f)), _wgslsmith_f_op_f32(select(232f, -802f, true)), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, false, true))))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(_wgslsmith_f_op_f32(1954f * -2474f), vec3<i32>(u_input.c.x, -1i, u_input.c.x)), -max(-3393i, 24536i)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -950f), u_input.c)), Struct_1(791f, u_input.c), _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mod_i32(~49362i, -u_input.b)) >> (0u % 32u));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> i32 {
    let var_0 = vec2<i32>(-(reverseBits(u_input.c.x) >> (~(arg_3 | u_input.e.x) % 32u)), (-arg_1.x & ~(~(-40799i))) << (u_input.e.x % 32u));
    let var_1 = Struct_3(~select(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.c, arg_0), 0i, _wgslsmith_dot_vec2_i32(arg_2.b.b.xx, vec2<i32>(0i, arg_1.x))), vec3<i32>(u_input.c.x, var_0.x, firstTrailingBit(u_input.b)), arg_2.a.xxz), arg_2, vec3<bool>(any(func_4(func_2().b, Struct_3(vec3<i32>(arg_1.x, arg_0.x, arg_2.c), arg_2, vec3<bool>(false, false, true), vec4<u32>(arg_3, 3882u, u_input.a.x, u_input.d.x), vec3<f32>(arg_2.b.a, arg_2.b.a, -1061f)), func_2(), arg_2.b).zwx), !(_wgslsmith_f_op_f32(-arg_2.b.a) == func_2().b.a), arg_2.a.x), u_input.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(396f, _wgslsmith_div_f32(arg_2.b.a, 2390f), -1090f)));
    var var_2 = Struct_3(_wgslsmith_add_vec3_i32((vec3<i32>(-2147483647i, arg_0.x, u_input.b) >> (_wgslsmith_div_vec3_u32(vec3<u32>(5369u, 1u, u_input.d.x), vec3<u32>(u_input.e.x, u_input.d.x, u_input.d.x)) % vec3<u32>(32u))) & ~vec3<i32>(2147483647i, var_0.x, 1i), ~vec3<i32>(u_input.b | arg_0.x, -arg_2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, 2147483647i, -1i), arg_1.yyy))), var_1.b, !vec3<bool>(true, !(!arg_2.a.x), arg_2.a.x), ~vec4<u32>(~(1u ^ var_1.d.x), _wgslsmith_sub_u32(~var_1.d.x, firstLeadingBit(35067u)), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, 1u)), vec2<u32>(4294967295u, 17040u) & u_input.d), 4704u & _wgslsmith_sub_u32(var_1.d.x, arg_3)), vec3<f32>(arg_2.b.a, arg_2.b.a, var_1.b.b.a));
    var var_3 = var_1.e.yz;
    let var_4 = var_2.b.b;
    return min(_wgslsmith_clamp_i32(-var_4.b.x, var_2.b.c, -1i), _wgslsmith_add_i32(var_4.b.x, -var_1.b.b.b.x));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<f32>) -> bool {
    var var_0 = Struct_3(_wgslsmith_mod_vec3_i32(~(~(~u_input.c)), vec3<i32>(_wgslsmith_sub_i32(2147483647i, arg_1.x), _wgslsmith_dot_vec3_i32(-arg_1.www, firstTrailingBit(u_input.c)), func_5(vec3<i32>(arg_1.x, arg_1.x, u_input.c.x), vec4<i32>(u_input.b, 0i, arg_2, arg_1.x), func_2(), countOneBits(u_input.d.x)))), func_2(), !(!func_4(func_2().b, Struct_3(vec3<i32>(16059i, arg_1.x, 11434i), Struct_2(vec4<bool>(true, false, false, false), Struct_1(-1000f, vec3<i32>(-1i, arg_2, u_input.c.x)), 61284i), vec3<bool>(false, false, true), u_input.e, vec3<f32>(436f, 386f, -271f)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(-319f, arg_1.wwx), 1i), Struct_1(-1912f, vec3<i32>(arg_1.x, 46433i, arg_1.x))).wwy), min(vec4<u32>(1u, 24047u, _wgslsmith_mod_u32(52325u, ~u_input.e.x), 0u), _wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(u_input.a.x), countOneBits(95473u), select(u_input.e.x, 13217u, false), ~4294967295u), u_input.e & _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 0u, 4294967295u, u_input.d.x), u_input.e))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 613f, -689f) - vec3<f32>(-758f, -374f, arg_0)))))));
    var_0 = Struct_3(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, i32(-1i) * -1i), _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(-26664i, ~var_0.b.b.b.x, -2147483647i, u_input.b | var_0.b.b.b.x)), countOneBits(var_0.b.c)), func_2(), vec3<bool>(var_0.c.x, !var_0.b.a.x, !(!(u_input.b != 1i))), u_input.e, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(var_0.e, vec3<f32>(-832f, arg_3.x, 2265f))))))));
    var var_1 = Struct_3(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-51353i, u_input.b, var_0.b.b.b.x), vec3<i32>(u_input.c.x, 11863i, 1i)) | max(var_0.a, vec3<i32>(-1i, u_input.b, -20747i)), vec3<i32>(func_5(-vec3<i32>(arg_1.x, var_0.b.c, arg_2), max(arg_1, vec4<i32>(var_0.a.x, -2147483647i, u_input.b, 2147483647i)), var_0.b, firstLeadingBit(var_0.d.x)), _wgslsmith_sub_i32(arg_2, _wgslsmith_sub_i32(arg_1.x, arg_1.x)), 2147483647i), !var_0.c.x), var_0.b, vec3<bool>(any(var_0.b.a.xy), !(var_0.c.x || true), false), _wgslsmith_sub_vec4_u32(var_0.d, u_input.e ^ abs(var_0.d)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.x, 907f))), _wgslsmith_f_op_f32(456f + _wgslsmith_f_op_f32(arg_3.x - -960f))))));
    let var_2 = arg_0;
    let var_3 = ~min(firstLeadingBit(select(vec4<i32>(u_input.c.x, -6748i, arg_2, var_0.b.b.b.x), arg_1, var_0.b.a)), vec4<i32>(u_input.c.x, arg_2, -_wgslsmith_sub_i32(u_input.c.x, 80163i), 0i));
    return var_0.d.x == _wgslsmith_div_u32(~18948u, abs(abs(_wgslsmith_div_u32(35817u, 3816u))));
}

fn func_6(arg_0: bool) -> StorageBuffer {
    var var_0 = u_input.e.x;
    let var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_4(Struct_1(1386f, u_input.c), Struct_3(vec3<i32>(u_input.c.x, -1i, 62339i), Struct_2(vec4<bool>(true, arg_0, false, true), Struct_1(-102f, u_input.c), u_input.b), vec3<bool>(var_1, arg_0, true), vec4<u32>(u_input.e.x, u_input.e.x, u_input.a.x, 53069u), vec3<f32>(178f, -402f, 105f)), Struct_2(vec4<bool>(arg_0, false, arg_0, arg_0), Struct_1(580f, u_input.c), u_input.c.x), Struct_1(187f, u_input.c)).wzx)) - 1122f)), u_input.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a, var_2.a), vec2<f32>(-521f, var_2.a), vec2<bool>(var_1, true))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, 480f) * vec2<f32>(var_2.a, var_2.a)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(914f, -918f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -289f)))))));
    let var_4 = Struct_2(vec4<bool>(select(false, var_1, true), func_2().a.x, any(select(select(vec4<bool>(arg_0, true, var_1, false), vec4<bool>(false, true, var_1, arg_0), var_1), func_2().a, var_1)), arg_0), var_2, ~(i32(-1i) * -11427i));
    return StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(u_input.b, u_input.c.x), var_4.c), -vec2<i32>(firstTrailingBit(var_4.b.b.x >> (54142u % 32u)), func_2().c << ((u_input.d.x >> (u_input.d.x % 32u)) % 32u)), _wgslsmith_sub_vec3_u32(~(~countOneBits(vec3<u32>(0u, u_input.d.x, u_input.d.x))), abs(abs(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(all(vec2<bool>(func_1(623f, vec4<i32>(61661i, 2147483647i, -1i, 0i), 1i, vec2<f32>(168f, 1650f)), false)) & true);
}

