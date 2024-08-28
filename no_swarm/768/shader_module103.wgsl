struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: vec2<f32>,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<f32>(-675f, 199f), 214f, vec4<u32>(1u, 58427u, 23933u, 4294967295u), vec2<i32>(0i, 51994i), vec2<u32>(6503u, 33438u)), Struct_1(vec2<f32>(-1016f, 510f), -514f, vec4<u32>(1u, 4294967295u, 4689u, 37547u), vec2<i32>(-1i, 1178i), vec2<u32>(27325u, 22418u)), Struct_1(vec2<f32>(224f, -464f), -191f, vec4<u32>(1u, 0u, 0u, 66099u), vec2<i32>(0i, 19609i), vec2<u32>(53690u, 49631u)), Struct_1(vec2<f32>(-1723f, 1000f), 752f, vec4<u32>(22649u, 0u, 0u, 1u), vec2<i32>(2147483647i, 64294i), vec2<u32>(1u, 4294967295u)), Struct_1(vec2<f32>(-260f, 647f), -1180f, vec4<u32>(0u, 45979u, 32195u, 64478u), vec2<i32>(1i, 34490i), vec2<u32>(123u, 4341u)), Struct_1(vec2<f32>(-1758f, 995f), 1937f, vec4<u32>(7794u, 6052u, 4294967295u, 109388u), vec2<i32>(0i, 29341i), vec2<u32>(17087u, 1u)), Struct_1(vec2<f32>(-1055f, -1516f), -500f, vec4<u32>(0u, 48629u, 0u, 21910u), vec2<i32>(12144i, -42536i), vec2<u32>(27297u, 55580u)), Struct_1(vec2<f32>(-119f, 409f), 820f, vec4<u32>(14044u, 1u, 0u, 4294967295u), vec2<i32>(2147483647i, -1i), vec2<u32>(1604u, 0u)), Struct_1(vec2<f32>(827f, 1173f), 994f, vec4<u32>(38540u, 90386u, 0u, 0u), vec2<i32>(i32(-2147483648), -1i), vec2<u32>(65116u, 3906u)), Struct_1(vec2<f32>(-365f, -583f), -392f, vec4<u32>(1u, 0u, 32687u, 9934u), vec2<i32>(-43336i, 49491i), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<f32>(1349f, 1574f), 1365f, vec4<u32>(1u, 0u, 43074u, 1u), vec2<i32>(i32(-2147483648), -1i), vec2<u32>(60076u, 3980u)), Struct_1(vec2<f32>(-207f, 484f), -880f, vec4<u32>(130491u, 19743u, 1u, 45790u), vec2<i32>(-87948i, -1i), vec2<u32>(65337u, 9921u)), Struct_1(vec2<f32>(-972f, -942f), -2448f, vec4<u32>(72208u, 0u, 39158u, 0u), vec2<i32>(44134i, i32(-2147483648)), vec2<u32>(26441u, 24226u)), Struct_1(vec2<f32>(319f, 373f), -1434f, vec4<u32>(3059u, 19047u, 1u, 1u), vec2<i32>(-55929i, 2147483647i), vec2<u32>(71107u, 1u)), Struct_1(vec2<f32>(-232f, -632f), 1240f, vec4<u32>(0u, 44u, 49110u, 1u), vec2<i32>(1i, 10220i), vec2<u32>(38764u, 4294967295u)), Struct_1(vec2<f32>(-921f, -2181f), 1000f, vec4<u32>(96486u, 4294967295u, 0u, 27867u), vec2<i32>(42949i, 75723i), vec2<u32>(1u, 0u)), Struct_1(vec2<f32>(430f, 605f), 1875f, vec4<u32>(60025u, 4294967295u, 4294967295u, 0u), vec2<i32>(2147483647i, -17969i), vec2<u32>(68087u, 11602u)), Struct_1(vec2<f32>(-1000f, 804f), 794f, vec4<u32>(1u, 0u, 4294967295u, 1u), vec2<i32>(1i, -1i), vec2<u32>(79284u, 0u)), Struct_1(vec2<f32>(878f, -323f), -1000f, vec4<u32>(22860u, 1u, 1u, 61877u), vec2<i32>(0i, 2147483647i), vec2<u32>(1u, 4988u)), Struct_1(vec2<f32>(338f, -351f), 1467f, vec4<u32>(5567u, 4050u, 1u, 1u), vec2<i32>(30751i, -1967i), vec2<u32>(1u, 11420u)), Struct_1(vec2<f32>(505f, -306f), -751f, vec4<u32>(1u, 23113u, 50195u, 4294967295u), vec2<i32>(-32822i, 1i), vec2<u32>(44826u, 0u)), Struct_1(vec2<f32>(324f, 1445f), 378f, vec4<u32>(46654u, 0u, 62423u, 0u), vec2<i32>(-1i, 58829i), vec2<u32>(17519u, 1u)), Struct_1(vec2<f32>(890f, -303f), -1408f, vec4<u32>(1u, 19478u, 55056u, 1u), vec2<i32>(-46541i, 2147483647i), vec2<u32>(4294967295u, 59086u)), Struct_1(vec2<f32>(-101f, 1653f), 503f, vec4<u32>(26227u, 1u, 10496u, 6882u), vec2<i32>(1i, -37729i), vec2<u32>(4294967295u, 38974u)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4) -> vec4<u32> {
    var var_0 = ~vec4<u32>(~_wgslsmith_add_u32(firstTrailingBit(4757u), 1u), 1u, ~arg_0.x, u_input.c);
    var var_1 = arg_1;
    let var_2 = arg_1;
    let var_3 = vec3<bool>(true, global1.x, !global1.x | !all(global1.yx));
    let var_4 = ~(-vec3<i32>(var_1.a.a.b.d.x, 15799i, -1i));
    return ~vec4<u32>(~0u, var_2.b.x, ~1u, var_0.x & 1u);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_3 {
    global2 = array<Struct_1, 24>();
    let var_0 = min(vec4<i32>(13187i | abs(u_input.a.x), -_wgslsmith_dot_vec3_i32(countOneBits(u_input.b), global0.c >> (vec3<u32>(u_input.c, 77504u, arg_3.c.x) % vec3<u32>(32u))), countOneBits(firstTrailingBit(-4565i)), -1i), vec4<i32>(u_input.b.x, ~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global0.c.x), arg_3.d, vec2<i32>(1i, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, -47877i), global0.e)), ~arg_3.d.x, firstTrailingBit(abs(max(u_input.b.x, 2147483647i)))));
    var var_1 = -vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_mod_i32(14127i, -12853i), global0.c.x), reverseBits(31010i), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, 35717i), max(~(-25056i), i32(-1i) * -2147483647i)));
    var var_2 = select(~(i32(-1i) * -global0.c.x), u_input.a.x, any(!vec4<bool>(arg_0.x, true, arg_1.x, global1.x)) & !any(arg_2));
    global2 = array<Struct_1, 24>();
    return Struct_3(Struct_2(global0.a, Struct_1(arg_3.a, _wgslsmith_f_op_f32(-arg_3.b), vec4<u32>(arg_3.c.x, ~u_input.c, _wgslsmith_clamp_u32(4294967295u, global0.b.c.x, arg_3.c.x), _wgslsmith_add_u32(15502u, 8406u)), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(global0.c.x, -28932i)), -var_1.xx), ~(vec2<u32>(u_input.c, arg_3.c.x) << (vec2<u32>(74641u, u_input.c) % vec2<u32>(32u)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-38241i, -1i, -30147i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_0.x), global0.c), var_0.xyw), firstTrailingBit(~vec3<i32>(arg_3.d.x, global0.c.x, var_0.x)), -u_input.b), min(vec2<u32>(u_input.c, ~42853u), vec2<u32>(~74649u, ~arg_3.e.x)), global0.b.d), 682f, _wgslsmith_dot_vec3_u32(~global0.b.c.xzz, vec3<u32>(~(~arg_3.e.x), ~func_2(global0.b.c, Struct_4(Struct_3(Struct_2(global0.a, arg_3, var_0.yzy, vec2<u32>(1u, 71931u), vec2<i32>(var_1.x, var_1.x)), -114f, u_input.c, vec3<f32>(-1465f, arg_3.b, 479f)), global0.b.c)).x, ~arg_3.c.x)), _wgslsmith_f_op_vec3_f32(global0.a.zxy + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(679f, -1490f, -864f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b, global0.a.x, -167f)), vec3<f32>(1000f, global0.a.x, 888f)))));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.x) + global0.a.x), 750f))), global0.a.x, global0.b.c, ~firstTrailingBit(global0.b.d), reverseBits(vec2<u32>(u_input.c, global0.d.x)));
    global2 = array<Struct_1, 24>();
    let var_1 = Struct_4(func_3(vec2<bool>(true, true), vec3<bool>(any(global1.xy), ~global0.b.d.x >= -2147483647i, any(!vec2<bool>(global1.x, false))), !select(select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, true, global1.x), vec3<bool>(true, true, global1.x)), vec3<bool>(false, true, true), vec3<bool>(true, arg_0, global1.x)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) - _wgslsmith_f_op_vec2_f32(-var_0.a)), 1820f, func_2(global0.b.c, Struct_4(Struct_3(Struct_2(vec4<f32>(global0.b.a.x, var_0.b, 1123f, 139f), global2[_wgslsmith_index_u32(global0.b.c.x, 24u)], vec3<i32>(47066i, 1i, var_0.d.x), vec2<u32>(9554u, 51994u), vec2<i32>(u_input.a.x, 1i)), 218f, 152490u, vec3<f32>(-696f, global0.b.a.x, global0.b.b)), global0.b.c)), vec2<i32>(-1i) * -var_0.d, vec2<u32>(~0u, ~var_0.c.x))), ~vec4<u32>(~var_0.e.x, 0u, max(~var_0.c.x, var_0.e.x), var_0.e.x));
    global1 = !select(select(!(!vec3<bool>(false, global1.x, global1.x)), !select(vec3<bool>(global1.x, arg_0, false), vec3<bool>(true, arg_0, true), arg_0), select(select(vec3<bool>(global1.x, arg_0, global1.x), vec3<bool>(true, true, false), vec3<bool>(global1.x, arg_0, global1.x)), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(global1.x, global1.x, global1.x), false), select(vec3<bool>(arg_0, true, false), vec3<bool>(global1.x, global1.x, arg_0), true))), select(vec3<bool>(all(vec4<bool>(true, false, false, false)), select(global1.x, arg_0, true), false), select(select(vec3<bool>(arg_0, false, true), vec3<bool>(true, true, true), vec3<bool>(global1.x, arg_0, global1.x)), !vec3<bool>(false, global1.x, false), select(vec3<bool>(true, global1.x, false), vec3<bool>(false, false, false), vec3<bool>(global1.x, global1.x, false))), select(select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, arg_0, global1.x), true), vec3<bool>(arg_0, global1.x, arg_0), all(vec3<bool>(true, true, arg_0)))), !(!global1.x));
    let var_2 = -9933i;
    return true;
}

fn func_4(arg_0: f32) -> Struct_2 {
    global2 = array<Struct_1, 24>();
    global0 = func_3(!global1.xx, !(!vec3<bool>(true, global1.x, !global1.x)), !vec3<bool>(global1.x, true, true), func_3(select(!select(vec2<bool>(true, global1.x), global1.xy, true), !vec2<bool>(global1.x, global1.x), false), vec3<bool>(true, _wgslsmith_f_op_f32(global0.b.b + global0.a.x) <= global0.b.a.x, true), vec3<bool>(global1.x, true, any(vec3<bool>(true, global1.x, global1.x)) == any(global1.xz)), func_3(!select(global1.yz, global1.yz, true), !select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, false), global1.x), vec3<bool>(true, !global1.x, true), global2[_wgslsmith_index_u32(u_input.c, 24u)]).a.b).a.b).a;
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(global0.b.a, vec2<f32>(-236f, _wgslsmith_f_op_f32(ceil(-404f))))), 1637f, vec4<u32>(1u, 4294967295u, _wgslsmith_dot_vec4_u32(abs(~global0.b.c), select(~vec4<u32>(54220u, global0.b.c.x, u_input.c, u_input.c), global0.b.c << (vec4<u32>(global0.b.e.x, u_input.c, 0u, 0u) % vec4<u32>(32u)), false | global1.x)), ~min(0u, func_2(global0.b.c, Struct_4(Struct_3(Struct_2(global0.a, Struct_1(global0.a.yw, 229f, global0.b.c, u_input.a.zx, vec2<u32>(4294967295u, u_input.c)), global0.c, global0.b.c.xy, global0.b.d), arg_0, 11873u, global0.a.yxz), global0.b.c)).x)), _wgslsmith_div_vec2_i32(firstLeadingBit(-global0.b.d << ((global0.b.c.xy >> (vec2<u32>(global0.d.x, 34602u) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<i32>(~countOneBits(-4073i), -u_input.b.x)), ~global0.d);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-global0.a), Struct_1(vec2<f32>(330f, _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_div_f32(477f, global0.b.b)))), global0.a.x, ~vec4<u32>(~63127u, u_input.c, firstLeadingBit(u_input.c), ~83665u), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1i) << (global0.d % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, global0.e.x), vec2<i32>(u_input.a.x, 2937i)), u_input.a.xx ^ vec2<i32>(-23943i, global0.c.x)), var_0.e), vec3<i32>(-65284i, ~1i, global0.c.x), select(vec2<u32>(u_input.c << (global0.d.x % 32u), var_0.e.x), global0.d, select(!(!vec2<bool>(global1.x, true)), !(!vec2<bool>(false, global1.x)), !select(vec2<bool>(false, false), global1.xy, global1.x))), global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 24>();
    let var_0 = ~(-42173i) << (~(u_input.c & 100041u) % 32u);
    global0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, -1556f, global0.b.b, -203f), _wgslsmith_div_vec4_f32(global0.a, global0.a))), _wgslsmith_f_op_vec4_f32(trunc(global0.a))), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(58552u ^ firstTrailingBit(u_input.c), 32118u), 24u)], global0.c >> (global0.b.c.xyx % vec3<u32>(32u)), global0.d, ~max(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 19504i), global0.e), vec2<i32>(i32(-1i) * -29434i, ~global0.e.x)));
    let var_1 = firstTrailingBit(52048u);
    global2 = array<Struct_1, 24>();
    let var_2 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1119f, global0.a.x, !func_1(global1.x))))));
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_4(func_4(var_2.b.a.x).b.b).b.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(var_2.d >> (min(select(global0.b.e, vec2<u32>(var_2.b.e.x, 19000u), global1.xz), ~global0.b.c.zx) % vec2<u32>(32u)), global0.d));
}

