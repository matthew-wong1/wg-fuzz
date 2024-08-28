struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(31493i, true, vec2<bool>(true, true), vec4<f32>(-2477f, 1085f, 581f, -1000f)), Struct_1(1i, true, vec2<bool>(true, true), vec4<f32>(2265f, 648f, 1000f, 1695f)), Struct_1(-33455i, true, vec2<bool>(true, true), vec4<f32>(-1135f, 1416f, 136f, -1000f)), Struct_1(-7549i, true, vec2<bool>(false, true), vec4<f32>(231f, 297f, 1183f, -1259f)), Struct_1(0i, false, vec2<bool>(true, false), vec4<f32>(-1278f, -1000f, 1719f, 2494f)), Struct_1(12099i, true, vec2<bool>(true, false), vec4<f32>(-1084f, 1000f, -874f, 384f)), Struct_1(-10590i, true, vec2<bool>(true, true), vec4<f32>(-1069f, -1182f, -439f, 665f)), Struct_1(-50658i, false, vec2<bool>(true, false), vec4<f32>(-896f, 767f, 746f, -540f)), Struct_1(0i, false, vec2<bool>(false, true), vec4<f32>(522f, -297f, -100f, -951f)), Struct_1(-19727i, true, vec2<bool>(true, true), vec4<f32>(-1611f, -926f, 506f, -576f)), Struct_1(i32(-2147483648), true, vec2<bool>(false, false), vec4<f32>(188f, -950f, -922f, -921f)), Struct_1(33391i, false, vec2<bool>(false, true), vec4<f32>(1507f, -1000f, 393f, -185f)), Struct_1(21706i, false, vec2<bool>(true, false), vec4<f32>(-784f, -563f, -695f, -1878f)), Struct_1(i32(-2147483648), false, vec2<bool>(true, false), vec4<f32>(-253f, 646f, 1000f, -1008f)), Struct_1(-18910i, true, vec2<bool>(true, false), vec4<f32>(455f, 1089f, -1513f, 434f)), Struct_1(-9996i, false, vec2<bool>(false, true), vec4<f32>(-416f, 2046f, -202f, 1563f)), Struct_1(-29136i, false, vec2<bool>(false, false), vec4<f32>(1344f, 1286f, -655f, 427f)), Struct_1(-23327i, false, vec2<bool>(true, true), vec4<f32>(1721f, -1213f, -803f, 1921f)), Struct_1(-12091i, true, vec2<bool>(true, false), vec4<f32>(670f, -639f, -1825f, 1000f)), Struct_1(11212i, false, vec2<bool>(false, true), vec4<f32>(932f, 1000f, 207f, 198f)), Struct_1(15591i, false, vec2<bool>(true, true), vec4<f32>(618f, -939f, -280f, -565f)), Struct_1(-29187i, false, vec2<bool>(false, true), vec4<f32>(-1209f, -346f, 719f, 838f)), Struct_1(2147483647i, false, vec2<bool>(true, true), vec4<f32>(1517f, 450f, 1028f, -1000f)), Struct_1(i32(-2147483648), false, vec2<bool>(true, true), vec4<f32>(640f, 120f, 1167f, 2648f)), Struct_1(-1i, false, vec2<bool>(false, false), vec4<f32>(-2004f, -588f, -1798f, 1000f)), Struct_1(-33970i, true, vec2<bool>(true, false), vec4<f32>(364f, -1321f, -2732f, -579f)));

var<private> global1: array<bool, 7> = array<bool, 7>(false, false, false, false, true, false, true);

var<private> global2: array<vec4<f32>, 16>;

var<private> global3: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(false, vec3<bool>(true, true, true), 924f, false, vec2<f32>(861f, -1000f)), Struct_2(false, vec3<bool>(true, false, false), -899f, false, vec2<f32>(219f, -128f)), Struct_2(false, vec3<bool>(true, false, true), -1000f, true, vec2<f32>(1346f, -2165f)), Struct_2(true, vec3<bool>(false, true, false), 871f, false, vec2<f32>(657f, 119f)), Struct_2(false, vec3<bool>(false, false, false), 159f, true, vec2<f32>(-149f, -912f)), Struct_2(false, vec3<bool>(true, false, true), -881f, false, vec2<f32>(-1038f, 976f)), Struct_2(true, vec3<bool>(false, true, true), 1434f, false, vec2<f32>(-840f, -448f)), Struct_2(false, vec3<bool>(true, false, true), -453f, false, vec2<f32>(1305f, 1000f)), Struct_2(false, vec3<bool>(false, false, true), 406f, false, vec2<f32>(505f, -384f)));

var<private> global4: vec2<f32> = vec2<f32>(-567f, -870f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(1u, 26u)];
    let var_1 = global0[_wgslsmith_index_u32(u_input.d.x, 26u)];
    let var_2 = vec4<bool>(var_0.c.x, !global1[_wgslsmith_index_u32(~71749u, 7u)], u_input.d.x < u_input.b.x, all(vec2<bool>(any(vec3<bool>(true, arg_2.x, false)), all(vec3<bool>(false, arg_2.x, arg_2.x)))));
    var var_3 = _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.c, u_input.c) & vec4<i32>(0i, 1i, arg_3.x, 701i), reverseBits(vec4<i32>(arg_3.x, u_input.c, 1i, var_0.a))) | vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.a, u_input.e.x, -52798i), vec4<i32>(var_0.a, arg_3.x, arg_3.x, -2147483647i)), 1i, firstLeadingBit(-38727i) >> (~u_input.d.x % 32u), -max(-1i, var_1.a)), _wgslsmith_sub_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-24000i, arg_3.x, u_input.c, -2147483647i) & vec4<i32>(arg_3.x, -5139i, var_1.a, 2147483647i), -vec4<i32>(var_0.a, var_0.a, -2147483647i, arg_3.x)), vec4<i32>(-1i) * -(vec4<i32>(var_0.a, arg_3.x, 25796i, var_1.a) << (vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 27590u) % vec4<u32>(32u)))));
    let var_4 = firstTrailingBit(-var_1.a);
    return any(var_2.xy) | true;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> vec3<u32> {
    global3 = array<Struct_2, 9>();
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.d.yy)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.d.x, 667f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(arg_2.e - arg_2.e), _wgslsmith_f_op_vec2_f32(arg_2.e * vec2<f32>(-182f, arg_0.d.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(arg_0.d.xw, vec2<f32>(arg_2.c, 520f))), vec2<f32>(global4.x, 747f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_2.e), arg_0.d.zz)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(300f)), arg_0.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.e)), true)));
    global0 = array<Struct_1, 26>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 26u)];
    let var_1 = ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.yz)));
    return ~_wgslsmith_mod_vec3_u32(~(u_input.a ^ (vec3<u32>(0u, 44983u, u_input.d.x) << (u_input.d.wyz % vec3<u32>(32u)))), ~u_input.b);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = func_4(Struct_1(~arg_2, func_3(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_1.d + global2[_wgslsmith_index_u32(17107u, 16u)]))), !select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 7u)], true, arg_1.b), vec3<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.b.x, 7u)], global1[_wgslsmith_index_u32(0u, 7u)]), arg_0), vec3<i32>(-arg_2, reverseBits(arg_2), 19229i)), vec2<bool>(global1[_wgslsmith_index_u32(1u, 7u)], true), vec4<f32>(_wgslsmith_f_op_f32(trunc(global4.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -346f)), _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(step(232f, -247f)))), arg_2, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(0u), 1204u, select(u_input.a.x, u_input.d.x, true)), 9u)]);
    let var_1 = _wgslsmith_clamp_vec4_u32(~(~(firstLeadingBit(u_input.d) ^ firstLeadingBit(u_input.d))), ~vec4<u32>(var_0.x, 13690u, u_input.a.x, u_input.d.x), _wgslsmith_add_vec4_u32(min(vec4<u32>(~var_0.x, ~var_0.x, 1u & var_0.x, 4294967295u), u_input.d), u_input.d));
    let var_2 = global3[_wgslsmith_index_u32(49791u, 9u)];
    global1 = array<bool, 7>();
    let var_3 = select(abs(~vec4<u32>(min(u_input.a.x, var_0.x), var_1.x, 0u, firstLeadingBit(54549u))), max(u_input.d, vec4<u32>(max(u_input.b.x, 58988u), _wgslsmith_add_u32(0u, 20260u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(22845u, 9865u, var_0.x, 31243u), var_1), 51607u)), vec4<bool>(all(select(var_2.b, var_2.b, var_2.b)), select(!global1[_wgslsmith_index_u32(16863u, 7u)], var_2.d, arg_1.c.x) || arg_0, any(vec4<bool>(arg_0, true, arg_1.c.x, arg_1.b)), all(var_2.b)));
    return Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(1i, arg_2), -_wgslsmith_mult_i32(0i, 2147483647i), u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, 56259i, -24038i), firstTrailingBit(vec3<i32>(arg_2, arg_1.a, arg_2)))), vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, 13211i), max(arg_1.a, -2147483647i & arg_2), ~0i, 0i)), ~(arg_1.a & ~2147483647i) >= firstLeadingBit(~_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(arg_2, 38350i))), vec2<bool>(func_3(536f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(u_input.d.x, 16u)] + global2[_wgslsmith_index_u32(49981u, 16u)]))), !var_2.b, ~(-vec3<i32>(2147483647i, 2147483647i, arg_2))), true & var_2.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(58513u, 16u)] + arg_1.d)) + global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_3, max(vec4<u32>(14176u, var_3.x, 4294967295u, var_1.x), var_3)), 16u)])));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = arg_0.d.xz;
    global1 = array<bool, 7>();
    global4 = _wgslsmith_f_op_vec2_f32(abs(arg_3.e));
    var var_2 = arg_2;
    return func_2(any(!vec4<bool>(global1[_wgslsmith_index_u32(abs(arg_2), 7u)], false, true, arg_0.c.x && var_0.b.x)), arg_0, -1i);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> u32 {
    let var_0 = 621f;
    global4 = _wgslsmith_div_vec2_f32(vec2<f32>(1660f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -870f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-241f, 2527f)))))), arg_0.d.xw);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))))) - _wgslsmith_div_f32(1710f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(select(178f, 1296f, !(!arg_2))));
    var var_2 = true;
    let var_3 = abs(u_input.e);
    return _wgslsmith_add_u32(u_input.d.x, 4294967295u);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = func_6(func_5(func_2(select(arg_1.b, arg_1.b, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), global0[_wgslsmith_index_u32(0u, 26u)], ~(-11781i)), 1792f, ~reverseBits(4294967295u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xz, vec2<u32>(4294967295u, u_input.b.x)), _wgslsmith_div_vec2_u32(u_input.d.zw, u_input.b.xx)), 9u)]), -_wgslsmith_mod_i32(0i, _wgslsmith_mult_i32(37222i, 52590i)), false) ^ _wgslsmith_div_u32(88627u, func_6(Struct_1(arg_1.a, true, vec2<bool>(arg_1.c.x, arg_1.c.x), vec4<f32>(955f, -415f, 1000f, -381f)), -arg_1.a, !(arg_1.c.x | global1[_wgslsmith_index_u32(arg_0, 7u)])));
    var var_1 = arg_1.c.x;
    let var_2 = vec2<bool>(true, (abs(~arg_1.a) | ~(-30477i)) < arg_1.a);
    var var_3 = all(!select(!vec4<bool>(global1[_wgslsmith_index_u32(68920u, 7u)], false, global1[_wgslsmith_index_u32(arg_0, 7u)], arg_1.c.x), vec4<bool>(false, arg_1.b, global1[_wgslsmith_index_u32(54249u, 7u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(94958u, 7u)], false, true), vec4<bool>(true, var_2.x, var_2.x, false), global1[_wgslsmith_index_u32(4294967295u, 7u)]))) || all(vec4<bool>(!var_2.x, all(func_5(global0[_wgslsmith_index_u32(4294967295u, 26u)], arg_1.d.x, 0u, Struct_2(var_2.x, vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 7u)], var_2.x), -1012f, global1[_wgslsmith_index_u32(1u, 7u)], vec2<f32>(global4.x, 832f))).c), !global1[_wgslsmith_index_u32(~18442u, 7u)], all(select(vec4<bool>(true, true, arg_1.c.x, true), vec4<bool>(var_2.x, false, true, false), vec4<bool>(false, false, true, true)))));
    global2 = array<vec4<f32>, 16>();
    return var_0;
}

fn func_7(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(-_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 15589i, u_input.e.x, -53400i), vec4<i32>(arg_3.a, -1i, u_input.e.x, -12429i)), 1i) ^ 1i, all(!arg_1.b), arg_3.c, arg_2.d);
    global2 = array<vec4<f32>, 16>();
    var var_1 = 1000f;
    var var_2 = vec2<bool>(true, all(var_0.c));
    let var_3 = func_5(Struct_1(_wgslsmith_add_i32(arg_2.a, -2147483647i), (u_input.c > (arg_2.a | var_0.a)) && !func_3(-608f, arg_2.d, arg_1.b, vec3<i32>(arg_3.a, arg_3.a, 14825i)), vec2<bool>(arg_0, var_2.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.d)))), arg_3.d.x, 31549u, global3[_wgslsmith_index_u32(~(((43456u << (u_input.b.x % 32u)) | ~4294967295u) ^ firstLeadingBit(1u)), 9u)]);
    return _wgslsmith_f_op_f32(f32(-1f) * -1027f);
}

fn func_8(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global1 = array<bool, 7>();
    global2 = array<vec4<f32>, 16>();
    var var_0 = Struct_1(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1364f))) + 234f) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x + arg_2.c), arg_2.e.x)), !(!arg_2.b.xz), vec4<f32>(-1000f, arg_3.c, _wgslsmith_f_op_f32(ceil(170f)), _wgslsmith_f_op_f32(step(-560f, arg_2.e.x))));
    let var_1 = false;
    global3 = array<Struct_2, 9>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)), 1000f, 678f));
    global3 = array<Struct_2, 9>();
    let var_1 = func_8(_wgslsmith_f_op_f32(func_7(true, global3[_wgslsmith_index_u32(1u, 9u)], Struct_1(19535i, true, !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], true)), vec4<f32>(global4.x, _wgslsmith_f_op_f32(global4.x + global4.x), _wgslsmith_f_op_f32(global4.x - 366f), global4.x)), global0[_wgslsmith_index_u32(~func_1(~0u, Struct_1(-25144i, true, vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 7u)], true), vec4<f32>(449f, var_0.x, var_0.x, 183f))), 26u)])), (u_input.b.x < 0u) && true, Struct_2(global1[_wgslsmith_index_u32(25641u, 7u)], vec3<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(~23591u), 7u)], true, global1[_wgslsmith_index_u32(~0u, 7u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-387f, 376f)))), true, var_0.wx), global3[_wgslsmith_index_u32(u_input.a.x | 1u, 9u)]);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.c, _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.e.x, u_input.c), abs(u_input.e.x)), 23006i), -21123i), vec3<i32>(abs(u_input.c), _wgslsmith_mult_i32(-9002i, u_input.e.x), firstLeadingBit(countOneBits(u_input.e.x))));
    let var_3 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(Struct_1(_wgslsmith_sub_i32(-u_input.e.x, u_input.c), true, var_1.b.yx, func_5(global0[_wgslsmith_index_u32(40647u | u_input.a.x, 26u)], _wgslsmith_f_op_f32(func_7(var_3, Struct_2(false, var_1.b, var_0.x, false, vec2<f32>(var_0.x, global4.x)), global0[_wgslsmith_index_u32(u_input.d.x, 26u)], Struct_1(u_input.c, true, var_1.b.xx, vec4<f32>(var_0.x, -103f, var_0.x, 329f)))), countOneBits(24477u), func_8(var_0.x, var_3, global3[_wgslsmith_index_u32(66070u, 9u)], Struct_2(var_3, var_1.b, var_1.e.x, true, var_0.yy))).d), _wgslsmith_f_op_f32(abs(global4.x)), func_6(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.b.x), 26u)], _wgslsmith_mod_i32(i32(-1i) * -1384i, 16813i), false), Struct_2(all(vec2<bool>(true, true)), vec3<bool>(u_input.e.x >= 2147483647i, var_1.b.x, true), var_0.x, true, vec2<f32>(global4.x, _wgslsmith_f_op_f32(f32(-1f) * -150f)))).d.x, vec4<u32>(countOneBits(85168u), u_input.d.x, _wgslsmith_add_u32(48885u, u_input.b.x), ~(~u_input.a.x)));
}

