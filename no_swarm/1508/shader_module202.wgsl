struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 1> = array<bool, 1>(true);

var<private> global2: vec4<f32> = vec4<f32>(-1922f, 2098f, 1310f, 989f);

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

var<private> global4: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(1752f, -393f, -1631f, 908f), vec4<f32>(1978f, -1146f, -465f, 922f), vec4<f32>(-890f, 934f, 386f, 1000f), vec4<f32>(-785f, -856f, 290f, -626f), vec4<f32>(662f, -952f, 164f, 487f), vec4<f32>(1000f, 211f, 550f, -1559f), vec4<f32>(591f, 599f, 738f, 413f), vec4<f32>(801f, -486f, 557f, -710f), vec4<f32>(1925f, 1527f, 1160f, -664f), vec4<f32>(256f, -1000f, 493f, 111f), vec4<f32>(-1000f, 289f, 1161f, 550f), vec4<f32>(-1152f, -978f, 962f, -447f), vec4<f32>(1000f, 416f, 1136f, 720f), vec4<f32>(251f, -1542f, 1941f, 323f), vec4<f32>(1391f, 563f, -1000f, -1124f), vec4<f32>(-1026f, -1878f, -111f, -377f), vec4<f32>(109f, -1740f, 332f, -1861f), vec4<f32>(-279f, 428f, -1419f, 732f), vec4<f32>(180f, -1514f, -1000f, -1000f), vec4<f32>(1863f, 1631f, -922f, 1910f), vec4<f32>(-879f, -216f, -1641f, 1342f), vec4<f32>(-361f, -1373f, -896f, -328f), vec4<f32>(-164f, -381f, 966f, -108f), vec4<f32>(903f, 1976f, 516f, -425f), vec4<f32>(-506f, 743f, -2082f, 1422f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = Struct_1(((min(0i, u_input.b.x) >> (arg_0 % 32u)) ^ u_input.b.x) < u_input.b.x, global2.x);
    var var_1 = Struct_2(1u);
    global3 = vec3<bool>(any(select(vec4<bool>(var_0.b != global0.b, !global3.x, all(vec4<bool>(global0.a, global3.x, false, global0.a)), true), vec4<bool>(true, true, !global0.a, true), any(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global3.x, global1[_wgslsmith_index_u32(48901u, 1u)])))), false, var_0.a);
    let var_2 = vec3<bool>(!all(vec4<bool>(global3.x, global1[_wgslsmith_index_u32(var_1.a, 1u)], global3.x, false)), 31749u < (var_1.a ^ _wgslsmith_mult_u32(countOneBits(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, arg_0, 4294967295u, u_input.a.x), u_input.a))), global1[_wgslsmith_index_u32(~4294967295u ^ min(~(~arg_0), 16862u), 1u)]);
    let var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(-(0i & select(-18878i, 1i, var_2.x)), u_input.b.x, u_input.b.x, u_input.b.x >> (var_1.a % 32u)), vec4<i32>(u_input.b.x, u_input.b.x, select(countOneBits(_wgslsmith_add_i32(u_input.b.x, 53223i)), u_input.b.x, select(true, global0.a, !global1[_wgslsmith_index_u32(var_1.a, 1u)])), firstTrailingBit(reverseBits(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-2147483647i, -47535i))))));
    return select(select(select(vec4<bool>(any(vec4<bool>(false, var_0.a, var_0.a, global0.a)), true && var_2.x, global1[_wgslsmith_index_u32(arg_0, 1u)] && true, false), select(select(vec4<bool>(false, false, global0.a, var_2.x), vec4<bool>(true, true, global0.a, true), var_2.x), select(vec4<bool>(true, var_2.x, var_2.x, global3.x), vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 1u)], global0.a, true, false), vec4<bool>(false, var_0.a, false, true)), -202f < var_0.b), vec4<bool>(false, var_0.a, !global3.x, select(true, true, global0.a))), !(!(!vec4<bool>(false, var_2.x, false, global0.a))), all(!select(global3.yy, vec2<bool>(false, var_2.x), vec2<bool>(global0.a, var_2.x)))), vec4<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, var_0.a, global1[_wgslsmith_index_u32(4294967295u, 1u)], var_0.a), vec4<bool>(false, var_0.a, false, global0.a), !var_2.x)), var_2.x, true | all(var_2)), ~_wgslsmith_add_u32(58478u, max(0u, 78636u)) != _wgslsmith_dot_vec2_u32(~vec2<u32>(75625u, var_1.a), min(u_input.a.zx, _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a, var_1.a), u_input.a.xx))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_2(u_input.c);
    var var_1 = func_3(u_input.c);
    var_1 = !vec4<bool>(true, global1[_wgslsmith_index_u32(min(arg_0.x, ~3921u), 1u)], true, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(14555i, 30527i, -14230i, 12733i), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -46675i, -1i), vec4<i32>(u_input.b.x, 1i, -2147483647i, -2147483647i)), u_input.b.x) >= -u_input.b.x);
    var var_2 = Struct_1(all(select(var_1.xzw, vec3<bool>(true, var_1.x, true), !vec3<bool>(global3.x, true, var_1.x))) || global3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-655f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.b - global2.x), _wgslsmith_f_op_f32(-global0.b))))))));
    let var_3 = Struct_1(true, -218f);
    return Struct_2(u_input.a.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_1 {
    global4 = array<vec4<f32>, 25>();
    var var_0 = Struct_1(arg_0.x, -1000f);
    return Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, select(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 990u, 4294967295u), _wgslsmith_add_vec4_u32(u_input.a, u_input.a)), _wgslsmith_div_vec4_u32(u_input.a, abs(u_input.a)), !arg_0.x)), 1u)], -1434f);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global4 = array<vec4<f32>, 25>();
    var var_0 = -47623i;
    var var_1 = vec4<i32>(u_input.b.x, ~u_input.b.x, ~12819i, -min(abs(firstLeadingBit(31099i)), max(firstTrailingBit(u_input.b.x), min(36739i, u_input.b.x))));
    return Struct_1(!(!arg_1.a), 337f);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: u32) -> vec3<i32> {
    let var_0 = func_5(global3.x, func_4(select(!select(vec4<bool>(global0.a, global3.x, arg_1.x, false), vec4<bool>(arg_1.x, false, global0.a, global0.a), global1[_wgslsmith_index_u32(arg_3, 1u)]), vec4<bool>(false, true, false, global3.x), true), _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b.x, 40288i, 10150i, arg_2) << (u_input.a % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, arg_2, -64980i), vec4<i32>(u_input.b.x, u_input.b.x, arg_2, u_input.b.x)), select(vec4<bool>(global0.a, arg_1.x, global1[_wgslsmith_index_u32(arg_3, 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec4<bool>(true, global0.a, true, false), vec4<bool>(global3.x, global1[_wgslsmith_index_u32(4294967295u, 1u)], false, arg_1.x))), abs(min(vec4<i32>(u_input.b.x, u_input.b.x, 59798i, arg_2), vec4<i32>(2873i, arg_2, arg_2, 11892i)))), arg_1.yy, func_2(select(select(vec3<u32>(u_input.c, arg_3, 29980u), u_input.a.yzw, global3.x), ~u_input.a.xyy, !vec3<bool>(false, global0.a, false)))), func_2(vec3<u32>(abs(0u), arg_3, u_input.a.x << (reverseBits(arg_3) % 32u))), Struct_1(_wgslsmith_f_op_f32(-global2.x) <= -1397f, 190f));
    return vec3<i32>(-(~0i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, arg_2, reverseBits(u_input.b.x)), vec3<i32>(abs(~u_input.b.x), ~(arg_2 >> (arg_3 % 32u)), ~(i32(-1i) * -1i))), 2147483647i);
}

fn func_6(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2) -> f32 {
    var var_0 = Struct_2(arg_2.a);
    let var_1 = true;
    var var_2 = arg_2;
    let var_3 = 415f;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -914f);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, global0.b)));
}

fn func_7(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_sub_i32(abs(u_input.b.x), ~(~u_input.b.x)), -select(-2147483647i, u_input.b.x, func_4(vec4<bool>(global1[_wgslsmith_index_u32(1u, 1u)], global0.a, arg_2, true), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 42819i), vec2<bool>(true, global0.a), Struct_2(4294967295u)).a)), _wgslsmith_mult_vec3_i32(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(-34870i, 0i, -2147483647i), min(vec3<i32>(-1i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -21462i, u_input.b.x)), -vec3<i32>(2147483647i, -36227i, u_input.b.x)), vec3<i32>(-1i >> (arg_0 % 32u), 25866i, _wgslsmith_div_i32(46411i, u_input.b.x)) & ~(~vec3<i32>(-1i, u_input.b.x, u_input.b.x))));
    let var_1 = func_2(~select(u_input.a.zwz, (vec3<u32>(u_input.a.x, arg_0, u_input.a.x) << (u_input.a.yww % vec3<u32>(32u))) & ~u_input.a.xzx, vec3<bool>(true, true, true)));
    global4 = array<vec4<f32>, 25>();
    global3 = vec3<bool>(global3.x, arg_2, !any(vec3<bool>(global0.a, true, var_1.a < 1u)));
    var var_2 = func_2(firstTrailingBit(vec3<u32>(~23013u, 35044u, min(u_input.c, ~var_1.a))));
    return Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a.x);
    let var_1 = global0.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global0.b), -1920f)));
    let var_3 = func_7(u_input.c, vec4<f32>(-1598f, _wgslsmith_f_op_f32(func_6(~func_1(vec3<f32>(865f, global0.b, -1390f), vec4<bool>(global3.x, false, false, global1[_wgslsmith_index_u32(var_0.a, 1u)]), u_input.b.x, var_0.a), var_0.a, func_2(vec3<u32>(45407u, 12152u, u_input.a.x)))), global0.b, var_2.x), global3.x);
    var var_4 = max(_wgslsmith_mod_i32(2147483647i, abs(abs(~u_input.b.x))), _wgslsmith_div_i32(u_input.b.x, countOneBits(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x))) | -42503i);
    let var_5 = var_0;
    global4 = array<vec4<f32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, -1834f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2355f, var_2.x) - vec2<f32>(-389f, 2424f)) - global2.xy)) - _wgslsmith_div_vec2_f32(var_2.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.xw)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) + var_3.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) * func_5(false, Struct_1(var_3.a, var_3.b), var_5, Struct_1(global1[_wgslsmith_index_u32(u_input.c, 1u)], global0.b)).b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -842f))), _wgslsmith_f_op_f32(var_3.b - _wgslsmith_f_op_f32(floor(var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -562f)), vec2<u32>(0u, ~u_input.c), var_3.b);
}

