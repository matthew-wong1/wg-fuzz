struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_1(vec2<f32>(-551f, 458f), vec4<bool>(true, true, false, true), vec2<f32>(-1280f, 514f), vec3<bool>(true, true, false)), -1i, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<i32>(-35485i, 2147483647i, -78629i, -10022i), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec2<f32>(310f, 109f), vec4<bool>(false, false, true, false), vec2<f32>(-106f, 1177f), vec3<bool>(false, false, true)), i32(-2147483648), vec2<i32>(1i, 20165i), vec4<i32>(2147483647i, -5878i, 7034i, 1i), vec4<bool>(false, true, true, false)), Struct_3(Struct_1(vec2<f32>(1071f, 1000f), vec4<bool>(false, true, true, true), vec2<f32>(497f, 1371f), vec3<bool>(true, true, false)), 29084i, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, 34656i, 33441i), vec4<bool>(false, false, true, false)), Struct_3(Struct_1(vec2<f32>(826f, 300f), vec4<bool>(true, false, false, false), vec2<f32>(1899f, -805f), vec3<bool>(true, true, true)), -27653i, vec2<i32>(2147483647i, 7619i), vec4<i32>(-9039i, 0i, -58392i, 12538i), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec2<f32>(-511f, -550f), vec4<bool>(false, true, false, false), vec2<f32>(330f, 430f), vec3<bool>(true, false, true)), -1i, vec2<i32>(0i, -38106i), vec4<i32>(-1i, 1i, 0i, i32(-2147483648)), vec4<bool>(true, false, false, false)), Struct_3(Struct_1(vec2<f32>(-404f, 575f), vec4<bool>(false, false, true, false), vec2<f32>(-184f, 100f), vec3<bool>(true, false, true)), i32(-2147483648), vec2<i32>(2147483647i, -44794i), vec4<i32>(i32(-2147483648), -1277i, 2147483647i, 33283i), vec4<bool>(true, true, true, false)), Struct_3(Struct_1(vec2<f32>(-1000f, -170f), vec4<bool>(false, true, false, false), vec2<f32>(-710f, 920f), vec3<bool>(true, false, false)), 10055i, vec2<i32>(9596i, -21025i), vec4<i32>(-83923i, -27575i, 2147483647i, 0i), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec2<f32>(1765f, -752f), vec4<bool>(false, false, true, true), vec2<f32>(1775f, -928f), vec3<bool>(false, false, false)), -32472i, vec2<i32>(11695i, -1i), vec4<i32>(79207i, 0i, 196i, 0i), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec2<f32>(-1186f, -325f), vec4<bool>(false, false, false, true), vec2<f32>(-1834f, 737f), vec3<bool>(true, true, true)), -19087i, vec2<i32>(-29967i, -39115i), vec4<i32>(-45969i, -35896i, 2147483647i, 1i), vec4<bool>(true, false, false, true)), Struct_3(Struct_1(vec2<f32>(2010f, -1505f), vec4<bool>(true, true, false, false), vec2<f32>(785f, -1000f), vec3<bool>(false, false, true)), 2147483647i, vec2<i32>(2147483647i, 1i), vec4<i32>(0i, 1i, 2147483647i, -1i), vec4<bool>(true, false, true, false)), Struct_3(Struct_1(vec2<f32>(-426f, -223f), vec4<bool>(false, true, true, true), vec2<f32>(116f, -624f), vec3<bool>(true, true, false)), 34013i, vec2<i32>(0i, -45502i), vec4<i32>(0i, 6098i, 24562i, -1i), vec4<bool>(false, false, true, true)), Struct_3(Struct_1(vec2<f32>(-640f, 2011f), vec4<bool>(false, true, false, true), vec2<f32>(-562f, 839f), vec3<bool>(false, true, false)), -25763i, vec2<i32>(-30533i, -1i), vec4<i32>(-1i, 11491i, 0i, 1i), vec4<bool>(false, false, false, true)), Struct_3(Struct_1(vec2<f32>(-133f, -557f), vec4<bool>(false, true, true, true), vec2<f32>(1963f, 1033f), vec3<bool>(false, true, false)), -24731i, vec2<i32>(2147483647i, -70137i), vec4<i32>(0i, -1i, i32(-2147483648), 10489i), vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec2<f32>(1000f, 362f), vec4<bool>(true, true, true, false), vec2<f32>(1000f, -840f), vec3<bool>(false, false, false)), -2550i, vec2<i32>(1i, 0i), vec4<i32>(1993i, 1i, -1i, -10682i), vec4<bool>(true, true, true, false)), Struct_3(Struct_1(vec2<f32>(-249f, -1577f), vec4<bool>(false, false, false, true), vec2<f32>(-1369f, 1688f), vec3<bool>(true, true, false)), 2147483647i, vec2<i32>(13102i, 0i), vec4<i32>(59091i, 14427i, 13876i, 0i), vec4<bool>(false, false, false, false)), Struct_3(Struct_1(vec2<f32>(-166f, -842f), vec4<bool>(true, false, true, false), vec2<f32>(-1323f, 1583f), vec3<bool>(false, false, true)), 2147483647i, vec2<i32>(2147483647i, -30224i), vec4<i32>(0i, i32(-2147483648), 1i, 30281i), vec4<bool>(true, true, true, false)), Struct_3(Struct_1(vec2<f32>(713f, -977f), vec4<bool>(false, true, false, false), vec2<f32>(-375f, -669f), vec3<bool>(true, false, true)), -1i, vec2<i32>(1i, 2147483647i), vec4<i32>(61777i, -614i, -9010i, 1i), vec4<bool>(false, true, false, false)), Struct_3(Struct_1(vec2<f32>(849f, 255f), vec4<bool>(true, false, true, true), vec2<f32>(1521f, 1657f), vec3<bool>(true, true, true)), 0i, vec2<i32>(1i, 0i), vec4<i32>(-29059i, 1i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_3(Struct_1(vec2<f32>(836f, 892f), vec4<bool>(false, false, false, false), vec2<f32>(857f, 815f), vec3<bool>(false, true, false)), 1i, vec2<i32>(i32(-2147483648), -1i), vec4<i32>(1096i, i32(-2147483648), i32(-2147483648), 0i), vec4<bool>(true, false, false, false)), Struct_3(Struct_1(vec2<f32>(-639f, -150f), vec4<bool>(false, true, true, false), vec2<f32>(1017f, -1062f), vec3<bool>(false, false, false)), 0i, vec2<i32>(5534i, 1i), vec4<i32>(0i, 42517i, 46650i, 4127i), vec4<bool>(true, false, true, false)), Struct_3(Struct_1(vec2<f32>(-2418f, 144f), vec4<bool>(true, false, false, false), vec2<f32>(732f, 1999f), vec3<bool>(false, true, false)), -1i, vec2<i32>(1i, -1i), vec4<i32>(i32(-2147483648), -77483i, 0i, -1i), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec2<f32>(123f, 1558f), vec4<bool>(false, false, false, true), vec2<f32>(-226f, 715f), vec3<bool>(true, false, true)), -28968i, vec2<i32>(-31933i, -12346i), vec4<i32>(-9594i, 53309i, 2147483647i, 1i), vec4<bool>(false, true, false, false)), Struct_3(Struct_1(vec2<f32>(2199f, 909f), vec4<bool>(false, false, true, false), vec2<f32>(2005f, -486f), vec3<bool>(false, false, false)), -1i, vec2<i32>(2147483647i, i32(-2147483648)), vec4<i32>(48114i, 1i, 8635i, i32(-2147483648)), vec4<bool>(true, false, true, false)), Struct_3(Struct_1(vec2<f32>(2582f, 1258f), vec4<bool>(true, false, false, false), vec2<f32>(-1309f, 1000f), vec3<bool>(true, true, false)), 1i, vec2<i32>(12505i, 35522i), vec4<i32>(i32(-2147483648), -1i, 14874i, i32(-2147483648)), vec4<bool>(true, true, true, true)), Struct_3(Struct_1(vec2<f32>(1384f, -284f), vec4<bool>(false, true, false, true), vec2<f32>(1183f, -873f), vec3<bool>(false, false, true)), -1i, vec2<i32>(-30714i, 31040i), vec4<i32>(1i, i32(-2147483648), -1i, i32(-2147483648)), vec4<bool>(false, true, false, true)), Struct_3(Struct_1(vec2<f32>(391f, 1248f), vec4<bool>(true, false, true, true), vec2<f32>(257f, -1448f), vec3<bool>(true, true, false)), 0i, vec2<i32>(-18231i, -1i), vec4<i32>(i32(-2147483648), -27544i, 0i, 2147483647i), vec4<bool>(true, true, false, false)), Struct_3(Struct_1(vec2<f32>(1000f, -836f), vec4<bool>(false, true, true, false), vec2<f32>(309f, 615f), vec3<bool>(true, false, true)), 50124i, vec2<i32>(0i, -30589i), vec4<i32>(1474i, 2147483647i, 1i, 10899i), vec4<bool>(true, true, false, true)), Struct_3(Struct_1(vec2<f32>(-388f, 754f), vec4<bool>(false, true, false, true), vec2<f32>(-1279f, 1992f), vec3<bool>(false, true, true)), -18309i, vec2<i32>(0i, 2147483647i), vec4<i32>(3670i, -1i, i32(-2147483648), i32(-2147483648)), vec4<bool>(false, false, false, true)));

var<private> global1: vec4<bool>;

var<private> global2: Struct_4;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_4(global2.a, ~global2.d.x, global2.c, global2.d, ~vec2<i32>(2147483647i, -15599i));
    let var_1 = Struct_4(-758f, global2.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 759f, 834f) * global2.c)))))), _wgslsmith_sub_vec3_u32(global2.d, vec3<u32>(~(~u_input.b.x), _wgslsmith_dot_vec3_u32(global2.d, vec3<u32>(var_0.d.x, global2.d.x, 4294967295u)) | firstTrailingBit(53519u), 0u)), -abs(u_input.c));
    let var_2 = _wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.e.x, firstLeadingBit(-11928i), global2.e.x), countOneBits(vec3<i32>(-34567i, 0i, var_0.e.x ^ max(-12598i, -2147483647i))));
    var var_3 = true;
    let var_4 = true;
    return _wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(70204u, global2.d.x, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 2397u, 4294967295u), var_1.d) << (vec3<u32>(4294967295u, var_0.b, 357u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(reverseBits(var_1.d), var_1.d))), _wgslsmith_div_vec3_u32(~var_1.d, _wgslsmith_clamp_vec3_u32(select(var_1.d, ~vec3<u32>(0u, u_input.d, var_0.d.x), all(vec4<bool>(true, false, true, global1.x))), abs(var_0.d), vec3<u32>(~global2.b, _wgslsmith_dot_vec2_u32(var_1.d.xx, global2.d.zy), u_input.d))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: vec3<i32>) -> Struct_4 {
    global2 = Struct_4(arg_1, 0u, _wgslsmith_f_op_vec3_f32(sign(global2.c)), func_3(), global2.e & vec2<i32>(-2147483647i, ~arg_3.x));
    global2 = Struct_4(-539f, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(40304u, global2.d.x), select(u_input.b.yx, u_input.b.xz, vec2<bool>(global1.x, global1.x))), ~1u, firstTrailingBit(0u)), _wgslsmith_f_op_vec3_f32(global2.c * vec3<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(-1438f + _wgslsmith_f_op_f32(round(global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), global2.d << (vec3<u32>(_wgslsmith_clamp_u32(arg_0, countOneBits(global2.d.x), arg_2), arg_2, 1u) % vec3<u32>(32u)), max(global2.e, -vec2<i32>(_wgslsmith_sub_i32(global2.e.x, -40217i), reverseBits(15629i))));
    let var_0 = Struct_4(_wgslsmith_f_op_f32(930f * _wgslsmith_f_op_f32(select(330f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_1, arg_1, global1.x)))), global1.x))), _wgslsmith_div_u32(max(abs(0u) & max(arg_2, global2.d.x), select(~4294967295u, arg_0, global1.x || global1.x)), 40272u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, 284f, 779f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1419f, global2.a, _wgslsmith_f_op_f32(-965f - 146f)) - _wgslsmith_f_op_vec3_f32(-global2.c))), vec3<u32>(~32138u | arg_2, min(arg_0, global2.b), ~countOneBits(firstLeadingBit(u_input.d))), arg_3.xy);
    global2 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1392f, -381f)), _wgslsmith_f_op_f32(floor(arg_1)), false)))))), arg_0, vec3<f32>(-1972f, var_0.c.x, 1f), func_3(), vec2<i32>(var_0.e.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(global2.e.x, -4329i, -2147483647i, -35387i), _wgslsmith_add_vec4_i32(vec4<i32>(32010i, u_input.c.x, global2.e.x, -1i), vec4<i32>(arg_3.x, 2147483647i, arg_3.x, u_input.a))))));
    global1 = vec4<bool>(true, true, !(!(global1.x & global1.x)) | true, global1.x);
    return var_0;
}

fn func_1() -> vec3<u32> {
    let var_0 = 0u;
    global2 = func_2(_wgslsmith_mult_u32(1u, ~(~global2.b) >> (~(~global2.d.x) % 32u)), -1323f, 0u, -vec3<i32>(abs(0i), -295i, global2.e.x));
    global1 = !(!select(!select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, false, false, global1.x), vec4<bool>(false, global1.x, true, false)), select(!vec4<bool>(global1.x, false, true, false), select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, false, global1.x)), vec4<bool>(true, true, global1.x, false)), vec4<bool>(true, true, false, true)));
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global2.c.zy))) * _wgslsmith_f_op_vec2_f32(sign(func_2(var_0, global2.c.x, 4294967295u, vec3<i32>(-28054i, -2147483647i, u_input.c.x)).c.yy))), global2.c.yy), select(select(vec4<bool>(all(vec4<bool>(global1.x, false, global1.x, global1.x)), !global1.x, false, global1.x), !select(vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(global1.x, false, false, true)), vec4<bool>(global1.x, global1.x, all(vec4<bool>(global1.x, false, false, global1.x)), false | global1.x)), vec4<bool>(false, !global1.x, any(!vec4<bool>(false, global1.x, false, global1.x)), u_input.a < ~u_input.a), false), global2.c.zz, !vec3<bool>(u_input.a > 55465i, 0i >= _wgslsmith_mult_i32(u_input.c.x, -1i), all(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, true, false)))));
    var var_2 = u_input.b;
    return select(~global2.d >> (_wgslsmith_sub_vec3_u32(select(vec3<u32>(var_2.x, 0u, 4294967295u), vec3<u32>(65163u, 0u, 58010u), global1.xyx), ~_wgslsmith_div_vec3_u32(global2.d, u_input.b)) % vec3<u32>(32u)), max(_wgslsmith_mod_vec3_u32(~u_input.b, ~_wgslsmith_div_vec3_u32(global2.d, global2.d)), vec3<u32>(reverseBits(0u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(85507u, global2.d.x)), abs(global2.d.zx)), _wgslsmith_div_u32(~var_0, func_3().x))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 28>();
    global1 = vec4<bool>(global1.x, true, any(!(!(!vec4<bool>(global1.x, false, true, global1.x)))), false);
    global2 = Struct_4(global2.a, ~(~0u), global2.c, reverseBits(vec3<u32>(~(~1u), reverseBits(~u_input.b.x), 22579u)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, global2.e.x), vec2<i32>(u_input.c.x, 4123i)), ~u_input.c), max(~global2.e, global2.e), vec2<i32>(-1i, u_input.c.x)), global2.e & vec2<i32>(1i, _wgslsmith_mod_i32(global2.e.x, -45571i))));
    let var_0 = Struct_4(global2.c.x, u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -2778f, _wgslsmith_f_op_f32(550f * 1069f)) * global2.c) + global2.c), ~(func_1() & vec3<u32>(~40158u, _wgslsmith_add_u32(global2.b, 24042u), 73077u)), vec2<i32>(u_input.a, _wgslsmith_add_i32(~(-26107i), ~u_input.a) ^ 0i));
    global1 = vec4<bool>(any(!(!global1.xzw)), all(vec2<bool>(global1.x, global1.x)), false, !(var_0.e.x != ~u_input.c.x));
    var var_1 = abs(vec4<u32>(~(~u_input.d), countOneBits(reverseBits(4294967295u)), 1u, ~(~33088u))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~select(vec4<u32>(87639u, 1u, var_0.d.x, 1u), vec4<u32>(u_input.d, 460u, 21273u, 4294967295u), global1.x), ~vec4<u32>(4294967295u, global2.d.x, 49965u, global2.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_mod_u32(var_0.b, global2.b), _wgslsmith_mod_u32(1u, var_0.d.x), 0u), vec4<u32>(~4294967295u, u_input.b.x, var_0.d.x & 4294967295u, ~11756u), ~vec4<u32>(var_0.d.x, u_input.d, global2.d.x, 0u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.b, 54614u, u_input.b.x, 4294967295u), ~vec4<u32>(0u, 1u, 8126u, 26962u) & ~vec4<u32>(4959u, 74554u, 4294967295u, global2.d.x)));
    global1 = !vec4<bool>(false, global1.x, select(all(select(vec2<bool>(false, global1.x), global1.zz, false)), any(vec4<bool>(false, global1.x, true, global1.x)), 246f >= _wgslsmith_f_op_f32(abs(var_0.a))), !global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c))), vec3<u32>(0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(0u, var_0.b) | ~var_1.x, ~4294967295u), var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(889f * -1000f), global2.a)));
}

