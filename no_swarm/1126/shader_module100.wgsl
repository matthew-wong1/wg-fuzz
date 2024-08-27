struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-1305f, -1000f, -1055f, 375f), 105f, Struct_1(215f, 408f, vec4<f32>(637f, 267f, -838f, -189f), true, -41240i));

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<f32>(593f, -460f, -592f, 312f), 422f, Struct_1(608f, 2059f, vec4<f32>(1130f, 496f, 1416f, -510f), true, -1i)), Struct_2(vec4<f32>(-119f, 312f, 733f, 1000f), -116f, Struct_1(-507f, 594f, vec4<f32>(-2528f, -239f, 1282f, 566f), false, -7795i)), Struct_2(vec4<f32>(1000f, -394f, 517f, -2244f), 400f, Struct_1(566f, 1139f, vec4<f32>(-358f, -268f, -638f, 262f), true, -5388i)), Struct_2(vec4<f32>(1000f, -389f, -1938f, -256f), 1000f, Struct_1(-1354f, -229f, vec4<f32>(1000f, -769f, 469f, -617f), true, -3996i)), Struct_2(vec4<f32>(1235f, 950f, 513f, 174f), 1740f, Struct_1(-823f, -1000f, vec4<f32>(-2471f, 810f, 1000f, 1002f), true, i32(-2147483648))), Struct_2(vec4<f32>(655f, -377f, 986f, -1000f), -941f, Struct_1(1061f, 588f, vec4<f32>(1000f, 737f, -1021f, 948f), false, 2147483647i)), Struct_2(vec4<f32>(-1536f, -755f, 286f, -706f), 805f, Struct_1(-1081f, -135f, vec4<f32>(-1779f, -2143f, -769f, 1337f), false, 0i)), Struct_2(vec4<f32>(1927f, 725f, -207f, 522f), 1182f, Struct_1(-346f, 1414f, vec4<f32>(368f, 309f, -509f, -363f), false, 26852i)), Struct_2(vec4<f32>(-1000f, -203f, -1443f, 493f), -1118f, Struct_1(450f, -202f, vec4<f32>(-113f, -1000f, -1000f, 540f), true, 1i)), Struct_2(vec4<f32>(1109f, -374f, -886f, -1079f), 1000f, Struct_1(-1186f, 1095f, vec4<f32>(666f, -691f, -705f, 725f), false, 26884i)), Struct_2(vec4<f32>(282f, -1000f, 2260f, -829f), -738f, Struct_1(121f, 1385f, vec4<f32>(-373f, -2032f, 634f, 309f), false, 1i)), Struct_2(vec4<f32>(1680f, -482f, 1443f, -377f), -1035f, Struct_1(1000f, 1117f, vec4<f32>(-1304f, -466f, -2005f, -282f), false, 874i)), Struct_2(vec4<f32>(1142f, 1472f, -485f, 1000f), 487f, Struct_1(427f, -505f, vec4<f32>(-617f, -134f, 790f, -894f), false, i32(-2147483648))), Struct_2(vec4<f32>(2085f, 1100f, 418f, 330f), 593f, Struct_1(557f, -831f, vec4<f32>(237f, 449f, -2112f, 1252f), true, i32(-2147483648))), Struct_2(vec4<f32>(129f, -1034f, -2482f, 1000f), -1000f, Struct_1(-1219f, -346f, vec4<f32>(433f, -506f, -206f, 740f), false, -1i)), Struct_2(vec4<f32>(-205f, -1000f, 159f, -571f), -1639f, Struct_1(-576f, -1558f, vec4<f32>(-413f, 606f, -1661f, 713f), false, -4848i)), Struct_2(vec4<f32>(549f, -1247f, 1038f, 331f), 304f, Struct_1(-778f, 1311f, vec4<f32>(-531f, -1054f, -510f, -1909f), false, -1i)), Struct_2(vec4<f32>(-2382f, 2419f, 368f, 697f), -106f, Struct_1(542f, 907f, vec4<f32>(-268f, 249f, -1161f, -2789f), true, -22737i)), Struct_2(vec4<f32>(299f, 893f, -606f, -1000f), -815f, Struct_1(-173f, -691f, vec4<f32>(-888f, -223f, 1131f, 730f), false, i32(-2147483648))), Struct_2(vec4<f32>(-611f, -536f, -287f, -1000f), 517f, Struct_1(-249f, -568f, vec4<f32>(1112f, -540f, -227f, -293f), true, -7617i)), Struct_2(vec4<f32>(-1656f, -1000f, 274f, 1000f), 542f, Struct_1(-1157f, 161f, vec4<f32>(-490f, -404f, -1588f, -532f), true, 0i)), Struct_2(vec4<f32>(-305f, -3188f, -1303f, -1000f), 231f, Struct_1(1081f, -838f, vec4<f32>(-639f, -1017f, -631f, -114f), false, 1i)), Struct_2(vec4<f32>(750f, -780f, -354f, 1000f), -606f, Struct_1(186f, 125f, vec4<f32>(-374f, -2306f, -495f, 1525f), true, -15638i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> f32 {
    let var_0 = select(vec2<bool>(true, all(vec2<bool>(all(vec2<bool>(true, global0.c.d)), all(vec3<bool>(true, false, arg_2.c.d))))), vec2<bool>(any(!vec3<bool>(global0.c.d, arg_2.c.d, true)), arg_1 < _wgslsmith_add_u32(~arg_1, _wgslsmith_sub_u32(arg_1, 3380u))), any(select(vec4<bool>(any(vec2<bool>(true, global0.c.d)), false && global0.c.d, all(vec3<bool>(true, global0.c.d, false)), global0.c.d), select(!vec4<bool>(global0.c.d, arg_2.c.d, true, true), vec4<bool>(false, arg_2.c.d, true, false), vec4<bool>(true, arg_2.c.d, arg_2.c.d, global0.c.d)), select(!vec4<bool>(global0.c.d, true, arg_2.c.d, true), vec4<bool>(true, global0.c.d, arg_2.c.d, arg_2.c.d), any(vec3<bool>(arg_2.c.d, false, true))))));
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.yzx + vec3<f32>(arg_0, -608f, global0.b))) + global0.a.wyy)));
    let var_3 = 117179u;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_3, select(1u ^ arg_1, (~arg_1 ^ 1u) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 1u), vec2<u32>(1u, 4294967295u)) % 32u), arg_2.c.d)), 23u)];
    return arg_2.c.c.x;
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global1 = array<Struct_2, 23>();
    global1 = array<Struct_2, 23>();
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1319f, global0.b))), global0.c.c.x, 1927f) * vec4<f32>(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a.x)) - _wgslsmith_f_op_f32(sign(170f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a)), 644f)), global0.c.c.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-980f)) - -862f) + _wgslsmith_f_op_f32(f32(-1f) * -1280f)), _wgslsmith_f_op_f32(func_3(global0.a.x, ~(1u ^ arg_0), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, arg_0), 23u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b, -887f, global0.b, global0.b))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.a) + vec4<f32>(global0.c.c.x, global0.b, global0.a.x, global0.c.b))), false, u_input.a.x));
    let var_0 = any(!vec2<bool>(!global0.c.d, true & global0.c.d)) & (!global0.c.d & all(vec2<bool>(true, global0.c.d)));
    let var_1 = ~firstTrailingBit(~vec2<i32>(~(-5922i), reverseBits(u_input.a.x)));
    return select(select(select(vec2<bool>(global0.c.d, var_1.x != global0.c.e), vec2<bool>(global0.c.d, !var_0), arg_0 != 76660u), !(!(!vec2<bool>(global0.c.d, false))), !vec2<bool>(arg_0 >= 59141u, any(vec3<bool>(false, global0.c.d, global0.c.d)))), vec2<bool>(!(_wgslsmith_f_op_f32(ceil(-663f)) == 375f), global0.c.e != firstTrailingBit(-19766i)), vec2<bool>(global0.c.d, all(select(select(vec3<bool>(var_0, var_0, true), vec3<bool>(global0.c.d, false, var_0), vec3<bool>(false, global0.c.d, false)), !vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, false, global0.c.d)))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = global0.c;
    global1 = array<Struct_2, 23>();
    global1 = array<Struct_2, 23>();
    var var_1 = firstTrailingBit(vec2<u32>(4294967295u, firstTrailingBit(7450u))) >> (~countOneBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    var var_2 = Struct_3(0i, Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1370f, -264f, _wgslsmith_f_op_f32(-var_0.c.x), global0.c.b)), global0.b, global0.c));
    return Struct_1(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a.x)) + _wgslsmith_f_op_f32(-166f + global0.a.x)), _wgslsmith_f_op_f32(-global0.b))) - global0.c.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global0.b, -1335f)), _wgslsmith_f_op_f32(step(146f, 136f)), var_0.c.x, global0.c.c.x), var_0.c), vec4<f32>(_wgslsmith_f_op_f32(global0.c.b + _wgslsmith_f_op_f32(-var_2.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.b.a.x, 812f))), -1633f, 727f))), !any(func_2(0u)) || var_2.b.c.d, firstTrailingBit(0i) & _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, u_input.a, u_input.a), vec2<i32>(1i, 1i)), max(vec2<i32>(26602i, u_input.a.x) | u_input.a, vec2<i32>(var_0.e, 12216i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!(!select(vec3<bool>(false, true, global0.c.d), vec3<bool>(true, global0.c.d, global0.c.d), false))));
    var var_1 = func_1(select(vec3<bool>(true, false, func_1(vec3<bool>(true, global0.c.d, false)).d), select(!(!vec3<bool>(global0.c.d, true, false)), vec3<bool>(true, false | global0.c.d, all(vec2<bool>(false, global0.c.d))), select(vec3<bool>(global0.c.d, var_0.d, true), !vec3<bool>(true, var_0.d, false), vec3<bool>(var_0.d, true, false))), select(select(vec3<bool>(true, false, true), vec3<bool>(global0.c.d, false, var_0.d), !vec3<bool>(var_0.d, false, false)), !vec3<bool>(false, true, global0.c.d), global0.c.d)));
    global1 = array<Struct_2, 23>();
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    var_0 = Struct_1(var_0.b, 1512f, vec4<f32>(_wgslsmith_f_op_f32(select(var_0.b, 455f, any(vec3<bool>(false, false, false)))), -1106f, -886f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-367f)), _wgslsmith_f_op_f32(min(772f, var_0.c.x)), select(false, var_2.c.d, var_0.d))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + -449f) * _wgslsmith_f_op_f32(f32(-1f) * -2441f)))), any(!vec4<bool>(false, !var_1.d, true, true)), min(global0.c.e | firstTrailingBit(-17415i), var_2.c.e ^ _wgslsmith_sub_i32(u_input.a.x, var_1.e)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(718f + _wgslsmith_f_op_f32(round(-179f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(395f, 570f))) + vec2<f32>(-1143f, _wgslsmith_f_op_f32(-var_1.c.x))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-237f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c.x - var_0.c.x)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 427f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-337f, -1427f))), var_1.c.zw, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(firstTrailingBit(1i), var_1.e), -1300f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_3.x)))));
}

