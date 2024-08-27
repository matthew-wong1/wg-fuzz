struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32, arg_3: vec3<i32>) -> vec3<u32> {
    let var_0 = Struct_1(true);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(367f, 1270f) - _wgslsmith_f_op_f32(min(296f, 251f))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1938f)), _wgslsmith_f_op_f32(sign(-341f))))));
    var var_2 = Struct_3(vec4<u32>(1u, 1u, 1u, 1u), vec3<bool>(false, false, true), Struct_1(!all(vec3<bool>(false, true, arg_1.b))), Struct_2(false, all(vec3<bool>(true, global0.b | false, true))), Struct_1(any(select(!vec4<bool>(true, arg_1.b, false, true), select(vec4<bool>(global0.b, global0.b, true, arg_1.a), vec4<bool>(false, true, true, global0.b), vec4<bool>(false, arg_1.a, var_0.a, arg_1.a)), vec4<bool>(false, global0.a, var_0.a, false)))));
    var var_3 = vec4<u32>(var_2.a.x, _wgslsmith_add_u32(~countOneBits(var_2.a.x), abs(var_2.a.x)), ~(reverseBits(~17421u) >> (var_2.a.x % 32u)), ~(~55198u));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1086f);
    return ~(firstTrailingBit(var_2.a.yzy) ^ (_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(var_2.a.ywx, var_3.xzw), reverseBits(vec3<u32>(5411u, 8660u, 0u))) >> (var_2.a.xyz % vec3<u32>(32u))));
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(!select(any(!vec4<bool>(global0.a, global0.a, global0.a, false)), !all(vec2<bool>(global0.a, global0.a)), global0.b), false);
    let var_0 = Struct_3(vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(84572u, 36424u, 4294967295u)), func_3(vec2<bool>(false, true), Struct_2(false, true), 10071i, vec3<i32>(-25918i, u_input.a.x, -1i))), select(_wgslsmith_clamp_u32(~55066u, ~1u, 27663u), 1u, true), 66239u & ~_wgslsmith_dot_vec4_u32(vec4<u32>(25608u, 10121u, 14746u, 40459u), vec4<u32>(1u, 8221u, 1u, 1u)), abs(~(~21133u))), !select(!(!vec3<bool>(global0.a, true, false)), !vec3<bool>(global0.b, global0.b, global0.b), !select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(global0.a, global0.b, global0.b), global0.a)), Struct_1(global0.a), Struct_2(true, global0.a), Struct_1((select(false, global0.a, global0.b) || true) | true));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(907f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1000f, 1108f)), _wgslsmith_f_op_f32(-763f - 510f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(1438f, -1000f), vec2<f32>(234f, -524f)), _wgslsmith_div_vec2_f32(vec2<f32>(821f, 732f), vec2<f32>(1024f, -587f))))))));
    var var_2 = var_0.a.wy;
    global0 = var_0.d;
    return var_0.d;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> vec4<bool> {
    let var_0 = Struct_1(!all(!vec3<bool>(arg_1.b, false, arg_1.b)));
    var var_1 = vec3<i32>(u_input.a.x, ~(~_wgslsmith_dot_vec2_i32(arg_0.zz >> (vec2<u32>(108565u, 0u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(-21260i, 37936i), vec2<i32>(arg_0.x, 2147483647i)))), arg_0.x);
    let var_2 = var_0;
    global0 = func_2();
    var_1 = select(vec3<i32>(~(-1i), _wgslsmith_add_i32(reverseBits(~u_input.a.x), -2147483647i), i32(-1i) * -var_1.x), firstTrailingBit(vec3<i32>(u_input.a.x, 1i, ~countOneBits(0i))), true);
    return select(vec4<bool>(false, (arg_2 < _wgslsmith_f_op_f32(-arg_2)) && !var_2.a, false && (_wgslsmith_f_op_f32(select(arg_2, arg_2, false)) >= _wgslsmith_f_op_f32(arg_2 * 863f)), any(!vec3<bool>(var_0.a, false, false)) || any(!vec2<bool>(arg_1.b, false))), vec4<bool>(true, false, !(!all(vec4<bool>(var_2.a, true, global0.a, var_0.a))), !all(select(vec3<bool>(true, true, var_2.a), vec3<bool>(var_0.a, false, false), true))), !(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(global0.a, false, false, global0.a), vec4<bool>(arg_1.a, var_2.a, false, arg_1.b)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) - -349f) + -1154f) == 453f, !any(vec3<bool>(any(vec3<bool>(arg_0.x, false, global0.b)), arg_2.c.a, false)));
    global0 = Struct_2(func_4(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, -67i), Struct_2(all(arg_0), arg_0.x), _wgslsmith_f_op_f32(min(arg_1, arg_1))).x && !arg_0.x, true);
    global0 = func_2();
    global0 = Struct_2(arg_0.x, !(!any(!vec4<bool>(true, arg_2.c.a, false, arg_0.x))));
    global0 = func_2();
    return arg_2.a;
}

fn func_1() -> Struct_2 {
    global0 = func_5(func_4(~firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.a.x, 1i, -2147483647i))), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-594f)), _wgslsmith_f_op_f32(trunc(-986f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2073f), _wgslsmith_f_op_f32(400f + 461f))))), Struct_4(Struct_2(func_4(vec3<i32>(0i, 2147483647i, u_input.a.x), func_2(), -1315f).x, true), firstLeadingBit(1i), Struct_1(func_2().a)));
    var var_0 = !(!func_4(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(5189i, u_input.a.x, u_input.a.x), vec3<i32>(-27728i, u_input.a.x, 2147483647i), vec3<i32>(1i, u_input.a.x, u_input.a.x)), max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(24884i, 1i, 0i)), select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(false, true, global0.b), vec3<bool>(global0.a, global0.a, false))), Struct_2(true, true), _wgslsmith_f_op_f32(-488f - _wgslsmith_f_op_f32(floor(1059f)))));
    var var_1 = _wgslsmith_sub_vec3_u32(select(~_wgslsmith_mod_vec3_u32(vec3<u32>(48598u, 4294967295u, 0u), vec3<u32>(5697u, 77416u, 9215u)), vec3<u32>(0u, _wgslsmith_sub_u32(4294967295u, 94267u), select(38161u, 0u, global0.b)), func_2().b), ~abs(vec3<u32>(644u, 0u, 49975u))) | vec3<u32>(~abs(firstTrailingBit(44643u)), 112026u, ~31184u);
    var var_2 = vec4<u32>(firstLeadingBit(min(var_1.x, 9764u)), ~0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, 0u, 1u) | vec3<u32>(8345u, _wgslsmith_mult_u32(var_1.x, 8000u), var_1.x), ~(~reverseBits(vec3<u32>(0u, var_1.x, var_1.x)))), var_1.x);
    let var_3 = var_1.x;
    return func_2();
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    global0 = arg_1.a;
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f - arg_3)), arg_3, -757f, _wgslsmith_f_op_f32(-580f - arg_3))));
    let var_1 = func_5(!vec4<bool>(any(func_4(vec3<i32>(38466i, 0i, arg_1.b), arg_1.a, var_0.x)), any(vec3<bool>(true, true, global0.b)), select(false, arg_1.a.a, all(vec2<bool>(arg_1.c.a, false))), select(false, any(vec2<bool>(true, arg_1.a.b)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) - _wgslsmith_div_f32(-205f, -1609f))), arg_1);
    var var_2 = arg_1.a;
    var var_3 = global0.a;
    return ~vec2<u32>(1u, ~(~select(arg_0, arg_0, arg_2.a)));
}

fn func_7(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = -502f;
    var_0 = 1317f;
    var_0 = _wgslsmith_f_op_f32(exp2(1f));
    var var_1 = abs(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.a.x, 20108i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 17347i, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x, 0i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, 4477i, u_input.a.x), vec3<i32>(-32401i, -2147483647i, 927i) | vec3<i32>(u_input.a.x, 0i, -35051i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -1846i))) | -_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -48597i, -44932i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(true, false);
    var var_0 = func_7(func_6(4294967295u, Struct_4(func_1(), u_input.a.x, Struct_1(all(vec2<bool>(true, false)))), Struct_1(_wgslsmith_f_op_f32(floor(1399f)) > _wgslsmith_f_op_f32(-1203f * -1000f)), -595f));
    let var_1 = Struct_1(true);
    var var_2 = !func_5(!vec4<bool>(all(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, false, true, false)), true, var_0.a), _wgslsmith_f_op_f32(-1f), Struct_4(func_1(), 2147483647i, var_1)).b;
    var var_3 = func_6(_wgslsmith_clamp_u32(~(~19087u), reverseBits(1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 17774u, 28053u), vec3<u32>(1u, 64689u, 112881u)) & 53614u), Struct_4(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u)) != _wgslsmith_div_u32(25702u, 59314u), global0.a), u_input.a.x, func_7(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(111905u, 31194u), vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(60318u, 0u), all(vec4<bool>(global0.b, true, true, var_1.a))))), Struct_1(true), -1045f).x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstLeadingBit(max(1i ^ u_input.a.x, -u_input.a.x)), 15591i, -u_input.a.x, -2147483647i), func_6(~23742u, Struct_4(func_1(), u_input.a.x, var_1), var_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(176f + 1177f)), -1000f))));
}

