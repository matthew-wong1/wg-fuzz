struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(30002u, 2147483647i, Struct_2(vec3<bool>(true, true, false), Struct_1(false, vec4<u32>(4294967295u, 0u, 19386u, 4294967295u), 0u, i32(-2147483648)), vec3<f32>(-843f, -757f, -1000f))), Struct_3(29295u, i32(-2147483648), Struct_2(vec3<bool>(false, true, false), Struct_1(true, vec4<u32>(13031u, 1u, 0u, 43766u), 0u, -14118i), vec3<f32>(-1119f, -584f, 1615f))), Struct_3(0u, -18246i, Struct_2(vec3<bool>(false, false, true), Struct_1(true, vec4<u32>(22746u, 27259u, 1u, 0u), 0u, 8969i), vec3<f32>(-117f, -877f, 143f))), Struct_3(4294967295u, 10897i, Struct_2(vec3<bool>(false, false, true), Struct_1(true, vec4<u32>(1u, 1u, 70448u, 28722u), 0u, -20937i), vec3<f32>(-1358f, 437f, 285f))), Struct_3(4294967295u, -1i, Struct_2(vec3<bool>(false, true, true), Struct_1(false, vec4<u32>(1u, 43486u, 26501u, 16554u), 4703u, -1i), vec3<f32>(528f, -617f, -1882f))), Struct_3(0u, -23992i, Struct_2(vec3<bool>(true, false, true), Struct_1(true, vec4<u32>(4436u, 0u, 1u, 1u), 0u, i32(-2147483648)), vec3<f32>(264f, -631f, -423f))), Struct_3(49701u, 16001i, Struct_2(vec3<bool>(false, true, false), Struct_1(true, vec4<u32>(1u, 4294967295u, 4294967295u, 63958u), 4294967295u, 10807i), vec3<f32>(-943f, -917f, -844f))), Struct_3(93959u, -66617i, Struct_2(vec3<bool>(false, true, true), Struct_1(false, vec4<u32>(28358u, 6080u, 0u, 46014u), 0u, -13323i), vec3<f32>(-740f, 524f, 232f))), Struct_3(25165u, -18251i, Struct_2(vec3<bool>(true, true, true), Struct_1(true, vec4<u32>(0u, 40586u, 25611u, 75893u), 1u, -23352i), vec3<f32>(-795f, -1341f, -1035f))), Struct_3(1u, 7860i, Struct_2(vec3<bool>(false, false, false), Struct_1(false, vec4<u32>(83557u, 0u, 0u, 0u), 0u, 13297i), vec3<f32>(1573f, 583f, 1875f))), Struct_3(4294967295u, 1i, Struct_2(vec3<bool>(true, false, false), Struct_1(true, vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), 27267u, i32(-2147483648)), vec3<f32>(-431f, 718f, -1885f))), Struct_3(4294967295u, i32(-2147483648), Struct_2(vec3<bool>(true, true, true), Struct_1(false, vec4<u32>(28559u, 1u, 4294967295u, 4294967295u), 27729u, -2573i), vec3<f32>(537f, -685f, -659f))), Struct_3(56772u, 4157i, Struct_2(vec3<bool>(true, true, true), Struct_1(true, vec4<u32>(82950u, 0u, 5709u, 1u), 964u, -1i), vec3<f32>(-421f, 621f, -631f))), Struct_3(54311u, 34018i, Struct_2(vec3<bool>(false, true, true), Struct_1(true, vec4<u32>(27692u, 15363u, 4294967295u, 1524u), 93927u, 61655i), vec3<f32>(285f, 1020f, -1418f))), Struct_3(0u, -27338i, Struct_2(vec3<bool>(false, false, true), Struct_1(false, vec4<u32>(4294967295u, 0u, 605u, 0u), 114685u, i32(-2147483648)), vec3<f32>(-834f, -1774f, 392f))), Struct_3(4294967295u, -2957i, Struct_2(vec3<bool>(false, true, false), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 46952u, 3355u), 12763u, i32(-2147483648)), vec3<f32>(-784f, 341f, 1343f))), Struct_3(18794u, 8456i, Struct_2(vec3<bool>(false, false, true), Struct_1(false, vec4<u32>(4294967295u, 86486u, 1u, 4294967295u), 3830u, -34297i), vec3<f32>(-1349f, 681f, -174f))), Struct_3(1u, -1i, Struct_2(vec3<bool>(false, true, false), Struct_1(true, vec4<u32>(88384u, 0u, 1u, 0u), 4294967295u, 0i), vec3<f32>(-179f, -1941f, -1052f))), Struct_3(13706u, -1i, Struct_2(vec3<bool>(false, true, false), Struct_1(true, vec4<u32>(4294967295u, 1u, 22387u, 1u), 1u, -39350i), vec3<f32>(-484f, 1169f, 743f))), Struct_3(0u, -9471i, Struct_2(vec3<bool>(false, true, true), Struct_1(false, vec4<u32>(0u, 1u, 4294967295u, 5304u), 1u, 2147483647i), vec3<f32>(-1000f, 484f, -766f))), Struct_3(45016u, 10894i, Struct_2(vec3<bool>(true, true, false), Struct_1(false, vec4<u32>(56813u, 4294967295u, 1612u, 1u), 2338u, 0i), vec3<f32>(-1446f, -1005f, -537f))), Struct_3(0u, 1i, Struct_2(vec3<bool>(true, false, true), Struct_1(true, vec4<u32>(19216u, 23501u, 41752u, 1u), 1u, 0i), vec3<f32>(-642f, -1747f, 1000f))), Struct_3(37302u, 8697i, Struct_2(vec3<bool>(true, true, false), Struct_1(true, vec4<u32>(4294967295u, 10258u, 2399u, 1u), 1u, i32(-2147483648)), vec3<f32>(570f, -2350f, -302f))), Struct_3(8663u, -1i, Struct_2(vec3<bool>(true, false, false), Struct_1(false, vec4<u32>(14912u, 0u, 1u, 0u), 4294967295u, -33246i), vec3<f32>(-406f, -973f, 1589f))));

var<private> global1: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(5160u, 0u, 1u), vec3<u32>(4294967295u, 35140u, 4294967295u), vec3<u32>(4565u, 0u, 17473u), vec3<u32>(40298u, 4294967295u, 104583u), vec3<u32>(16470u, 67613u, 0u), vec3<u32>(0u, 0u, 22563u), vec3<u32>(45027u, 56335u, 86971u), vec3<u32>(4294967295u, 10478u, 0u), vec3<u32>(4294967295u, 24973u, 41804u), vec3<u32>(1u, 42984u, 2508u), vec3<u32>(41740u, 4283u, 1u), vec3<u32>(4294967295u, 3652u, 4901u), vec3<u32>(50084u, 4294967295u, 4294967295u), vec3<u32>(1u, 101083u, 1u), vec3<u32>(10503u, 10310u, 20333u), vec3<u32>(4294967295u, 4294967295u, 26624u), vec3<u32>(8190u, 32568u, 21129u), vec3<u32>(4294967295u, 16362u, 1u), vec3<u32>(0u, 93856u, 0u), vec3<u32>(20969u, 0u, 4294967295u), vec3<u32>(1u, 42711u, 0u), vec3<u32>(16538u, 1u, 20745u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = Struct_4(~arg_3.c.b.b.zw, arg_0.c.c.x);
    let var_1 = Struct_4(vec2<u32>(~9810u, 14841u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(822f)) + var_0.b))));
    var var_2 = arg_3.c;
    var_2 = arg_0.c;
    global1 = array<vec3<u32>, 22>();
    return _wgslsmith_sub_vec3_i32(-(-_wgslsmith_sub_vec3_i32(vec3<i32>(-11832i, arg_0.b, 19131i), vec3<i32>(-14879i, arg_0.b, var_2.b.d)) << (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(select(0u, 0u, true), 22u)], vec3<u32>(1u, arg_0.c.b.b.x, var_0.a.x)), 22u)] % vec3<u32>(32u))), vec3<i32>(var_2.b.d, -52076i, 0i));
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    var var_0 = Struct_2(vec3<bool>(min(1u, _wgslsmith_add_u32(u_input.a, arg_0.b.x)) <= 119116u, true, (arg_0.d != arg_0.d) & false), arg_0, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))));
    var var_1 = arg_0.b;
    var var_2 = _wgslsmith_sub_vec3_i32(~(~func_3(Struct_3(0u, -32471i, Struct_2(vec3<bool>(var_0.a.x, true, arg_0.a), Struct_1(true, vec4<u32>(var_0.b.c, 4827u, 30775u, var_1.x), u_input.a, -28279i), var_0.c)), vec3<bool>(arg_0.a, false, arg_0.a), !vec4<bool>(false, false, var_0.a.x, false), Struct_3(var_1.x, arg_0.d, Struct_2(vec3<bool>(false, false, false), arg_0, var_0.c)))), vec3<i32>(-95i, firstTrailingBit(abs(var_0.b.d)), _wgslsmith_mod_i32(-28936i, -39987i)));
    var_1 = var_0.b.b;
    var var_3 = var_0.c.xz;
    return Struct_4(~(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_0.b.x), vec2<u32>(1u, var_0.b.b.x)), select(arg_0.b.zx, var_0.b.b.yx, true))), _wgslsmith_f_op_f32(1749f * 764f));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec3<u32>) -> vec2<f32> {
    var var_0 = Struct_2(vec3<bool>(true, true, false), Struct_1(true, ~(~vec4<u32>(0u, arg_0.a.x, arg_0.a.x, u_input.b) >> (min(vec4<u32>(arg_0.a.x, 32206u, u_input.b, 5105u), vec4<u32>(arg_2.x, 0u, arg_0.a.x, u_input.a)) % vec4<u32>(32u))), ~arg_2.x, reverseBits(1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b, -1893f, 932f), vec3<f32>(arg_0.b, arg_0.b, arg_0.b))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, -416f)))))));
    let var_1 = vec4<i32>(1i, arg_1.x, 1i, -2147483647i);
    let var_2 = Struct_1(true, _wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(u_input.a, u_input.a, 5862u, 101571u)) << (~(var_0.b.b ^ var_0.b.b) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(var_0.b.b, var_0.b.b)), 0u, _wgslsmith_mult_i32(~(-1i), -23981i));
    var_0 = Struct_2(var_0.a, var_0.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.x, 1000f, var_0.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c + var_0.c)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-407f, arg_0.b, 1000f) + var_0.c)))), !(!(arg_0.a.x != var_2.b.x)))));
    var var_3 = Struct_4(select(vec2<u32>(4294967295u, 1u), var_2.b.wx, any(select(!vec4<bool>(var_0.b.a, false, false, true), select(vec4<bool>(var_0.b.a, true, true, false), vec4<bool>(true, false, true, var_2.a), false), var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1647f - var_0.c.x) + arg_0.b)))));
    return vec2<f32>(var_3.b, _wgslsmith_f_op_f32(f32(-1f) * -2423f));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_3) -> vec4<u32> {
    global1 = array<vec3<u32>, 22>();
    global1 = array<vec3<u32>, 22>();
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(func_2(arg_0.b), max(-_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(arg_1, vec2<i32>(arg_3.b, arg_3.c.b.d)), _wgslsmith_mult_vec2_i32(arg_1, vec2<i32>(66998i, arg_3.b))), vec2<i32>(firstLeadingBit(_wgslsmith_div_i32(arg_3.b, 1i)), 2147483647i)), global1[_wgslsmith_index_u32(arg_0.b.c, 22u)]));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_3.c.c)) * _wgslsmith_f_op_vec3_f32(arg_3.c.c - _wgslsmith_f_op_vec3_f32(ceil(arg_0.c)))));
    let var_2 = vec4<i32>(arg_1.x, -2147483647i, -4306i, -arg_3.c.b.d);
    return ~vec4<u32>(abs(0u), ~(~_wgslsmith_dot_vec4_u32(arg_3.c.b.b, arg_3.c.b.b)), _wgslsmith_mod_u32(0u, func_2(Struct_1(arg_0.a.x, arg_3.c.b.b, 7724u, arg_1.x)).a.x), _wgslsmith_mod_u32(~0u, arg_3.c.b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), !any(vec2<bool>(true, true))), Struct_1(all(vec3<bool>(true, true, true)), countOneBits(firstLeadingBit(func_1(Struct_2(vec3<bool>(true, false, false), Struct_1(false, vec4<u32>(u_input.b, 58905u, 23098u, 26185u), u_input.a, -47690i), vec3<f32>(1849f, 1000f, -2076f)), vec2<i32>(39348i, 46321i), -1000f, global0[_wgslsmith_index_u32(u_input.a, 24u)]))), ~_wgslsmith_add_u32(u_input.b, u_input.a), select(-59654i, 74862i, any(vec4<bool>(false, false, true, true)))), vec3<f32>(-939f, _wgslsmith_f_op_f32(-1f), -1563f));
    var var_1 = _wgslsmith_clamp_u32(1u, ~(~13573u), u_input.a) << (func_1(var_0, vec2<i32>(var_0.b.d, var_0.b.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.x)))), Struct_3(countOneBits(reverseBits(9253u)), 1i, var_0)).x % 32u);
    global0 = array<Struct_3, 24>();
    let var_2 = 445f;
    var var_3 = var_0.a.x;
    var_1 = var_0.b.c;
    let var_4 = u_input.b;
    var var_5 = global0[_wgslsmith_index_u32(50713u, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(_wgslsmith_mod_i32(var_5.b, 0i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.b.d, -1i), vec2<i32>(var_0.b.d, var_5.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -8255i), vec2<i32>(var_5.c.b.d, 13233i))), var_5.b), _wgslsmith_mult_vec3_i32(abs(-vec3<i32>(var_0.b.d, var_5.c.b.d, var_5.c.b.d)), min(-select(vec3<i32>(-28246i, -1i, 0i), vec3<i32>(var_0.b.d, var_0.b.d, var_0.b.d), false), vec3<i32>(-61089i, 276i, var_5.c.b.d))), var_0.b.b.wyw, _wgslsmith_f_op_f32(-var_0.c.x));
}

