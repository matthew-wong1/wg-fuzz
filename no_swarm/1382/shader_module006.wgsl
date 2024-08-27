struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: Struct_4,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    let var_0 = Struct_5(~1u | countOneBits(u_input.a.x), Struct_3(Struct_1(!(!arg_0.ywx)), Struct_1(select(arg_0.zxx, select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, true, false), vec3<bool>(false, arg_0.x, false)), vec3<bool>(false, arg_0.x, false)))), Struct_4(min(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-18249i, 0i, 0i, 2147483647i), vec4<i32>(59374i, -1i, -2147483647i, 31419i)), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(-56496i, 32520i, 38082i, _wgslsmith_mod_i32(0i, -80953i))), Struct_2(Struct_1(arg_0.zzw), 11467u), arg_0.x, 2147483647i), select(vec4<bool>(arg_0.x, !(!arg_0.x), select(!arg_0.x, true, true), _wgslsmith_div_u32(u_input.a.x, 1u) >= ~5885u), vec4<bool>(all(!arg_0.yzy), true, true, true), !select(!vec4<bool>(false, true, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(arg_0, arg_0, false))), _wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-142f))), _wgslsmith_f_op_f32(f32(-1f) * -846f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1474f, 726f, -343f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.e, var_0.e, -192f), vec3<f32>(928f, var_0.e, 572f), vec3<bool>(var_0.b.a.a.x, false, false)))), vec3<f32>(_wgslsmith_f_op_f32(var_0.e + -513f), _wgslsmith_f_op_f32(select(var_0.e, var_0.e, var_0.b.a.a.x)), var_0.e)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(367f, -1170f, 812f)))))));
    var var_2 = vec4<i32>(-2147483647i, reverseBits(_wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, var_0.c.d), reverseBits(var_0.c.d)) ^ reverseBits(-49434i)), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.c.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(4903i, -2147483647i), vec2<i32>(15545i, var_0.c.a.x)), _wgslsmith_dot_vec2_i32(var_0.c.a.xz, vec2<i32>(9157i, -1i)), -1i << (1u % 32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.d, ~var_0.c.a.x, 2147483647i, _wgslsmith_div_i32(-25152i, var_0.c.d)), vec4<i32>(1i, 1i, var_0.c.d, -62319i) & -var_0.c.a)), ~_wgslsmith_add_i32(reverseBits(-12965i), i32(-1i) * -1i));
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(4294967295u, 0u, 31759u, u_input.a.x))), u_input.a.x), 1u, u_input.a.x, min(min(_wgslsmith_div_u32(var_0.a, 0u), ~15970u), 32935u)), u_input.a);
    let var_4 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 19272i, var_2.x, -54948i), var_0.c.a), select(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.c.d, var_0.c.a.x, -41109i, 2147483647i), vec4<i32>(var_2.x, -4479i, var_2.x, 61492i)) | vec4<i32>(0i, 0i, var_2.x, -1i), var_0.c.a, true)), ~_wgslsmith_div_vec4_i32(-(vec4<i32>(var_0.c.a.x, -1i, var_0.c.a.x, var_2.x) >> (vec4<u32>(var_0.a, 66944u, 55u, 436u) % vec4<u32>(32u))), min(-vec4<i32>(-1i, -10300i, var_0.c.d, -35303i), ~vec4<i32>(var_2.x, -1i, var_2.x, -2147483647i))));
    return u_input.a.xxz;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_1.b), select(_wgslsmith_add_vec3_u32(~func_3(vec4<bool>(true, true, true, arg_3.x)), abs(vec3<u32>(arg_1.b, 0u, 1u))), vec3<u32>(arg_2, 4294967295u >> (1u % 32u), max(4294967295u ^ arg_1.b, arg_2)), all(vec3<bool>(true, 1096f >= arg_0, arg_3.x))));
    var var_1 = Struct_3(arg_1.a, Struct_1(vec3<bool>(true, true, true)));
    let var_2 = Struct_5(0u, Struct_3(Struct_1(!(!var_1.a.a)), arg_1.a), Struct_4(vec4<i32>(_wgslsmith_mod_i32(~(-2147483647i), -1i), 1i >> (~u_input.a.x % 32u), -1i, 1i), arg_1, false, _wgslsmith_mod_i32(38678i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-20530i, 10044i), vec2<i32>(-22926i, 0i), arg_1.a.a.yy), vec2<i32>(-6403i, -65380i)))), vec4<bool>(var_1.a.a.x, !arg_3.x, arg_3.x, true), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1329f)) * _wgslsmith_f_op_f32(arg_0 * -1418f)), _wgslsmith_f_op_f32(select(arg_0, arg_0, arg_3.x))))));
    return all(select(vec3<bool>(select(var_1.b.a.x, arg_1.a.a.x, false) == all(var_2.d), !(!arg_1.a.a.x), any(select(var_1.b.a, vec3<bool>(var_1.a.a.x, arg_1.a.a.x, false), var_1.a.a.x))), select(var_2.c.b.a.a, arg_3, select(!var_2.d.wzy, !vec3<bool>(arg_1.a.a.x, var_2.c.c, var_2.d.x), var_2.c.a.x < -1i)), any(arg_1.a.a)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = -(~_wgslsmith_clamp_i32(~(-17439i), -2147483647i, _wgslsmith_add_i32(-2147483647i, 19714i)) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -16988i, -1i, -14771i), vec4<i32>(-14781i, 1i, 1i, 6749i)), firstLeadingBit(vec4<i32>(26805i, 1i, 0i, -35349i))));
    var var_1 = Struct_3(Struct_1(!vec3<bool>(any(vec4<bool>(true, false, false, false)), func_2(-529f, Struct_2(Struct_1(vec3<bool>(false, false, true)), 4294967295u), u_input.a.x, vec3<bool>(true, true, false)), true)), Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_2 = Struct_2(Struct_1(var_1.b.a), u_input.a.x);
    var_1 = Struct_3(Struct_1(select(var_1.b.a, var_1.a.a, var_2.a.a)), Struct_1(vec3<bool>(false, all(select(var_1.a.a.zy, vec2<bool>(false, var_2.a.a.x), var_1.a.a.xy)), (u_input.a.x << (59721u % 32u)) >= 3566u)));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(688f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2111f + _wgslsmith_div_f32(2611f, 1038f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(950f * 1000f)))))));
    return Struct_2(Struct_1(vec3<bool>(var_2.a.a.x, !(!var_2.a.a.x), var_2.a.a.x)), arg_0.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = abs(reverseBits(~select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(arg_2.b, u_input.a.x, arg_2.b)), u_input.a.xyy, all(vec4<bool>(arg_2.a.a.x, arg_2.a.a.x, false, arg_2.a.a.x)))));
    var_0 = vec3<u32>(12228u, _wgslsmith_mult_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(14519u, u_input.a.x, 39627u, 3642u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 85850u, u_input.a.x, u_input.a.x), vec4<u32>(var_0.x, 0u, var_0.x, 0u))), arg_2.b), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, arg_2.b), 80224u, 0u), select(firstTrailingBit(u_input.a.zzx), u_input.a.yyy, arg_2.a.a.x))), 1u);
    let var_1 = select(!vec4<bool>(select(arg_2.a.a.x != arg_2.a.a.x, func_1(u_input.a.yyz).a.a.x, false), _wgslsmith_add_u32(41227u, var_0.x) <= u_input.a.x, !arg_2.a.a.x | true, false), select(vec4<bool>(arg_2.a.a.x, true & select(true, true, arg_2.a.a.x), !func_1(u_input.a.yxw).a.a.x, arg_2.a.a.x), !select(!vec4<bool>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x, true), select(vec4<bool>(arg_2.a.a.x, arg_2.a.a.x, false, arg_2.a.a.x), vec4<bool>(true, true, arg_2.a.a.x, false), arg_2.a.a.x), arg_2.a.a.x), all(vec2<bool>(true, !arg_2.a.a.x))), !(!vec4<bool>(arg_2.a.a.x == arg_2.a.a.x, true, false, arg_0.x >= arg_1)));
    let var_2 = min(u_input.a.x, 0u);
    let var_3 = -1952f;
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1026f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2030f + _wgslsmith_f_op_f32(-var_3)) * var_3), 545f), vec3<f32>(_wgslsmith_f_op_f32(max(613f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)))), -727f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3), var_3)) - _wgslsmith_f_op_f32(f32(-1f) * -585f))));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = firstTrailingBit(-27352i);
    var_0 = _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, 1i)), vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, -1i, 26649i, 2147483647i)), select(abs(vec4<i32>(-31906i, -2952i, -10863i, 49362i)), vec4<i32>(-1i, -2147483647i, -2147483647i, -2727i), vec4<bool>(false, true, false, true))), max(2147483647i, ~1i)));
    var var_1 = Struct_3(func_1(~max(u_input.a.wxz, u_input.a.zwy) >> (u_input.a.wwz % vec3<u32>(32u))).a, func_1(func_3(vec4<bool>(true, all(vec3<bool>(false, true, true)), true, all(vec4<bool>(false, true, true, true))))).a);
    let var_2 = vec2<i32>(1i, 1i);
    var_1 = Struct_3(var_1.a, var_1.b);
    return Struct_3(func_1(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(u_input.a.wzx), vec3<u32>(u_input.a.x, 1u, 66684u)), ~u_input.a.zww)).a, Struct_1(func_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 63836u), vec4<u32>(arg_0, 0u, arg_0, arg_0)), u_input.a.x & 4294967295u, arg_0 | arg_0)).a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(~(-2018i), 1i), ~(-1i), func_1(abs(u_input.a.yzx)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-351f + -984f), 679f, _wgslsmith_f_op_f32(f32(-1f) * -1164f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1573f, -1333f, -342f) - vec3<f32>(-348f, -158f, 1055f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(165f, -1024f, -1162f) + vec3<f32>(705f, -1779f, -410f))))));
    var var_1 = func_1(_wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.a.x)), firstLeadingBit(~54246u), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), ~(vec3<u32>(u_input.a.x, 4294967295u, 50308u) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))));
    var_1 = func_1(_wgslsmith_div_vec3_u32(u_input.a.yxx, select(u_input.a.wzy, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 21925u, var_1.b), u_input.a.yxz), _wgslsmith_div_u32(1u, 28480u), 30335u), var_0.a.a.x & all(vec4<bool>(false, var_0.b.a.x, false, false)))));
    var_1 = Struct_2(func_5(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1390f, 403f, 1085f), _wgslsmith_f_op_vec3_f32(vec3<f32>(352f, 596f, -231f) - vec3<f32>(-543f, -1000f, 1597f)))) * vec3<f32>(_wgslsmith_f_op_f32(step(-1619f, -1014f)), 1432f, _wgslsmith_div_f32(462f, 1451f)))).a, u_input.a.x);
    var_1 = Struct_2(var_1.a, ~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a.x, 91231u)), _wgslsmith_add_vec2_u32(u_input.a.zz, ~vec2<u32>(var_1.b, 1u))));
    var var_2 = func_1(vec3<u32>(~1u, countOneBits(min(~0u, var_1.b)), ~countOneBits(27271u ^ u_input.a.x)));
    var_1 = func_1(select(min(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b, 61520u, u_input.a.x), u_input.a.xyy) << (u_input.a.wyw % vec3<u32>(32u)), ~(vec3<u32>(37503u, var_2.b, 1u) << (vec3<u32>(u_input.a.x, 4294967295u, var_2.b) % vec3<u32>(32u)))), u_input.a.wxw, var_1.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(i32(-1i) * -abs(-32036i)), 117f, min(select(vec4<i32>(0i, 0i, 1i, 0i), vec4<i32>(1i, -1i, -54802i, -2147483647i), select(vec4<bool>(false, var_2.a.a.x, var_0.b.a.x, false), vec4<bool>(false, false, false, true), vec4<bool>(true, var_2.a.a.x, var_1.a.a.x, var_0.a.a.x))) ^ -(~vec4<i32>(-55722i, 2147483647i, -57356i, -22393i)), ~abs(vec4<i32>(1i, 1i, 32305i, -15144i))));
}

