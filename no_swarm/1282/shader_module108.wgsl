struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = -412f;
    var var_1 = _wgslsmith_f_op_f32(601f - -1171f);
    let var_2 = _wgslsmith_f_op_f32(-var_0);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(f32(-1f) * -1660f));
    var var_3 = arg_1.a.a.x < ~(~_wgslsmith_mult_u32(u_input.a, arg_1.a.a.x) << (u_input.a % 32u));
    return var_2;
}

fn func_2() -> Struct_1 {
    let var_0 = abs(u_input.a | 4294967295u);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -872f))), 320f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-316f + -423f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(24311i, u_input.b.x), Struct_2(Struct_1(vec3<u32>(125275u, 4294967295u, 0u), vec4<bool>(false, true, false, false), vec2<i32>(u_input.b.x, u_input.b.x))))))) + 581f));
    let var_2 = -_wgslsmith_mult_vec2_i32(u_input.e.xy, u_input.e.yx);
    var var_3 = Struct_1(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 0u, var_0) | vec3<u32>(u_input.a, var_0, var_0), max(vec3<u32>(12884u, u_input.d.x, u_input.d.x), vec3<u32>(77415u, 35447u, var_0)))), ~((vec3<u32>(u_input.d.x, var_0, var_0) & vec3<u32>(0u, 3727u, 4294967295u)) ^ ~vec3<u32>(var_0, var_0, var_0))), select(select(vec4<bool>(false, true, all(vec4<bool>(true, false, false, true)), true), vec4<bool>(all(vec2<bool>(false, false)), true, any(vec2<bool>(false, false)), any(vec4<bool>(true, true, false, false))), _wgslsmith_add_u32(var_0, var_0) >= ~18024u), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), vec4<bool>(all(vec4<bool>(true, false, true, true)), false, true, u_input.a != 4294967295u)), any(vec4<bool>(any(vec3<bool>(false, true, false)), select(false, false, false), true, true))), abs(_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_2.x, 1i), vec2<i32>(u_input.b.x, var_2.x) >> (vec2<u32>(35401u, 0u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(var_2, vec2<i32>(u_input.c, -78447i), var_2)) | u_input.b.yy));
    var var_4 = max(~(min(-vec3<i32>(var_3.c.x, 27243i, -6351i), -vec3<i32>(-75677i, -2147483647i, -18246i)) & vec3<i32>(_wgslsmith_mod_i32(-48788i, -34493i), 0i, u_input.b.x)), min(_wgslsmith_add_vec3_i32(-(vec3<i32>(var_2.x, var_3.c.x, u_input.e.x) >> (var_3.a % vec3<u32>(32u))), vec3<i32>(max(-28553i, var_3.c.x), 1i, var_2.x)), vec3<i32>(-u_input.e.x, var_2.x, var_2.x ^ -19761i)));
    return Struct_1(min(~abs(var_3.a), ~countOneBits(vec3<u32>(1u, var_3.a.x, var_3.a.x))), vec4<bool>(true, true, true, false), ~max(vec2<i32>(2147483647i, var_3.c.x) >> ((vec2<u32>(var_3.a.x, var_3.a.x) >> (vec2<u32>(10073u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), min(vec2<i32>(1i, var_2.x), countOneBits(vec2<i32>(var_4.x, var_4.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.b;
    var_0 = func_2().b;
    var_0 = select(!(!select(vec4<bool>(true, arg_3.b.x, var_0.x, false), vec4<bool>(true, false, var_0.x, false), !vec4<bool>(arg_1, arg_1, false, arg_1))), arg_3.b, !select(vec4<bool>(true, all(vec2<bool>(arg_1, arg_3.b.x)), true, any(vec4<bool>(var_0.x, false, var_0.x, false))), arg_3.b, func_2().b));
    let var_1 = arg_3.c;
    let var_2 = arg_3.a.x;
    return func_2();
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(968f, 1209f) * vec2<f32>(158f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1696f, -589f) * vec2<f32>(-777f, -608f)), true))))))));
    let var_1 = !arg_3.a.b.xwz;
    var var_2 = func_2();
    let var_3 = Struct_1(vec3<u32>(~13805u, firstTrailingBit(var_2.a.x), u_input.a), !(!(!(!arg_1.b))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 1000f, var_0.x))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 298f, 2037f), vec3<f32>(var_0.x, var_0.x, var_0.x))))), true, var_0.x, Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.a | var_2.a), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(233f, var_0.x, 1137f)), var_1.x, _wgslsmith_f_op_f32(-var_0.x), arg_3.a).b, _wgslsmith_add_vec2_i32(u_input.e.xz, -arg_3.a.c))).c);
    let var_4 = arg_3;
    return arg_3.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, arg_1.a.x) & vec3<u32>(0u, arg_0.a.x, u_input.d.x), arg_1.a), vec3<u32>(u_input.a, ~arg_0.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, arg_1.a.x), func_2().a.x))), arg_0.a.x);
    var_0 = 15229u & ~(~(~arg_0.a.x) | arg_1.a.x);
    var_0 = arg_0.a.x;
    var_0 = ~arg_0.a.x;
    var var_1 = ~u_input.e;
    return Struct_1(arg_0.a, !select(vec4<bool>(any(arg_1.b.yxw), all(arg_0.b), all(vec2<bool>(true, false)), true), !arg_1.b, select(func_4(vec3<f32>(-164f, 1331f, -1000f), arg_0.b.x, -1030f, arg_1).b, vec4<bool>(true, arg_0.b.x, arg_1.b.x, arg_1.b.x), arg_1.b.x || false)), func_5(~_wgslsmith_mult_u32(u_input.d.x, 1u) > u_input.d.x, arg_0, u_input.c, Struct_2(arg_0)).c);
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<f32>(-1639f, _wgslsmith_f_op_f32(f32(-1f) * -1315f));
    let var_1 = Struct_2(func_6(func_5(!(u_input.b.x == u_input.e.x), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, -1481f) - vec3<f32>(-1167f, -466f, 150f)), true, -326f, func_2()), i32(-1i) * -2147483647i, Struct_2(Struct_1(vec3<u32>(59262u, 4294967295u, u_input.a), vec4<bool>(true, true, true, false), vec2<i32>(41571i, -157i)))), func_5(!(var_0.x < 1000f), Struct_1(select(vec3<u32>(4294967295u, 3888u, u_input.d.x), vec3<u32>(u_input.a, 0u, 3963u), vec3<bool>(false, true, false)), vec4<bool>(true, true, true, true), ~u_input.b.zz), u_input.b.x, Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.d.x, u_input.a), vec4<bool>(false, true, false, true), vec2<i32>(u_input.c, -26166i)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -793f), var_0.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, -264f, all(vec3<bool>(var_1.a.b.x, false, var_1.a.b.x)))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(308f, 565f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(174f, _wgslsmith_f_op_f32(var_0.x + var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(-1080f * _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_0.x)), var_0.x)));
    var var_3 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(4294967295u, var_1.a.a.x, var_1.a.a.x, u_input.a)) >> (firstLeadingBit(firstTrailingBit(vec4<u32>(u_input.a, 5233u, u_input.d.x, 0u))) % vec4<u32>(32u))), vec4<u32>(u_input.a, firstLeadingBit(0u), _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_clamp_u32(4294967295u, 63816u, 35493u) & (u_input.a ^ u_input.d.x)), 0u));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, -367f))) - var_2.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(586f + 366f)))), var_2.x, 1037f));
    return Struct_2(var_1.a);
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: vec2<i32>) -> vec3<i32> {
    var var_0 = arg_1.a.b.xx;
    let var_1 = func_6(func_1().a, func_5(var_0.x, Struct_1(arg_1.a.a, !arg_1.a.b, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, 0i) >> (vec2<u32>(0u, 3944u) % vec2<u32>(32u)), ~u_input.e.yx)), arg_3.x, Struct_2(Struct_1(arg_1.a.a, vec4<bool>(true, false, true, false), vec2<i32>(u_input.c, -1i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(235f, 784f), vec2<f32>(-1243f, -811f))))));
    var_0 = var_1.b.xx;
    let var_2 = firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec2_i32(max(vec2<i32>(arg_3.x, var_1.c.x), arg_1.a.c) >> (abs(vec2<u32>(arg_1.a.a.x, 4294967295u)) % vec2<u32>(32u)), -(~vec2<i32>(-2147483647i, 7816i)))));
    return u_input.e;
}

fn func_8(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: bool, arg_3: vec3<bool>) -> bool {
    let var_0 = Struct_1(vec3<u32>(~(firstLeadingBit(u_input.a) ^ u_input.d.x), _wgslsmith_add_u32(u_input.d.x, u_input.a) >> (~_wgslsmith_dot_vec2_u32(arg_1.a.a.zz, vec2<u32>(1u, arg_1.a.a.x)) % 32u), _wgslsmith_mod_u32(select(49282u, 73451u, arg_3.x), u_input.a) ^ arg_1.a.a.x), vec4<bool>(true, arg_2, true, all(arg_1.a.b)), vec2<i32>(firstTrailingBit(1i), _wgslsmith_add_i32(19013i, ~1i)));
    return !(func_5(var_0.b.x, func_4(_wgslsmith_div_vec3_f32(vec3<f32>(608f, -1000f, -1474f), vec3<f32>(1202f, 378f, -1366f)), !arg_3.x, -662f, Struct_1(vec3<u32>(17218u, 4294967295u, 24398u), vec4<bool>(false, var_0.b.x, false, false), vec2<i32>(-1i, u_input.b.x))), -10342i, func_1()).b.x || select(!func_4(vec3<f32>(-822f, -1012f, -1000f), true, -1841f, var_0).b.x, true, (u_input.d.x ^ 0u) < ~arg_1.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, false, func_8(func_7(u_input.d, func_1(), u_input.a, vec2<i32>(382i, u_input.b.x) ^ vec2<i32>(-6083i, 0i)) | select(_wgslsmith_add_vec3_i32(vec3<i32>(32642i, -34597i, 12294i), u_input.b), -vec3<i32>(2147483647i, 1i, u_input.c), 27299u <= u_input.d.x), func_1(), false, vec3<bool>(true, false, true)), true);
    let var_1 = -406f;
    let var_2 = var_0.yzw;
    var_0 = func_1().a.b;
    var var_3 = !func_6(Struct_1(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(101481u, u_input.a), u_input.d), u_input.a), vec4<bool>(false, var_0.x, 0i <= u_input.b.x, func_5(var_0.x, Struct_1(vec3<u32>(u_input.a, 4998u, 4294967295u), vec4<bool>(true, false, var_0.x, var_0.x), vec2<i32>(28478i, u_input.c)), 0i, Struct_2(Struct_1(vec3<u32>(102959u, u_input.d.x, 59236u), vec4<bool>(false, false, false, var_2.x), u_input.e.yy))).b.x), select(u_input.e.zy, u_input.b.yz, true)), Struct_1(~(vec3<u32>(1u, 1u, u_input.d.x) | vec3<u32>(1u, u_input.a, 0u)), !select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(true, true, true, false), vec4<bool>(false, var_0.x, false, false)), select(u_input.b.yy, vec2<i32>(u_input.b.x, -1i), vec2<bool>(false, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_1), 1f)).b.zw;
    let var_4 = var_3.x;
    var_0 = vec4<bool>(28427i < _wgslsmith_mod_i32(u_input.e.x, u_input.c), true, select(true || (u_input.d.x >= 65153u), var_0.x, any(var_0.xxx)) & false, true);
    var var_5 = !func_5(var_0.x || any(vec2<bool>(var_2.x, var_2.x)), func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 923f)))), ~1i < u_input.e.x, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_1)), func_1().a), u_input.e.x, Struct_2(Struct_1(vec3<u32>(34941u, u_input.d.x, 0u), vec4<bool>(false, var_0.x, var_0.x, var_2.x), u_input.b.zx & u_input.e.yx))).b.yx;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~_wgslsmith_mult_u32(u_input.d.x, func_5(true, Struct_1(vec3<u32>(u_input.d.x, 4192u, u_input.a), vec4<bool>(var_2.x, false, true, var_3.x), vec2<i32>(u_input.e.x, 2147483647i)), u_input.b.x, Struct_2(Struct_1(vec3<u32>(51562u, 0u, 0u), vec4<bool>(var_0.x, var_3.x, var_0.x, var_5.x), u_input.e.yx))).a.x)), -16217i, _wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(max(u_input.d, vec2<u32>(45835u, 4294967295u)), ~vec2<u32>(19273u, u_input.a)), ~func_6(Struct_1(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec4<bool>(var_3.x, var_0.x, true, true), vec2<i32>(2147483647i, u_input.b.x)), Struct_1(vec3<u32>(u_input.d.x, 12192u, u_input.a), vec4<bool>(var_2.x, var_3.x, var_2.x, false), vec2<i32>(-2147483647i, u_input.e.x)), vec2<f32>(-190f, var_1)).a.xx));
}

