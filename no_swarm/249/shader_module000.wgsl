struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec2<i32>(1i, -3354i), 4294967295u), true, vec2<f32>(-904f, 503f), vec4<i32>(-13333i, -1i, 0i, 34412i), Struct_1(vec2<i32>(i32(-2147483648), 0i), 4294967295u)), Struct_2(Struct_1(vec2<i32>(2147483647i, -7430i), 1948u), true, vec2<f32>(-1758f, -103f), vec4<i32>(-18990i, 2147483647i, -8152i, 0i), Struct_1(vec2<i32>(0i, -13739i), 0u)), Struct_2(Struct_1(vec2<i32>(10411i, 20165i), 25360u), true, vec2<f32>(-663f, 826f), vec4<i32>(-1i, 2147483647i, 1i, -1i), Struct_1(vec2<i32>(1i, 5796i), 13860u)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 30957i), 0u), true, vec2<f32>(-723f, -631f), vec4<i32>(-53933i, -35608i, -1i, 2147483647i), Struct_1(vec2<i32>(23158i, 27228i), 14409u)), Struct_2(Struct_1(vec2<i32>(2147483647i, -18178i), 1434u), false, vec2<f32>(1046f, -1485f), vec4<i32>(2147483647i, 1i, 5516i, 2147483647i), Struct_1(vec2<i32>(-42430i, 2147483647i), 1u)), Struct_2(Struct_1(vec2<i32>(-9164i, 36657i), 13439u), true, vec2<f32>(-1257f, -652f), vec4<i32>(1578i, 54019i, -12586i, -2045i), Struct_1(vec2<i32>(2147483647i, 69467i), 30263u)));

var<private> global2: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(vec3<i32>(37473i, -20772i, 25389i), vec3<i32>(-1i, i32(-2147483648), 0i), 1i, vec4<bool>(false, true, true, true)), Struct_5(vec3<i32>(-51699i, -67160i, -29148i), vec3<i32>(i32(-2147483648), -24725i, 2147483647i), -11724i, vec4<bool>(false, true, true, true)), Struct_5(vec3<i32>(-17377i, i32(-2147483648), 2147483647i), vec3<i32>(0i, 774i, -1142i), 2147483647i, vec4<bool>(false, true, false, false)), Struct_5(vec3<i32>(1i, i32(-2147483648), 8975i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), 44765i, vec4<bool>(false, true, true, true)), Struct_5(vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(i32(-2147483648), -4040i, 40580i), 39374i, vec4<bool>(false, true, false, true)), Struct_5(vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, 10583i, -1i), 12047i, vec4<bool>(false, true, true, true)), Struct_5(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), 40753i, vec4<bool>(true, false, false, true)), Struct_5(vec3<i32>(-1i, -17870i, 0i), vec3<i32>(0i, -1i, 1i), 2147483647i, vec4<bool>(true, false, true, true)), Struct_5(vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(9427i, i32(-2147483648), i32(-2147483648)), -45688i, vec4<bool>(true, false, true, true)), Struct_5(vec3<i32>(22058i, 16132i, -15872i), vec3<i32>(-56336i, -3127i, i32(-2147483648)), i32(-2147483648), vec4<bool>(false, true, false, false)), Struct_5(vec3<i32>(11505i, -7454i, -40295i), vec3<i32>(-1i, i32(-2147483648), -3896i), 2147483647i, vec4<bool>(false, false, true, false)), Struct_5(vec3<i32>(-30650i, -26987i, 1i), vec3<i32>(10395i, 23136i, 2147483647i), 12087i, vec4<bool>(true, false, true, false)), Struct_5(vec3<i32>(-1i, 1i, 1i), vec3<i32>(1i, 12779i, i32(-2147483648)), i32(-2147483648), vec4<bool>(true, true, true, false)), Struct_5(vec3<i32>(0i, 43740i, 37428i), vec3<i32>(6876i, 2147483647i, 1i), 1i, vec4<bool>(true, false, true, false)), Struct_5(vec3<i32>(1i, 33815i, 45865i), vec3<i32>(-22829i, -7176i, -22102i), 9292i, vec4<bool>(false, true, false, true)), Struct_5(vec3<i32>(1i, i32(-2147483648), 1i), vec3<i32>(36565i, i32(-2147483648), 17229i), 26442i, vec4<bool>(false, false, false, true)), Struct_5(vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(0i, 0i, -43664i), 1i, vec4<bool>(true, true, true, true)), Struct_5(vec3<i32>(0i, -19385i, -7137i), vec3<i32>(1807i, 2147483647i, 1707i), 22873i, vec4<bool>(true, false, true, true)), Struct_5(vec3<i32>(12034i, -1i, -1i), vec3<i32>(0i, 1i, -12660i), 3770i, vec4<bool>(true, false, false, false)), Struct_5(vec3<i32>(2147483647i, i32(-2147483648), -38913i), vec3<i32>(-1i, 23798i, 1i), i32(-2147483648), vec4<bool>(false, true, false, false)), Struct_5(vec3<i32>(36679i, -1i, 0i), vec3<i32>(2147483647i, 2852i, 2147483647i), -44862i, vec4<bool>(true, false, true, true)), Struct_5(vec3<i32>(38834i, 19873i, 1i), vec3<i32>(0i, -11865i, 0i), -10977i, vec4<bool>(true, false, false, false)));

var<private> global3: Struct_5 = Struct_5(vec3<i32>(0i, 14820i, -1i), vec3<i32>(1i, 8571i, 25748i), i32(-2147483648), vec4<bool>(true, false, false, false));

var<private> global4: array<vec3<bool>, 32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    global1 = array<Struct_2, 6>();
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.c, 1u) >> (~u_input.d.xz % vec2<u32>(32u))), u_input.d.xy));
    var var_1 = Struct_1(-(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, -1i, u_input.b), vec4<i32>(16717i, -45416i, global3.b.x, 2147483647i)), _wgslsmith_add_i32(u_input.b, -58392i)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, -56653i), ~vec2<i32>(u_input.b, global3.b.x))), u_input.a);
    let var_2 = Struct_5(firstTrailingBit(vec3<i32>(-1i, global3.b.x, ~9210i)), _wgslsmith_div_vec3_i32(-select(~global3.b, global3.b, !global4[_wgslsmith_index_u32(var_0.x, 32u)]), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.a, vec2<i32>(u_input.b, -52678i), vec2<i32>(var_1.a.x, var_1.a.x)), vec2<i32>(39192i, 33375i)), 0i, -var_1.a.x)), 2147483647i, global3.d);
    var var_3 = 820f;
    return !(_wgslsmith_div_f32(550f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(805f)) + 1432f)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -775f))));
}

fn func_2(arg_0: bool) -> Struct_4 {
    let var_0 = select(~abs(~(~u_input.b)), global3.b.x, false);
    let var_1 = !select(global3.d.wyw, select(select(!global3.d.yzy, global3.d.xyw, !global3.d.xzw), select(vec3<bool>(global3.d.x, false, false), select(vec3<bool>(global3.d.x, arg_0, arg_0), vec3<bool>(false, false, true), global3.d.x), true && global3.d.x), !global3.d.x), vec3<bool>(all(global3.d.wy), true, global3.d.x));
    global4 = array<vec3<bool>, 32>();
    let var_2 = Struct_3(~(-vec4<i32>(~(-12175i), _wgslsmith_add_i32(u_input.b, var_0), ~u_input.b, -global3.b.x)), vec2<bool>(!any(global3.d), func_3() | true), global3.d, ~(~max(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, u_input.a), u_input.d.xyy), ~u_input.d.yxz)));
    let var_3 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, arg_0), global3.d.yz, var_2.c.x), all(vec4<bool>(arg_0, var_1.x, var_1.x, var_1.x))), !select(var_1.xz, var_2.b, global3.d.yw), var_2.c.wx), !var_2.c.yz, vec2<bool>(select(arg_0 | var_2.c.x, true, true), any(vec4<bool>(var_2.c.x, false, arg_0, true))));
    return Struct_4(vec4<i32>(~_wgslsmith_dot_vec4_i32(var_2.a, var_2.a) ^ ~(-var_0), -max(firstLeadingBit(0i), _wgslsmith_div_i32(var_0, u_input.b)), var_2.a.x ^ ~(~(-21650i)), global3.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, 2202f, -878f, 353f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1042f, -148f, 204f, -168f) * vec4<f32>(-1000f, -1116f, 2042f, -1347f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, -1000f, -661f, 359f)), !vec4<bool>(arg_0, false, global3.d.x, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1898f, 562f, -1884f, 607f)))))), vec3<f32>(-1348f, -1000f, -218f));
}

fn func_4(arg_0: Struct_4) -> vec3<f32> {
    let var_0 = ~max(global3.c, arg_0.a.x);
    var var_1 = countOneBits(abs(u_input.d.zz) | vec2<u32>(~38618u ^ ~u_input.c, ~49027u));
    global1 = array<Struct_2, 6>();
    var var_2 = abs(abs(~abs(max(vec4<i32>(arg_0.a.x, var_0, -8366i, -1i), arg_0.a))));
    var_1 = u_input.d.zx ^ vec2<u32>(6867u, var_1.x);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(func_2(global3.d.x).c.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-870f, _wgslsmith_f_op_f32(668f - arg_0.c.x), select(true, false, global3.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1468f), all(!global4[_wgslsmith_index_u32(52061u, 32u)])))));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec4<i32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_4(vec4<i32>(u_input.b, arg_1.a.x, -1i, arg_1.a.x), arg_1.b, vec3<f32>(-1171f, arg_1.c.x, arg_1.b.x)))).x)));
}

fn func_1(arg_0: vec4<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(global3.d.x, Struct_4(arg_0, vec4<f32>(-864f, 916f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -837f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-189f - 662f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1402f, -1215f, -326f), vec3<f32>(460f, -386f, -1034f))), _wgslsmith_f_op_vec3_f32(func_4(func_2(global3.d.x))))), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, arg_0.x, 1i) & -10929i, min(2147483647i, _wgslsmith_mult_i32(1i, u_input.b)), -1i, u_input.b >> (_wgslsmith_clamp_u32(64715u, u_input.c, u_input.c) % 32u)), min(vec4<i32>(u_input.b, -2147483647i, arg_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b), arg_0.yz)), vec4<i32>(-9930i, global3.b.x, -2147483647i, 48784i)))));
    var var_1 = Struct_1((global3.b.zz << (~u_input.d.zw % vec2<u32>(32u))) >> (max(u_input.d.yy, vec2<u32>(0u, abs(25678u))) % vec2<u32>(32u)), 132426u);
    let var_2 = func_3();
    global2 = array<Struct_5, 22>();
    let var_3 = Struct_4(firstLeadingBit(min(-arg_0, arg_0)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-491f, -294f, var_2)) * var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -820f)), 732f), vec3<f32>(-777f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(243f - -277f) + -1000f)), _wgslsmith_f_op_f32(var_0.x + var_0.x)));
    return -global3.a.yz;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: vec4<f32>) -> Struct_3 {
    global4 = array<vec3<bool>, 32>();
    var var_0 = 17661u;
    global1 = array<Struct_2, 6>();
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(arg_1.b.xy, firstTrailingBit(arg_1.a.yz) << (vec2<u32>(u_input.a, u_input.c) % vec2<u32>(32u)), vec2<i32>(-6207i, i32(-1i) * -2147483647i)) & arg_0, abs(_wgslsmith_mod_u32(countOneBits(_wgslsmith_div_u32(1u, 4294967295u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.d.x), vec2<u32>(13856u, u_input.c)))));
    global0 = -16027i;
    return Struct_3(~(-_wgslsmith_add_vec4_i32(max(vec4<i32>(arg_0.x, 58363i, 0i, global3.c), vec4<i32>(u_input.b, 0i, 6308i, 0i)), vec4<i32>(35712i, 0i, arg_0.x, global3.a.x))), !vec2<bool>(func_3(), true), vec4<bool>(true, !(abs(52533u) >= var_1.b), all(!(!vec2<bool>(global3.d.x, arg_1.d.x))), all(vec4<bool>(false, arg_1.d.x, true, true))), firstTrailingBit(u_input.d.xzz));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    let var_0 = func_6(-_wgslsmith_mod_vec2_i32(vec2<i32>(~1i, ~(-1i)), func_1(abs(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)))), global2[_wgslsmith_index_u32(0u, 22u)], vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-235f - 2726f)))), -769f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1972f) + -362f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1652f * 1264f) + -681f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f * 2123f) + -124f))));
    let var_1 = vec2<i32>(u_input.b, func_6(var_0.a.wz, Struct_5(vec3<i32>(global3.c, _wgslsmith_div_i32(51203i, var_0.a.x), var_0.a.x ^ global3.b.x), vec3<i32>(1i, -14063i, _wgslsmith_div_i32(global3.c, var_0.a.x)), _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(u_input.b, 2147483647i)), vec4<bool>(var_0.c.x, all(global3.d), true, true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1593f, -1070f) * _wgslsmith_f_op_f32(max(703f, 974f))), _wgslsmith_f_op_f32(757f * 337f), _wgslsmith_div_f32(-593f, _wgslsmith_div_f32(994f, 346f)), _wgslsmith_f_op_f32(trunc(-961f)))).a.x);
    let var_2 = func_6(vec2<i32>(2534i, _wgslsmith_mod_i32(-2661i, ~global3.c)), Struct_5(firstTrailingBit(firstTrailingBit(var_0.a.wyz)), global3.a, ~31357i, global3.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(300f, -218f, 318f, -2223f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(586f, _wgslsmith_div_f32(484f, 740f), 210f, _wgslsmith_f_op_f32(step(-1358f, 195f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1644f, -725f, 573f, 138f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(194f, -697f, -128f, -508f) * vec4<f32>(-1000f, 213f, -647f, -429f)), global3.d))))).a.x;
    global4 = array<vec3<bool>, 32>();
    global0 = -48003i;
    global2 = array<Struct_5, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~23349i, var_1, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1244f - 1000f) + -1806f), _wgslsmith_f_op_f32(f32(-1f) * -463f))), _wgslsmith_f_op_f32(231f - _wgslsmith_f_op_f32(-820f - 864f))), var_1.x, abs(~_wgslsmith_sub_vec4_u32(select(u_input.d, vec4<u32>(var_0.d.x, var_0.d.x, 1u, var_0.d.x), false), vec4<u32>(var_0.d.x, var_0.d.x, var_0.d.x, 4294967295u))));
}

