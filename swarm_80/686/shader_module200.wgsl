struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(false, vec3<f32>(-3304f, -266f, -944f), Struct_1(vec4<bool>(true, false, true, false), false, 1u), vec4<f32>(-529f, 787f, 231f, 169f)), 881f), Struct_3(Struct_2(false, vec3<f32>(523f, -290f, -667f), Struct_1(vec4<bool>(true, true, false, true), true, 9165u), vec4<f32>(1000f, 509f, -1116f, -1170f)), -1209f), Struct_3(Struct_2(false, vec3<f32>(-1372f, 105f, -1650f), Struct_1(vec4<bool>(false, true, false, false), false, 33618u), vec4<f32>(1367f, 2067f, -164f, 1117f)), -710f), Struct_3(Struct_2(false, vec3<f32>(449f, -707f, -407f), Struct_1(vec4<bool>(false, true, false, true), false, 1u), vec4<f32>(-300f, -612f, 168f, -376f)), 676f), Struct_3(Struct_2(true, vec3<f32>(2032f, -1221f, -1000f), Struct_1(vec4<bool>(false, false, false, false), true, 4294967295u), vec4<f32>(-1156f, 558f, 1359f, -712f)), -1827f), Struct_3(Struct_2(false, vec3<f32>(-535f, -328f, -851f), Struct_1(vec4<bool>(true, true, false, false), false, 0u), vec4<f32>(-1231f, 610f, 1124f, -502f)), -1000f), Struct_3(Struct_2(false, vec3<f32>(-1475f, -529f, -505f), Struct_1(vec4<bool>(false, true, true, true), true, 1u), vec4<f32>(-1044f, 238f, 377f, -101f)), -321f), Struct_3(Struct_2(true, vec3<f32>(-365f, -304f, -684f), Struct_1(vec4<bool>(false, false, false, false), true, 1u), vec4<f32>(-696f, 345f, 760f, 1100f)), 980f), Struct_3(Struct_2(false, vec3<f32>(1095f, -551f, -1660f), Struct_1(vec4<bool>(false, true, true, false), true, 1u), vec4<f32>(1140f, 934f, 1225f, -273f)), 792f), Struct_3(Struct_2(false, vec3<f32>(1440f, 578f, 123f), Struct_1(vec4<bool>(false, true, false, false), false, 0u), vec4<f32>(-203f, 117f, 648f, -427f)), -1060f), Struct_3(Struct_2(true, vec3<f32>(-826f, -1300f, 312f), Struct_1(vec4<bool>(false, true, false, true), false, 25642u), vec4<f32>(634f, -745f, 1176f, 1000f)), 821f), Struct_3(Struct_2(false, vec3<f32>(734f, -466f, 1004f), Struct_1(vec4<bool>(true, true, true, true), false, 20351u), vec4<f32>(-541f, -763f, 1000f, -216f)), 2442f), Struct_3(Struct_2(true, vec3<f32>(-361f, 1735f, 373f), Struct_1(vec4<bool>(true, false, false, true), true, 31027u), vec4<f32>(-769f, -322f, -586f, 816f)), 363f));

var<private> global1: vec3<f32> = vec3<f32>(862f, -1083f, -647f);

var<private> global2: vec4<f32> = vec4<f32>(237f, 686f, -1000f, -411f);

var<private> global3: array<bool, 28>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = Struct_2(arg_1.a.x, global2.xwx, arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-111f, -458f, global2.x, 1485f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global1.x, -901f, -1855f) - vec4<f32>(1476f, global1.x, global1.x, 1124f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(floor(-760f)), _wgslsmith_f_op_f32(-global2.x)))));
    let var_1 = abs(arg_3.x);
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~1u, _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 1u)), vec2<u32>(4294967295u, var_0.c.c))), 0u, 33341u), abs(countOneBits(~(~vec4<u32>(var_0.c.c, 46907u, 24803u, arg_1.c)))), ~(vec4<u32>(~arg_1.c, 66821u, _wgslsmith_div_u32(4294967295u, 1u), u_input.a >> (4294967295u % 32u)) >> (~select(vec4<u32>(26498u, 4294967295u, arg_1.c, var_0.c.c), vec4<u32>(1u, arg_1.c, arg_1.c, arg_1.c), true) % vec4<u32>(32u))));
    var var_3 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_0.c.c, 47982u), vec4<u32>(arg_1.c, var_0.c.c, 26747u, u_input.a))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(126163u, var_0.c.c, 0u, 0u), vec4<u32>(var_0.c.c, 4294967295u, arg_1.c, 4294967295u)), countOneBits(vec4<u32>(42768u, arg_1.c, var_0.c.c, 19704u))), vec4<u32>(~var_2.x, _wgslsmith_mod_u32(u_input.a, var_0.c.c), var_0.c.c, ~arg_1.c))), _wgslsmith_clamp_u32(4294967295u, 0u, 1u), ~4294967295u);
    let var_4 = arg_0;
    return vec4<u32>(select(abs(select(var_3.x, u_input.a, true)), max(var_0.c.c, _wgslsmith_mult_u32(var_0.c.c, 4294967295u)), any(var_4)), max(~(~(29227u << (u_input.a % 32u))), 1u), 1u, 1u);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1073f, global2.x)), 1058f), global2.x, !global3[_wgslsmith_index_u32(u_input.a, 28u)]));
    let var_1 = _wgslsmith_mod_u32(4294967295u, 94780u) >> (_wgslsmith_dot_vec4_u32(func_3(select(vec2<bool>(global3[_wgslsmith_index_u32(40752u, 28u)], true), vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 28u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 28u)])), Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], false, true), true, ~u_input.a), (arg_0.zy ^ arg_0.yy) & (arg_0.yw >> (vec2<u32>(u_input.a, 44900u) % vec2<u32>(32u))), -vec3<i32>(arg_0.x, arg_0.x, 29009i)), vec4<u32>(max(u_input.a, u_input.a) | countOneBits(34474u), ~(~u_input.a), 38296u, ~0u)) % 32u);
    var var_2 = 0u;
    var var_3 = !select(!select(select(vec2<bool>(global3[_wgslsmith_index_u32(var_1, 28u)], true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(var_1, 28u)], true), false), true), vec2<bool>(false, all(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 28u)], global3[_wgslsmith_index_u32(36399u, 28u)], false))), false);
    var_0 = _wgslsmith_f_op_f32(floor(492f));
    return Struct_1(!vec4<bool>(_wgslsmith_f_op_f32(trunc(global1.x)) < _wgslsmith_f_op_f32(sign(-228f)), !(global3[_wgslsmith_index_u32(var_1, 28u)] & global3[_wgslsmith_index_u32(u_input.a, 28u)]), global3[_wgslsmith_index_u32(27608u >> (u_input.a % 32u), 28u)], all(select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.a, 28u)]), vec3<bool>(var_3.x, global3[_wgslsmith_index_u32(var_1, 28u)], false), vec3<bool>(var_3.x, true, global3[_wgslsmith_index_u32(4294967295u, 28u)])))), global3[_wgslsmith_index_u32(var_1, 28u)], 0u);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = !select(vec3<bool>(false, true, true), !arg_2.c.a.yxw, _wgslsmith_f_op_f32(-179f - 2903f) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 980f) - 434f));
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 175f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1666f))));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_2.d)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, global2.x, 1723f, var_1.d.x) - vec4<f32>(1275f, -1678f, 2252f, 1000f)) + var_1.d))) * _wgslsmith_f_op_vec4_f32(-arg_2.d));
    let var_3 = all(!arg_2.c.a.zy);
    return var_1.c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>) -> i32 {
    let var_0 = 63728u;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.b.x)), arg_1.b.x, -717f)));
    var var_1 = 14067i;
    global2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(445f, arg_0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(-418f, global1.x)))), global2.x, arg_0.d.x), _wgslsmith_f_op_vec4_f32(select(arg_1.d, vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-1342f * _wgslsmith_f_op_f32(-global1.x)), 1335f, -595f), true))));
    var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(-vec3<i32>(-1i, 2147483647i, -59196i)), countOneBits(vec3<i32>(6543i, -31661i, -30573i))), firstTrailingBit(vec3<i32>(select(-9840i, 1i, arg_0.c.a.x), 41340i, 2520i >> (arg_0.c.c % 32u)))), -(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -2147483647i, -13951i)));
    return -_wgslsmith_dot_vec4_i32(firstLeadingBit(abs(vec4<i32>(0i, -22742i, -6618i, 42165i)) >> (abs(vec4<u32>(1u, u_input.a, arg_1.c.c, var_0)) % vec4<u32>(32u))), vec4<i32>(i32(-1i) * -2147483647i, 9908i, 1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, 2147483647i, 20554i)), vec3<i32>(2147483647i, 25888i, 0i) << (vec3<u32>(var_0, u_input.a, u_input.a) % vec3<u32>(32u)))));
}

fn func_1() -> vec4<f32> {
    let var_0 = func_5(Struct_2(global3[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(u_input.a, 4294967295u, u_input.a) | ~129332u), 28u)], global2.yyz, func_4(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, u_input.a), ~vec2<u32>(u_input.a, u_input.a)), countOneBits(~vec4<i32>(0i, -2036i, -2147483647i, 24173i)), Struct_2(global3[_wgslsmith_index_u32(u_input.a, 28u)] & true, vec3<f32>(global2.x, -2238f, global1.x), func_2(vec4<i32>(1i, 2147483647i, 1i, 0i)), vec4<f32>(-1740f, global2.x, -1000f, global1.x))), vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global2.x, -736f)))), -365f)), Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a, _wgslsmith_clamp_u32(~51273u, u_input.a >> (u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(1u, 58038u, 4294967295u)))), 28u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-687f, -1000f)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global1.x) + global2.yzz))), func_4(vec2<u32>(27618u, firstTrailingBit(u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(2147483647i, -49354i, 2147483647i, 13166i)), Struct_2(any(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(302f, global2.x, global2.x)), func_2(vec4<i32>(-2147483647i, -1i, -46556i, -43660i)), vec4<f32>(global2.x, global2.x, global2.x, -716f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1209f, global2.x, 665f))) - vec4<f32>(_wgslsmith_div_f32(global1.x, 1000f), _wgslsmith_f_op_f32(global2.x * -286f), _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(select(215f, global1.x, true))))), select(!select(func_2(vec4<i32>(-2147483647i, 2147483647i, -70885i, -2147483647i)).a.zw, !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 28u)], true), any(vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(u_input.a, 28u)], false))), vec2<bool>(true, global3[_wgslsmith_index_u32(func_4(abs(vec2<u32>(4294967295u, u_input.a)), reverseBits(vec4<i32>(2147483647i, -2147483647i, -14929i, 0i)), Struct_2(global3[_wgslsmith_index_u32(4294967295u, 28u)], vec3<f32>(-403f, global2.x, global2.x), Struct_1(vec4<bool>(true, true, false, true), false, u_input.a), vec4<f32>(-568f, -1196f, global1.x, global1.x))).c, 28u)]), !func_4(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(0u, 40401u)), min(vec4<i32>(-2147483647i, 3361i, -1i, 2147483647i), vec4<i32>(1i, 42947i, 20399i, -39140i)), Struct_2(true, vec3<f32>(global2.x, global1.x, global1.x), Struct_1(vec4<bool>(true, true, global3[_wgslsmith_index_u32(44857u, 28u)], false), global3[_wgslsmith_index_u32(68442u, 28u)], u_input.a), vec4<f32>(564f, global2.x, global1.x, global2.x))).a.x));
    var var_1 = ~(~_wgslsmith_mod_vec3_u32(countOneBits(countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a))), func_3(vec2<bool>(global3[_wgslsmith_index_u32(26721u, 28u)], false), func_4(vec2<u32>(25262u, 17695u), vec4<i32>(var_0, 4440i, var_0, var_0), Struct_2(true, vec3<f32>(1893f, -1955f, 477f), Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(87167u, 28u)], true, true, true), global3[_wgslsmith_index_u32(1u, 28u)], u_input.a), vec4<f32>(661f, 748f, global1.x, 1485f))), vec2<i32>(var_0, var_0), vec3<i32>(-28206i, -42806i, 0i)).xwy));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-277f, -905f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 157f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-529f, -205f))))));
    let var_2 = (vec2<i32>(-11951i, firstLeadingBit(-1i)) | _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0, var_0), _wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, -2147483647i))), max(reverseBits(vec2<i32>(var_0, var_0)), select(vec2<i32>(-2147483647i, var_0), vec2<i32>(var_0, 0i), global3[_wgslsmith_index_u32(74525u, 28u)])), abs(abs(vec2<i32>(-40030i, var_0))))) | ~_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-67195i, 82444i)), -vec2<i32>(var_0, var_0), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(-4520i, 10467i))), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_0), vec2<i32>(11626i, var_0)) << (var_1.yy % vec2<u32>(32u)));
    global2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global2.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(step(-623f, -1351f))))), global1.x, -465f, _wgslsmith_f_op_f32(211f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1283f)), -435f, global1.x, -205f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-315f, -560f, global1.x, -2065f), vec4<f32>(-1219f, 852f, -1968f, global2.x), vec4<bool>(global3[_wgslsmith_index_u32(107260u, 28u)], false, false, global3[_wgslsmith_index_u32(var_1.x, 28u)]))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-927f, -767f, 475f, 528f) - vec4<f32>(543f, global1.x, 1424f, global1.x)), vec4<f32>(-1352f, -1322f, -682f, 195f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-734f, global2.x, global1.x, 857f), vec4<f32>(global2.x, -673f, 465f, global1.x)))), !global3[_wgslsmith_index_u32(u_input.a, 28u)] && all(vec2<bool>(true, true))))));
    let var_0 = global0[_wgslsmith_index_u32(func_3(vec2<bool>(true, true), func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 1i, _wgslsmith_mod_i32(0i, -21057i), reverseBits(-1i)), -abs(vec4<i32>(1i, 2147483647i, -1i, 28039i)))), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -40256i, -36577i), vec3<i32>(2147483647i, 16882i, 1i)), -2147483647i), countOneBits(-5502i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(0i, 0i, -58438i), reverseBits(vec3<i32>(-59405i, -1i, 2147483647i))) << (~(vec3<u32>(22468u, u_input.a, u_input.a) | vec3<u32>(u_input.a, 54133u, u_input.a)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(max(-24336i, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-21342i, -8131i), vec2<i32>(2147483647i, -39364i))), -2147483647i, 2147483647i), ~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-61950i, 2147483647i, 30660i), vec3<i32>(2147483647i, -1i, -4575i), vec3<i32>(-1i, 36907i, -42676i)), vec3<i32>(-10257i, -1i, 17889i)))).x, 13u)];
    global3 = array<bool, 28>();
    global0 = array<Struct_3, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_2(func_2(vec4<i32>(15353i, 0i, 0i, 0i)).b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global1.x)), Struct_1(vec4<bool>(var_0.a.a, true, var_0.a.c.b, false), global1.x > 476f, 1u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-614f, -1168f, var_0.b, -415f) + var_0.a.d), vec4<f32>(1000f, -1027f, var_0.a.b.x, 1793f), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 28u)], global3[_wgslsmith_index_u32(u_input.a, 28u)], false, global3[_wgslsmith_index_u32(var_0.a.c.c, 28u)]), var_0.a.c.a, vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(var_0.a.c.c, 28u)]))))), var_0.a, var_0.a.c.a.yx), ~countOneBits(vec2<u32>(var_0.a.c.c, 1u) ^ ~vec2<u32>(u_input.a, 1u)), max(-vec2<i32>(1i, 1i), select(vec2<i32>(i32(-1i) * -33855i, 1i), abs(vec2<i32>(5578i, 1767i)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~u_input.a), 28u)])));
}

