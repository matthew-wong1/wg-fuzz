struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-277f, -890f, 1000f, -1372f), vec4<f32>(300f, -221f, -1000f, 843f), vec4<f32>(471f, 604f, -1000f, -1018f), vec4<f32>(360f, -274f, -1291f, 1948f), vec4<f32>(-937f, -1626f, -1052f, -1105f), vec4<f32>(-1000f, -471f, 700f, -1757f), vec4<f32>(-411f, 1113f, -1573f, -1000f), vec4<f32>(933f, -394f, -502f, -1033f), vec4<f32>(-989f, 221f, 1832f, 802f), vec4<f32>(-2525f, -1538f, -1736f, -1000f), vec4<f32>(584f, -1221f, -475f, 950f), vec4<f32>(348f, -731f, 469f, -430f), vec4<f32>(734f, -571f, 1024f, 551f), vec4<f32>(317f, 860f, 1303f, -329f), vec4<f32>(1564f, -783f, -561f, -194f), vec4<f32>(-744f, 762f, 1373f, 532f), vec4<f32>(-538f, -1655f, -1621f, -648f), vec4<f32>(2101f, -999f, 998f, -867f), vec4<f32>(-1000f, 1000f, -1080f, -570f), vec4<f32>(-851f, 608f, 342f, 1424f), vec4<f32>(422f, 2069f, 492f, 873f), vec4<f32>(-577f, 215f, 1872f, -356f), vec4<f32>(-270f, -1132f, 468f, 604f), vec4<f32>(-425f, -424f, -700f, 1279f), vec4<f32>(-573f, -855f, 1395f, -443f));

var<private> global1: f32;

var<private> global2: array<bool, 16> = array<bool, 16>(false, false, false, false, false, true, false, false, false, false, true, true, false, true, false, false);

var<private> global3: vec4<f32> = vec4<f32>(-661f, -1747f, -1181f, -1929f);

var<private> global4: array<u32, 16> = array<u32, 16>(21647u, 15301u, 0u, 91770u, 2211u, 21721u, 39217u, 18816u, 1u, 72972u, 4294967295u, 1u, 4294967295u, 91308u, 0u, 4294967295u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: u32, arg_3: f32) -> vec4<i32> {
    global2 = array<bool, 16>();
    global3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-839f, _wgslsmith_f_op_f32(trunc(-303f)), -532f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3 - arg_3), global3.x)), _wgslsmith_f_op_f32(-arg_3))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~(~u_input.a), 25u)]) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1302f, 134f, -1772f, -542f), global0[_wgslsmith_index_u32(arg_2, 25u)]), vec4<f32>(-223f, arg_3, -453f, -987f))), _wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(1u, 25u)]))))), select(select(!(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], arg_1.x, arg_1.x, global2[_wgslsmith_index_u32(2017u, 16u)])), !(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), vec4<bool>(!global2[_wgslsmith_index_u32(4686u, 16u)], true, global2[_wgslsmith_index_u32(arg_2, 16u)] || true, true)), select(vec4<bool>(true, all(vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 16u)], arg_1.x, true)), false, global2[_wgslsmith_index_u32(u_input.a, 16u)]), !select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 16u)], arg_1.x, true, false), vec4<bool>(false, arg_1.x, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(45166u, 16u)], 16u)], false), vec4<bool>(arg_1.x, arg_1.x, global2[_wgslsmith_index_u32(21916u, 16u)], true)), vec4<bool>(!global2[_wgslsmith_index_u32(1u, 16u)], true, all(vec4<bool>(true, true, false, global2[_wgslsmith_index_u32(u_input.a, 16u)])), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(max(global4[_wgslsmith_index_u32(18110u, 16u)], u_input.a), 16u)], 16u)])), global2[_wgslsmith_index_u32(u_input.a & ((arg_2 ^ arg_2) & ~48615u), 16u)])));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.x))), -(~firstTrailingBit(vec2<i32>(arg_0, arg_0) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)))));
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3)) + arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) - _wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(-global3.x)))), var_0.a));
    global0 = array<vec4<f32>, 25>();
    return vec4<i32>(min(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(40185i, var_0.b.x), ~select(var_0.b.x, var_0.b.x, false)), ~(-2147483647i)), -arg_0, 0i, _wgslsmith_sub_i32(-31301i, 0i));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_5(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(min(vec4<i32>(171i, arg_3.c.x, -1i, arg_3.c.x), vec4<i32>(arg_3.c.x, arg_3.c.x, -2147483647i, -24865i)), vec4<i32>(0i, arg_3.c.x, arg_3.c.x, arg_3.c.x)), ~vec4<i32>(arg_3.c.x, arg_3.c.x, 2147483647i, arg_3.c.x)), ~arg_3.c.x, -1i, arg_3.c.x), _wgslsmith_add_vec4_i32(~vec4<i32>(-1i ^ arg_3.c.x, abs(arg_3.c.x), min(arg_3.c.x, -1i), -2147483647i), -(~func_3(arg_3.c.x, vec3<bool>(arg_3.a, arg_3.b.x, arg_3.a), 14879u, arg_0))), arg_3.d.a.x);
    var var_1 = ~11786u;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1765f))));
    let var_2 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), func_3(var_0.b.x, !arg_3.b, _wgslsmith_clamp_u32(arg_1.x, arg_1.x, u_input.a), arg_0).xy), ~arg_3.c.x), Struct_1(arg_3.d.a), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, global4[_wgslsmith_index_u32(arg_3.d.a.x, 16u)], 6006u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(89036u, arg_3.d.a.x, global4[_wgslsmith_index_u32(32960u, 16u)], arg_2.a.x), arg_3.d.a, vec4<u32>(arg_3.d.a.x, arg_2.a.x, 4294967295u, 43421u))), abs(firstLeadingBit(0u)), min(0u, 33742u), 1u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-global3.zw);
    return _wgslsmith_f_op_f32(f32(-1f) * -751f);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<f32>) -> vec2<u32> {
    global4 = array<u32, 16>();
    let var_0 = select(!(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)], false))), select(vec4<bool>(!(32085u == global4[_wgslsmith_index_u32(1u, 16u)]), 0i != _wgslsmith_clamp_i32(arg_1.b.x, 1i, -86093i), !global2[_wgslsmith_index_u32(4560u, 16u)] || !global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 16u)], 16u)], all(vec3<bool>(true, true, true))), select(!(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(37439u, 16u)], arg_0.x)), vec4<bool>(true, true, all(arg_0), !arg_0.x), arg_0.x), true), any(vec3<bool>(all(vec4<bool>(arg_0.x, true, true, true)), true, false)));
    global1 = 472f;
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -(~(~vec2<i32>(arg_1.b.x, arg_1.b.x))), firstLeadingBit(~(~arg_1.b)));
    return vec2<u32>(_wgslsmith_div_u32(u_input.a, ~u_input.a), _wgslsmith_dot_vec3_u32(max(~(~vec3<u32>(0u, 0u, 1u)), vec3<u32>(114699u, global4[_wgslsmith_index_u32(52870u, 16u)], 0u)), select(select(~vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], u_input.a, u_input.a), vec3<u32>(global4[_wgslsmith_index_u32(17373u, 16u)], 4294967295u, u_input.a), any(var_0)), select(abs(vec3<u32>(u_input.a, 1809u, u_input.a)), abs(vec3<u32>(0u, global4[_wgslsmith_index_u32(33001u, 16u)], u_input.a)), var_1), vec3<bool>(var_0.x, all(arg_0), select(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], 16u)], true, var_0.x)))));
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = ~func_4(vec2<bool>(789f < _wgslsmith_f_op_f32(func_2(-650f, vec2<u32>(4294967295u, arg_0.d.a.x), Struct_1(arg_0.d.a), Struct_4(global2[_wgslsmith_index_u32(4294967295u, 16u)], arg_0.b, vec3<i32>(arg_0.c.x, 6560i, 69345i), arg_0.d))), any(vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 16u)]))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) - _wgslsmith_f_op_f32(-global3.x)), func_3(func_3(arg_3.x, arg_0.b, 1u, global3.x).x, select(arg_0.b, arg_0.b, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(18839u, 16u)], 16u)]), arg_0.d.a.x, _wgslsmith_f_op_f32(-global3.x)).wx), vec3<f32>(994f, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -684f)));
    var var_1 = 14492u;
    return Struct_2(-firstTrailingBit(min(1i, arg_0.c.x)), arg_0.d, Struct_1(firstLeadingBit((arg_0.d.a & arg_0.d.a) ^ max(arg_0.d.a, arg_0.d.a))));
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> Struct_4 {
    global1 = 2292f;
    global0 = array<vec4<f32>, 25>();
    global1 = _wgslsmith_f_op_f32(global3.x + arg_1);
    let var_0 = !(!vec2<bool>(true, any(vec4<bool>(false, global2[_wgslsmith_index_u32(10170u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], false))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-135f, 810f))), _wgslsmith_div_vec2_i32(max(_wgslsmith_mult_vec2_i32(max(vec2<i32>(-1i, 2147483647i), vec2<i32>(-8171i, 18861i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a, 44152i), vec2<i32>(16058i, -2147483647i), vec2<i32>(arg_0.a, -752i))), reverseBits(abs(vec2<i32>(-71304i, arg_0.a)))), vec2<i32>(~(-2147483647i), -(~1i))));
    return Struct_4(!global2[_wgslsmith_index_u32(firstLeadingBit(min(~arg_0.c.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 16u)] | u_input.a)), 16u)], !select(!select(vec3<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(arg_0.b.a.x, 16u)], true), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(global2[_wgslsmith_index_u32(arg_0.c.a.x, 16u)], true, var_0.x)), vec3<bool>(false, all(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 16u)], true, true)), false), true || !var_0.x), -_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_0.a, 0i, 2147483647i), ~vec3<i32>(var_1.b.x, -13568i, -16748i)), Struct_1(abs(arg_0.b.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(15357i, -72429i);
    let var_1 = func_5(func_1(Struct_4(global2[_wgslsmith_index_u32(~31239u, 16u)] || false, select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 16u)], false), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 16u)]), vec3<bool>(true, true, true), false), select(vec3<bool>(global2[_wgslsmith_index_u32(37569u, 16u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(17830u, 16u)], 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)]), vec3<bool>(false, true, global2[_wgslsmith_index_u32(2695u, 16u)]), global2[_wgslsmith_index_u32(u_input.a, 16u)])), vec3<i32>(var_0, -18094i, _wgslsmith_dot_vec3_i32(vec3<i32>(-42137i, var_0, 51366i), vec3<i32>(-1i, 2147483647i, -1i))), Struct_1(firstLeadingBit(vec4<u32>(0u, u_input.a, u_input.a, 61347u)))), _wgslsmith_add_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, var_0), vec2<i32>(var_0, 2499i), vec2<i32>(-1i, 1i)), vec2<i32>(var_0, 2147483647i)), any(vec2<bool>(true, true)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-31495i, -563i, 1i, var_0), vec4<i32>(var_0, 45417i, 2147483647i, var_0)), firstLeadingBit(vec4<i32>(0i, var_0, -19779i, var_0))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-53490i, -2147483647i, 20478i, -49087i), vec4<i32>(2147483647i, var_0, -1i, 1i), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 16u)], true, global2[_wgslsmith_index_u32(u_input.a, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)])), vec4<i32>(-18706i, -2147483647i, var_0, -75942i)))), global3.x);
    global1 = _wgslsmith_f_op_f32(abs(-321f));
    let var_2 = func_1(var_1, var_1.c.yz, all(func_5(Struct_2(-var_0, func_5(Struct_2(-1i, var_1.d, var_1.d), global3.x).d, func_1(var_1, var_1.c.xz, global2[_wgslsmith_index_u32(var_1.d.a.x, 16u)], vec4<i32>(var_1.c.x, var_1.c.x, var_0, var_0)).c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1224f - global3.x)))).b), ~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_0, 30924i, 1i, var_1.c.x)), vec4<i32>(-1i) * -vec4<i32>(15201i, 2147483647i, -1i, 1i)));
    global2 = array<bool, 16>();
    global0 = array<vec4<f32>, 25>();
    var var_3 = _wgslsmith_f_op_f32(-global3.x);
    let var_4 = global3.x;
    var_3 = -680f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1082f, -487f), global3.x, vec2<i32>(var_0, -max(reverseBits(var_0), _wgslsmith_div_i32(1i, -11994i))));
}

