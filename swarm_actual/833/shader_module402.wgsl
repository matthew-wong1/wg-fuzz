struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1335f;

var<private> global1: array<vec3<f32>, 18>;

var<private> global2: array<vec2<u32>, 23> = array<vec2<u32>, 23>(vec2<u32>(1u, 16264u), vec2<u32>(1u, 22821u), vec2<u32>(16782u, 0u), vec2<u32>(51948u, 42726u), vec2<u32>(0u, 7299u), vec2<u32>(37663u, 0u), vec2<u32>(0u, 18770u), vec2<u32>(1u, 4294967295u), vec2<u32>(6514u, 0u), vec2<u32>(1263u, 39819u), vec2<u32>(0u, 0u), vec2<u32>(78333u, 0u), vec2<u32>(28503u, 4294967295u), vec2<u32>(48072u, 1u), vec2<u32>(51056u, 53424u), vec2<u32>(44552u, 4294967295u), vec2<u32>(0u, 27565u), vec2<u32>(1u, 51231u), vec2<u32>(7629u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(10254u, 0u), vec2<u32>(4294967295u, 0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(515f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-499f)))))), vec4<f32>(_wgslsmith_f_op_f32(step(1848f, _wgslsmith_div_f32(-174f, -1248f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - -1461f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1086f * 164f) * _wgslsmith_f_op_f32(select(583f, 2025f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1045f)) + _wgslsmith_f_op_f32(f32(-1f) * -231f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -804f) + _wgslsmith_f_op_f32(219f * 2048f)))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(false, false, true))));
    var var_1 = ~abs(vec3<i32>(-1i) * -firstTrailingBit(arg_0.a.wzw));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(1447f * -574f)), _wgslsmith_f_op_f32(round(-657f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(var_0.a, vec2<f32>(var_0.a.x, 179f))), _wgslsmith_f_op_vec2_f32(-var_0.b.zx))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-243f + _wgslsmith_f_op_f32(f32(-1f) * -738f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) - -650f), 1f, -1583f), false);
    var_1 = vec3<i32>(arg_0.a.x, 11074i, _wgslsmith_div_i32(-2147483647i, ~(-1i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(45374u, u_input.c, u_input.c), vec3<u32>(16515u, 0u, 1u)) % 32u)) & ((-18847i | u_input.a.x) >> (~(~u_input.c) % 32u)));
    return _wgslsmith_f_op_f32(947f + 619f);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = (vec3<i32>(-1936i, 1i, arg_1) | reverseBits(vec3<i32>(1i, ~0i, ~u_input.b))) << ((~(firstLeadingBit(vec3<u32>(arg_2.a, u_input.c, 1u)) >> ((vec3<u32>(arg_2.a, u_input.c, u_input.c) | vec3<u32>(4294967295u, 4294967295u, u_input.c)) % vec3<u32>(32u))) << (~vec3<u32>(_wgslsmith_clamp_u32(1u, arg_2.a, arg_2.a), u_input.c, _wgslsmith_clamp_u32(1u, u_input.c, arg_2.a)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = -207f;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(1732f - arg_2.c.b.x), _wgslsmith_f_op_f32(round(arg_2.c.b.x)), arg_2.c.b.x, -109f), _wgslsmith_f_op_vec4_f32(select(arg_2.c.b, _wgslsmith_div_vec4_f32(arg_2.c.b, vec4<f32>(1000f, arg_2.c.a.x, arg_2.c.a.x, arg_2.c.b.x)), !vec4<bool>(false, true, false, arg_2.c.c))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.b.x + arg_2.c.b.x) * arg_2.c.b.x), _wgslsmith_f_op_f32(f32(-1f) * -866f), _wgslsmith_f_op_f32(step(-1512f, _wgslsmith_f_op_f32(arg_2.c.a.x * 117f))))), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -202f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<i32>(69623i, 0i, arg_2.b.a.x, arg_2.b.a.x)), arg_2.b.a.xwx)) + _wgslsmith_div_f32(-614f, -159f)), arg_2.c.c, all(vec3<bool>(true, arg_2.c.c, true)), _wgslsmith_f_op_f32(arg_2.c.b.x - _wgslsmith_f_op_f32(121f - arg_2.c.a.x)) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(786f)))))));
    global1 = array<vec3<f32>, 18>();
    let var_3 = var_0.yz;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_2.b, vec3<i32>(arg_2.b.a.x, arg_1, 0i)))), var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -634f), arg_2.c.a.x, _wgslsmith_f_op_f32(func_3(arg_2.b, arg_2.b.a.zzw)), arg_2.c.b.x), select(true, select(~arg_1 <= ~2147483647i, true, !all(vec3<bool>(arg_2.c.c, false, arg_0))), true));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> vec4<bool> {
    var var_0 = min(select(_wgslsmith_sub_i32(arg_2.a.x, ~(-1i)), firstLeadingBit(~_wgslsmith_mod_i32(arg_2.a.x, 0i)), true), -5643i);
    var var_1 = arg_2;
    var_0 = _wgslsmith_mult_i32(~_wgslsmith_mod_i32(-2147483647i, u_input.b) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 90426u, u_input.c, u_input.c), vec4<u32>(u_input.c, 0u, u_input.c, 24746u)) % 32u), ~(-2147483647i)) >> (_wgslsmith_mod_u32(0u, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.c, 59158u), firstLeadingBit(u_input.c))) % 32u);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.a.x, 796f), -209f)))), -326f);
    let var_3 = u_input.a >> (~countOneBits(vec3<u32>(abs(77153u), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(u_input.c, 23u)], vec2<u32>(u_input.c, 4294967295u)), u_input.c ^ 0u)) % vec3<u32>(32u));
    return select(select(vec4<bool>(true, true, (var_3.x < -1i) | arg_1.c, arg_1.c && func_2(true, arg_2.a.x, Struct_3(1u, arg_2, arg_1)).c), vec4<bool>(true || any(arg_0), arg_3, !select(true, false, true), any(arg_0) | true), any(vec3<bool>(arg_0.x, -2147483647i < arg_2.a.x, true))), !(!vec4<bool>(func_2(arg_1.c, 30460i, Struct_3(u_input.c, Struct_2(arg_2.a), arg_1)).c, arg_0.x, arg_3 | true, false)), any(vec3<bool>(var_3.x != _wgslsmith_clamp_i32(29886i, var_1.a.x, 2147483647i), true, arg_0.x)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: i32) -> StorageBuffer {
    let var_0 = select(select(func_4(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), func_2(true, -27729i, Struct_3(u_input.c, Struct_2(vec4<i32>(u_input.b, -28684i, -3774i, u_input.b)), Struct_1(vec2<f32>(arg_0, -1910f), vec4<f32>(306f, arg_0, arg_0, 237f), false))), Struct_2(select(vec4<i32>(u_input.b, arg_1, arg_2, arg_1), vec4<i32>(arg_2, -56806i, u_input.a.x, u_input.a.x), vec4<bool>(false, true, false, false))), true), vec4<bool>(func_4(vec3<bool>(true, true, true), Struct_1(vec2<f32>(arg_0, -1058f), vec4<f32>(1000f, -478f, arg_0, 1000f), false), Struct_2(vec4<i32>(u_input.a.x, arg_1, arg_2, arg_1)), true).x, true, 0u < u_input.c, false), true), !(!select(vec4<bool>(true, false, true, true), func_4(vec3<bool>(false, false, false), Struct_1(vec2<f32>(-381f, 503f), vec4<f32>(arg_0, 2381f, 124f, arg_0), true), Struct_2(vec4<i32>(arg_2, 2147483647i, -32252i, 2147483647i)), true), vec4<bool>(true, true, true, true))), select(vec4<bool>(false, false, false, true), !vec4<bool>(u_input.c == 123056u, true, true, true), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(global1[_wgslsmith_index_u32(u_input.c, 18u)], vec3<f32>(arg_0, -1000f, 197f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1190f, arg_0, 1311f))), !vec3<bool>(var_0.x, var_0.x, var_0.x))), global1[_wgslsmith_index_u32(select(~1u, ~u_input.c, var_0.x), 18u)], !(!vec3<bool>(true, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(35693u, 1u, u_input.c, 1u), abs(vec4<u32>(47589u, 1u, u_input.c, 14941u))), 18u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(901f, arg_0, -1184f), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(u_input.c, 18u)] * global1[_wgslsmith_index_u32(0u, 18u)])) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1052f, arg_0)))), var_0.ywy)), var_0.x));
    let var_2 = _wgslsmith_dot_vec3_u32(abs(~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, u_input.c), vec3<u32>(0u, 0u, 57755u) << (vec3<u32>(4294967295u, u_input.c, u_input.c) % vec3<u32>(32u)))), ~vec3<u32>(u_input.c, _wgslsmith_clamp_u32(u_input.c, 1u, 0u), u_input.c));
    var var_3 = Struct_3(firstLeadingBit(u_input.c), Struct_2(_wgslsmith_clamp_vec4_i32(max(-vec4<i32>(arg_1, -20538i, 0i, u_input.b), vec4<i32>(1i, arg_2, -2147483647i, arg_2) | vec4<i32>(976i, -21993i, 1i, -1i)), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(1i, -47259i, arg_2, 0i)), min(vec4<i32>(-2154i, arg_1, u_input.b, 10924i), vec4<i32>(u_input.a.x, arg_2, u_input.b, arg_1))), firstTrailingBit(select(vec4<i32>(u_input.a.x, arg_2, u_input.b, arg_1), vec4<i32>(13614i, -2147483647i, -22166i, -1i), false)))), func_2(!(-arg_1 <= -1i), u_input.a.x >> (_wgslsmith_mod_u32(var_2, 0u ^ var_2) % 32u), Struct_3(_wgslsmith_mod_u32(var_2, firstLeadingBit(22632u)), Struct_2(vec4<i32>(23562i, 1i, 2147483647i, 1i)), Struct_1(var_1.yy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(469f, -981f, var_1.x, -417f)), false))));
    var var_4 = abs(vec3<u32>(0u, _wgslsmith_add_u32(var_3.a, var_3.a) >> (~63843u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 76077u, u_input.c), min(vec3<u32>(var_2, 13298u, 4405u), vec3<u32>(var_3.a, var_2, u_input.c)))) | vec3<u32>(abs(var_2), u_input.c, var_2));
    return StorageBuffer(var_3.c.b, _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(var_2, var_4.x), ~var_2, ~u_input.c, 1u), _wgslsmith_sub_vec4_u32(select(~vec4<u32>(34052u, var_2, 37533u, var_3.a), abs(vec4<u32>(var_3.a, 1u, var_2, 32512u)), vec4<bool>(var_3.c.c, var_3.c.c, false, true)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_2, u_input.c, 1u, var_2), vec4<u32>(1u, 15543u, var_4.x, 41234u)))), arg_2, _wgslsmith_dot_vec2_i32(-(var_3.b.a.xw << (~vec2<u32>(14820u, 31435u) % vec2<u32>(32u))), select(vec2<i32>(-5993i, u_input.b) ^ (vec2<i32>(arg_1, 9999i) & var_3.b.a.zy), abs(-vec2<i32>(arg_1, arg_2)), func_4(var_0.wxw, Struct_1(var_3.c.b.wz, vec4<f32>(var_1.x, 560f, -1000f, arg_0), false), Struct_2(vec4<i32>(-46956i, arg_1, arg_1, u_input.b)), var_3.c.c).xz)), _wgslsmith_f_op_vec3_f32(func_2(var_4.x <= min(61480u, 13359u), arg_2, Struct_3(~var_4.x, Struct_2(var_3.b.a), var_3.c)).b.zzx + vec3<f32>(_wgslsmith_f_op_f32(trunc(329f)), 1514f, _wgslsmith_f_op_f32(step(-169f, 1008f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 23>();
    global1 = array<vec3<f32>, 18>();
    let var_0 = ~vec4<i32>(-2147483647i, u_input.b & u_input.b, u_input.b, u_input.a.x);
    global2 = array<vec2<u32>, 23>();
    global2 = array<vec2<u32>, 23>();
    global1 = array<vec3<f32>, 18>();
    let x = u_input.a;
    s_output = func_1(999f, firstTrailingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(-28070i, -2147483647i), u_input.a.xx)) & _wgslsmith_div_i32(countOneBits(-var_0.x), -u_input.b >> (u_input.c % 32u)), reverseBits(var_0.x));
}

