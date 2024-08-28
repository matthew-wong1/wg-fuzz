struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec4<f32>(701f, -821f, 617f, 1167f), vec2<i32>(-1i, -16875i), vec2<u32>(115186u, 1u), Struct_2(4294967295u)), Struct_3(vec4<f32>(-1450f, 1365f, 383f, 1778f), vec2<i32>(-38379i, -59291i), vec2<u32>(0u, 75578u), Struct_2(34577u)), Struct_3(vec4<f32>(140f, -977f, 762f, 589f), vec2<i32>(-40860i, -15547i), vec2<u32>(4294967295u, 43738u), Struct_2(18945u)), Struct_3(vec4<f32>(-1152f, -1187f, 774f, 1474f), vec2<i32>(11867i, -24452i), vec2<u32>(52473u, 66059u), Struct_2(66729u)), Struct_3(vec4<f32>(-169f, 1097f, -412f, -751f), vec2<i32>(i32(-2147483648), -55611i), vec2<u32>(0u, 4294967295u), Struct_2(28030u)), Struct_3(vec4<f32>(653f, -189f, -1022f, -638f), vec2<i32>(i32(-2147483648), 8766i), vec2<u32>(8615u, 22809u), Struct_2(4294967295u)), Struct_3(vec4<f32>(-850f, -970f, 1000f, -994f), vec2<i32>(2147483647i, -1i), vec2<u32>(4294967295u, 0u), Struct_2(3789u)), Struct_3(vec4<f32>(443f, -159f, -428f, -1859f), vec2<i32>(1i, 35628i), vec2<u32>(4294967295u, 4294967295u), Struct_2(32026u)), Struct_3(vec4<f32>(-534f, 343f, 2225f, -280f), vec2<i32>(i32(-2147483648), 56365i), vec2<u32>(4587u, 1u), Struct_2(48502u)), Struct_3(vec4<f32>(-261f, 848f, -893f, -101f), vec2<i32>(-32148i, -5765i), vec2<u32>(1u, 22903u), Struct_2(6239u)));

var<private> global1: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(1u, 1u, 0u, 4294967295u), vec4<u32>(33264u, 26510u, 4294967295u, 4294967295u), vec4<u32>(70528u, 88087u, 5129u, 0u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(1u, 73279u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(88056u, 4294967295u, 1u, 4294967295u), vec4<u32>(26947u, 4353u, 54982u, 83476u), vec4<u32>(19841u, 56382u, 12306u, 29026u));

var<private> global2: array<vec4<i32>, 17>;

var<private> global3: vec3<u32> = vec3<u32>(104761u, 78350u, 0u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> f32 {
    var var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.wzw) + arg_0.a.yzx), arg_0.a.yxy)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(arg_0.a.x + -950f)), arg_0.a.x)));
    global3 = _wgslsmith_clamp_vec3_u32(u_input.a, ~abs(vec3<u32>(countOneBits(var_0.a), ~78846u, _wgslsmith_mult_u32(arg_0.d.a, u_input.c))), u_input.a);
    var var_2 = arg_2;
    var var_3 = !var_2.b.x;
    return var_1.x;
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = global3.x;
    let var_1 = -225f;
    let var_2 = Struct_3(vec4<f32>(874f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec4<f32>(1000f, var_1, var_1, 1398f), vec2<i32>(u_input.b.x, -3590i), u_input.a.zy, Struct_2(u_input.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(2408f, 730f, var_1), vec3<f32>(var_1, var_1, var_1)), Struct_1(vec2<i32>(0i, 2147483647i), vec3<bool>(false, false, false), 1u), global2[_wgslsmith_index_u32(22395u, 17u)] << (vec4<u32>(3037u, 17220u, u_input.c, global3.x) % vec4<u32>(32u)))) + 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1, var_1))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(global3.x, 10u)], vec3<f32>(var_1, var_1, -968f), Struct_1(u_input.b, vec3<bool>(true, true, true), global3.x), vec4<i32>(34698i, u_input.b.x, 4803i, u_input.b.x))))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), var_1)))), vec2<i32>(~(~(22667i | u_input.b.x)), ~u_input.b.x), ~(~(u_input.a.zx >> (u_input.a.zx % vec2<u32>(32u))) | global3.xz), Struct_2((_wgslsmith_clamp_u32(arg_0, 14655u, global3.x) << (~0u % 32u)) >> (~(~u_input.c) % 32u)));
    let var_3 = Struct_2(~(~global3.x));
    global2 = array<vec4<i32>, 17>();
    return true;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    var var_0 = all(vec3<bool>(select(true, !all(vec2<bool>(true, false)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))), func_2(12300u), select(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), all(vec2<bool>(true, true)), true)));
    global1 = array<vec4<u32>, 9>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1585f, arg_2, -911f, arg_2))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -124f, arg_2, arg_2) * vec4<f32>(422f, -627f, arg_2, -1271f))), vec4<f32>(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(1u, 10u)], vec3<f32>(-992f, arg_2, arg_2), Struct_1(vec2<i32>(1i, u_input.b.x), vec3<bool>(true, false, false), global3.x), global2[_wgslsmith_index_u32(4294967295u, 17u)])), -902f, _wgslsmith_f_op_f32(-arg_2), -602f))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1520f, -1381f)))), -1810f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(131f + 172f), _wgslsmith_f_op_f32(arg_2 * arg_2)), 1024f))), u_input.b, vec2<u32>(0u, ~min(arg_0.x, ~17137u)), Struct_2(~(arg_1 >> (~u_input.c % 32u))));
    var var_2 = arg_0.yxw;
    global3 = u_input.a;
    return Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(var_1.b), vec2<i32>(var_1.b.x, _wgslsmith_dot_vec2_i32(var_1.b, var_1.b)), vec2<i32>(~0i, ~var_1.b.x)), u_input.b, max(select(-var_1.b, -var_1.b, vec2<bool>(true, false)), -u_input.b >> (vec2<u32>(65679u, arg_1) % vec2<u32>(32u)))), vec3<bool>(!all(vec3<bool>(false, false, false)), true, all(vec4<bool>(true, false, -37924i < var_1.b.x, true))), 0u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-157f, -1130f, true))))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(130f * 366f)), 616f)))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2169f + -391f), _wgslsmith_f_op_f32(func_3(Struct_3(vec4<f32>(440f, -1000f, 107f, -378f), vec2<i32>(arg_0.a.x, -1503i), global3.yx, arg_1), vec3<f32>(-1000f, -1090f, -367f), arg_0, vec4<i32>(arg_0.a.x, -1i, 1i, 8088i)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(min(62902u, arg_1.a), 10u)], vec3<f32>(1f, 1f, 1f), Struct_1(u_input.b, vec3<bool>(arg_2.x, true, true), 4294967295u), reverseBits(global2[_wgslsmith_index_u32(61982u, 17u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(500f, -1378f)) - 839f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(376f + -156f)))))))));
    global0 = array<Struct_3, 10>();
    return max(~(firstTrailingBit(-arg_0.a.x) >> (abs(_wgslsmith_mod_u32(4294967295u, 5152u)) % 32u)), u_input.b.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: vec3<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_dot_vec4_i32(~global2[_wgslsmith_index_u32(max(1u, 52574u), 17u)], -countOneBits(global2[_wgslsmith_index_u32(0u, 17u)]));
    let var_1 = arg_0;
    let var_2 = true;
    global0 = array<Struct_3, 10>();
    global1 = array<vec4<u32>, 9>();
    return !(!(!select(func_1(global1[_wgslsmith_index_u32(arg_1.x, 9u)], global3.x, 784f).b.yz, !vec2<bool>(true, var_2), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-vec3<i32>((i32(-1i) * -6709i) ^ u_input.b.x, func_4(func_1(vec4<u32>(global3.x, 8701u, u_input.c, 23345u), 1u, -2281f), Struct_2(u_input.a.x), vec4<bool>(false, true, true, true)), firstLeadingBit(_wgslsmith_div_i32(u_input.b.x, -10139i))), vec4<u32>(_wgslsmith_div_u32(u_input.a.x ^ 4294967295u, 74914u) & (u_input.c ^ (0u >> (u_input.c % 32u))), u_input.c, global3.x, u_input.a.x), ~u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-516f + -324f), _wgslsmith_f_op_f32(f32(-1f) * -259f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(-727f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(vec3<f32>(357f, -484f, 1298f), vec3<f32>(2228f, -420f, 607f))))))));
    global1 = array<vec4<u32>, 9>();
    var var_2 = ~37488i & u_input.b.x;
    var_0 = vec2<bool>(true, !(-914f <= var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.b, u_input.b << (((global3.xy | u_input.a.yx) | u_input.a.zy) % vec2<u32>(32u))));
}

