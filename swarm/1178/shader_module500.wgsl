struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: i32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -929f), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    var var_1 = reverseBits(countOneBits(~select(countOneBits(vec4<i32>(2147483647i, 0i, 22315i, u_input.e.x)), ~vec4<i32>(u_input.e.x, -2147483647i, 0i, 2147483647i), !vec4<bool>(false, var_0.b.x, var_0.b.x, false))));
    var var_2 = ~(~abs(countOneBits(var_1.yx)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, var_0.a)) - arg_0.x))), var_0.b);
    var var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(sign(-1703f)))), select(var_0.b, select(vec3<bool>(var_0.b.x, true, var_0.b.x), var_0.b, var_0.b.x), true)), ~(~reverseBits(vec2<u32>(arg_1.x, 74932u))), _wgslsmith_mult_vec3_i32(var_1.zxy, select(~vec3<i32>(var_2.x, var_2.x, -2147483647i), firstTrailingBit(var_1.zzw), var_0.b)), Struct_1(_wgslsmith_f_op_f32(969f + var_0.a), vec3<bool>(select(var_0.b.x, var_0.b.x, false), select(true, true, var_0.b.x), true))), arg_0.x, ~2147483647i, _wgslsmith_div_u32(_wgslsmith_div_u32(0u, _wgslsmith_sub_u32(arg_1.x, 62236u) << (u_input.b.x % 32u)), 15269u), all(vec4<bool>(all(var_0.b.zz), any(vec4<bool>(var_0.b.x, false, false, true)), true, false)));
    return _wgslsmith_f_op_f32(min(-744f, var_3.b));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(359f, 295f))) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -974f), vec2<f32>(-719f, 3187f))), abs(countOneBits(vec3<u32>(u_input.a, u_input.a, 43308u)))))), select(select(select(!vec3<bool>(false, true, var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !(!vec3<bool>(false, var_0.x, var_0.x))), !vec3<bool>(u_input.e.x <= u_input.e.x, var_0.x, all(vec2<bool>(var_0.x, true))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, false, true), var_0.x), true), !(!vec3<bool>(false, false, var_0.x)), vec3<bool>(all(vec3<bool>(true, true, false)), any(vec4<bool>(false, false, var_0.x, false)), false))));
    var_0 = !(!select(select(select(var_1.b.zx, var_1.b.yz, vec2<bool>(false, true)), select(vec2<bool>(var_0.x, var_1.b.x), var_1.b.xz, var_0.x), var_1.b.zz), !vec2<bool>(var_0.x, var_0.x), var_1.b.yz));
    var_0 = select(select(vec2<bool>(var_1.b.x, all(var_1.b)), select(!select(vec2<bool>(false, var_1.b.x), vec2<bool>(true, true), var_1.b.zx), !(!vec2<bool>(var_1.b.x, false)), all(vec3<bool>(var_1.b.x, var_0.x, var_0.x))), var_0.x & !(!var_0.x)), vec2<bool>(var_1.b.x, all(vec2<bool>(false, !var_1.b.x))), var_1.b.x);
    var var_2 = _wgslsmith_div_f32(-602f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a + 530f))))));
    return Struct_1(-202f, select(!select(vec3<bool>(true, true, var_0.x), select(vec3<bool>(true, false, false), var_1.b, vec3<bool>(false, true, var_0.x)), var_0.x), vec3<bool>(!(!var_0.x), var_1.b.x, true), select(select(select(var_1.b, vec3<bool>(false, true, var_0.x), var_1.b), select(var_1.b, var_1.b, var_1.b.x), false || var_1.b.x), var_1.b, true)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = vec3<f32>(363f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)));
    var var_1 = arg_1.a.b;
    let var_2 = Struct_4(Struct_3(arg_1.a.d, vec2<u32>(~var_1.x, select(109639u, u_input.d, arg_1.e)), ~(arg_1.a.c << ((u_input.b.zyw & vec3<u32>(arg_1.d, 1u, 4294967295u)) % vec3<u32>(32u))), arg_1.a.a), _wgslsmith_f_op_f32(max(-1162f, -675f)), _wgslsmith_dot_vec4_i32(-(_wgslsmith_add_vec4_i32(vec4<i32>(-936i, 45185i, -43381i, u_input.e.x), vec4<i32>(12488i, 90247i, arg_1.c, 5084i)) >> (vec4<u32>(0u, arg_1.d, 47604u, arg_1.d) % vec4<u32>(32u))), abs(firstTrailingBit(vec4<i32>(2147483647i, -2147483647i, -9868i, 0i) | vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, 2147483647i)))), u_input.b.x, func_2().b.x);
    var_1 = ~(~(~(abs(vec2<u32>(0u, 17586u)) | arg_1.a.b)));
    var_1 = u_input.b.wy;
    return Struct_1(_wgslsmith_f_op_f32(-arg_0.x), var_2.a.a.b);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(39678u, vec4<u32>(~1u, 0u, ~(~u_input.c >> (~17289u % 32u)), 4294967295u), func_4(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(2427f + -1363f))), -1572f), Struct_4(Struct_3(func_2(), vec2<u32>(0u, u_input.c), max(vec3<i32>(2147483647i, 5126i, u_input.e.x), vec3<i32>(0i, 2147483647i, u_input.e.x)), Struct_1(229f, vec3<bool>(true, false, true))), -379f, 0i, ~min(34754u, 24376u), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))))));
    var_0 = Struct_2(~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a, 52007u), _wgslsmith_add_u32(38418u, 35849u)) << (~41703u % 32u), min(~select(firstTrailingBit(u_input.b), firstLeadingBit(var_0.b), !var_0.c.b.x), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(~var_0.b, ~vec4<u32>(var_0.a, u_input.a, var_0.a, var_0.a), ~var_0.b), u_input.b)), func_2());
    var_0 = Struct_2(1u, ~(~u_input.b), Struct_1(var_0.c.a, var_0.c.b));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = var_0;
    var var_2 = _wgslsmith_sub_u32(0u, firstLeadingBit(_wgslsmith_mult_u32(u_input.b.x, u_input.a)));
    var var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-271f)), _wgslsmith_f_op_f32(-501f * 495f))), select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, var_1, var_1)), !vec3<bool>(var_1, false, var_0), vec3<bool>(var_0, true, false))), ~u_input.b.wz, -select(vec3<i32>(2147483647i, 1i, u_input.e.x), vec3<i32>(u_input.e.x, u_input.e.x, 2147483647i), select(vec3<bool>(false, true, var_1), vec3<bool>(var_1, var_1, false), var_1)), func_1()), 246f, firstLeadingBit(u_input.e.x), _wgslsmith_sub_u32(~(~1u), u_input.c), var_1);
    var var_4 = _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.a.b, vec2<u32>(u_input.d, ~var_3.d)), abs(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(12521u, u_input.a), var_3.a.b), ~max(vec2<u32>(9326u, 74432u), vec2<u32>(4294967295u, 1u)))));
    let var_5 = Struct_4(Struct_3(Struct_1(-675f, vec3<bool>(true, any(vec2<bool>(true, false)), true)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.ywx, vec3<u32>(47568u, var_4.x, var_3.d)), vec3<u32>(1779u, var_4.x, var_3.a.b.x)), ~1798u), vec3<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(18615i, var_3.c, 17463i, -1i), vec4<i32>(u_input.e.x, -2147483647i, 34895i, 17522i)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.c, var_3.c, 37976i, -3859i), vec4<i32>(-32142i, u_input.e.x, u_input.e.x, u_input.e.x))), ~_wgslsmith_add_i32(u_input.e.x, var_3.a.c.x), -5618i & ~var_3.c), Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, -1689f)), ~u_input.b.yyy)), var_3.a.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1677f, _wgslsmith_f_op_f32(var_3.a.a.a * var_3.a.a.a))))), -2147483647i, ~var_4.x, true);
    let var_6 = Struct_4(Struct_3(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1409f, var_3.a.d.a))), var_5), vec2<u32>(_wgslsmith_mod_u32(countOneBits(1u), var_3.d >> (0u % 32u)), ~abs(u_input.a)), abs(var_5.a.c), func_1()), _wgslsmith_f_op_f32(var_3.a.a.a - var_3.b), abs(var_3.c), 0u, false);
    var_2 = var_3.d;
    var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -337f), !func_4(vec2<f32>(1346f, var_6.a.a.a), var_6).b), var_5.a.b, firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(-1i, 2147483647i), 25218i, -15685i)), Struct_1(_wgslsmith_f_op_f32(select(-108f, -407f, var_1)), var_3.a.d.b)), _wgslsmith_div_f32(-111f, _wgslsmith_f_op_f32(-var_5.b)), u_input.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_3.d), u_input.b.zz), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.d.a, ~(max(vec4<i32>(-47243i, var_5.a.c.x, var_5.a.c.x, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(var_6.a.c.x, var_5.c, 10953i, 52330i), vec4<i32>(8581i, var_5.c, -64461i, var_6.c))) >> (~abs(vec4<u32>(0u, 1u, 76645u, u_input.c)) % vec4<u32>(32u))), vec2<f32>(var_5.b, _wgslsmith_div_f32(var_6.b, 680f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_6.b)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-875f, var_5.b), vec2<f32>(var_3.b, 1002f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_6.b, var_5.a.a.a) - vec2<f32>(253f, var_5.a.d.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1264f, -745f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-662f, var_3.a.d.a), vec2<f32>(var_3.b, 128f)))))))));
}

