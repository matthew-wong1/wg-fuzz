struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3) -> bool {
    var var_0 = arg_1.a;
    var_0 = select(select(arg_1.c.zx, !vec2<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(false, arg_1.a.x, var_0.x, var_0.x))), !(!select(arg_1.c.xy, arg_1.a, vec2<bool>(arg_1.a.x, arg_1.a.x)))), select(select(vec2<bool>(false, !var_0.x), vec2<bool>(u_input.c <= 12135u, !var_0.x), arg_1.c.xx), arg_1.c.zy, select(arg_1.c.xz, select(select(arg_1.c.xy, arg_1.c.xz, vec2<bool>(arg_1.b.a, true)), vec2<bool>(arg_1.a.x, arg_1.c.x), !var_0.x), true & arg_1.c.x)), vec2<bool>(!(!select(var_0.x, false, false)), _wgslsmith_clamp_u32(~arg_1.b.c.d, 1u, u_input.a.x) <= _wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.yx)));
    let var_1 = arg_1.b;
    var_0 = select(vec2<bool>(false, !all(vec3<bool>(true, true, false))), vec2<bool>(true, !arg_1.c.x), arg_1.c.xz);
    var var_2 = vec4<f32>(973f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1521f * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -1343f)), !(!var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x);
    return all(vec3<bool>(true, true, true)) == select(true, !any(select(vec4<bool>(var_1.a, false, false, var_1.a), vec4<bool>(arg_1.b.a, var_0.x, false, true), vec4<bool>(var_0.x, var_1.a, var_0.x, false))), false);
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = Struct_3(vec2<bool>(true, true), Struct_2(all(vec2<bool>(true, true)), Struct_1(_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b, arg_0), -1i), ~(~vec3<u32>(4294967295u, 9017u, u_input.c)), vec4<i32>(-1i, u_input.b ^ arg_0, ~u_input.b, abs(arg_0)), ~(~4294967295u)), Struct_1(0i, firstLeadingBit(abs(vec3<u32>(1u, 67592u, u_input.d))), vec4<i32>(1i, arg_0, ~u_input.b, -arg_0), ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), Struct_1(1i, vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_div_u32(4294967295u, 87405u)), ~(-vec4<i32>(-1i, -48024i, -1i, 29804i)), abs(firstLeadingBit(12231u))), vec3<i32>(arg_0, arg_0, -2147483647i)), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), vec3<bool>(func_3(vec2<f32>(698f, -105f), Struct_3(vec2<bool>(true, true), Struct_2(true, Struct_1(1i, vec3<u32>(18627u, 0u, u_input.a.x), vec4<i32>(u_input.b, u_input.b, u_input.b, 46063i), u_input.c), Struct_1(1i, vec3<u32>(u_input.d, 16107u, 1u), vec4<i32>(arg_0, 2147483647i, -1i, u_input.b), u_input.c), Struct_1(-30359i, vec3<u32>(9605u, 4294967295u, 82170u), vec4<i32>(0i, arg_0, arg_0, 2147483647i), 26708u), vec3<i32>(32513i, u_input.b, 48935i)), vec3<bool>(true, false, true))), true, false)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -302f);
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(316f, -478f)) * 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -307f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1062f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1349f + 1404f) - -1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -2023f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(357f, -294f)))))));
    var var_3 = var_0.b.c.a;
    let var_4 = var_0.b;
    return !(!(!any(!vec4<bool>(false, false, var_4.a, false))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_2(any(!vec3<bool>(false, func_2(u_input.b), !arg_1.a)), arg_1.c, Struct_1(max(_wgslsmith_mult_i32(-1i, ~16709i), arg_3.x), select(vec3<u32>(1u, ~20726u, max(4294967295u, 4294967295u)), firstLeadingBit(arg_2.b), vec3<bool>(417f < arg_0.x, !arg_1.a, true)), vec4<i32>(-15083i, ~u_input.b, 0i, 54071i), 30774u), arg_1.c, arg_1.c.c.zwy);
    var var_1 = arg_0.x;
    var var_2 = arg_1.c;
    var var_3 = Struct_1(max(-_wgslsmith_sub_i32(select(-23360i, -2147483647i, false), countOneBits(1i)), u_input.b), arg_1.d.b, reverseBits(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b.a, var_0.d.a, arg_1.b.a, -1i), var_2.c)) ^ _wgslsmith_div_vec4_i32(var_2.c, arg_2.c), arg_1.d.d);
    let var_4 = arg_1;
    return Struct_2(true | (!(!var_4.a) | arg_1.a), Struct_1(~var_0.d.c.x, vec3<u32>(countOneBits(var_0.b.d >> (1u % 32u)), arg_1.c.b.x, _wgslsmith_mult_u32(1u, arg_2.d)), var_4.d.c, ~arg_1.c.b.x), Struct_1(firstTrailingBit(-4341i), select(vec3<u32>(arg_1.c.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 41394u, 67002u), vec3<u32>(var_3.b.x, var_3.b.x, var_0.d.d)), ~var_4.c.d), var_2.b, true), _wgslsmith_sub_vec4_i32(max(vec4<i32>(var_4.c.c.x, var_2.c.x, -42913i, -1i), var_0.d.c), _wgslsmith_div_vec4_i32(var_4.d.c, vec4<i32>(u_input.b, var_2.a, 2147483647i, -25387i))) >> ((~u_input.a >> (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)), var_3.d), Struct_1(33004i, _wgslsmith_clamp_vec3_u32(~max(arg_1.b.b, var_4.b.b), firstLeadingBit(firstTrailingBit(vec3<u32>(var_2.b.x, var_0.b.b.x, 0u))), select(arg_1.c.b, var_3.b, true && var_0.a)), arg_1.c.c, 4294967295u), vec3<i32>(arg_1.e.x, var_2.c.x, 1i) << (select(vec3<u32>(0u, min(var_3.b.x, 0u), arg_2.d & 48428u), _wgslsmith_sub_vec3_u32(var_2.b, ~u_input.a.xww), select(vec3<bool>(false, true, var_0.a), select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, var_0.a, false), vec3<bool>(arg_1.a, false, var_0.a)), vec3<bool>(var_0.a, true, true))) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.b.x, arg_3.b.b.d, ~10940u, func_1(vec2<f32>(-309f, -1000f), arg_2, arg_3.b.b, vec2<i32>(u_input.b, -2147483647i)).c.b.x >> (countOneBits(arg_2.c.d) % 32u)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, arg_0.x, 1u), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(arg_0.x, u_input.d, 71231u, 4294967295u))))) << (0u % 32u);
    let var_1 = vec2<u32>(u_input.d, 71712u);
    let var_2 = arg_3.b;
    var var_3 = func_1(vec2<f32>(765f, 417f), Struct_2(!select(true, var_2.a, any(arg_3.a)), arg_2.d, arg_3.b.d, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2516f, 421f) * vec2<f32>(-845f, 1411f))), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1261f, 993f) + vec2<f32>(553f, 582f)), var_2, Struct_1(1i, var_2.b.b, var_2.d.c, 2444u), arg_3.b.b.c.wx), Struct_1(1i, _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, arg_3.b.b.b.x, 0u), vec3<u32>(var_1.x, var_0, var_0)), select(arg_2.c.c, arg_2.c.c, vec4<bool>(true, var_2.a, arg_3.b.a, var_2.a)), _wgslsmith_div_u32(var_2.c.d, 1u)), -arg_2.e.zy & max(vec2<i32>(arg_3.b.d.a, var_2.b.a), var_2.e.zz)).d, arg_2.d.c.ywx), func_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(step(-1158f, -855f)), _wgslsmith_div_f32(223f, -1000f)))), Struct_2(!arg_3.a.x, arg_2.d, arg_3.b.b, arg_3.b.d, var_2.b.c.zzx), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -137f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(279f, -182f) + vec2<f32>(-1000f, -882f))), arg_3.b, arg_3.b.c, var_2.d.c.yx).b, ~_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-62808i, 76942i)), var_2.d.c.zy)).c, ~(-firstTrailingBit(vec2<i32>(-1i, var_2.b.c.x)))).d;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(251f * -762f)))));
    return ~var_3.b.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(1f));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(451f, var_0)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-506f, _wgslsmith_f_op_f32(var_0 - var_0))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-467f, 577f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-195f, var_0) - vec2<f32>(809f, 353f)))), vec2<bool>(false, true)))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-814f, var_1.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_f32(trunc(var_0)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, -949f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1000f) + vec2<f32>(var_1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1000f) * vec2<f32>(316f, -812f)))))));
    let var_2 = Struct_2(!func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-419f, var_0))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -247f))), arg_1, arg_2.b.b, firstLeadingBit(vec2<i32>(73199i, arg_2.b.d.c.x)) << (~u_input.a.xz % vec2<u32>(32u))).a, arg_3.b, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0)))), Struct_2(arg_3.a, arg_3.d, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2023f, var_0)), Struct_2(arg_1.a, Struct_1(14416i, arg_3.b.b, arg_1.c.c, arg_0.x), Struct_1(12662i, arg_1.c.b, arg_2.b.d.c, 1u), arg_3.b, vec3<i32>(arg_3.c.a, arg_2.b.b.a, -2147483647i)), arg_2.b.c, _wgslsmith_add_vec2_i32(arg_3.c.c.zx, vec2<i32>(u_input.b, 56183i))).b, func_1(vec2<f32>(857f, var_1.x), Struct_2(true, arg_1.d, Struct_1(0i, u_input.a.wxx, arg_2.b.d.c, arg_1.d.d), arg_3.d, arg_3.b.c.wyz), Struct_1(12977i, vec3<u32>(arg_1.c.d, arg_2.b.d.b.x, arg_1.b.b.x), arg_2.b.d.c, arg_1.b.b.x), firstTrailingBit(arg_2.b.e.xy)).c, firstTrailingBit(vec3<i32>(1691i, 52754i, arg_2.b.d.a))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-241f, var_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 969f))), arg_1, Struct_1(_wgslsmith_dot_vec4_i32(arg_3.c.c, arg_1.d.c), arg_2.b.d.b | arg_2.b.c.b, arg_1.c.c, arg_1.b.d), vec2<i32>(arg_2.b.c.c.x & 0i, _wgslsmith_dot_vec3_i32(arg_3.d.c.xwz, arg_1.d.c.xxz))).b, select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.e.x, u_input.b, u_input.b, 2147483647i), vec4<i32>(-7509i, -2147483647i, arg_3.c.c.x, 58423i)), arg_3.c.a), abs(arg_1.b.c.xy >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), select(vec2<bool>(true, arg_3.a), select(vec2<bool>(true, false), vec2<bool>(arg_2.a.x, arg_2.b.a), arg_2.a.x), arg_2.c.zy))).c, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -798f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1298f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-402f, var_1.x) - vec2<f32>(-1450f, var_1.x)))), arg_3, arg_3.c, -arg_1.e.zy).b, max(vec3<i32>(-(~1i), 6883i, arg_1.e.x), vec3<i32>(-1i) * -(~arg_2.b.c.c.xyy)));
    var var_3 = 1u;
    return Struct_1(_wgslsmith_dot_vec3_i32(min(func_1(vec2<f32>(var_1.x, -358f), var_2, Struct_1(13819i, vec3<u32>(4294967295u, 29188u, arg_2.b.b.d), vec4<i32>(arg_3.c.c.x, -1i, arg_3.b.c.x, 3412i), 31424u), vec2<i32>(var_2.c.a, 5015i)).d.c.zww, _wgslsmith_mod_vec3_i32(arg_3.c.c.xww, vec3<i32>(-10059i, u_input.b, arg_3.b.c.x))) ^ ~(vec3<i32>(arg_2.b.d.a, u_input.b, arg_2.b.b.c.x) >> (vec3<u32>(0u, 0u, var_2.d.d) % vec3<u32>(32u))), var_2.c.c.zwx & (~arg_2.b.c.c.wxw ^ -vec3<i32>(31625i, -17665i, 0i))), var_2.c.b | u_input.a.yww, -reverseBits(~vec4<i32>(-92656i, -8992i, -45646i, -24335i) | func_1(vec2<f32>(943f, -278f), var_2, Struct_1(u_input.b, arg_3.d.b, arg_3.d.c, 1u), vec2<i32>(-4101i, arg_3.e.x)).c.c), _wgslsmith_add_u32(var_2.d.b.x, ~u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~u_input.c > ~u_input.a.x, func_5(vec2<u32>(func_4(vec2<u32>(1u, u_input.c), -2147483647i, func_1(vec2<f32>(1205f, -293f), Struct_2(false, Struct_1(-8839i, vec3<u32>(u_input.a.x, u_input.a.x, u_input.d), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), u_input.d), Struct_1(u_input.b, vec3<u32>(u_input.a.x, 6904u, u_input.c), vec4<i32>(u_input.b, 1i, u_input.b, 1i), 26471u), Struct_1(20206i, u_input.a.xyy, vec4<i32>(18232i, 1i, u_input.b, -2147483647i), 89540u), vec3<i32>(41032i, u_input.b, 0i)), Struct_1(u_input.b, vec3<u32>(1u, u_input.d, u_input.c), vec4<i32>(u_input.b, -1i, u_input.b, 1465i), 26920u), vec2<i32>(108372i, -4888i)), Struct_3(vec2<bool>(true, false), Struct_2(false, Struct_1(2147483647i, u_input.a.zxy, vec4<i32>(-39377i, -26198i, 1i, 2147483647i), u_input.d), Struct_1(-39902i, vec3<u32>(u_input.d, u_input.d, u_input.d), vec4<i32>(-2147483647i, 41614i, 11705i, -1i), u_input.d), Struct_1(1i, u_input.a.yyx, vec4<i32>(-521i, 20736i, u_input.b, -21436i), 14581u), vec3<i32>(-2147483647i, u_input.b, 1i)), vec3<bool>(true, true, false))), ~(~u_input.d)), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-714f, 685f), vec2<f32>(-220f, -895f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(290f, -330f) * vec2<f32>(-1191f, -1000f))), Struct_2(all(vec3<bool>(true, false, false)), Struct_1(-4046i, vec3<u32>(30603u, u_input.c, u_input.d), vec4<i32>(u_input.b, u_input.b, u_input.b, -17847i), 0u), func_1(vec2<f32>(-1000f, -1258f), Struct_2(false, Struct_1(-2147483647i, u_input.a.zxw, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), u_input.a.x), Struct_1(1i, u_input.a.zzz, vec4<i32>(u_input.b, -1i, u_input.b, -30544i), u_input.c), Struct_1(u_input.b, vec3<u32>(66547u, 1u, 64589u), vec4<i32>(u_input.b, u_input.b, u_input.b, 0i), 44655u), vec3<i32>(-2147483647i, 20830i, 83236i)), Struct_1(-27489i, u_input.a.zyx, vec4<i32>(-2147483647i, 29638i, u_input.b, u_input.b), u_input.c), vec2<i32>(u_input.b, 0i)).d, func_1(vec2<f32>(734f, 1188f), Struct_2(false, Struct_1(u_input.b, vec3<u32>(u_input.c, u_input.c, u_input.a.x), vec4<i32>(u_input.b, 17171i, 41851i, -1i), 7066u), Struct_1(-48139i, u_input.a.zzz, vec4<i32>(u_input.b, 8744i, 0i, u_input.b), 4294967295u), Struct_1(-11245i, u_input.a.xyy, vec4<i32>(53051i, -41793i, u_input.b, u_input.b), u_input.a.x), vec3<i32>(u_input.b, 0i, u_input.b)), Struct_1(u_input.b, vec3<u32>(u_input.a.x, 51705u, u_input.d), vec4<i32>(-45284i, -2147483647i, u_input.b, u_input.b), u_input.d), vec2<i32>(-1i, -2147483647i)).b, reverseBits(vec3<i32>(u_input.b, u_input.b, -21024i))), Struct_1(-u_input.b, vec3<u32>(4294967295u, 23548u, 1u) ^ vec3<u32>(1u, u_input.a.x, u_input.d), vec4<i32>(u_input.b, -1i, u_input.b, -2147483647i), ~0u), ~(vec2<i32>(u_input.b, 0i) ^ vec2<i32>(u_input.b, -11990i))), Struct_3(vec2<bool>(true, true), func_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-481f, -569f), vec2<f32>(155f, -581f))), func_1(vec2<f32>(-119f, -1364f), Struct_2(false, Struct_1(2147483647i, u_input.a.yzy, vec4<i32>(u_input.b, u_input.b, 35623i, 0i), u_input.c), Struct_1(u_input.b, vec3<u32>(10506u, 32142u, u_input.c), vec4<i32>(u_input.b, -17366i, 1i, u_input.b), 0u), Struct_1(u_input.b, u_input.a.wwx, vec4<i32>(u_input.b, -22017i, u_input.b, 0i), 43930u), vec3<i32>(2147483647i, -1i, u_input.b)), Struct_1(u_input.b, u_input.a.wzy, vec4<i32>(u_input.b, -21746i, u_input.b, u_input.b), u_input.c), vec2<i32>(u_input.b, u_input.b)), Struct_1(12049i, u_input.a.zwy, vec4<i32>(1i, u_input.b, u_input.b, u_input.b), 12305u), vec2<i32>(-2147483647i, -36260i) >> (u_input.a.yx % vec2<u32>(32u))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), Struct_2(false, Struct_1(-1i, min(vec3<u32>(u_input.c, 4294967295u, u_input.d), vec3<u32>(1u, u_input.d, u_input.c)), vec4<i32>(-2147483647i, 0i, -28971i, u_input.b), ~u_input.c), func_1(vec2<f32>(1188f, 1831f), Struct_2(false, Struct_1(u_input.b, u_input.a.wyw, vec4<i32>(u_input.b, 1953i, u_input.b, 26279i), u_input.a.x), Struct_1(1i, u_input.a.xzz, vec4<i32>(1i, -8321i, -1i, 74457i), u_input.d), Struct_1(2194i, u_input.a.yxy, vec4<i32>(50301i, 39994i, -2147483647i, u_input.b), u_input.a.x), vec3<i32>(-1i, u_input.b, u_input.b)), Struct_1(-13499i, u_input.a.wxy, vec4<i32>(-2147483647i, -25059i, u_input.b, u_input.b), u_input.a.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 2147483647i), vec2<i32>(0i, u_input.b))).c, Struct_1(_wgslsmith_mult_i32(u_input.b, -33160i), vec3<u32>(u_input.a.x, u_input.d, u_input.d), ~vec4<i32>(u_input.b, -2147483647i, -54105i, u_input.b), _wgslsmith_add_u32(u_input.c, 15416u)), ~vec3<i32>(2147483647i, u_input.b, -1i))), Struct_1(-2147483647i, vec3<u32>(_wgslsmith_dot_vec2_u32(func_5(vec2<u32>(u_input.a.x, 23415u), Struct_2(false, Struct_1(u_input.b, vec3<u32>(u_input.d, u_input.d, 71640u), vec4<i32>(-1i, u_input.b, u_input.b, u_input.b), u_input.c), Struct_1(u_input.b, u_input.a.yyx, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), 51807u), Struct_1(-22069i, vec3<u32>(u_input.c, 4294967295u, 0u), vec4<i32>(u_input.b, 0i, 1i, 2147483647i), 6505u), vec3<i32>(u_input.b, 1i, -40466i)), Struct_3(vec2<bool>(false, false), Struct_2(false, Struct_1(u_input.b, vec3<u32>(u_input.a.x, u_input.d, u_input.a.x), vec4<i32>(-7572i, 16635i, 2147483647i, u_input.b), 4294967295u), Struct_1(u_input.b, vec3<u32>(18918u, 2336u, u_input.d), vec4<i32>(2147483647i, -2147483647i, 4984i, u_input.b), u_input.d), Struct_1(u_input.b, u_input.a.zzx, vec4<i32>(u_input.b, -28473i, u_input.b, 2147483647i), u_input.c), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<bool>(false, false, false)), Struct_2(true, Struct_1(2147483647i, vec3<u32>(0u, u_input.d, 4294967295u), vec4<i32>(0i, 2147483647i, u_input.b, 2147483647i), 1u), Struct_1(u_input.b, vec3<u32>(24321u, u_input.c, 2036u), vec4<i32>(u_input.b, 1i, 24358i, u_input.b), u_input.c), Struct_1(1i, u_input.a.zwz, vec4<i32>(u_input.b, u_input.b, 6878i, 2147483647i), 1u), vec3<i32>(u_input.b, -21893i, u_input.b))).b.zx, u_input.a.zx), u_input.d, func_5(u_input.a.wy << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), func_1(vec2<f32>(746f, -875f), Struct_2(true, Struct_1(-2147483647i, vec3<u32>(u_input.c, u_input.a.x, 6323u), vec4<i32>(-95650i, u_input.b, u_input.b, u_input.b), u_input.a.x), Struct_1(0i, vec3<u32>(57588u, 0u, 4294967295u), vec4<i32>(u_input.b, 22824i, u_input.b, 7617i), u_input.c), Struct_1(u_input.b, u_input.a.zyy, vec4<i32>(-2147483647i, -21674i, u_input.b, u_input.b), u_input.c), vec3<i32>(u_input.b, -18420i, -6694i)), Struct_1(-23913i, vec3<u32>(4294967295u, 4294967295u, 24242u), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), 4294967295u), vec2<i32>(-6987i, -12900i)), Struct_3(vec2<bool>(false, true), Struct_2(true, Struct_1(u_input.b, vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec4<i32>(2147483647i, u_input.b, u_input.b, 11856i), u_input.c), Struct_1(-17052i, u_input.a.wxz, vec4<i32>(-13350i, -23001i, -21808i, 61080i), 4294967295u), Struct_1(u_input.b, u_input.a.yyz, vec4<i32>(2147483647i, u_input.b, -1838i, 49288i), 1u), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<bool>(false, false, false)), func_1(vec2<f32>(957f, -890f), Struct_2(true, Struct_1(u_input.b, u_input.a.xxz, vec4<i32>(u_input.b, u_input.b, 2147483647i, 0i), u_input.a.x), Struct_1(2147483647i, u_input.a.wzz, vec4<i32>(u_input.b, u_input.b, 9259i, u_input.b), 1u), Struct_1(u_input.b, u_input.a.wzw, vec4<i32>(34229i, 12201i, 0i, -1i), u_input.c), vec3<i32>(1i, u_input.b, -2147483647i)), Struct_1(u_input.b, vec3<u32>(u_input.d, u_input.d, 4294967295u), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), 1u), vec2<i32>(5530i, u_input.b))).b.x), -reverseBits(abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), ~0u), func_5(u_input.a.xz, func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1125f), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-273f, 1185f) * vec2<f32>(-1000f, -699f)), Struct_2(true, Struct_1(-40113i, vec3<u32>(1u, 7355u, 1u), vec4<i32>(u_input.b, -13579i, 12338i, u_input.b), u_input.d), Struct_1(u_input.b, vec3<u32>(u_input.d, 12868u, 33507u), vec4<i32>(2147483647i, 31080i, u_input.b, 6579i), u_input.d), Struct_1(15028i, vec3<u32>(4294967295u, 1u, u_input.d), vec4<i32>(u_input.b, -2147483647i, u_input.b, 0i), u_input.a.x), vec3<i32>(-16285i, 2147483647i, u_input.b)), Struct_1(-32349i, u_input.a.ywz, vec4<i32>(6033i, u_input.b, u_input.b, 20897i), 84590u), vec2<i32>(-15986i, -1i)), func_5(~vec2<u32>(u_input.c, 0u), Struct_2(true, Struct_1(u_input.b, u_input.a.yzw, vec4<i32>(0i, -1i, 24216i, u_input.b), u_input.c), Struct_1(u_input.b, vec3<u32>(4294967295u, 54076u, 125749u), vec4<i32>(1i, u_input.b, -1i, 2147483647i), u_input.a.x), Struct_1(u_input.b, u_input.a.ywx, vec4<i32>(0i, -2147483647i, -15982i, 9506i), u_input.c), vec3<i32>(27566i, u_input.b, -42482i)), Struct_3(vec2<bool>(true, true), Struct_2(false, Struct_1(-1i, u_input.a.ywx, vec4<i32>(-2147483647i, 2147483647i, u_input.b, u_input.b), u_input.d), Struct_1(u_input.b, vec3<u32>(u_input.d, u_input.a.x, 4294967295u), vec4<i32>(-54722i, u_input.b, u_input.b, u_input.b), 27304u), Struct_1(-1i, vec3<u32>(4294967295u, 83188u, 2308u), vec4<i32>(u_input.b, 0i, -49461i, u_input.b), 0u), vec3<i32>(-1i, u_input.b, -2147483647i)), vec3<bool>(false, false, false)), Struct_2(false, Struct_1(14826i, vec3<u32>(72348u, 44406u, u_input.a.x), vec4<i32>(-4328i, u_input.b, 1i, -2147483647i), 48357u), Struct_1(0i, vec3<u32>(u_input.a.x, u_input.c, 19412u), vec4<i32>(u_input.b, u_input.b, -258i, u_input.b), u_input.a.x), Struct_1(-8853i, vec3<u32>(10754u, u_input.c, 29544u), vec4<i32>(u_input.b, 0i, -1i, 5956i), 0u), vec3<i32>(u_input.b, -2147483647i, u_input.b))), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.b) ^ vec2<i32>(u_input.b, 0i), ~vec2<i32>(10795i, u_input.b))), Struct_3(vec2<bool>(true, true), Struct_2(true, Struct_1(-60540i, u_input.a.xww, vec4<i32>(-15371i, -1i, 1i, u_input.b), u_input.a.x), Struct_1(-2147483647i, u_input.a.zyw, vec4<i32>(-11750i, u_input.b, 0i, u_input.b), u_input.a.x), Struct_1(15574i, u_input.a.xxw, vec4<i32>(2147483647i, u_input.b, 1464i, u_input.b), u_input.c), vec3<i32>(-2147483647i, u_input.b, u_input.b)), vec3<bool>(true, true, true)), func_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1234f, 544f), vec2<f32>(949f, 602f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1523f, -637f) * vec2<f32>(485f, 572f)))), Struct_2(false, Struct_1(8253i, vec3<u32>(u_input.c, 1u, u_input.a.x), vec4<i32>(u_input.b, 1i, -1i, u_input.b), u_input.d), Struct_1(u_input.b, u_input.a.zzw, vec4<i32>(u_input.b, 11953i, 1i, -1i), 1u), Struct_1(u_input.b, vec3<u32>(u_input.a.x, u_input.c, 49013u), vec4<i32>(9695i, 12068i, u_input.b, u_input.b), u_input.a.x), vec3<i32>(-1i, u_input.b, u_input.b) | vec3<i32>(30783i, u_input.b, u_input.b)), func_5(~u_input.a.zz, Struct_2(true, Struct_1(26957i, u_input.a.zyy, vec4<i32>(-53249i, -1i, 2147483647i, u_input.b), u_input.a.x), Struct_1(u_input.b, vec3<u32>(u_input.c, u_input.a.x, 1u), vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), 1u), Struct_1(11009i, u_input.a.zzz, vec4<i32>(40853i, u_input.b, 1i, 15147i), 1154u), vec3<i32>(9582i, u_input.b, -2147483647i)), Struct_3(vec2<bool>(false, false), Struct_2(true, Struct_1(u_input.b, u_input.a.wxw, vec4<i32>(0i, u_input.b, 2147483647i, 1i), 4294967295u), Struct_1(-1i, u_input.a.wzx, vec4<i32>(-40655i, u_input.b, u_input.b, -48241i), u_input.d), Struct_1(5488i, u_input.a.wzz, vec4<i32>(u_input.b, -37784i, 0i, 1i), u_input.d), vec3<i32>(u_input.b, -2147483647i, -18049i)), vec3<bool>(false, true, true)), Struct_2(false, Struct_1(14731i, u_input.a.yzy, vec4<i32>(u_input.b, u_input.b, u_input.b, 45304i), 42965u), Struct_1(2147483647i, vec3<u32>(u_input.a.x, u_input.c, 0u), vec4<i32>(1i, 1i, 41090i, 9950i), u_input.a.x), Struct_1(u_input.b, vec3<u32>(u_input.d, u_input.d, u_input.c), vec4<i32>(-29902i, u_input.b, u_input.b, 87062i), u_input.d), vec3<i32>(0i, u_input.b, -1i))), -vec2<i32>(u_input.b, -4753i))), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 0i, ~countOneBits(7280i)), _wgslsmith_mod_vec3_i32(func_5(u_input.a.xy, Struct_2(true, Struct_1(u_input.b, vec3<u32>(u_input.c, 4294967295u, u_input.d), vec4<i32>(1i, u_input.b, u_input.b, u_input.b), 4906u), Struct_1(u_input.b, u_input.a.zzw, vec4<i32>(u_input.b, 17202i, 12750i, 23648i), u_input.c), Struct_1(u_input.b, u_input.a.ywy, vec4<i32>(-1i, 32660i, u_input.b, -726i), u_input.a.x), vec3<i32>(-9445i, u_input.b, u_input.b)), Struct_3(vec2<bool>(false, false), Struct_2(true, Struct_1(2147483647i, u_input.a.wxy, vec4<i32>(30605i, u_input.b, 1i, u_input.b), u_input.a.x), Struct_1(18219i, u_input.a.wyw, vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), u_input.d), Struct_1(-48749i, vec3<u32>(u_input.a.x, u_input.c, 4294967295u), vec4<i32>(20671i, u_input.b, u_input.b, 1i), 0u), vec3<i32>(u_input.b, u_input.b, 1i)), vec3<bool>(true, false, true)), func_1(vec2<f32>(546f, -134f), Struct_2(false, Struct_1(0i, u_input.a.yyz, vec4<i32>(-5982i, 6909i, 2147483647i, 1i), u_input.d), Struct_1(u_input.b, vec3<u32>(u_input.c, 1u, 51764u), vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), 6483u), Struct_1(21508i, vec3<u32>(61022u, u_input.c, u_input.d), vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), 49977u), vec3<i32>(u_input.b, -53056i, 17268i)), Struct_1(-2147483647i, vec3<u32>(u_input.c, 0u, u_input.a.x), vec4<i32>(u_input.b, -61891i, 31008i, u_input.b), 0u), vec2<i32>(u_input.b, u_input.b))).c.yxz, _wgslsmith_clamp_vec3_i32(vec3<i32>(-34583i, 44216i, u_input.b), vec3<i32>(-19389i, u_input.b, u_input.b), vec3<i32>(2147483647i, -2147483647i, -13356i)) << (_wgslsmith_sub_vec3_u32(u_input.a.xwz, u_input.a.zyy) % vec3<u32>(32u)))));
    let var_1 = Struct_2(func_2(var_0.d.c.x), var_0.d, Struct_1(_wgslsmith_sub_i32(u_input.b, 1i), _wgslsmith_div_vec3_u32(u_input.a.xxx, var_0.c.b), ~vec4<i32>(10117i, 49027i, -75500i, 11691i) ^ vec4<i32>(~var_0.d.c.x, u_input.b, -u_input.b, -24601i), u_input.d), Struct_1(_wgslsmith_mod_i32(abs(u_input.b & u_input.b), 10583i), func_5(~var_0.d.b.yy, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1028f, -194f)), Struct_2(false, var_0.c, Struct_1(var_0.e.x, u_input.a.wzz, var_0.b.c, u_input.c), Struct_1(0i, u_input.a.ywx, vec4<i32>(0i, 9009i, u_input.b, u_input.b), 56249u), var_0.c.c.yzz), Struct_1(u_input.b, vec3<u32>(var_0.c.b.x, var_0.c.b.x, 1u), vec4<i32>(21664i, 2147483647i, var_0.b.a, u_input.b), u_input.a.x), var_0.c.c.ww), Struct_3(select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, var_0.a), true), func_1(vec2<f32>(-306f, 621f), Struct_2(var_0.a, var_0.d, Struct_1(var_0.b.c.x, vec3<u32>(80330u, u_input.d, var_0.d.b.x), vec4<i32>(var_0.c.c.x, 0i, u_input.b, 0i), 4294967295u), Struct_1(-2147483647i, vec3<u32>(21441u, 18076u, u_input.c), vec4<i32>(-28795i, u_input.b, -8059i, u_input.b), var_0.c.b.x), vec3<i32>(0i, -14066i, u_input.b)), var_0.c, var_0.d.c.xw), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(true, var_0.a, var_0.a), true)), Struct_2(var_0.a & var_0.a, var_0.b, Struct_1(u_input.b, u_input.a.wxy, vec4<i32>(-2147483647i, var_0.c.a, var_0.b.a, u_input.b), 2572u), func_5(vec2<u32>(4294967295u, 2762u), Struct_2(false, Struct_1(-27480i, vec3<u32>(var_0.c.d, var_0.c.b.x, 0u), var_0.b.c, 0u), var_0.d, Struct_1(1i, var_0.b.b, var_0.d.c, u_input.d), vec3<i32>(-16051i, u_input.b, 18763i)), Struct_3(vec2<bool>(true, var_0.a), Struct_2(false, Struct_1(var_0.b.c.x, vec3<u32>(var_0.b.b.x, 0u, u_input.c), var_0.d.c, 0u), Struct_1(u_input.b, var_0.c.b, var_0.b.c, 74715u), Struct_1(var_0.d.a, var_0.c.b, vec4<i32>(var_0.c.c.x, var_0.e.x, u_input.b, var_0.c.c.x), 66114u), vec3<i32>(-31502i, var_0.c.a, 0i)), vec3<bool>(var_0.a, var_0.a, true)), Struct_2(var_0.a, var_0.d, var_0.d, Struct_1(u_input.b, vec3<u32>(1u, 4294967295u, var_0.b.d), vec4<i32>(u_input.b, 0i, u_input.b, -2147483647i), var_0.c.d), vec3<i32>(47019i, 1587i, -22417i))), func_5(var_0.c.b.xy, Struct_2(true, Struct_1(var_0.b.a, vec3<u32>(4294967295u, u_input.c, 0u), vec4<i32>(0i, u_input.b, -1i, u_input.b), 26157u), var_0.d, var_0.b, vec3<i32>(15493i, 16632i, u_input.b)), Struct_3(vec2<bool>(false, true), Struct_2(var_0.a, Struct_1(-2147483647i, vec3<u32>(59332u, 4294967295u, 4294967295u), var_0.d.c, u_input.c), var_0.d, var_0.d, var_0.c.c.wxz), vec3<bool>(var_0.a, var_0.a, false)), Struct_2(true, Struct_1(u_input.b, vec3<u32>(38794u, var_0.c.d, var_0.c.d), vec4<i32>(u_input.b, var_0.d.a, -10348i, -19512i), var_0.d.d), var_0.c, var_0.c, var_0.d.c.xxy)).c.wzw)).b, ~vec4<i32>(func_1(vec2<f32>(-548f, -325f), Struct_2(false, var_0.c, var_0.d, Struct_1(var_0.d.a, vec3<u32>(3543u, var_0.d.b.x, 22804u), var_0.b.c, 4294967295u), var_0.e), Struct_1(u_input.b, vec3<u32>(var_0.b.d, var_0.b.d, 4294967295u), var_0.b.c, var_0.d.d), vec2<i32>(50969i, 2991i)).e.x, -34519i, var_0.c.a, 25269i), 1u), var_0.b.c.wxw);
    var_0 = var_1;
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1765f, 352f) - vec2<f32>(-364f, -353f)))))), var_1, func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1856f, 796f), vec2<f32>(775f, -370f))), vec2<f32>(_wgslsmith_f_op_f32(select(-590f, 648f, false)), 1f))), Struct_2(var_1.a, var_1.d, var_1.b, var_0.c, _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.d.a, -12908i, 1i), firstLeadingBit(vec3<i32>(var_1.d.c.x, 2147483647i, 28988i)))), func_5(abs(vec2<u32>(u_input.d, var_1.c.d) ^ vec2<u32>(0u, 1u)), var_1, Struct_3(select(vec2<bool>(var_0.a, false), vec2<bool>(true, true), vec2<bool>(var_1.a, false)), Struct_2(true, var_1.b, Struct_1(var_1.c.a, vec3<u32>(var_1.c.b.x, var_0.b.d, u_input.d), vec4<i32>(u_input.b, var_0.d.a, var_0.e.x, var_1.e.x), var_1.b.b.x), var_0.c, vec3<i32>(36487i, u_input.b, 17464i)), vec3<bool>(false, false, var_1.a)), Struct_2(!var_0.a, func_1(vec2<f32>(646f, -318f), var_1, Struct_1(-57156i, vec3<u32>(var_1.d.b.x, 1u, var_1.d.d), vec4<i32>(u_input.b, u_input.b, var_0.d.c.x, -2266i), var_1.c.d), vec2<i32>(0i, -2147483647i)).d, Struct_1(u_input.b, u_input.a.zzz, var_0.b.c, 4294967295u), Struct_1(-2147483647i, u_input.a.xyz, var_1.b.c, var_1.b.b.x), _wgslsmith_sub_vec3_i32(var_0.b.c.wyw, vec3<i32>(u_input.b, var_0.d.c.x, var_0.e.x)))), ~_wgslsmith_add_vec2_i32(var_1.c.c.yx, select(var_1.b.c.xy, var_1.e.xy, vec2<bool>(var_0.a, var_0.a)))).c, ~reverseBits(-var_1.b.c.yw) >> ((vec2<u32>(11986u, abs(1u)) ^ vec2<u32>(19009u, var_0.c.d)) % vec2<u32>(32u)));
    var var_3 = false;
    let var_4 = Struct_3(vec2<bool>(true, any(select(select(vec3<bool>(false, var_1.a, false), vec3<bool>(true, true, var_2.a), vec3<bool>(true, var_1.a, var_2.a)), vec3<bool>(true, true, true), func_1(vec2<f32>(-1000f, -1174f), var_2, var_2.b, var_2.e.zx).a))), Struct_2(!all(select(vec3<bool>(false, false, true), vec3<bool>(false, var_0.a, var_0.a), false)), var_1.c, Struct_1(-1i, _wgslsmith_sub_vec3_u32(var_1.d.b, vec3<u32>(u_input.d, var_0.b.d, 16009u)), vec4<i32>(var_1.c.c.x << (0u % 32u), -4219i | u_input.b, _wgslsmith_sub_i32(0i, var_1.c.a), _wgslsmith_clamp_i32(var_1.b.c.x, -32063i, -20852i)), ~var_1.c.d), var_1.d, firstTrailingBit(var_0.e)), select(!vec3<bool>(func_3(vec2<f32>(478f, -130f), Struct_3(vec2<bool>(false, false), Struct_2(true, var_1.c, var_2.c, Struct_1(var_2.e.x, vec3<u32>(18344u, 62241u, var_0.d.b.x), var_2.d.c, 29689u), vec3<i32>(0i, u_input.b, var_0.e.x)), vec3<bool>(var_2.a, false, var_0.a))), select(false, var_0.a, false), any(vec4<bool>(true, var_1.a, var_2.a, false))), !(!(!vec3<bool>(var_2.a, false, true))), false));
    let var_5 = Struct_1(1i, abs(~vec3<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.c, var_2.d.d), _wgslsmith_dot_vec3_u32(var_0.d.b, vec3<u32>(u_input.a.x, var_2.b.b.x, 42042u)))), ~var_4.b.c.c, 1u);
    var_3 = false;
    var var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, _wgslsmith_mult_u32(~(~var_6.b.d.d), var_1.c.b.x), 36767u, ~min(_wgslsmith_mod_u32(var_1.c.b.x, var_1.c.d), _wgslsmith_clamp_u32(7886u, var_6.b.c.d, 13998u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2092f + _wgslsmith_f_op_f32(ceil(-2328f))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -885f) - _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1574f + -1908f) + -215f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-591f - 717f))));
}

