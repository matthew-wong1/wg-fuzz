struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(1u, vec4<u32>(1u, 6692u, 1u, 0u)), vec2<f32>(1269f, -1161f)), Struct_2(Struct_1(1u, vec4<u32>(4294967295u, 53174u, 30391u, 8356u)), vec2<f32>(487f, -1000f)), Struct_2(Struct_1(13582u, vec4<u32>(0u, 68451u, 1u, 47128u)), vec2<f32>(1150f, -411f)), Struct_2(Struct_1(49438u, vec4<u32>(46811u, 55048u, 39813u, 11364u)), vec2<f32>(1000f, -1487f)), Struct_2(Struct_1(4294967295u, vec4<u32>(13724u, 1u, 4294967295u, 144209u)), vec2<f32>(-105f, 559f)), Struct_2(Struct_1(1u, vec4<u32>(39676u, 1u, 0u, 49111u)), vec2<f32>(676f, -262f)), Struct_2(Struct_1(4294967295u, vec4<u32>(21697u, 43417u, 4294967295u, 4294967295u)), vec2<f32>(-350f, 320f)), Struct_2(Struct_1(0u, vec4<u32>(4294967295u, 4294967295u, 48936u, 0u)), vec2<f32>(1000f, -244f)), Struct_2(Struct_1(1u, vec4<u32>(4294967295u, 1336u, 29652u, 1u)), vec2<f32>(-840f, -149f)), Struct_2(Struct_1(1u, vec4<u32>(51363u, 4294967295u, 22544u, 80365u)), vec2<f32>(-731f, -230f)), Struct_2(Struct_1(0u, vec4<u32>(27628u, 31640u, 1u, 58704u)), vec2<f32>(1640f, 206f)), Struct_2(Struct_1(1u, vec4<u32>(30777u, 588u, 4294967295u, 58526u)), vec2<f32>(-1592f, 1399f)), Struct_2(Struct_1(1u, vec4<u32>(18027u, 6631u, 0u, 31908u)), vec2<f32>(1168f, 666f)), Struct_2(Struct_1(1u, vec4<u32>(1u, 1414u, 60481u, 384u)), vec2<f32>(158f, 688f)), Struct_2(Struct_1(79592u, vec4<u32>(19834u, 0u, 48407u, 0u)), vec2<f32>(1614f, 988f)), Struct_2(Struct_1(37762u, vec4<u32>(65760u, 0u, 1u, 1u)), vec2<f32>(356f, -220f)), Struct_2(Struct_1(4294967295u, vec4<u32>(48098u, 17749u, 1u, 1u)), vec2<f32>(3416f, 1130f)), Struct_2(Struct_1(1u, vec4<u32>(7553u, 0u, 9407u, 1u)), vec2<f32>(726f, -484f)));

var<private> global1: array<vec4<bool>, 10>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<u32> {
    global0 = array<Struct_2, 18>();
    return ~vec3<u32>(1u, 1u, 1u);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_2.x, 4294967295u), func_3());
    let var_1 = vec2<u32>(arg_0.a.b.x, arg_0.a.b.x);
    global1 = array<vec4<bool>, 10>();
    var var_2 = vec4<u32>(82558u, ~arg_2.x, ~29651u, var_1.x);
    var_2 = _wgslsmith_add_vec4_u32((abs(_wgslsmith_div_vec4_u32(arg_0.a.b, vec4<u32>(0u, 3629u, 28901u, var_0.x))) & (~arg_0.a.b & ~arg_0.a.b)) | arg_0.a.b, arg_0.a.b);
    return Struct_3(arg_0.a, _wgslsmith_mod_vec3_u32(abs(select(firstTrailingBit(vec3<u32>(arg_2.x, arg_0.a.b.x, 0u)), var_2.xzy, select(true, false, true))), ~(~arg_2)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(223f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2407f + _wgslsmith_f_op_f32(ceil(arg_0.b.x))), -575f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(select(20689u, arg_2.a.a, true), ~0u), 4294967295u, countOneBits(_wgslsmith_div_u32(min(arg_1.a.a.b.x, arg_1.e), ~arg_1.b)), 1u), vec4<u32>(arg_2.b.x, arg_1.b, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(48286u, arg_2.b.x, 43293u), ~arg_2.b.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 47986u, arg_2.a.a), max(arg_2.a.b, arg_1.a.a.b)), countOneBits(arg_1.e))));
    global0 = array<Struct_2, 18>();
    let var_1 = arg_1.a.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, -134f), _wgslsmith_f_op_vec2_f32(-arg_0.xz)));
    let var_3 = select(!select(global1[_wgslsmith_index_u32(min(countOneBits(arg_2.b.x), 11052u), 10u)], global1[_wgslsmith_index_u32(115497u, 10u)], global1[_wgslsmith_index_u32(func_3().x, 10u)]), vec4<bool>(any(select(vec4<bool>(false, true, true, true), global1[_wgslsmith_index_u32(arg_1.a.a.a ^ var_0.x, 10u)], 1u == var_0.x)), !(u_input.b.x == firstLeadingBit(u_input.d)), any(vec3<bool>(true, true, all(global1[_wgslsmith_index_u32(var_0.x, 10u)]))), !(u_input.d < (i32(-1i) * -2147483647i))), vec4<bool>(false, u_input.c.x != 2147483647i, true, any(select(!global1[_wgslsmith_index_u32(arg_2.b.x, 10u)], vec4<bool>(true, false, true, true), true))));
    return 4294967295u;
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(4294967295u, arg_2.a.b), ~vec3<u32>(arg_0.x, 8346u, ~arg_0.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(arg_2.b, vec2<f32>(arg_2.b.x, arg_2.b.x))))) + vec2<f32>(_wgslsmith_div_f32(1000f, 1000f), _wgslsmith_f_op_f32(trunc(414f)))))));
    global1 = array<vec4<bool>, 10>();
    let var_1 = func_2(Struct_2(Struct_1(1u ^ max(var_0.b.x, 50503u), vec4<u32>(abs(var_0.b.x), var_0.a.a << (arg_0.x % 32u), var_0.a.b.x, reverseBits(arg_0.x))), arg_2.b), _wgslsmith_f_op_f32(arg_2.b.x - arg_2.b.x), ~max(vec3<u32>(0u, arg_0.x, 4294967295u | var_0.a.b.x), ~vec3<u32>(1u, arg_0.x, 23925u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.c.x, -551f, -264f) + vec4<f32>(var_0.c.x, 403f, var_0.c.x, -470f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.b.x, -555f, arg_2.b.x, -545f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-184f, 169f)), -872f, 851f, -386f)))).a.b;
    var var_2 = Struct_2(arg_2.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + 1336f), -414f));
    let var_3 = global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(min(var_0.b.yx, var_2.a.b.zy), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 52081u), vec2<u32>(4294967295u, arg_2.a.b.x)))), vec2<u32>(4294967295u, ~40515u << (_wgslsmith_div_u32(var_1.x, 0u) % 32u))), func_2(Struct_2(func_2(Struct_2(Struct_1(60131u, arg_2.a.b), var_0.c), -1000f, ~vec3<u32>(1u, 0u, 4294967295u), vec4<f32>(var_2.b.x, 642f, arg_2.b.x, var_0.c.x)).a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(arg_2.b)), _wgslsmith_f_op_vec2_f32(-var_2.b)))), 648f, vec3<u32>(~arg_0.x, abs(23484u) ^ arg_0.x, 0u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, -635f, arg_2.b.x, var_0.c.x))))))).a.a), 10u)];
    return Struct_2(func_2(global0[_wgslsmith_index_u32(~43416u, 18u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(-1294f * var_2.b.x)))), firstLeadingBit(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a.b.x, 26803u, arg_0.x), vec3<u32>(var_2.a.b.x, var_2.a.a, 1u), vec3<u32>(arg_2.a.b.x, 4294967295u, 1u)))), vec4<f32>(443f, _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(trunc(-741f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1661f, arg_2.b.x)))).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(770f, _wgslsmith_f_op_f32(-arg_2.b.x)))));
}

fn func_1(arg_0: Struct_2) -> i32 {
    global0 = array<Struct_2, 18>();
    var var_0 = true;
    var var_1 = func_5(~vec3<u32>(arg_0.a.a, func_4(vec3<f32>(513f, arg_0.b.x, arg_0.b.x), Struct_5(Struct_2(Struct_1(4294967295u, arg_0.a.b), arg_0.b), 44452u, arg_0.b.x, arg_0.b.x, 40104u), func_2(Struct_2(Struct_1(26517u, vec4<u32>(2576u, 20393u, 1u, 734u)), arg_0.b), 1686f, arg_0.a.b.zxz, vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, -1223f)), arg_0.b.x), _wgslsmith_div_u32(~7094u, ~155u)), u_input.d, arg_0, select(_wgslsmith_mod_vec3_i32(select(u_input.c.xxx, vec3<i32>(u_input.d, 1i, 1i), false) & (vec3<i32>(1i, u_input.a, u_input.d) >> (vec3<u32>(9672u, arg_0.a.a, 4294967295u) % vec3<u32>(32u))), reverseBits(_wgslsmith_div_vec3_i32(u_input.b.zyy, vec3<i32>(-54417i, -47263i, -3180i)))), u_input.c.yzx, all(vec3<bool>(select(true, false, true), true, -382f <= arg_0.b.x))));
    var var_2 = true;
    global1 = array<vec4<bool>, 10>();
    return ~(u_input.c.x >> (countOneBits(func_5(~var_1.a.b.zxx, ~24696i, func_5(var_1.a.b.yyz, -2147483647i, arg_0, u_input.c.zxw), u_input.c.zwx).a.b.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 18>();
    global1 = array<vec4<bool>, 10>();
    global1 = array<vec4<bool>, 10>();
    let var_0 = firstTrailingBit(5850i);
    let var_1 = vec3<bool>(true, -56582i < func_1(Struct_2(Struct_1(1u, vec4<u32>(14315u, 35792u, 21729u, 1u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, 940f)))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_2 = Struct_3(Struct_1(_wgslsmith_add_u32(firstTrailingBit(~73223u), 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~(~(~vec3<u32>(0u, 63439u, 14850u)) ^ func_2(func_5(vec3<u32>(58211u, 770u, 66059u), var_0, Struct_2(Struct_1(22940u, vec4<u32>(1u, 1u, 3838u, 43133u)), vec2<f32>(-1904f, -381f)), u_input.b.wxw), _wgslsmith_div_f32(635f, -816f), firstTrailingBit(vec3<u32>(0u, 0u, 61445u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, -524f, 302f, -645f))).a.b.xzz), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-720f, 915f), vec2<f32>(1190f, -1138f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(765f, -422f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(359f, -984f)))))), vec2<f32>(_wgslsmith_div_f32(-1183f, 572f), 537f)));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(var_2.c.x, -422f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x + _wgslsmith_f_op_f32(round(var_2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), func_2(global0[_wgslsmith_index_u32(var_2.b.x, 18u)], -863f, vec3<u32>(19060u, var_2.a.b.x, var_2.b.x), vec4<f32>(-1534f, var_2.c.x, -1000f, 103f)).c.x) - -1566f)));
    global0 = array<Struct_2, 18>();
    let var_4 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_u32(var_4.x, 1u)), select(vec4<i32>(-36465i, 30489i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -5831i, 2147483647i), vec3<i32>(var_0, var_0, var_0)), _wgslsmith_div_i32(~var_0, -1i)), _wgslsmith_mult_vec4_i32(u_input.b, (vec4<i32>(u_input.a, u_input.b.x, 8814i, var_0) >> (var_2.a.b % vec4<u32>(32u))) ^ u_input.b), false), var_3.x);
}

