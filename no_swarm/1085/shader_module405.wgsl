struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 28> = array<bool, 28>(true, true, false, true, false, true, true, true, true, false, true, false, false, true, false, false, false, true, true, true, true, false, true, false, true, true, true, true);

var<private> global2: Struct_4 = Struct_4(Struct_1(743u, vec2<f32>(1019f, 1163f), vec3<bool>(true, true, false), 1i), Struct_3(Struct_2(4294967295u, -761f, 1u), false, vec3<i32>(-40629i, 1i, 42595i), Struct_1(35174u, vec2<f32>(-132f, -1000f), vec3<bool>(true, false, true), 35594i), -279f), Struct_2(431u, 454f, 4294967295u));

var<private> global3: i32 = 33141i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> i32 {
    let var_0 = arg_0.b;
    let var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(43232u, _wgslsmith_div_u32(~4656u, _wgslsmith_add_u32(u_input.d, 52674u)), countOneBits(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.c.c, 54126u, global2.b.a.c), vec3<u32>(15381u, arg_0.a, 10473u))) & ~vec3<u32>(u_input.d, u_input.c.x, arg_0.a), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a, global2.a.a, 32451u) >> (vec3<u32>(4294967295u, 1u, 21000u) % vec3<u32>(32u)), vec3<u32>(arg_0.a, u_input.d, global2.b.d.a)) ^ ~select(vec3<u32>(0u, 1u, 11326u), vec3<u32>(global2.a.a, global2.b.d.a, global2.c.a), vec3<bool>(global2.a.c.x, false, arg_0.c.x))), min(vec3<u32>(~global2.a.a, 4294967295u, 51760u), ~abs(vec3<u32>(arg_0.a, 1u, arg_0.a))));
    var var_2 = select(~(~1u), global2.a.a, false);
    var var_3 = i32(-1i) * -1i;
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(885f, 1149f, -726f), vec3<f32>(1000f, 488f, 1414f))) - vec3<f32>(global2.c.b, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(-881f, 1378f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global2.b.a.b, var_0.x) - vec3<f32>(599f, global2.a.b.x, 103f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -450f, 332f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(811f, arg_0.b.x, -796f) + vec3<f32>(arg_0.b.x, arg_0.b.x, 665f)) + vec3<f32>(757f, global2.b.a.b, -955f)))));
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> i32 {
    global3 = select(0i, abs(global2.a.d), true);
    global1 = array<bool, 28>();
    global1 = array<bool, 28>();
    var var_0 = vec3<i32>(global2.a.d, _wgslsmith_clamp_i32(~arg_0.d.d, _wgslsmith_div_i32(abs(_wgslsmith_div_i32(global2.a.d, 27020i)), ~(2147483647i | arg_0.c.x)), ~(-1i)), arg_0.d.d & -2147483647i);
    var var_1 = Struct_4(Struct_1(_wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c)), 4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a.b, 1070f))))), select(vec3<bool>(any(global2.b.d.c.yz), false, global1[_wgslsmith_index_u32(1u, 28u)] || true), vec3<bool>(false, arg_1 && true, true), _wgslsmith_f_op_f32(arg_0.d.b.x + -199f) <= arg_0.a.b), -max(0i, _wgslsmith_div_i32(var_0.x, -7076i))), Struct_3(global2.b.a, false | (~u_input.d > global2.a.a), global2.b.c, Struct_1(~abs(1u), _wgslsmith_f_op_vec2_f32(global2.b.d.b * _wgslsmith_f_op_vec2_f32(-global2.b.d.b)), vec3<bool>(true, false, select(arg_1, global2.b.d.c.x, true)), global2.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1796f)))), arg_0.a);
    return min(-67472i, ~arg_0.d.d | global2.a.d);
}

fn func_2() -> vec3<bool> {
    global3 = _wgslsmith_mult_i32(u_input.a.x, ~2147483647i) | func_4(Struct_3(Struct_2(_wgslsmith_mult_u32(13259u, 12721u), _wgslsmith_f_op_f32(-global2.b.a.b), u_input.c.x), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, 4294967295u, 34223u), vec4<u32>(44907u, global2.c.a, u_input.c.x, u_input.c.x)), 28u)], vec3<i32>(u_input.a.x, i32(-1i) * -1i, func_3(Struct_1(1u, global2.b.d.b, vec3<bool>(global2.b.d.c.x, false, global2.b.d.c.x), u_input.a.x), u_input.b.xwx, -9083i)), Struct_1(select(u_input.c.x, u_input.d, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(615f, -249f)), global2.b.d.c, -global2.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(493f, global2.b.e)))), all(global2.a.c), _wgslsmith_mult_u32(select(~31223u, _wgslsmith_clamp_u32(global2.c.a, global2.c.c, global2.b.a.c), global2.a.b.x <= -1000f), countOneBits(12624u)));
    var var_0 = global2.a.c.yz;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.d.b.x, global2.b.d.b.x, 1701f) * vec3<f32>(-1690f, global2.a.b.x, global2.a.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1017f, -428f, global2.a.b.x)), vec3<bool>(true, true, true))))) - vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global2.c.b)))), global2.b.e, _wgslsmith_div_f32(1f, global2.c.b)));
    var var_2 = global2.b.d.b;
    var var_3 = _wgslsmith_div_vec2_f32(var_1.yx, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(select(-693f, _wgslsmith_f_op_f32(floor(-1253f)), !global1[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-622f, var_2.x, true))))))));
    return global2.a.c;
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: vec4<f32>) -> vec4<f32> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_sub_u32(_wgslsmith_sub_u32(global2.a.a, 93067u), _wgslsmith_sub_u32(select(51390u, 4294967295u, global2.b.d.c.x), 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, arg_3.x)) * -1271f), 19743u & firstLeadingBit(_wgslsmith_add_u32(93481u, global2.a.a))), !global2.a.c.x, u_input.a, global2.a, 1613f);
    global0 = false;
    global0 = select(arg_0, true, true) & (_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-991f, -1121f)) < _wgslsmith_f_op_f32(-arg_3.x));
    let var_1 = var_0.a.c;
    let var_2 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.d.a, arg_1.x)), vec2<u32>(0u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.c, 1u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, arg_1.x), vec2<u32>(25863u, 0u))), firstLeadingBit(~4294967295u))));
    return _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(f32(-1f) * -1760f)), arg_3.x, -2400f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.d.b.x)) + _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_div_f32(var_0.d.b.x, var_0.d.b.x))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_add_u32(firstLeadingBit(reverseBits(countOneBits(u_input.d))), 4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.b) * vec2<f32>(-403f, 213f)), !select(global2.b.d.c, vec3<bool>(true, select(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)], global2.a.c.x), !global1[_wgslsmith_index_u32(76162u, 28u)]), false), -17822i);
}

fn func_7(arg_0: i32, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = true;
    let var_1 = firstTrailingBit(_wgslsmith_add_vec4_i32(firstTrailingBit(u_input.b), select(-vec4<i32>(global2.b.d.d, u_input.b.x, 2147483647i, -30082i), vec4<i32>(34131i, 9716i, arg_0, arg_0) ^ vec4<i32>(40130i, -11387i, u_input.b.x, -7333i), !vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(4294967295u, 28u)]))) >> (abs(vec4<u32>(35808u, 1u, u_input.d, ~arg_1.a)) % vec4<u32>(32u)));
    let var_2 = func_6(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-803f, 525f, arg_1.b.x, global2.b.e), vec4<f32>(1955f, -479f, arg_1.b.x, -617f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b.x, global2.a.b.x, 2325f, arg_1.b.x), vec4<f32>(arg_1.b.x, -105f, 474f, 1125f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.e, -846f, arg_1.b.x, -811f))), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(global2.c.a, 28u)], global2.b.d.c.x, true)))))), -vec3<i32>(2147483647i, u_input.b.x, arg_0));
    global1 = array<bool, 28>();
    let var_3 = select(vec4<bool>(true, false, var_2.c.x, true), vec4<bool>(!var_2.c.x, true, any(!(!vec2<bool>(arg_1.c.x, arg_1.c.x))), arg_0 < -(i32(-1i) * -2147483647i)), select(select(vec4<bool>(true, false, !global2.a.c.x, arg_1.c.x), vec4<bool>(func_6(vec4<f32>(arg_1.b.x, arg_1.b.x, 468f, -1616f), vec3<i32>(38338i, u_input.a.x, global2.b.d.d)).c.x, true, global1[_wgslsmith_index_u32(~var_2.a, 28u)], !global1[_wgslsmith_index_u32(u_input.d, 28u)]), !(!vec4<bool>(var_0, global2.a.c.x, true, var_2.c.x))), vec4<bool>(global2.a.c.x || all(var_2.c.zz), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], global1[_wgslsmith_index_u32(u_input.d, 28u)])), var_2.c.x, var_0), true));
    return -(_wgslsmith_mod_vec4_i32(countOneBits(var_1 & vec4<i32>(26785i, 40684i, -3133i, var_1.x)), var_1) | max(u_input.b, _wgslsmith_add_vec4_i32(var_1, -u_input.b)));
}

fn func_1() -> Struct_4 {
    global3 = _wgslsmith_dot_vec4_i32(func_7(-2147483647i, func_6(_wgslsmith_f_op_vec4_f32(func_5(!global1[_wgslsmith_index_u32(u_input.c.x, 28u)], u_input.c << (vec2<u32>(u_input.c.x, global2.c.a) % vec2<u32>(32u)), func_2(), vec4<f32>(global2.a.b.x, global2.b.a.b, global2.b.e, global2.a.b.x))), global2.b.c)), reverseBits(u_input.b));
    var var_0 = Struct_4(func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-492f, global2.c.b, global2.b.e, 936f), vec4<f32>(global2.b.a.b, global2.b.e, 104f, global2.b.d.b.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 28u)], global2.b.b, true, global1[_wgslsmith_index_u32(30800u, 28u)]))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.b.a.b, global2.a.b.x, -785f, -247f))), vec4<bool>(global2.b.b, global2.a.c.x, global1[_wgslsmith_index_u32(0u, 28u)], false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.b.x, -1000f, global2.a.b.x, global2.b.d.b.x), vec4<f32>(1075f, 116f, global2.a.b.x, -2445f), global1[_wgslsmith_index_u32(u_input.d, 28u)]))), any(vec2<bool>(true, global1[_wgslsmith_index_u32(global2.c.c, 28u)])))), global2.b.c), Struct_3(Struct_2(18215u >> ((global2.c.c ^ 1u) % 32u), _wgslsmith_div_f32(1252f, global2.b.e), ~abs(global2.c.a)), func_6(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1425f, global2.b.e, global2.a.b.x, global2.a.b.x), vec4<f32>(global2.c.b, -507f, 1220f, global2.a.b.x))), global2.b.c).c.x, _wgslsmith_mod_vec3_i32(abs(firstTrailingBit(vec3<i32>(global2.b.d.d, u_input.b.x, -6837i))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(global2.b.c, u_input.a, u_input.a), abs(vec3<i32>(-2147483647i, u_input.b.x, u_input.a.x)))), global2.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.x))))), Struct_2(reverseBits(global2.a.a << (_wgslsmith_add_u32(49943u, 1u) % 32u)), _wgslsmith_f_op_f32(-global2.b.e), _wgslsmith_div_u32(u_input.d, (global2.b.a.a & u_input.d) ^ global2.a.a)));
    global1 = array<bool, 28>();
    global2 = Struct_4(var_0.a, var_0.b, Struct_2(1u, 1931f, select(~u_input.d, u_input.c.x, global1[_wgslsmith_index_u32(~20510u, 28u)])));
    global1 = array<bool, 28>();
    return Struct_4(func_6(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(898f * 264f), _wgslsmith_f_op_f32(-global2.c.b), -1992f, -892f))), global2.b.c), Struct_3(Struct_2(global2.a.a, global2.a.b.x, ~(~62857u)), func_6(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.b.x, -623f, 288f, global2.b.e) + vec4<f32>(977f, global2.a.b.x, var_0.c.b, -1004f)), ~vec3<i32>(global2.a.d, 40304i, 8898i)).c.x, firstLeadingBit(~firstTrailingBit(vec3<i32>(-2147483647i, 0i, 0i))), func_6(vec4<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(-var_0.b.e), 673f, var_0.c.b), ~_wgslsmith_clamp_vec3_i32(u_input.a, var_0.b.c, vec3<i32>(-2147483647i, var_0.a.d, -40231i))), _wgslsmith_f_op_f32(var_0.b.d.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.e - 1074f)))), Struct_2(global2.b.a.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(754f - -1000f), _wgslsmith_f_op_f32(trunc(var_0.a.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f))), abs(var_0.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(730f, global2.b.a.b, global2.a.b.x));
    var var_1 = global2.b.a;
    global2 = func_1();
    var_1 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.c.x << (global2.c.a % 32u), _wgslsmith_mod_u32(global2.a.a, 0u), max(0u, 96487u)), _wgslsmith_mult_u32(1u, var_1.a) >> (1u % 32u)), 4294967295u), 1000f, min(var_1.a, ~(~67173u)) & 1u);
    let var_2 = Struct_1(~(~(~(4294967295u << (global2.b.d.a % 32u)))), global2.b.d.b, vec3<bool>(false, true, global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(4294967295u, 8878u), 28u)]), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_5(global1[_wgslsmith_index_u32(4294967295u, 28u)], u_input.c, func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.e, 139f, 398f, 776f)))).x, -1000f)), 684f, var_2.b.x, func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.b, 372f, -1000f, global2.a.b.x)), -vec3<i32>(-19894i, u_input.a.x, 1i)).b.x), vec2<u32>(0u, ~1u), ~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, global2.a.a, var_2.a, global2.b.d.a)), ~vec4<u32>(var_2.a, global2.a.a, var_2.a, 1u))), 2034f);
}

