struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

var<private> global1: vec3<i32> = vec3<i32>(0i, 23171i, -33179i);

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(24231i, vec3<bool>(true, true, true), vec4<i32>(31131i, i32(-2147483648), 0i, 59602i), true), Struct_1(-13332i, vec3<bool>(false, false, true), vec4<i32>(-55372i, -1i, 0i, -1i), false), Struct_1(2147483647i, vec3<bool>(true, false, true), vec4<i32>(0i, -43177i, i32(-2147483648), 42193i), true), Struct_1(46319i, vec3<bool>(false, false, true), vec4<i32>(2147483647i, 1i, 1i, -1i), true), Struct_1(-24678i, vec3<bool>(false, false, false), vec4<i32>(61895i, 2147483647i, 2147483647i, -51614i), false), Struct_1(i32(-2147483648), vec3<bool>(false, true, true), vec4<i32>(4503i, 2147483647i, 3063i, -1i), false), Struct_1(0i, vec3<bool>(false, false, true), vec4<i32>(6488i, -13980i, 11007i, 36187i), true), Struct_1(0i, vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), 17081i, 2196i, 20012i), false), Struct_1(0i, vec3<bool>(true, true, true), vec4<i32>(-24876i, -1744i, -1i, 19233i), false), Struct_1(-1i, vec3<bool>(false, true, true), vec4<i32>(53431i, 34207i, 0i, i32(-2147483648)), true), Struct_1(2147483647i, vec3<bool>(true, true, false), vec4<i32>(0i, -14962i, 0i, 3741i), false), Struct_1(-56336i, vec3<bool>(true, true, false), vec4<i32>(2147483647i, 33814i, 0i, -11081i), true), Struct_1(-1i, vec3<bool>(false, false, true), vec4<i32>(-56637i, 3199i, -18689i, 1478i), true), Struct_1(-2199i, vec3<bool>(false, true, true), vec4<i32>(9704i, -29784i, 2147483647i, 2560i), false), Struct_1(0i, vec3<bool>(false, true, false), vec4<i32>(13309i, 2147483647i, 56118i, i32(-2147483648)), false), Struct_1(1i, vec3<bool>(false, true, true), vec4<i32>(-28230i, 15336i, 0i, 1i), false), Struct_1(108894i, vec3<bool>(false, false, false), vec4<i32>(619i, 12781i, i32(-2147483648), 1i), true), Struct_1(-56029i, vec3<bool>(true, false, true), vec4<i32>(-33653i, -1i, -1i, 1i), false), Struct_1(2147483647i, vec3<bool>(true, true, false), vec4<i32>(-1i, i32(-2147483648), 37496i, 87534i), false), Struct_1(2147483647i, vec3<bool>(false, false, false), vec4<i32>(-67838i, 2147483647i, 1i, 37912i), false), Struct_1(-7856i, vec3<bool>(true, false, true), vec4<i32>(-13911i, 10566i, -21276i, 51803i), true), Struct_1(1i, vec3<bool>(true, true, false), vec4<i32>(3042i, 68892i, -22669i, 28632i), true), Struct_1(21314i, vec3<bool>(true, true, false), vec4<i32>(25281i, 24053i, 1i, 7027i), true));

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-16877i, vec3<bool>(true, true, true), vec4<i32>(28426i, 19661i, 4705i, -60715i), false), Struct_1(-2311i, vec3<bool>(false, true, true), vec4<i32>(i32(-2147483648), 0i, -36001i, -8644i), true), Struct_1(-1i, vec3<bool>(true, false, true), vec4<i32>(67811i, 2147483647i, -9631i, 4380i), false), Struct_1(2147483647i, vec3<bool>(false, true, false), vec4<i32>(1i, -44363i, 36553i, 27060i), false), Struct_1(i32(-2147483648), vec3<bool>(false, true, false), vec4<i32>(-1i, -1i, -25941i, 1i), true), Struct_1(9413i, vec3<bool>(false, true, true), vec4<i32>(35182i, 11441i, -17005i, 1i), false), Struct_1(i32(-2147483648), vec3<bool>(true, false, false), vec4<i32>(-1i, -46980i, 58061i, -1i), true), Struct_1(-1i, vec3<bool>(true, true, true), vec4<i32>(10312i, 0i, 11462i, -3001i), false), Struct_1(-1i, vec3<bool>(true, false, false), vec4<i32>(12949i, -25605i, 0i, -46543i), true), Struct_1(i32(-2147483648), vec3<bool>(false, true, false), vec4<i32>(0i, i32(-2147483648), 31898i, 49276i), false), Struct_1(i32(-2147483648), vec3<bool>(false, false, true), vec4<i32>(0i, 1i, i32(-2147483648), -34908i), false), Struct_1(3504i, vec3<bool>(false, true, false), vec4<i32>(10150i, 17771i, 87087i, 1i), true), Struct_1(2147483647i, vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), -7499i, -1i, -1i), false), Struct_1(-1i, vec3<bool>(false, true, true), vec4<i32>(29852i, 0i, -20299i, 1i), false), Struct_1(1i, vec3<bool>(true, true, true), vec4<i32>(-1i, i32(-2147483648), -17950i, -3124i), false), Struct_1(-2682i, vec3<bool>(true, true, true), vec4<i32>(-17413i, 54570i, 2147483647i, 0i), false), Struct_1(23753i, vec3<bool>(false, false, false), vec4<i32>(-22022i, 41140i, 0i, i32(-2147483648)), true), Struct_1(-10270i, vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), -728i, -1i, 0i), true), Struct_1(-1i, vec3<bool>(true, true, true), vec4<i32>(2147483647i, -8992i, 16913i, -62384i), false), Struct_1(-1i, vec3<bool>(false, false, true), vec4<i32>(22245i, 0i, -6128i, i32(-2147483648)), true), Struct_1(-18555i, vec3<bool>(true, false, true), vec4<i32>(2147483647i, 0i, -40655i, 3142i), true), Struct_1(-14504i, vec3<bool>(true, false, true), vec4<i32>(38878i, 1i, 1i, 5850i), true), Struct_1(-76633i, vec3<bool>(true, false, false), vec4<i32>(43614i, 2147483647i, i32(-2147483648), 2147483647i), true), Struct_1(-11i, vec3<bool>(true, true, false), vec4<i32>(2147483647i, -1i, 0i, 2751i), false), Struct_1(1i, vec3<bool>(false, true, false), vec4<i32>(-511i, 19444i, -15643i, 2147483647i), false));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> vec3<f32> {
    let var_0 = -247f;
    global2 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_clamp_i32(-2147483647i, 29437i | arg_0.c.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_0.a & 0i, ~(-35081i), global1.x) | 77782i, -2147483647i));
    let var_2 = Struct_3(arg_0.c.zzw, u_input.b, max(-abs(~(-23359i)), global1.x));
    let var_3 = _wgslsmith_f_op_f32(sign(822f));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1411f, var_3))), var_0, _wgslsmith_f_op_f32(f32(-1f) * -1223f)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-663f, 552f)) + -289f), 129f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1198f, 873f, 759f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_3, -880f) + vec3<f32>(1199f, var_3, var_0))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1618f, var_3, -1420f), vec3<f32>(var_0, var_0, -544f))), vec3<f32>(var_3, var_0, var_0)))), !(!all(vec4<bool>(false, arg_2, arg_0.d, true))))));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = true;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(-1i, !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), global0[_wgslsmith_index_u32(arg_2.x, 10u)] << (_wgslsmith_mod_vec4_u32(arg_1, arg_1) % vec4<u32>(32u)), true), false, false)), vec2<bool>(arg_1.x < _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_1.x, 4294967295u), _wgslsmith_add_u32(0u, arg_2.x), select(47550u, 67888u, false)), false));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))), -517f, -1584f, -1178f));
    var var_3 = ~_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_1.x, arg_1.x), min(arg_1.x ^ 0u, ~1563u)), ~reverseBits(_wgslsmith_mod_u32(14873u, 18829u)));
    global2 = array<Struct_1, 23>();
    return Struct_3(_wgslsmith_mult_vec3_i32(select(min(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, -35702i, global1.x), vec3<i32>(-24311i, 7029i, 0i)), reverseBits(vec3<i32>(-1i, arg_0, 2147483647i))), min(firstLeadingBit(vec3<i32>(2147483647i, arg_0, -2147483647i)), ~vec3<i32>(arg_0, 0i, arg_0)), var_1.b.x), (reverseBits(vec3<i32>(u_input.b, global1.x, u_input.b)) ^ vec3<i32>(global1.x, u_input.a, u_input.b)) << (~(~vec3<u32>(46001u, arg_1.x, arg_2.x)) % vec3<u32>(32u))), -1i, -firstTrailingBit((-1i & arg_0) ^ 0i));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = true;
    global3 = array<Struct_1, 25>();
    global0 = array<vec4<i32>, 10>();
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + arg_3.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-804f, 259f, false))))), arg_3.x), vec2<bool>(false, true));
    var var_2 = select(select(!select(vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x), select(vec4<bool>(true, var_1.b.x, var_1.b.x, false), vec4<bool>(false, var_1.b.x, false, false), false), select(vec4<bool>(true, var_1.b.x, true, true), vec4<bool>(false, true, var_1.b.x, var_1.b.x), false)), vec4<bool>(all(vec3<bool>(true, true, true)) && true, true, var_1.b.x, any(var_1.b)), var_1.b.x), !vec4<bool>(true && var_1.b.x, arg_2.x == ~u_input.b, true, true), !select(vec4<bool>(!var_1.b.x, arg_3.x == arg_3.x, var_1.b.x, var_1.b.x || false), vec4<bool>(var_1.b.x, true, var_1.a.x > 447f, true), true));
    return _wgslsmith_dot_vec3_u32(select(vec3<u32>(~_wgslsmith_mult_u32(48026u, 9821u), 4294967295u, 0u), ~vec3<u32>(~6399u, ~4294967295u, select(19799u, 4294967295u, var_2.x)), all(vec2<bool>(true, var_2.x)) && any(vec2<bool>(var_2.x, var_2.x))), ~(~select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), var_2.xxz)));
}

fn func_1(arg_0: vec3<bool>) -> vec3<i32> {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(1u, ~countOneBits(12712u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 10610u, 1u), vec4<u32>(4294967295u, 4294967295u, 47562u, 4294967295u)), _wgslsmith_mult_u32(1u, 48801u)), countOneBits(vec2<u32>(4294967295u, 1u))) % 32u), ~func_4(func_2(~global1.x, vec4<u32>(34446u, 16865u, 89538u, 19018u), vec2<u32>(1u, 1u)), _wgslsmith_div_i32(1i, 13557i), (vec3<i32>(global1.x, global1.x, global1.x) ^ vec3<i32>(global1.x, 2147483647i, 0i)) & countOneBits(vec3<i32>(u_input.a, -2443i, -13951i)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1687f, -170f, 342f)))), ~4294967295u, ~(~1u));
    var_0 = _wgslsmith_mult_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(1u, _wgslsmith_sub_u32(var_0.x, var_0.x), var_0.x, 1u))), vec4<u32>(_wgslsmith_sub_u32(var_0.x & var_0.x, 1u), ~var_0.x ^ 22902u, ~var_0.x, firstTrailingBit(var_0.x) | ~var_0.x) >> ((vec4<u32>(~var_0.x, ~1u, var_0.x, var_0.x ^ 48264u) >> (vec4<u32>(var_0.x, 64470u, 61946u | var_0.x, func_4(Struct_3(vec3<i32>(1i, 8729i, 1i), 25887i, u_input.b), 2147483647i, vec3<i32>(-1i, -28523i, -24555i), vec3<f32>(-1620f, 1000f, -1000f))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1254f - 438f), 338f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, 1611f)), _wgslsmith_f_op_f32(f32(-1f) * -282f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-184f, 132f)))) - _wgslsmith_f_op_f32(round(-667f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(191f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1200f, 684f)) - _wgslsmith_f_op_f32(320f * 1352f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(780f)))))));
    let var_2 = Struct_4(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(~var_0.xyz), var_0.wzy), countOneBits(vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 51575u, var_0.x), vec4<u32>(var_0.x, 51796u, 1u, var_0.x)), 41869u))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(floor(1047f)), _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)), vec2<bool>(true, true)), Struct_1(14017i, !select(!arg_0, vec3<bool>(arg_0.x, true, false), arg_0.x), global0[_wgslsmith_index_u32(reverseBits(~var_0.x), 10u)], true));
    let var_3 = Struct_3(~max(_wgslsmith_clamp_vec3_i32(var_2.c.c.zxy, vec3<i32>(-10291i, u_input.a, 17307i), vec3<i32>(global1.x, 60124i, -2147483647i)) & vec3<i32>(1i, u_input.b, -26483i), var_2.c.c.xzy), _wgslsmith_mult_i32(~select(1i, countOneBits(var_2.c.a), true), -(~var_2.c.a ^ -1i)), i32(-1i) * -select(1i, _wgslsmith_div_i32(1i, -2147483647i), false));
    return vec3<i32>(-48830i, _wgslsmith_mod_i32(-1384i, -1i), countOneBits(~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_add_vec3_i32(select(_wgslsmith_clamp_vec3_i32(max(~vec3<i32>(-22773i, -39694i, global1.x), vec3<i32>(u_input.a, 1i, u_input.b)), vec3<i32>(global1.x & -2147483647i, u_input.a, -2147483647i), firstLeadingBit(firstTrailingBit(vec3<i32>(0i, 16511i, 2147483647i)))), select(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(47965i, -2147483647i, global1.x)), ~vec3<i32>(global1.x, 0i, u_input.a)), ~firstLeadingBit(vec3<i32>(1i, u_input.b, -18662i)), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), _wgslsmith_add_vec3_i32(((vec3<i32>(-488i, 2194i, global1.x) | vec3<i32>(25697i, 10874i, 11417i)) | func_1(vec3<bool>(true, true, false))) >> (select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 46528u, 47796u), vec3<u32>(74354u, 4294967295u, 13049u)), select(vec3<u32>(4294967295u, 1u, 273u), vec3<u32>(1u, 1u, 0u), false), vec3<bool>(true, false, false)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(global1.x, global1.x, abs(u_input.b)), -(~vec3<i32>(1i, 8308i, global1.x)))));
    global1 = -firstTrailingBit(vec3<i32>(u_input.a, global1.x, ~34276i)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u));
    global2 = array<Struct_1, 23>();
    global1 = ~select(~abs(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 1i, u_input.a), vec3<i32>(50414i, u_input.b, -4785i))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i) * -vec3<i32>(global1.x, 30029i, -2147483647i)), vec3<bool>(false, select(true, any(vec3<bool>(false, false, true)), u_input.b <= global1.x), true));
    global1 = -_wgslsmith_mult_vec3_i32(vec3<i32>(~u_input.b, global1.x, 5770i), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(global1.x, -21675i, 1i) >> (vec3<u32>(40059u, 1u, 43302u) % vec3<u32>(32u))), ~vec3<i32>(28589i, -11691i, -2147483647i)));
    global3 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 0u)), vec4<u32>(52709u, 50547u, 16324u, 6812u)), ~firstTrailingBit(0u), 1u));
}

