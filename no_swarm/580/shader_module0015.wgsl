struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_2(-vec3<i32>(u_input.d, ~34643i, i32(-1i) * -1i) << (u_input.c % vec3<u32>(32u)));
    var_0 = Struct_2(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.d, ~u_input.d, -2147483647i)), (vec3<i32>(-1i) * -vec3<i32>(1674i, var_0.a.x, u_input.d)) | vec3<i32>(var_0.a.x, -4201i, i32(-1i) * -16713i)));
    var_0 = Struct_2((var_0.a & ~_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, -2147483647i, u_input.d), var_0.a)) << (~u_input.c % vec3<u32>(32u)));
    let var_1 = true;
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3116f, 1072f, 862f, 129f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1826f, 444f, -211f, 584f), vec4<f32>(3257f, -1000f, -405f, 1795f)))))), all(!select(vec2<bool>(arg_0, var_1), vec2<bool>(false, true), arg_0)) && false, Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(930f, 1235f, 777f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, 1589f, -620f)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, var_1), var_1))), vec3<f32>(_wgslsmith_f_op_f32(1810f * 586f), _wgslsmith_f_op_f32(1620f * 2043f), -2064f))), _wgslsmith_div_vec2_u32(min(u_input.b, abs(u_input.c.xy)), ~countOneBits(vec2<u32>(u_input.b.x, 1u))), true, select(true, true, false), _wgslsmith_f_op_f32(f32(-1f) * -153f)), Struct_1(vec3<f32>(-702f, 248f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -732f) - -143f)), ~(~(u_input.c.yx << (u_input.c.yz % vec2<u32>(32u)))), !arg_0 != !(!var_1), !any(vec2<bool>(false, arg_0)) & select(var_1, var_1, arg_0 || true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-967f, 1369f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(895f, 1164f) + -576f))));
    return var_2.c.b.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_mult_i32(~u_input.d, select(-1i, i32(-1i) * -1i, !arg_0.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -691f) * -551f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2096f, -483f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1432f)) - 2580f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(663f * _wgslsmith_f_op_f32(387f - -526f)))), 626f)));
    let var_2 = 18306u;
    var var_3 = Struct_2(vec3<i32>(13298i, u_input.d, u_input.d));
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 607f, -2651f) - vec4<f32>(1000f, 802f, -458f, var_1.x)), vec4<f32>(579f, 731f, var_1.x, 515f), true))))));
    return arg_2 << (_wgslsmith_sub_u32(var_2, select(~_wgslsmith_mult_u32(arg_1.x, 4294967295u), min(var_2 ^ var_2, arg_2), arg_0.x)) % 32u);
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = vec4<u32>(~((u_input.a << (~u_input.b.x % 32u)) & (reverseBits(u_input.b.x) & 0u)), 4294967295u ^ u_input.c.x, 88965u, func_4(vec4<bool>(all(vec3<bool>(true, true, true)), true, 0u < u_input.b.x, !(u_input.d < arg_0.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(abs(32909u), func_3(false), u_input.a, 4140u), vec4<u32>(func_3(true), 4294967295u, u_input.b.x, u_input.c.x)), select(~firstTrailingBit(u_input.a), ~_wgslsmith_div_u32(1u, u_input.a), true)));
    let var_1 = u_input.c;
    var_0 = ~(~(~max(~vec4<u32>(var_0.x, 1u, u_input.b.x, 4294967295u), vec4<u32>(var_1.x, u_input.b.x, var_1.x, u_input.b.x))));
    var var_2 = select(vec2<bool>(true, true), vec2<bool>(select(any(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)), any(vec2<bool>(true, false))) && false, all(vec2<bool>(true, select(false, true, false)))), select(vec2<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(false, false, false)) | true), vec2<bool>(true, true), false));
    var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 31581u), vec2<u32>(var_1.x, var_0.x)), func_4(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), _wgslsmith_add_vec4_u32(vec4<u32>(93552u, 59880u, var_1.x, u_input.b.x), vec4<u32>(var_1.x, var_0.x, 46367u, u_input.c.x)), ~u_input.a), var_1.x), vec3<u32>(_wgslsmith_mult_u32(countOneBits(var_0.x), _wgslsmith_mod_u32(0u, u_input.a)), _wgslsmith_sub_u32(1u, 0u), ~35006u)), func_3(false), _wgslsmith_clamp_u32(var_1.x, ~func_3(true), var_0.x), ~(~min(_wgslsmith_div_u32(1u, var_0.x), var_0.x)));
    return all(!(!(!select(vec2<bool>(var_2.x, false), vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, var_2.x)))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3) -> u32 {
    var var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(805f, var_0.a.x, var_0.a.x), vec3<f32>(arg_1.d.a.x, var_0.c.a.x, 210f), false)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c.a * vec3<f32>(var_0.d.e, arg_1.d.e, var_0.c.e)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-475f, 1000f, arg_1.c.e)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_1.d.a)))))), var_0.c.b, _wgslsmith_div_f32(arg_1.d.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + _wgslsmith_f_op_f32(arg_1.c.a.x + arg_1.d.e))) > _wgslsmith_div_f32(arg_1.d.a.x, _wgslsmith_f_op_f32(round(1101f))), firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, 0i), vec3<i32>(u_input.d, u_input.d, 2147483647i))) != _wgslsmith_dot_vec4_i32(-(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d) | vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), select(vec4<i32>(u_input.d, u_input.d, u_input.d, 1i) << (vec4<u32>(42676u, 4294967295u, var_0.d.b.x, u_input.a) % vec4<u32>(32u)), vec4<i32>(u_input.d, -2147483647i, u_input.d, -31682i), vec4<bool>(false, var_0.c.d, arg_0.x, arg_1.d.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.c.e, 341f)), _wgslsmith_f_op_f32(sign(1131f)))))));
    let var_2 = _wgslsmith_sub_vec4_u32(select(vec4<u32>(467u, func_3(arg_0.x), 39087u, select(firstTrailingBit(23155u), var_0.c.b.x, true)), ~(~max(vec4<u32>(0u, arg_1.d.b.x, var_0.d.b.x, var_0.c.b.x), vec4<u32>(var_0.c.b.x, var_0.d.b.x, 1u, arg_1.d.b.x))), select(select(!vec4<bool>(true, false, var_0.c.d, arg_1.b), select(vec4<bool>(arg_1.d.d, true, false, true), vec4<bool>(true, true, arg_0.x, false), vec4<bool>(var_0.c.d, arg_1.c.d, arg_1.b, false)), select(vec4<bool>(true, true, false, arg_0.x), vec4<bool>(false, true, arg_0.x, true), vec4<bool>(false, arg_1.d.c, true, true))), select(!vec4<bool>(var_1.c, true, var_1.d, arg_1.d.d), !vec4<bool>(var_1.d, true, false, arg_1.b), true), any(select(arg_0, arg_0, arg_0)))), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, arg_1.c.b.x), select(vec3<u32>(var_1.b.x, 1u, var_0.c.b.x), u_input.c, var_0.b)), ~_wgslsmith_clamp_u32(arg_1.c.b.x & u_input.b.x, ~var_0.d.b.x, _wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x)), _wgslsmith_div_u32(~var_0.c.b.x, 23314u), select(arg_1.c.b.x, 0u, func_2(Struct_2(vec3<i32>(u_input.d, u_input.d, 2147483647i))))));
    var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) + _wgslsmith_f_op_f32(abs(342f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2149f + -318f) * _wgslsmith_f_op_f32(trunc(-456f))), -433f, -1441f), any(arg_0.yx), arg_1.c, Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.d.a))), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, var_0.c.b), ~var_0.d.b), false, false, var_1.e));
    var var_3 = _wgslsmith_mod_vec3_u32(~vec3<u32>(min(1u, max(4294967295u, 5691u)), var_2.x ^ var_1.b.x, countOneBits(25717u)), vec3<u32>(var_1.b.x, countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.c.b.x, 12182u, var_2.x), vec4<u32>(u_input.a, 98494u, arg_1.d.b.x, arg_1.d.b.x))), var_0.c.b.x));
    return _wgslsmith_mod_u32(func_4(!vec4<bool>(var_0.b, false, false, false), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d.b.x, var_0.c.b.x, 4294967295u, 1u), vec4<u32>(4294967295u, var_1.b.x, 0u, 0u), vec4<u32>(var_1.b.x, 32646u, 0u, 21996u)) >> (select(vec4<u32>(20533u, var_1.b.x, var_1.b.x, var_1.b.x), ~var_2, vec4<bool>(true, var_1.c, true, false)) % vec4<u32>(32u)), var_3.x), u_input.a);
}

fn func_1(arg_0: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_div_u32(~(arg_0.x >> (73996u % 32u)), func_5(vec3<bool>(select(true, true, all(vec2<bool>(true, false))), !all(vec2<bool>(false, true)), func_2(Struct_2(vec3<i32>(48320i, u_input.d, u_input.d)))), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), true, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(506f, 679f, -1566f)), ~vec2<u32>(u_input.a, u_input.a), true, any(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -750f)), Struct_1(vec3<f32>(530f, -1054f, 789f), ~arg_0.zz, true, true, _wgslsmith_f_op_f32(step(180f, -455f))))));
    let var_1 = 54439i;
    var var_2 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -767f), -230f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1213f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2101f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f)))), false, Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-360f, 892f, -591f)))), vec2<u32>(u_input.b.x, max(6566u, 0u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1338f, -1213f) - 677f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-715f))), (select(true, false, false) && true) || (var_1 < -u_input.d), _wgslsmith_f_op_f32(step(-358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1698f + -1061f))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(545f, 340f, -164f))), reverseBits(arg_0.zy), !(u_input.d == u_input.d) || all(vec3<bool>(false, true, false)), (_wgslsmith_f_op_f32(abs(207f)) < _wgslsmith_f_op_f32(step(-139f, -155f))) || true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-344f * 460f))) - _wgslsmith_f_op_f32(f32(-1f) * -614f))));
    var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(var_2.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1451f, var_2.c.e, -1584f, var_2.a.x), _wgslsmith_f_op_vec4_f32(-var_2.a))), true)))), all(vec2<bool>(false | all(vec2<bool>(var_2.c.c, var_2.c.d)), true)), var_2.c, var_2.d);
    var var_3 = u_input.d;
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1932f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1004f - 117f), _wgslsmith_f_op_f32(func_1(u_input.c)))))), 340f) - 1f);
    var var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-673f, -158f, 1650f))))), vec3<f32>(958f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1037f)) - _wgslsmith_f_op_f32(floor(-700f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(328f * 550f)))), ~reverseBits(u_input.b), 9252i >= u_input.d, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), _wgslsmith_div_f32(790f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))));
    var_0 = var_1.e;
    let var_2 = select(!(!(!vec4<bool>(var_1.c, var_1.d, false, true))), vec4<bool>(false, false, -789f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.e)) + _wgslsmith_f_op_f32(f32(-1f) * -1158f)), true), !(!vec4<bool>(!var_1.d, true, var_1.d == var_1.c, !var_1.d)));
    var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.e + 1699f), _wgslsmith_f_op_f32(exp2(var_1.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1315f, 1955f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -511f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x))))), u_input.b, !select(var_1.d, var_1.d, false), true & (true != !var_1.c), _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c)))));
    var var_3 = !(!vec2<bool>(var_1.d, true));
    let var_4 = var_1.a.xz;
    var var_5 = Struct_1(var_1.a, ~vec2<u32>(select(u_input.a ^ var_1.b.x, var_1.b.x, !var_1.c), countOneBits(abs(4294967295u))), false, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x + var_4.x))), _wgslsmith_f_op_f32(f32(-1f) * -396f), u_input.c.x > ~0u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec3<i32>(abs(68415i), u_input.d | u_input.d, ~2147483647i), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 2147483647i, 9117i), vec3<i32>(-47600i, -23917i, 62991i))), select(vec3<bool>(any(var_2.xy), any(var_2), var_3.x), vec3<bool>(true, var_5.c, false), vec3<bool>(false && var_3.x, var_5.d & false, var_5.d))), select(abs(vec3<i32>(31171i, u_input.d, u_input.d)), vec3<i32>(u_input.d, _wgslsmith_mult_i32(u_input.d, u_input.d) | 19553i, 30245i), select(!select(vec3<bool>(true, false, true), vec3<bool>(var_2.x, var_5.d, var_5.d), var_2.wxz), select(vec3<bool>(var_3.x, var_5.c, var_5.c), !vec3<bool>(false, true, var_3.x), var_1.c), false)), firstLeadingBit(-max(u_input.d, -14421i)));
}

