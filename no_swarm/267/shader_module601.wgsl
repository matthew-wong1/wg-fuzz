struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-528f, -1187f, -519f);

var<private> global1: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<u32>(13993u, 0u), vec4<i32>(i32(-2147483648), -19158i, i32(-2147483648), 2147483647i), Struct_1(0u, 0u, 1i, vec2<i32>(-1i, 41651i)), vec4<i32>(-6112i, 12025i, 0i, 2545i)), Struct_2(vec2<u32>(4294967295u, 9995u), vec4<i32>(2147483647i, i32(-2147483648), 15734i, 2147483647i), Struct_1(17932u, 5190u, 1i, vec2<i32>(38570i, 35052i)), vec4<i32>(-29646i, -4510i, 2147483647i, 13368i)), Struct_2(vec2<u32>(1u, 13376u), vec4<i32>(25133i, 1i, -1i, 0i), Struct_1(41667u, 130623u, 1i, vec2<i32>(0i, -1i)), vec4<i32>(33960i, 0i, 2147483647i, 7932i)), Struct_2(vec2<u32>(58272u, 0u), vec4<i32>(2147483647i, -17309i, 20683i, 0i), Struct_1(27599u, 4294967295u, 1i, vec2<i32>(1i, -434i)), vec4<i32>(31109i, 1i, -1i, 2147483647i)), Struct_2(vec2<u32>(12658u, 4294967295u), vec4<i32>(-29752i, 50626i, 29692i, -63008i), Struct_1(1u, 65699u, -9366i, vec2<i32>(1i, 2147483647i)), vec4<i32>(-14928i, i32(-2147483648), -4752i, 66382i)), Struct_2(vec2<u32>(0u, 0u), vec4<i32>(1i, -1153i, -11455i, 66600i), Struct_1(20032u, 31603u, 49086i, vec2<i32>(0i, 1i)), vec4<i32>(2147483647i, -27628i, 12402i, -1i)), Struct_2(vec2<u32>(49917u, 5584u), vec4<i32>(0i, i32(-2147483648), 1i, 30762i), Struct_1(0u, 26610u, 0i, vec2<i32>(5928i, 14036i)), vec4<i32>(73333i, 24878i, 33284i, i32(-2147483648))), Struct_2(vec2<u32>(57687u, 1u), vec4<i32>(3663i, -1i, i32(-2147483648), 38476i), Struct_1(4294967295u, 32492u, 40688i, vec2<i32>(-7621i, 0i)), vec4<i32>(926i, -25290i, 2147483647i, i32(-2147483648))), Struct_2(vec2<u32>(29675u, 4294967295u), vec4<i32>(-1i, 68752i, 1747i, -22414i), Struct_1(23366u, 0u, i32(-2147483648), vec2<i32>(i32(-2147483648), -32061i)), vec4<i32>(-13935i, 1463i, -71883i, 17498i)));

var<private> global2: array<u32, 2> = array<u32, 2>(4294967295u, 51693u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> f32 {
    global2 = array<u32, 2>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1330f, global0.x), _wgslsmith_div_f32(1042f, -953f))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(trunc(global0.x)))))));
    var var_1 = Struct_3(Struct_1(~global2[_wgslsmith_index_u32(61668u, 2u)] >> (97019u % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(46412u, 75528u, 3550u, 69537u) | vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)], global2[_wgslsmith_index_u32(27156u, 2u)], 1u, 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(22541u, 2u)], 15427u)), firstTrailingBit(vec4<u32>(34439u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 2u)], 2u)], global2[_wgslsmith_index_u32(37975u, 2u)], 29537u)) | abs(vec4<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2431u, 2u)], 2u)]))), -(10106i >> (abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)]) % 32u)), ~reverseBits(vec2<i32>(2147483647i, -9875i))), any(vec4<bool>(true, _wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_div_f32(var_0, 513f), all(vec2<bool>(true, true)), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, false, true), any(vec3<bool>(false, true, false)), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)))), true);
    let var_2 = vec2<bool>(true, (true || (var_1.d & true)) && true);
    let var_3 = global2[_wgslsmith_index_u32(countOneBits(8648u), 2u)];
    return 1421f;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>) -> u32 {
    let var_0 = Struct_1(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.a.a, 2u)] << (global2[_wgslsmith_index_u32(4581u, 2u)] % 32u), 2u)] << (~(1u << (arg_1.a.b % 32u)) % 32u)), ~select(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(global2[_wgslsmith_index_u32(arg_1.a.b, 2u)], 62196u)), abs(vec2<u32>(27180u, global2[_wgslsmith_index_u32(4294967295u, 2u)]))), 1u, select(true, global2[_wgslsmith_index_u32(arg_1.a.a, 2u)] < global2[_wgslsmith_index_u32(29843u, 2u)], arg_1.d)), -_wgslsmith_clamp_i32(-countOneBits(-2147483647i), 1i, _wgslsmith_mod_i32(38117i, _wgslsmith_sub_i32(-2147483647i, u_input.b))), abs(firstLeadingBit(u_input.a)));
    let var_1 = global1[_wgslsmith_index_u32(~0u, 9u)];
    global2 = array<u32, 2>();
    var var_2 = Struct_3(var_1.c, all(select(arg_1.c.wx, !select(vec2<bool>(arg_1.b, arg_1.d), vec2<bool>(arg_1.d, false), true), arg_1.c.x)), select(arg_1.c, vec4<bool>(global0.x < -521f, true, true && arg_1.d, any(arg_1.c.zzx) && (arg_1.d || arg_1.d)), arg_1.d), !(!(!(arg_0 < -714f))));
    global2 = array<u32, 2>();
    return select(26944u, 1u, var_2.b);
}

fn func_2() -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~func_4(_wgslsmith_f_op_f32(func_3(u_input.a.x)), Struct_3(Struct_1(4294967295u, global2[_wgslsmith_index_u32(0u, 2u)], 1959i, vec2<i32>(u_input.b, -17582i)), true, vec4<bool>(true, true, false, true), any(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, global0.x, 373f, 319f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(881f, 1771f, global0.x, global0.x)))))), 2u)], 2u)];
    let var_1 = Struct_1(50717u, 4294967295u, _wgslsmith_add_i32(u_input.a.x, firstLeadingBit(3834i)), vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.b) ^ -1i, ~(~(-40890i))) & u_input.a);
    var var_2 = Struct_3(Struct_1(_wgslsmith_sub_u32(4294967295u, var_1.b), 1u, reverseBits(5935i), vec2<i32>(~var_1.d.x & -5484i, 38148i)), false, vec4<bool>(true || !select(true, true, true), true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_1.b, global2[_wgslsmith_index_u32(var_1.b | 4294967295u, 2u)]), 2u)] <= var_1.a, true), select(!all(vec3<bool>(true, true, true)), all(vec2<bool>(all(vec2<bool>(true, false)), false)), true));
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 973f) - vec3<f32>(global0.x, global0.x, global0.x)))) * vec3<f32>(-787f, -596f, global0.x))));
    var var_3 = var_1.c > var_1.d.x;
    return Struct_2(max(~countOneBits(vec2<u32>(4294967295u, 47453u)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 65432u), vec2<u32>(20548u, 0u)) << (countOneBits(vec2<u32>(var_1.a, var_1.b)) % vec2<u32>(32u))) | firstTrailingBit(abs(vec2<u32>(global2[_wgslsmith_index_u32(var_1.a, 2u)], global2[_wgslsmith_index_u32(65962u, 2u)]))), _wgslsmith_add_vec4_i32(-max(-vec4<i32>(0i, var_2.a.d.x, u_input.b, 2147483647i), ~vec4<i32>(u_input.a.x, u_input.b, 0i, 2147483647i)), min(min(max(vec4<i32>(0i, var_1.c, u_input.b, u_input.b), vec4<i32>(var_2.a.d.x, var_1.d.x, var_1.d.x, 2147483647i)), ~vec4<i32>(u_input.b, 2998i, -24903i, u_input.b)), ~(~vec4<i32>(var_1.d.x, u_input.b, u_input.b, 0i)))), var_1, abs(vec4<i32>(_wgslsmith_div_i32(1i, ~2147483647i), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1048i, u_input.a.x, u_input.b), vec4<i32>(var_1.d.x, -56447i, 0i, -2147483647i)), _wgslsmith_mult_i32(1i, 13672i), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.d.x, u_input.a.x, u_input.a.x, 49527i), vec4<i32>(3287i, var_2.a.c, u_input.a.x, u_input.b))))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = vec3<i32>(~arg_0.c.d.x ^ (47560i & firstLeadingBit(max(arg_0.c.d.x, arg_2.x))), u_input.b, 2147483647i);
    var_0 = arg_2;
    let var_1 = Struct_3(Struct_1(reverseBits(~(arg_0.c.b ^ 17594u)), _wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(69656u, 2u)], 1u) >> (firstLeadingBit(1u) % 32u), -95124i, vec2<i32>(arg_0.b.x, var_0.x)), all(select(vec4<bool>(arg_1 || arg_1, 1185f < global0.x, any(vec3<bool>(arg_1, arg_1, arg_1)), arg_1), vec4<bool>(var_0.x < -2147483647i, all(vec2<bool>(false, arg_1)), false, false), !vec4<bool>(arg_1, true, arg_1, true))), select(vec4<bool>(arg_1, true, true, 653f < _wgslsmith_f_op_f32(ceil(global0.x))), vec4<bool>(arg_1, !any(vec3<bool>(false, arg_1, true)), !(global0.x < global0.x), any(select(vec4<bool>(arg_1, arg_1, false, true), vec4<bool>(arg_1, arg_1, true, arg_1), arg_1))), arg_1), true);
    var var_2 = select(!var_1.c, var_1.c, var_1.c);
    let var_3 = _wgslsmith_clamp_vec2_u32(countOneBits(arg_0.a), arg_0.a, vec2<u32>(global2[_wgslsmith_index_u32(2170u, 2u)], 0u));
    return countOneBits(~min(~(vec3<u32>(arg_0.c.a, var_1.a.b, 71867u) & vec3<u32>(1u, global2[_wgslsmith_index_u32(51788u, 2u)], arg_0.c.a)), ~(~vec3<u32>(98162u, 1u, 3798u))));
}

fn func_6(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_1 {
    global2 = array<u32, 2>();
    var var_0 = vec2<bool>((61760u != global2[_wgslsmith_index_u32(arg_0, 2u)]) && !all(vec4<bool>(true, true, true, true)), all(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), u_input.b > abs(-17400i), all(vec3<bool>(true, true, true)), true)));
    let var_1 = -1i;
    var_0 = !(!vec2<bool>(_wgslsmith_f_op_f32(select(arg_3.x, 1093f, false)) != 1f, (1u ^ arg_0) >= global2[_wgslsmith_index_u32(firstLeadingBit(27764u), 2u)]));
    var var_2 = var_1;
    return Struct_1(firstTrailingBit(arg_2.x), ~arg_0, -22934i, ~firstLeadingBit(vec2<i32>(2147483647i, min(var_1, u_input.a.x))));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<i32>) -> vec2<i32> {
    let var_0 = func_6(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_5(func_2(), arg_1, arg_2), ~min(firstTrailingBit(vec3<u32>(4294967295u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28759u, 2u)], 2u)])), max(vec3<u32>(60125u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 2u)], 2u)], 2u)], 0u), vec3<u32>(global2[_wgslsmith_index_u32(51892u, 2u)], 4294967295u, global2[_wgslsmith_index_u32(0u, 2u)])))), 2u)], global0.zx, vec3<u32>(func_5(func_2(), any(arg_0), _wgslsmith_mod_vec3_i32(arg_2, vec3<i32>(-1i, 2147483647i, u_input.a.x))).x << (~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55828u, 2u)], 2u)], 2u)], 2u)], 2u)]) % 32u), (global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31480u, 2u)], 2u)]), 2u)] >> ((global2[_wgslsmith_index_u32(64876u, 2u)] & 3528u) % 32u)) << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 2u)], 2u)] % 32u), global2[_wgslsmith_index_u32(5265u, 2u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1000f, global0.x, global0.x) + vec4<f32>(526f, 714f, 1000f, global0.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, -590f, -741f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 141f, -1000f, -194f))))))));
    global1 = array<Struct_2, 9>();
    let var_1 = Struct_3(var_0, ~_wgslsmith_mult_i32(abs(2147483647i), -8346i >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.b, 2u)], 2u)] % 32u)) <= ~79412i, select(select(select(!vec4<bool>(true, false, arg_1, true), vec4<bool>(true, arg_1, false, false), false), vec4<bool>(true, true, u_input.a.x < -19953i, true), false), !(!vec4<bool>(arg_1, true, false, arg_1)), true | arg_0.x), !all(!arg_0));
    global1 = array<Struct_2, 9>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1438f, 2360f, _wgslsmith_div_f32(644f, global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, global0.x, global0.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1712f, 1100f, global0.x))))))) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(-734f, -2476f)), global0.x, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))));
    return arg_2.zy;
}

fn func_7(arg_0: Struct_2, arg_1: f32) -> StorageBuffer {
    var var_0 = !(!select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
    global1 = array<Struct_2, 9>();
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, -502f, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1068f, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, arg_1, 342f)))))));
    let var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(~10251u, reverseBits(arg_0.c.b)), 23360u), arg_0.a);
    let var_2 = _wgslsmith_div_vec2_i32(~max(vec2<i32>(-u_input.a.x, 0i), -(u_input.a & vec2<i32>(67296i, -1i))), ~(vec2<i32>(~arg_0.d.x, -8554i) ^ arg_0.d.xw));
    return StorageBuffer(global0.xz, arg_0.d >> (_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 38334u, var_1.x, var_1.x), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59548u, 2u)], 2u)], var_1.x, 25583u)), ~(~vec4<u32>(arg_0.c.a, 9883u, 4294967295u, 19650u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-769f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 2>();
    global1 = array<Struct_2, 9>();
    let x = u_input.a;
    s_output = func_7(Struct_2(~(~(vec2<u32>(global2[_wgslsmith_index_u32(1u, 2u)], global2[_wgslsmith_index_u32(13583u, 2u)]) >> (vec2<u32>(24039u, 1u) % vec2<u32>(32u)))), vec4<i32>(~(~u_input.a.x), 1i, u_input.a.x, u_input.a.x), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55832u, 2u)], 2u)], 2u)], 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(46889u, 2u)], 2u)], 2u)], 9894u)), abs(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)], 23637u, 1512u, 0u))), 2u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)] << (4294967295u % 32u), 2u)] << ((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)] ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 2u)]) % 32u), -2147483647i, func_1(vec3<bool>(true, true, true), false, firstTrailingBit(vec3<i32>(-35326i, -24580i, u_input.b)))), ~min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 5600i), vec4<i32>(u_input.a.x, -7635i, u_input.a.x, 2147483647i)) & vec4<i32>(~6392i, _wgslsmith_mult_i32(u_input.a.x, -1i), u_input.b, -u_input.a.x)), -418f);
}

