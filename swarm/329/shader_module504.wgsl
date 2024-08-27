struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, false);

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<i32>(50223i, 0i, 2147483647i, -1i), false, Struct_1(-1i), vec4<i32>(33071i, 39815i, i32(-2147483648), 2147483647i), vec3<u32>(4294967295u, 0u, 0u)), Struct_2(vec4<i32>(-2808i, -21220i, 0i, -1i), true, Struct_1(2147483647i), vec4<i32>(55541i, -38810i, 6277i, 2147483647i), vec3<u32>(1u, 4294967295u, 25804u)), Struct_2(vec4<i32>(0i, -34617i, i32(-2147483648), -4601i), true, Struct_1(50072i), vec4<i32>(-59961i, -15591i, -5941i, 19470i), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 1i), true, Struct_1(-1i), vec4<i32>(1i, -1i, 22816i, 5710i), vec3<u32>(13252u, 1u, 12130u)), Struct_2(vec4<i32>(-39990i, 40289i, i32(-2147483648), 2147483647i), true, Struct_1(42913i), vec4<i32>(-24154i, -25002i, -41866i, 67452i), vec3<u32>(4294967295u, 19157u, 59985u)), Struct_2(vec4<i32>(0i, -17526i, -20799i, -45085i), false, Struct_1(i32(-2147483648)), vec4<i32>(34005i, -18265i, i32(-2147483648), 0i), vec3<u32>(72805u, 2161u, 33161u)), Struct_2(vec4<i32>(i32(-2147483648), -4124i, 33941i, 65274i), true, Struct_1(43317i), vec4<i32>(-7031i, -61024i, -47372i, 28782i), vec3<u32>(16882u, 1u, 4294967295u)), Struct_2(vec4<i32>(0i, 37090i, i32(-2147483648), i32(-2147483648)), false, Struct_1(0i), vec4<i32>(i32(-2147483648), 0i, -44267i, 2147483647i), vec3<u32>(43882u, 0u, 1u)), Struct_2(vec4<i32>(21828i, 1i, -53642i, -55783i), false, Struct_1(12887i), vec4<i32>(19460i, 2147483647i, -10837i, 2463i), vec3<u32>(48948u, 80657u, 4294967295u)), Struct_2(vec4<i32>(i32(-2147483648), 0i, 0i, -34616i), false, Struct_1(1i), vec4<i32>(-61712i, -1597i, 2395i, 2147483647i), vec3<u32>(33577u, 1u, 0u)), Struct_2(vec4<i32>(795i, i32(-2147483648), 22981i, 89094i), true, Struct_1(0i), vec4<i32>(-1i, -1i, 19423i, -5392i), vec3<u32>(0u, 4294967295u, 1u)), Struct_2(vec4<i32>(2247i, 8024i, -1i, 37279i), false, Struct_1(543i), vec4<i32>(-1i, -15591i, 1i, 13490i), vec3<u32>(1u, 1u, 3931u)), Struct_2(vec4<i32>(7844i, -19022i, -1i, -1i), true, Struct_1(27973i), vec4<i32>(0i, -74087i, 2147483647i, -18923i), vec3<u32>(0u, 4294967295u, 68118u)), Struct_2(vec4<i32>(i32(-2147483648), 7131i, 10183i, 21978i), true, Struct_1(0i), vec4<i32>(14698i, -24333i, -10163i, -26185i), vec3<u32>(37503u, 1u, 51098u)), Struct_2(vec4<i32>(-708i, 2147483647i, i32(-2147483648), -76246i), false, Struct_1(-1i), vec4<i32>(-15572i, 1i, -51899i, 5546i), vec3<u32>(0u, 24304u, 2147u)));

var<private> global2: vec4<i32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = 37359i & ((reverseBits(global2.x) >> (u_input.d % 32u)) | reverseBits(~u_input.a ^ (-2147483647i | u_input.b)));
    global2 = _wgslsmith_div_vec4_i32(vec4<i32>(select(u_input.c, reverseBits(u_input.b), true), max(global2.x, reverseBits(_wgslsmith_mult_i32(1i, 0i))), u_input.b, ~var_0), vec4<i32>(_wgslsmith_dot_vec2_i32(-global2.yx, -global2.zw), firstTrailingBit(~u_input.c), _wgslsmith_dot_vec3_i32(global2.xzz, vec3<i32>(global2.x, u_input.b, -24152i)), 6522i) ^ min(vec4<i32>(-1i) * -vec4<i32>(var_0, global2.x, -62645i, var_0), select(select(vec4<i32>(9750i, 36782i, -2147483647i, var_0), vec4<i32>(global2.x, var_0, u_input.b, -1i), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d, 2u)], true)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.c, var_0, -1i), vec4<i32>(var_0, var_0, global2.x, var_0)), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(20400u, 2u)], true, true), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 2u)], global0[_wgslsmith_index_u32(12795u, 2u)], global0[_wgslsmith_index_u32(26830u, 2u)])))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f * 1422f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1049f, -275f)), -311f)))));
    global2 = vec4<i32>(_wgslsmith_mod_i32(-22623i, 0i >> (u_input.d % 32u)), u_input.a, ~abs(-var_0) << (_wgslsmith_mod_u32(1u, 1473u) % 32u), _wgslsmith_div_i32(-reverseBits(u_input.a), var_0 >> (_wgslsmith_sub_u32(80586u, u_input.d) % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-112f, -1165f, -1144f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(793f, -615f, 1782f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2208f, -426f, 388f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(634f, -1311f, 451f)))))))));
    return select(firstTrailingBit(~(i32(-1i) * -3385i)), ~u_input.b, abs(~4294967295u) >= _wgslsmith_add_u32(u_input.d, ~u_input.d)) ^ global2.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: f32) -> Struct_2 {
    global1 = array<Struct_2, 15>();
    let var_0 = arg_2.x;
    var var_1 = Struct_3(Struct_1(func_3()), Struct_1(2147483647i), Struct_1(_wgslsmith_mod_i32(countOneBits(u_input.b) ^ (i32(-1i) * -1i), global2.x)), Struct_2(-select(vec4<i32>(23436i, global2.x, u_input.c, global2.x), vec4<i32>(-2147483647i, global2.x, u_input.b, 1i) << (vec4<u32>(75048u, 25563u, arg_2.x, 94620u) % vec4<u32>(32u)), !vec4<bool>(global0[_wgslsmith_index_u32(29616u, 2u)], true, global0[_wgslsmith_index_u32(1u, 2u)], true)), select(!global0[_wgslsmith_index_u32(var_0, 2u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.d), 2u)] && any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(arg_2.x, 2u)], global0[_wgslsmith_index_u32(69172u, 2u)])), true), Struct_1(~(-63729i)), -vec4<i32>(u_input.a, u_input.a, -3636i, _wgslsmith_mod_i32(u_input.c, global2.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, _wgslsmith_add_u32(u_input.d, 7712u)), vec3<u32>(arg_2.x & 1u, ~23200u, 0u), firstLeadingBit(vec3<u32>(42873u, 1u, 30942u)) << ((vec3<u32>(arg_2.x, var_0, u_input.d) ^ vec3<u32>(u_input.d, u_input.d, 1u)) % vec3<u32>(32u)))));
    var var_2 = Struct_1(0i);
    global0 = array<bool, 2>();
    return global1[_wgslsmith_index_u32(select(~(~_wgslsmith_add_u32(var_0, 4294967295u)), _wgslsmith_mod_u32(max(firstTrailingBit(10495u), ~var_0 & var_1.d.e.x), ~18338u >> (firstTrailingBit(countOneBits(6825u)) % 32u)), var_1.d.b), 15u)];
}

fn func_4(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = Struct_3(Struct_1(u_input.b), Struct_1(~(-25868i)), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2297f, -1176f, -1040f, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(210f, 257f, -637f, 548f) * vec4<f32>(-590f, 1000f, 908f, 1821f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(216f, 781f, 418f, -1051f), vec4<f32>(2077f, 1288f, 1108f, 583f))), arg_0.b))), arg_0.e.zz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1067f, 149f))), _wgslsmith_f_op_f32(-1f))).c, global1[_wgslsmith_index_u32(arg_0.e.x, 15u)]);
    return var_0.d.a << (~vec4<u32>(arg_0.e.x, ~(~arg_0.e.x), countOneBits(var_0.d.e.x), u_input.d) % vec4<u32>(32u));
}

fn func_1(arg_0: f32) -> u32 {
    global1 = array<Struct_2, 15>();
    let var_0 = Struct_2(_wgslsmith_sub_vec4_i32(~(~(-vec4<i32>(global2.x, global2.x, global2.x, u_input.b))), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global2.x, u_input.a, 2534i), vec4<i32>(0i, -35020i, -50451i, u_input.a), vec4<i32>(2147483647i, -2394i, -1i, -2147483647i))), true, Struct_1(-1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-(~(-1i)), countOneBits(~(-1i)), 1i, _wgslsmith_add_i32(-2147483647i, 36428i)), abs(~(~vec4<i32>(u_input.b, 0i, u_input.b, -52343i)))), _wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(~vec3<u32>(56056u, u_input.d, u_input.d), vec3<u32>(1u, 1u, u_input.d) ^ vec3<u32>(u_input.d, u_input.d, u_input.d)), ~(~(~vec3<u32>(u_input.d, u_input.d, u_input.d)))));
    var var_1 = countOneBits(~abs(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.e.x, u_input.d, var_0.e.x, 0u), vec4<u32>(u_input.d, u_input.d, var_0.e.x, 1u)), max(vec4<u32>(4294967295u, 56686u, var_0.e.x, 4294967295u), vec4<u32>(4294967295u, var_0.e.x, 4294967295u, var_0.e.x)))));
    global2 = ~_wgslsmith_mult_vec4_i32(~func_4(func_2(vec4<f32>(arg_0, -350f, arg_0, 757f), vec4<f32>(1089f, -558f, 884f, arg_0), vec2<u32>(var_1.x, 1u), arg_0)), firstLeadingBit(select(reverseBits(var_0.d), -var_0.a, true)));
    let var_2 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))), arg_0, _wgslsmith_f_op_f32(step(arg_0, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0 - arg_0), 1522f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), -698f, _wgslsmith_f_op_f32(min(-427f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1538f * arg_0))))), 118f), ~var_1.zw, arg_0);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-1859f);
    global1 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_sub_u32(3117u, select(15742u, _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(u_input.d, u_input.d, u_input.d)), select(select(vec3<u32>(18958u, 4294967295u, u_input.d), vec3<u32>(4294967295u, 103416u, u_input.d), false), vec3<u32>(u_input.d, u_input.d, u_input.d), !global0[_wgslsmith_index_u32(8714u, 2u)])), !select(all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.d, 2u)], global0[_wgslsmith_index_u32(u_input.d, 2u)], false)), false, any(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d, 2u)], global0[_wgslsmith_index_u32(37139u, 2u)])))));
    let var_2 = vec2<i32>(func_4(global1[_wgslsmith_index_u32(~var_1, 15u)]).x, 1i);
    let var_3 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1386f, -641f, 135f, 233f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-363f, -930f, -471f, -1000f), vec4<f32>(713f, 1355f, 367f, 643f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1222f, 526f, -2121f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1164f, 110f, 1079f, -376f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-689f, -835f, 1357f, 763f)))))), vec2<u32>(4294967295u, _wgslsmith_mult_u32(~var_1, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, u_input.d, var_1, 4294967295u)), vec4<u32>(var_1, 4294967295u, var_1, var_1) & vec4<u32>(4294967295u, var_1, u_input.d, u_input.d)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(543f - 436f) + _wgslsmith_f_op_f32(f32(-1f) * -254f)))), -218f))).c;
    var var_4 = global1[_wgslsmith_index_u32(55454u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-445f * -431f)))) + _wgslsmith_f_op_f32(floor(548f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-312f, -300f)), 1034f), ~_wgslsmith_dot_vec2_u32(var_4.e.xx >> (var_4.e.xx % vec2<u32>(32u)), select(vec2<u32>(var_4.e.x, var_4.e.x), var_4.e.yx, vec2<bool>(true, false))));
}

