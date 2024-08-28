struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), -695f, all(vec2<bool>(arg_2.a, true))))) + arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f * -1112f))), _wgslsmith_f_op_f32(round(arg_1.x)));
    global0 = 1u;
    var var_1 = 0u;
    let var_2 = Struct_1(max(~_wgslsmith_clamp_vec3_u32(vec3<u32>(2865u, 0u, 4294967295u), vec3<u32>(0u, 15530u, 0u), ~vec3<u32>(16647u, 36314u, 4830u)), reverseBits(countOneBits(vec3<u32>(4294967295u, 6856u, 1u))) ^ abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, 54189u), vec3<u32>(11836u, 103116u, 4294967295u), vec3<u32>(5441u, 1u, 4294967295u)))), arg_1, 35345u);
    var var_3 = vec3<bool>(false, false, ~(-1i << (_wgslsmith_sub_u32(var_2.c, 56807u) % 32u)) <= ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-18963i, u_input.a, -50726i), vec3<i32>(-38941i, u_input.a, u_input.a)), firstTrailingBit(vec3<i32>(12432i, u_input.b.x, -2147483647i))));
    return _wgslsmith_f_op_f32(f32(-1f) * -703f);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_2(false, select(vec3<bool>(true, true, true), !vec3<bool>(true, false, select(true, true, false)), arg_0.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) * _wgslsmith_div_f32(arg_0.x, arg_0.x))));
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(abs(vec4<u32>(_wgslsmith_clamp_u32(73947u, 1u, 4294967295u), abs(4294967295u), 34973u, _wgslsmith_dot_vec3_u32(vec3<u32>(42045u, 4294967295u, 0u), vec3<u32>(15236u, 1u, 0u))))));
    global0 = ~_wgslsmith_clamp_u32(~1u >> (~(~1u) % 32u), 21164u, 1u);
    global0 = 4294967295u;
    let var_1 = var_0;
    return _wgslsmith_dot_vec2_u32((firstTrailingBit(max(vec2<u32>(0u, 4294967295u), vec2<u32>(28552u, 32550u))) & min(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 1u)), vec2<u32>(1u, 1u))) ^ _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(17684u, 1u), vec2<u32>(85932u, 1u), vec2<u32>(0u, 4294967295u)), ~vec2<u32>(0u, 4294967295u)), ~vec2<u32>(1u, 1u)), ~vec2<u32>(1u, 1u));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_3 {
    global0 = ~select(arg_1.x, func_3(vec3<f32>(_wgslsmith_f_op_f32(min(-830f, 325f)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_2(arg_2.a.a, arg_0.xy, arg_2.a, Struct_2(true, vec3<bool>(false, false, arg_2.a.a)))))), arg_2.a.a);
    global0 = max(~min(~(~4294967295u), min(78867u, countOneBits(arg_1.x))), arg_1.x);
    let var_0 = select(arg_2.a.b, vec3<bool>(arg_1.x != max(20744u, 2312u), all(select(arg_2.a.b, vec3<bool>(arg_2.a.a, true, arg_2.a.b.x), !arg_2.a.a)), true), !arg_2.a.a);
    let var_1 = Struct_1(~(~vec3<u32>(arg_1.x, firstLeadingBit(1u), _wgslsmith_mult_u32(77725u, 23585u))), arg_0.xx, arg_1.x);
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~(~select(vec4<u32>(44078u, arg_1.x, arg_1.x, 4294967295u), vec4<u32>(var_1.c, arg_1.x, 38920u, 1u), var_0.x)), (vec4<u32>(54874u, var_1.c, 0u, arg_1.x) << (select(vec4<u32>(arg_1.x, var_1.a.x, 0u, 43848u), vec4<u32>(arg_1.x, arg_1.x, 27557u, arg_1.x), true) % vec4<u32>(32u))) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(1718u, arg_1.x, 4294967295u, arg_1.x), vec4<u32>(arg_1.x, 4294967295u, var_1.c, var_1.c)), abs(min(vec4<u32>(80244u, 1u, arg_1.x, 43614u) << (vec4<u32>(arg_1.x, arg_1.x, 16660u, var_1.a.x) % vec4<u32>(32u)), vec4<u32>(26419u, 4294967295u, 1u, 1u)))), ~(~vec4<u32>(select(1u, 4294967295u, true), abs(2776u), ~49477u, min(20038u, var_1.c))));
    return Struct_3(arg_2.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    global0 = min(~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.a.x, arg_2.a.x), min(arg_2.a.xy, arg_2.a.zy) << ((vec2<u32>(43671u, 0u) | arg_2.a.zz) % vec2<u32>(32u))) & 24371u);
    var var_0 = all(select(vec3<bool>(true, arg_0.a.b.x, false), vec3<bool>(arg_1.x, true, true), select(vec3<bool>(arg_0.a.a, !arg_0.a.b.x, -1000f != arg_3), func_1(vec3<f32>(245f, arg_2.b.x, 1000f), arg_2.a, func_1(vec3<f32>(-775f, arg_2.b.x, arg_3), arg_2.a, arg_0)).a.b, false)));
    var_0 = any(!(!func_1(vec3<f32>(-1482f, arg_2.b.x, 1000f), arg_2.a ^ vec3<u32>(14695u, arg_2.c, arg_2.c), Struct_3(arg_0.a)).a.b.yz));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_3))));
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.x, -753f, 534f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-195f, _wgslsmith_div_f32(-1000f, arg_3), arg_2.b.x))), ~arg_2.a, Struct_3(Struct_2(arg_1.x, select(!arg_0.a.b, vec3<bool>(arg_0.a.a, arg_0.a.b.x, true), false | arg_0.a.a)))).a;
    return Struct_3(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1418f, -1965f, 1441f), vec3<f32>(1088f, arg_3, 662f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_3, arg_3, arg_2.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-716f, var_1, arg_3), vec3<f32>(426f, var_1, -475f), arg_0.a.b)))), _wgslsmith_add_vec3_u32(arg_2.a, ~(~arg_2.a)), Struct_3(func_1(vec3<f32>(arg_2.b.x, arg_3, -477f), arg_2.a, func_1(vec3<f32>(arg_3, arg_2.b.x, var_1), arg_2.a, arg_0)).a)).a);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_i32(abs(u_input.a), -select(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 15181i), vec3<i32>(u_input.b.x, 0i, u_input.b.x)), vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), vec2<i32>(u_input.b.x, u_input.b.x)), i32(-1i) * -6667i), true), u_input.b.x);
    global0 = _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(29894u, 28886u), 1u), 4294967295u)), _wgslsmith_div_u32(1u, 109133u));
    global0 = ~(~(~(~1u)));
    let var_1 = Struct_1(vec3<u32>(4120u, ~128600u | func_3(vec3<f32>(-1238f, 209f, 1742f)), ~(~4294967295u)) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(291f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1037f, 729f)), any(arg_0.a.b))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -1212f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 227f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 421f) * vec2<f32>(1000f, -1121f))))), firstLeadingBit(_wgslsmith_add_u32(min(1u, 4294967295u), abs(48228u)) >> (~4294967295u % 32u)));
    global0 = var_1.c;
    return var_1;
}

fn func_6(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(all(!select(func_1(vec3<f32>(-1385f, arg_0.b.x, arg_0.b.x), vec3<u32>(arg_0.a.x, arg_0.c, arg_0.a.x), Struct_3(Struct_2(false, vec3<bool>(false, false, false)))).a.b.zz, func_4(Struct_3(Struct_2(false, vec3<bool>(true, false, true))), vec2<bool>(true, true), Struct_1(vec3<u32>(0u, 0u, 0u), vec2<f32>(142f, 2054f), arg_0.a.x), arg_0.b.x).a.b.xx, func_1(vec3<f32>(-381f, arg_0.b.x, -703f), vec3<u32>(arg_0.c, 63792u, arg_0.a.x), Struct_3(Struct_2(true, vec3<bool>(false, false, false)))).a.b.yy)), select(!(!func_4(Struct_3(Struct_2(true, vec3<bool>(true, true, true))), vec2<bool>(true, false), arg_0, arg_0.b.x).a.b), vec3<bool>(_wgslsmith_mult_i32(u_input.b.x, u_input.a) > u_input.b.x, any(vec2<bool>(true, true)), true), vec3<bool>(true, true || all(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)))));
    let var_1 = vec3<u32>(0u, ~arg_0.c, 1u);
    let var_2 = _wgslsmith_sub_i32(0i, u_input.a);
    var var_3 = Struct_1(_wgslsmith_mod_vec3_u32(abs(arg_0.a), vec3<u32>(~var_1.x, ~arg_0.a.x, 51851u) | vec3<u32>(var_1.x, _wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(arg_0.c, 0u, var_1.x)), 4294967295u | var_1.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-func_5(Struct_3(Struct_2(var_0.b.x, var_0.b))).b))), func_5(func_4(Struct_3(Struct_2(false, vec3<bool>(var_0.b.x, false, false))), !func_1(vec3<f32>(arg_0.b.x, 1547f, arg_0.b.x), var_1, Struct_3(Struct_2(var_0.a, vec3<bool>(var_0.a, true, var_0.b.x)))).a.b.zy, Struct_1(var_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, -1172f)), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1672f, -1000f))))).c);
    let var_4 = ~_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(0i, -13849i, ~u_input.b.x)), firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(-2147483647i, u_input.b.x), var_2, -27255i)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(func_4(func_1(vec3<f32>(-1142f, -1323f, -1052f), vec3<u32>(81412u, 86039u, 34133u), Struct_3(Struct_2(false, vec3<bool>(true, false, false)))), vec2<bool>(true, true), Struct_1(vec3<u32>(67881u, 4294967295u, 1u), vec2<f32>(1578f, -258f), 10831u), 346f)))));
    var var_1 = !((_wgslsmith_f_op_f32(-402f + _wgslsmith_div_f32(1524f, 771f)) < var_0) | select(true, abs(u_input.b.x) >= u_input.b.x, select(true, true, true)));
    var var_2 = vec2<f32>(593f, 568f);
    global0 = func_5(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-747f, 803f, var_0)))), vec3<u32>(1u, 1u, 1u), func_4(func_1(vec3<f32>(var_0, 642f, var_0), vec3<u32>(124608u, 21317u, 8986u), Struct_3(Struct_2(false, vec3<bool>(false, false, false)))), func_4(Struct_3(Struct_2(true, vec3<bool>(true, true, false))), vec2<bool>(true, false), Struct_1(vec3<u32>(109514u, 1u, 28455u), vec2<f32>(-554f, -101f), 4570u), 1426f).a.b.zy, func_5(Struct_3(Struct_2(true, vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(select(var_0, -817f, true))))).a.x ^ abs(1u);
    let var_3 = func_4(Struct_3(func_4(Struct_3(func_1(vec3<f32>(var_2.x, var_0, 1610f), vec3<u32>(60844u, 16565u, 0u), Struct_3(Struct_2(false, vec3<bool>(true, false, true)))).a), select(func_1(vec3<f32>(var_2.x, -191f, 507f), vec3<u32>(1u, 38711u, 0u), Struct_3(Struct_2(true, vec3<bool>(true, false, true)))).a.b.yz, func_1(vec3<f32>(var_0, var_2.x, 2073f), vec3<u32>(32691u, 4294967295u, 0u), Struct_3(Struct_2(false, vec3<bool>(false, true, false)))).a.b.zy, true), func_5(func_1(vec3<f32>(var_0, -212f, -253f), vec3<u32>(68299u, 0u, 3755u), Struct_3(Struct_2(false, vec3<bool>(true, false, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2339f) + var_2.x)).a), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, true))), Struct_1(vec3<u32>(_wgslsmith_add_u32(~4294967295u, ~50926u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(11993u, 4294967295u), vec2<u32>(4294967295u, 5204u)), vec2<u32>(0u, 1u)), min(func_3(vec3<f32>(var_0, var_2.x, var_2.x)), _wgslsmith_mult_u32(8707u, 90438u))), _wgslsmith_div_vec2_f32(vec2<f32>(-226f, -724f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, var_2.x), vec2<f32>(var_0, var_2.x), vec2<bool>(true, true))) + func_5(Struct_3(Struct_2(false, vec3<bool>(true, false, false)))).b)), ~(~(52540u >> (0u % 32u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(func_6(Struct_1(vec3<u32>(1u, 4294967295u, 9921u), vec2<f32>(-257f, var_2.x), 0u)))))))).a;
    var var_4 = !vec4<bool>(func_4(func_4(func_1(vec3<f32>(var_2.x, -1000f, 456f), vec3<u32>(49601u, 21884u, 103700u), Struct_3(Struct_2(true, var_3.b))), !vec2<bool>(true, var_3.b.x), func_5(Struct_3(var_3)), 786f), !(!var_3.b.xz), func_5(func_1(vec3<f32>(var_2.x, var_2.x, var_0), vec3<u32>(9831u, 8901u, 0u), Struct_3(var_3))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 + -1373f)))).a.b.x, func_4(func_4(func_4(Struct_3(Struct_2(var_3.a, vec3<bool>(var_3.b.x, true, var_3.a))), var_3.b.yx, Struct_1(vec3<u32>(9660u, 0u, 1u), vec2<f32>(649f, var_0), 0u), var_0), func_1(vec3<f32>(var_2.x, -1433f, -850f), vec3<u32>(1u, 1u, 0u), Struct_3(Struct_2(var_3.a, var_3.b))).a.b.yy, func_5(Struct_3(Struct_2(var_3.a, var_3.b))), _wgslsmith_div_f32(var_2.x, var_0)), vec2<bool>(true || var_3.b.x, true), func_5(func_4(Struct_3(var_3), var_3.b.zy, Struct_1(vec3<u32>(4937u, 29018u, 0u), vec2<f32>(var_0, 1331f), 6237u), -747f)), var_0).a.a, true, false);
    var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(var_2.x, var_2.x)), func_5(func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(2691f, var_0, var_2.x))), vec3<u32>(~32219u, _wgslsmith_dot_vec4_u32(vec4<u32>(40573u, 1u, 63081u, 41403u), vec4<u32>(78877u, 74536u, 1u, 4294967295u)), _wgslsmith_mod_u32(30058u, 5955u)), func_4(func_1(vec3<f32>(1224f, var_0, var_0), vec3<u32>(12022u, 2973u, 1u), Struct_3(var_3)), !var_4.wx, Struct_1(vec3<u32>(0u, 61956u, 4294967295u), vec2<f32>(466f, var_0), 0u), _wgslsmith_f_op_f32(abs(var_2.x))))).b));
    var var_5 = Struct_3(var_3);
    let x = u_input.a;
    s_output = StorageBuffer(18724u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-630f, var_0, 1462f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(909f, -681f, 141f)))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_2(true, vec2<f32>(var_0, 631f), Struct_2(false, var_5.a.b), var_5.a)), _wgslsmith_f_op_f32(sign(var_0)), -253f), vec3<f32>(2173f, -221f, _wgslsmith_f_op_f32(var_0 + 1000f)), !var_5.a.b))));
}

