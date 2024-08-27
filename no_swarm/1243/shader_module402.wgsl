struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<u32>(70046u, 1u, 68192u), 55995u, true, -869f), Struct_1(vec3<u32>(37710u, 41555u, 66198u), 1u, true, 140f), Struct_1(vec3<u32>(95033u, 0u, 4294967295u), 32936u, true, -538f), Struct_1(vec3<u32>(25853u, 105584u, 68942u), 0u, true, 1006f), Struct_1(vec3<u32>(1u, 4294967295u, 0u), 1u, false, -753f), Struct_1(vec3<u32>(4294967295u, 1u, 0u), 45035u, false, -1336f), Struct_1(vec3<u32>(4294967295u, 0u, 11418u), 19461u, false, 1370f), Struct_1(vec3<u32>(84771u, 4294967295u, 6621u), 0u, true, 2140f), Struct_1(vec3<u32>(1u, 7622u, 4294967295u), 4294967295u, true, -856f), Struct_1(vec3<u32>(0u, 0u, 40551u), 4294967295u, true, 574f));

var<private> global1: array<u32, 8>;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<u32>(1u, 34698u, 86540u), 55418u, true, -473f), Struct_1(vec3<u32>(1u, 72456u, 47627u), 4294967295u, false, 952f), Struct_1(vec3<u32>(15921u, 4294967295u, 36464u), 6556u, false, 1548f), Struct_1(vec3<u32>(171365u, 46761u, 1u), 42586u, true, -1711f), Struct_1(vec3<u32>(7835u, 4294967295u, 0u), 33593u, true, 529f), Struct_1(vec3<u32>(27310u, 0u, 4294967295u), 1u, false, -329f), Struct_1(vec3<u32>(4294967295u, 23708u, 1u), 75701u, true, 2575f));

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<u32>(0u, 1u, 1u), 112510u, true, -2049f), Struct_1(vec3<u32>(15923u, 4294967295u, 89358u), 4294967295u, false, 1031f), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), 1u, false, -1000f), Struct_1(vec3<u32>(4294967295u, 0u, 1633u), 4294967295u, true, 1054f), Struct_1(vec3<u32>(1u, 9579u, 27330u), 2804u, true, 581f), Struct_1(vec3<u32>(337u, 4294967295u, 0u), 54732u, false, -2542f), Struct_1(vec3<u32>(0u, 32957u, 15571u), 24772u, false, 410f), Struct_1(vec3<u32>(4294967295u, 20090u, 12658u), 43691u, false, 506f), Struct_1(vec3<u32>(58321u, 42231u, 0u), 0u, true, 1041f), Struct_1(vec3<u32>(93300u, 28381u, 0u), 21778u, false, -1848f), Struct_1(vec3<u32>(4294967295u, 0u, 1u), 53351u, false, -435f), Struct_1(vec3<u32>(14794u, 108851u, 42921u), 513u, true, -1530f), Struct_1(vec3<u32>(4294967295u, 1u, 16461u), 1u, false, 453f), Struct_1(vec3<u32>(1u, 45119u, 1u), 0u, false, 286f), Struct_1(vec3<u32>(43824u, 30312u, 5785u), 1u, true, 1424f), Struct_1(vec3<u32>(1u, 0u, 4294967295u), 4294967295u, true, 1046f), Struct_1(vec3<u32>(15855u, 4294967295u, 80914u), 4294967295u, true, 1187f), Struct_1(vec3<u32>(2009u, 4294967295u, 15314u), 0u, false, 117f), Struct_1(vec3<u32>(4294967295u, 1u, 14356u), 20812u, false, -1158f), Struct_1(vec3<u32>(1u, 8261u, 12128u), 0u, true, -1083f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    let var_0 = Struct_1(~vec3<u32>(~0u, abs(max(0u, arg_0.a.x)), firstTrailingBit(43403u)), 4294967295u, false, arg_0.d);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-537f, 845f, -394f, -1271f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(471f, arg_0.d, -760f, arg_0.d)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.d, 836f, arg_0.d)))), vec4<bool>(true, arg_0.c && var_0.c, !arg_3, true)))));
    let var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_sub_vec3_u32(firstTrailingBit(arg_0.a), vec3<u32>(_wgslsmith_clamp_u32(arg_0.a.x, countOneBits(global1[_wgslsmith_index_u32(arg_0.b, 8u)]), min(29510u, 34238u)), abs(global1[_wgslsmith_index_u32(select(14358u, var_0.a.x, var_2.c), 8u)]), ~abs(global1[_wgslsmith_index_u32(arg_0.a.x, 8u)]))), ~(~reverseBits(firstLeadingBit(var_2.a.x))), any(select(!vec4<bool>(false, arg_0.c, var_2.c, false), select(!vec4<bool>(false, arg_3, var_2.c, false), vec4<bool>(arg_0.c, var_2.c, true, var_0.c), true), false)), arg_0.d);
    global3 = array<Struct_1, 20>();
    return reverseBits(29145u);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(4294967295u, 20u)];
    global1 = array<u32, 8>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(var_0.a.x, 8u)], func_3(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~var_0.a.x, 8u)], 10u)], vec3<i32>(-10829i, u_input.a.x, u_input.a.x & u_input.a.x), vec2<i32>(~1670i, u_input.a.x ^ u_input.a.x), true)) ^ 1u, 10u)];
    let var_2 = vec4<bool>(!any(!vec4<bool>(var_1.c, false, var_0.c, false)), true, var_0.c, var_1.c);
    var var_3 = vec4<bool>(!var_2.x, true, false, abs(u_input.a.x | u_input.a.x) > u_input.a.x);
    return _wgslsmith_sub_u32(106259u, 0u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    let var_0 = false;
    var var_1 = global3[_wgslsmith_index_u32(~(arg_3.x | firstLeadingBit(global1[_wgslsmith_index_u32(1u, 8u)])), 20u)];
    var var_2 = vec4<u32>(36626u, _wgslsmith_add_u32(_wgslsmith_mod_u32(~(~global1[_wgslsmith_index_u32(var_1.b, 8u)]), ~var_1.a.x), 87921u), 51125u, 36224u);
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(abs(-42329i), 23864i), firstTrailingBit(_wgslsmith_sub_i32(-25237i, -2147483647i))), _wgslsmith_add_i32(abs(u_input.a.x), countOneBits(-53870i)) >> (~arg_2.b % 32u)) << (~(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_3, arg_3), vec4<u32>(global1[_wgslsmith_index_u32(var_1.b, 8u)], var_2.x, global1[_wgslsmith_index_u32(56835u, 8u)], arg_2.b))) % 32u);
    var var_4 = Struct_1(var_1.a, arg_3.x, true, -105f);
    return global1[_wgslsmith_index_u32(var_1.b, 8u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(2147483647i, ~arg_1.x);
    let var_1 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(firstTrailingBit(799u), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68861u, 8u)], 8u)], 8u)], 8u)], 66210u), ~global1[_wgslsmith_index_u32(0u, 8u)]), ~vec3<u32>(0u, global1[_wgslsmith_index_u32(67025u, 8u)], 1u)) ^ (vec3<u32>(reverseBits(1u), 1u, _wgslsmith_sub_u32(1u, 0u)) | ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1[_wgslsmith_index_u32(12163u, 8u)], 63888u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 8u)], 4294967295u, 0u))), global1[_wgslsmith_index_u32(func_4(global2[_wgslsmith_index_u32(func_2(1u) & ~global1[_wgslsmith_index_u32(0u, 8u)], 7u)], vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), var_0), global2[_wgslsmith_index_u32((global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49631u, 8u)], 8u)] << (4294967295u % 32u)) ^ 63895u, 7u)], (vec4<u32>(global1[_wgslsmith_index_u32(1901u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)]) >> (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(33909u, 8u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)]) % vec4<u32>(32u))) ^ (vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 8u)], 1u, 1u) & vec4<u32>(44269u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20220u, 8u)], 8u)], 8u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(42001u, 8u)], 8u)], 1u))), 8u)] ^ global1[_wgslsmith_index_u32(func_2(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 8u)], 8u)]), 8u)], !(!all(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-597f, _wgslsmith_f_op_f32(arg_0.x * arg_0.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, 907f))))));
    global2 = array<Struct_1, 7>();
    return global0[_wgslsmith_index_u32(1u, 10u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> Struct_1 {
    global0 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d)) + -482f)));
    let var_1 = global3[_wgslsmith_index_u32(arg_0.b, 20u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, -346f, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1742f)), _wgslsmith_f_op_f32(exp2(arg_0.d)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-684f, -445f, arg_1.d, arg_3))) * vec4<f32>(var_1.d, 665f, arg_0.d, _wgslsmith_f_op_f32(exp2(arg_3))))));
    var var_3 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.d - 1466f), _wgslsmith_f_op_f32(max(-1289f, -305f)), 242f))), vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a.zxz, u_input.a.xyz) & -1i, u_input.a.x), -(40263i << (_wgslsmith_mod_u32(74206u, 1u) % 32u))));
    return func_1(_wgslsmith_f_op_vec3_f32(step(var_2.xyz, _wgslsmith_div_vec3_f32(var_2.yyy, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(var_2.yxy))))))), max(min(vec3<i32>(_wgslsmith_add_i32(8173i, u_input.a.x), ~u_input.a.x, u_input.a.x), vec3<i32>(~1i, max(u_input.a.x, u_input.a.x), u_input.a.x >> (18951u % 32u))), countOneBits(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(26159i, 0i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 55154i))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 20>();
    let var_0 = vec4<u32>(24029u, ~_wgslsmith_add_u32(~1u, 1u), 54648u, min(global1[_wgslsmith_index_u32(0u, 8u)], 13590u));
    var var_1 = -u_input.a ^ firstLeadingBit(firstTrailingBit(reverseBits(u_input.a)) >> (vec4<u32>(4294967295u, 40895u | global1[_wgslsmith_index_u32(1196u, 8u)], firstTrailingBit(0u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 8u)], 8u)], 0u), 8u)]) % vec4<u32>(32u)));
    let var_2 = func_5(func_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-362f, -112f, -761f), vec3<f32>(-383f, -878f, -198f))))))), u_input.a.ywy), func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2534f, -293f, 941f), vec3<f32>(-264f, 445f, 215f))))), min(-countOneBits(vec3<i32>(-1i, -29790i, var_1.x)), vec3<i32>(_wgslsmith_mult_i32(-45783i, var_1.x), 1i, -var_1.x))), vec2<bool>(true, func_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(836f, 1000f, 214f))), _wgslsmith_mod_vec3_i32(vec3<i32>(-4945i, -2147483647i, 2147483647i), u_input.a.yyy)).c), _wgslsmith_f_op_f32(step(1f, 892f)));
    let var_3 = min(firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~1u), 4294967295u), vec2<u32>(~_wgslsmith_add_u32(15107u, var_2.b), ~(~var_0.x))));
    var var_4 = var_2;
    let var_5 = -2147483647i;
    let var_6 = Struct_1(max(reverseBits(vec3<u32>(32107u, firstLeadingBit(1u), ~global1[_wgslsmith_index_u32(3457u, 8u)])), ~(~var_4.a & max(vec3<u32>(var_0.x, 52694u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.b, 8u)], 8u)]), vec3<u32>(8156u, 1u, 4062u)))), global1[_wgslsmith_index_u32(17136u, 8u)], var_4.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-384f))) * func_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.d, var_4.d, 689f), vec3<f32>(var_4.d, var_2.d, var_2.d)), _wgslsmith_mult_vec3_i32(vec3<i32>(-39633i, -32157i, -2147483647i), vec3<i32>(u_input.a.x, -55885i, var_1.x))).d), -436f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~_wgslsmith_dot_vec2_u32(var_6.a.yx, var_2.a.yx))), min(~func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-315f, var_6.d, var_2.d)), u_input.a.zwx).a.yy, ~reverseBits(countOneBits(var_6.a.zy))));
}

