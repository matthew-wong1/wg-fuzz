struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<u32>) -> i32 {
    let var_0 = 1000f;
    var var_1 = Struct_5(Struct_1(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, arg_2.x), select(u_input.b, arg_2.xx, arg_0.yy)) ^ u_input.b, ~(~_wgslsmith_div_vec2_i32(vec2<i32>(28278i, -1i), vec2<i32>(u_input.a, u_input.a))), min(reverseBits(select(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, -12966i), true)), select(vec2<i32>(u_input.a, 55772i), vec2<i32>(1i, 81748i), vec2<bool>(true, true))), 2147483647i, arg_2.x), -(max(firstTrailingBit(vec2<i32>(u_input.a, 8917i)), vec2<i32>(0i, u_input.a)) >> (vec2<u32>(1u, ~arg_2.x) % vec2<u32>(32u))));
    let var_2 = Struct_4(Struct_3(vec3<u32>(~0u, 14366u, arg_2.x), firstLeadingBit(select(_wgslsmith_sub_u32(4294967295u, u_input.b.x), 0u ^ arg_2.x, true)), Struct_2(Struct_1(vec2<u32>(var_1.a.a.x, 5593u), var_1.a.c, vec2<i32>(u_input.a, 1i), -u_input.a, 1u), min(0u, 1u), vec3<bool>(arg_1 | false, false, true), vec4<u32>(~u_input.b.x, 38645u, ~var_1.a.e, var_1.a.e)), var_1.a), firstLeadingBit(select(_wgslsmith_mult_i32(var_1.a.c.x, u_input.a), var_1.b.x >> (16809u % 32u), !arg_0.x) & _wgslsmith_sub_i32(u_input.a, var_1.a.c.x)), any(vec4<bool>(true, any(vec4<bool>(arg_1, false, false, false)), false, arg_0.x)), select(~countOneBits(~vec4<u32>(0u, u_input.b.x, 4294967295u, var_1.a.a.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.x, 0u, ~3282u, ~47135u), ~vec4<u32>(arg_2.x, 15341u, 9371u, 14139u)), vec4<bool>(var_0 <= _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(trunc(var_0)) > var_0, !(!arg_1), all(vec4<bool>(false, false, arg_0.x, arg_0.x)))));
    var_1 = Struct_5(var_1.a, vec2<i32>(14394i, i32(-1i) * -var_2.a.c.a.d));
    var var_3 = var_0;
    return ~(-var_2.b);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(Struct_1(vec2<u32>(~u_input.b.x, 1u ^ _wgslsmith_mult_u32(u_input.b.x, 5726u)), vec2<i32>(u_input.a, 1i), vec2<i32>(~(-u_input.a), func_3(vec3<bool>(true, true, true), true, ~vec3<u32>(u_input.b.x, 41261u, 1u))), _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(54548i), 1i), reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.a), vec2<i32>(-13994i, -30540i)))), ~4294967295u << (~(u_input.b.x ^ u_input.b.x) % 32u)), 0u, !vec3<bool>(!any(vec2<bool>(true, true)), -2147483647i < u_input.a, !select(false, false, true)), ~(~abs(firstTrailingBit(vec4<u32>(55447u, 10896u, u_input.b.x, 23926u)))));
    var var_1 = Struct_2(Struct_1(u_input.b, select(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, u_input.a), var_0.a.c & var_0.a.c), ~(-vec2<i32>(20915i, -31961i)), !any(vec4<bool>(true, false, true, var_0.c.x))), vec2<i32>(var_0.a.d, 10768i), 4731i, ~(~(133200u | u_input.b.x))), 19469u, var_0.c, vec4<u32>(u_input.b.x, 4294967295u, _wgslsmith_sub_u32(u_input.b.x, min(1u, u_input.b.x)), 4294967295u));
    var_0 = Struct_2(var_0.a, firstLeadingBit(min(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.d.x, u_input.b.x, 9797u), vec4<u32>(var_0.a.a.x, 1u, u_input.b.x, 1u)), 4294967295u)), !(!vec3<bool>(var_0.d.x > var_1.b, !var_0.c.x, !var_1.c.x)), var_0.d);
    var var_2 = firstTrailingBit(var_0.a.d);
    let var_3 = vec3<i32>(~(-var_0.a.b.x), u_input.a, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-19750i, -2147483647i, var_1.a.c.x, 3871i), firstLeadingBit(min(vec4<i32>(u_input.a, u_input.a, 5891i, 1542i), vec4<i32>(2147483647i, var_1.a.d, -5157i, -20173i))), var_0.c.x), abs((vec4<i32>(-1i, var_0.a.c.x, 4126i, -1i) ^ vec4<i32>(17078i, 0i, -1i, -2147483647i)) & _wgslsmith_add_vec4_i32(vec4<i32>(6434i, -2147483647i, var_0.a.b.x, u_input.a), vec4<i32>(var_1.a.c.x, -1i, 1i, u_input.a)))));
    return Struct_3(var_1.d.yzz, _wgslsmith_sub_u32(u_input.b.x, 21393u), Struct_2(Struct_1(~(~u_input.b), ~(~vec2<i32>(2147483647i, var_3.x)), -var_1.a.b, countOneBits(-1i), _wgslsmith_sub_u32(0u, u_input.b.x ^ 18571u)), _wgslsmith_add_u32(~134071u, ~var_1.a.e ^ var_0.b), !vec3<bool>(select(true, false, true), false, false), vec4<u32>(var_1.d.x, 4294967295u, _wgslsmith_sub_u32(select(0u, 15269u, true), u_input.b.x ^ var_0.d.x), 4294967295u & _wgslsmith_dot_vec2_u32(var_1.a.a, u_input.b))), Struct_1(~(~abs(var_1.d.zx)), var_3.zx, var_1.a.b, (_wgslsmith_add_i32(-88124i, var_0.a.d) & 0i) | _wgslsmith_sub_i32(firstTrailingBit(var_3.x), _wgslsmith_mult_i32(var_3.x, -7834i)), countOneBits(_wgslsmith_add_u32(~var_0.a.e, var_1.d.x))));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<i32>) -> vec3<i32> {
    var var_0 = arg_1.c.c.x;
    var_0 = !(399f > _wgslsmith_f_op_f32(trunc(132f))) & any(!(!(!arg_1.c.c.xz)));
    var var_1 = all(!select(!vec4<bool>(arg_1.c.c.x, false, true, true), vec4<bool>(any(arg_1.c.c.xx), true, arg_1.c.c.x, false), arg_1.c.c.x));
    let var_2 = arg_1.c.a;
    var var_3 = arg_1.c;
    return (arg_2 << (vec3<u32>(abs(var_3.a.e), 1u, 28588u) % vec3<u32>(32u))) & (vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_3.a.b.x, arg_2.x, 1i), abs(vec3<i32>(-2147483647i, arg_2.x, -18178i))), i32(-1i) * -2147483647i, -21617i) | arg_2);
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: bool) -> Struct_4 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~reverseBits(_wgslsmith_sub_i32(u_input.a, u_input.a)), ~_wgslsmith_add_i32(~u_input.a, arg_0.x), 1i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_0.x, ~_wgslsmith_mult_i32(54559i, -18147i)), _wgslsmith_dot_vec3_i32(min(max(vec3<i32>(0i, u_input.a, 0i), vec3<i32>(46258i, -27525i, 2147483647i)), _wgslsmith_clamp_vec3_i32(arg_0, arg_0, vec3<i32>(arg_0.x, u_input.a, u_input.a))), ~arg_0)), select(-1i, reverseBits(func_4(_wgslsmith_div_f32(984f, 810f), func_2(), vec3<i32>(u_input.a, var_0.c.a.d, -2147483647i)).x), var_0.c.c.x));
    var_0 = Struct_3(~vec3<u32>(~19270u, ~3344u, var_0.d.a.x), firstLeadingBit(70075u), func_2().c, func_2().d);
    let var_2 = reverseBits(countOneBits(35725i));
    let var_3 = Struct_4(Struct_3(_wgslsmith_add_vec3_u32(var_0.c.d.yyy, ~(~var_0.c.d.xyz)), _wgslsmith_div_u32(var_0.c.a.e, ~0u << (~4294967295u % 32u)), Struct_2(func_2().c.a, u_input.b.x, !func_2().c.c, max(var_0.c.d, var_0.c.d) << (var_0.c.d % vec4<u32>(32u))), func_2().c.a), -16060i, all(vec4<bool>(~var_0.d.b.x > -1i, false, true, false | (arg_1 >= arg_1))), (abs(var_0.c.d >> (var_0.c.d % vec4<u32>(32u))) | ~vec4<u32>(var_0.a.x, var_0.a.x, u_input.b.x, var_0.d.e)) | _wgslsmith_div_vec4_u32(~vec4<u32>(47284u, u_input.b.x, 1u, var_0.c.d.x), _wgslsmith_div_vec4_u32(~var_0.c.d, _wgslsmith_mod_vec4_u32(var_0.c.d, vec4<u32>(var_0.c.d.x, var_0.d.a.x, 35513u, 4294967295u)))));
    return var_3;
}

fn func_6(arg_0: i32, arg_1: Struct_4) -> f32 {
    var var_0 = func_5(-countOneBits(~(vec3<i32>(13819i, arg_0, u_input.a) >> (vec3<u32>(arg_1.d.x, arg_1.d.x, 4294967295u) % vec3<u32>(32u)))), -2270f, true).a.c.c.yx;
    let var_1 = Struct_3(arg_1.a.c.d.zyy, 38267u, func_2().c, func_2().d);
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-521f, -353f, -2562f, 744f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(864f, -1552f, 1422f, 564f) * vec4<f32>(-1939f, 285f, -275f, 1060f)) * _wgslsmith_div_vec4_f32(vec4<f32>(733f, 567f, -336f, 1625f), vec4<f32>(1615f, 1420f, -603f, 573f))))))));
    let var_4 = Struct_4(arg_1.a, _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.c.a.c.x, var_1.c.a.c.x), arg_1.a.d.c), -2147483647i), (_wgslsmith_f_op_f32(-460f * var_3.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -417f) + -1119f)) | var_2.c.c.x, ~vec4<u32>(~min(var_2.c.d.x, var_2.c.a.e), 1u, 1u, _wgslsmith_div_u32(~var_2.a.x, ~4294967295u)));
    return var_3.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    let var_0 = -abs(_wgslsmith_sub_vec2_i32(firstTrailingBit(arg_0), arg_0));
    var var_1 = false;
    var_1 = _wgslsmith_f_op_f32(func_6(var_0.x, func_5(func_4(_wgslsmith_f_op_f32(f32(-1f) * -617f), func_2(), vec3<i32>(arg_0.x, var_0.x, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f)), false))) >= 2125f;
    var var_2 = func_5(firstTrailingBit(vec3<i32>(0i, -10710i, arg_0.x) >> (vec3<u32>(max(u_input.b.x, u_input.b.x), u_input.b.x, 4294967295u >> (u_input.b.x % 32u)) % vec3<u32>(32u))), -1000f, !(u_input.a != arg_1)).a.c;
    var var_3 = firstLeadingBit(_wgslsmith_sub_i32(8651i, _wgslsmith_mod_i32(u_input.a, arg_1) >> (301u % 32u)));
    return Struct_1(_wgslsmith_mult_vec2_u32(var_2.d.zw, ~(~u_input.b) ^ u_input.b), var_2.a.c, vec2<i32>(_wgslsmith_mult_i32(-reverseBits(var_0.x), -_wgslsmith_mod_i32(var_2.a.b.x, -5552i)), -firstTrailingBit(var_2.a.c.x)), _wgslsmith_add_i32(_wgslsmith_div_i32(12980i, (arg_1 | 21035i) << (60932u % 32u)), 1i), _wgslsmith_sub_u32(_wgslsmith_add_u32(42148u, u_input.b.x ^ u_input.b.x), u_input.b.x) << (~(var_2.b >> (u_input.b.x % 32u)) % 32u));
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1101f - 601f)))) - _wgslsmith_f_op_f32(min(-417f, _wgslsmith_f_op_f32(round(-1479f))))));
    var var_1 = arg_0.x;
    let var_2 = 456f;
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-arg_0.zw);
    return ~arg_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.b.x, ~func_7(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 255f, 1274f, -1045f)), func_1(vec2<i32>(u_input.a, 1i), -669i), _wgslsmith_f_op_f32(func_6(-2147483647i, Struct_4(Struct_3(vec3<u32>(u_input.b.x, 17852u, u_input.b.x), 26489u, Struct_2(Struct_1(u_input.b, vec2<i32>(25594i, -25042i), vec2<i32>(1i, u_input.a), u_input.a, u_input.b.x), 4294967295u, vec3<bool>(true, true, false), vec4<u32>(u_input.b.x, 17578u, 19063u, 46002u)), Struct_1(vec2<u32>(19572u, u_input.b.x), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -29293i), u_input.a, 48957u)), u_input.a, true, vec4<u32>(u_input.b.x, 1u, 4294967295u, 4294967295u)))))), ~(~79574u));
    var_0 = u_input.b.x;
    var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(4965u, 4294967295u, 31465u)) & abs(vec3<u32>(u_input.b.x, 27202u, 41858u) >> (vec3<u32>(1u, u_input.b.x, 25104u) % vec3<u32>(32u))), countOneBits(vec3<u32>(u_input.b.x, ~0u, _wgslsmith_sub_u32(u_input.b.x, 0u)))), _wgslsmith_clamp_u32(1u, reverseBits(_wgslsmith_add_u32(~u_input.b.x, 27887u)), _wgslsmith_div_u32(14341u, ~u_input.b.x >> (_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x) % 32u))));
    var var_1 = _wgslsmith_mult_vec2_u32(u_input.b, (~u_input.b << (~vec2<u32>(4294967295u, 136262u) % vec2<u32>(32u))) << (u_input.b % vec2<u32>(32u)));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(31131i, i32(-1i) * -59031i, ~abs(u_input.a)) >> (vec3<u32>(func_5(vec3<i32>(u_input.a, -2147483647i, -1i), _wgslsmith_f_op_f32(abs(-585f)), true).d.x, u_input.b.x & u_input.b.x, u_input.b.x) % vec3<u32>(32u)), select(~(~vec3<i32>(u_input.a, 36464i, u_input.a)), vec3<i32>(1i ^ u_input.a, u_input.a, ~firstTrailingBit(u_input.a)), true));
    let var_3 = 712f;
    var var_4 = Struct_3(abs(vec3<u32>(35694u, ~102886u, 0u)), firstLeadingBit(~_wgslsmith_mod_u32(1u, min(4294967295u, var_1.x))), func_2().c, func_2().d);
    let var_5 = ~vec3<i32>(var_4.d.d, 1i, select(min(0i, -2147483647i), abs(var_2.x), true)) << (vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.b.x, 1u) << (~u_input.b.x % 32u), u_input.b.x), var_1.x, 1u) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(12831i, var_5.x), -360f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f - _wgslsmith_f_op_f32(func_6(var_5.x, Struct_4(Struct_3(var_4.c.d.xyz, var_1.x, Struct_2(var_4.d, 0u, vec3<bool>(var_4.c.c.x, var_4.c.c.x, false), vec4<u32>(4691u, var_4.a.x, 4294967295u, var_1.x)), Struct_1(u_input.b, vec2<i32>(var_4.d.b.x, -16975i), var_2.yy, u_input.a, 61657u)), var_2.x, var_4.c.c.x, var_4.c.d))))), _wgslsmith_f_op_f32(-855f - var_3)), max(1u, var_1.x), ~vec3<u32>(~var_1.x, var_4.c.d.x, ~1u));
}

