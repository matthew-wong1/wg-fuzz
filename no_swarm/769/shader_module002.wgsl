struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(4294967295u, 6467u), vec4<f32>(-397f, -129f, 1000f, -1629f), vec3<i32>(21391i, -3116i, 9401i));

var<private> global1: array<i32, 11> = array<i32, 11>(-25385i, 2147483647i, 6217i, 0i, 55003i, 83745i, -55095i, 1i, 0i, -16924i, i32(-2147483648));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(81554u, 90315u), vec4<f32>(-349f, 1683f, 436f, 866f), vec3<i32>(-6463i, 2147483647i, 2147483647i));

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(vec2<u32>(1u, 0u), vec4<f32>(-1310f, 1314f, 1427f, 2423f), vec3<i32>(-29514i, 1i, 36304i)), -1i, true, -1000f), Struct_2(Struct_1(vec2<u32>(0u, 31733u), vec4<f32>(632f, -1327f, 568f, -216f), vec3<i32>(7674i, i32(-2147483648), 1i)), 2147483647i, false, -112f), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec4<f32>(-628f, 374f, -1261f, -2170f), vec3<i32>(-72977i, -35841i, 48790i)), 2147483647i, true, -1000f), Struct_2(Struct_1(vec2<u32>(53458u, 43860u), vec4<f32>(-611f, -353f, 1931f, -358f), vec3<i32>(-19658i, 1i, -59800i)), i32(-2147483648), true, 1151f), Struct_2(Struct_1(vec2<u32>(44118u, 1u), vec4<f32>(790f, -652f, 334f, -816f), vec3<i32>(-15780i, 33922i, i32(-2147483648))), 17993i, true, 210f), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec4<f32>(470f, -1095f, -1000f, 1079f), vec3<i32>(0i, 0i, 9072i)), 2147483647i, false, -1000f), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec4<f32>(-885f, -786f, -632f, 687f), vec3<i32>(2147483647i, -14875i, -18301i)), 2147483647i, true, -337f), Struct_2(Struct_1(vec2<u32>(1u, 23300u), vec4<f32>(2561f, -1029f, -215f, -138f), vec3<i32>(47250i, 1i, 25887i)), -912i, true, 573f), Struct_2(Struct_1(vec2<u32>(0u, 51317u), vec4<f32>(-751f, -1559f, 517f, 1255f), vec3<i32>(732i, -33675i, 2147483647i)), 10554i, false, 208f), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-672f, -354f, -1061f, -1000f), vec3<i32>(-1i, 1i, 41297i)), -1i, false, 1176f), Struct_2(Struct_1(vec2<u32>(27825u, 1u), vec4<f32>(942f, 628f, 141f, 314f), vec3<i32>(i32(-2147483648), 2147483647i, -1i)), -6698i, false, 293f), Struct_2(Struct_1(vec2<u32>(1u, 1842u), vec4<f32>(690f, -1474f, -229f, 199f), vec3<i32>(-32462i, 2147483647i, 2147483647i)), -5323i, true, -114f), Struct_2(Struct_1(vec2<u32>(19237u, 1491u), vec4<f32>(-224f, 387f, 1083f, -340f), vec3<i32>(-71231i, -5421i, 2147483647i)), 1i, true, 858f), Struct_2(Struct_1(vec2<u32>(0u, 20354u), vec4<f32>(523f, -1024f, -431f, -332f), vec3<i32>(2147483647i, i32(-2147483648), -22662i)), 1i, true, 173f), Struct_2(Struct_1(vec2<u32>(51110u, 60559u), vec4<f32>(518f, 265f, 325f, -828f), vec3<i32>(-28676i, i32(-2147483648), i32(-2147483648))), -6319i, false, -1000f), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), vec4<f32>(-173f, -209f, 1095f, 1000f), vec3<i32>(15162i, -12685i, 2147483647i)), 1i, false, 1452f), Struct_2(Struct_1(vec2<u32>(35010u, 4294967295u), vec4<f32>(1274f, 574f, -846f, 468f), vec3<i32>(-31776i, -9651i, -23604i)), 2147483647i, false, -860f), Struct_2(Struct_1(vec2<u32>(4294967295u, 12509u), vec4<f32>(-1000f, -1342f, 245f, 1960f), vec3<i32>(-34674i, 26735i, 0i)), -18252i, false, 904f), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec4<f32>(-2244f, -759f, 635f, 2751f), vec3<i32>(10101i, -33694i, -18810i)), 0i, true, -1083f), Struct_2(Struct_1(vec2<u32>(14964u, 84988u), vec4<f32>(661f, 757f, -1466f, -1354f), vec3<i32>(187i, 1649i, i32(-2147483648))), -66072i, false, -763f), Struct_2(Struct_1(vec2<u32>(62434u, 1u), vec4<f32>(-335f, 2063f, -492f, -148f), vec3<i32>(11201i, -15365i, 38123i)), 71200i, true, -196f), Struct_2(Struct_1(vec2<u32>(63143u, 10503u), vec4<f32>(-1047f, -332f, 695f, -458f), vec3<i32>(-1i, -1i, 403i)), -1i, false, -1962f), Struct_2(Struct_1(vec2<u32>(1u, 0u), vec4<f32>(-712f, 479f, -117f, 917f), vec3<i32>(-1i, -3422i, 56846i)), 2147483647i, true, -208f), Struct_2(Struct_1(vec2<u32>(4294967295u, 13685u), vec4<f32>(344f, 681f, -771f, 160f), vec3<i32>(31506i, -1i, 1i)), -1i, false, 170f), Struct_2(Struct_1(vec2<u32>(0u, 1u), vec4<f32>(-882f, -977f, -227f, -337f), vec3<i32>(3971i, -60705i, 1i)), 2147483647i, false, 1649f), Struct_2(Struct_1(vec2<u32>(8399u, 73835u), vec4<f32>(200f, 449f, 1269f, 466f), vec3<i32>(0i, 0i, 0i)), -1i, false, 451f), Struct_2(Struct_1(vec2<u32>(75805u, 1u), vec4<f32>(-3262f, 1220f, -2262f, 920f), vec3<i32>(0i, 1i, 0i)), 0i, true, -1046f), Struct_2(Struct_1(vec2<u32>(40298u, 4294967295u), vec4<f32>(932f, -280f, 526f, 176f), vec3<i32>(i32(-2147483648), -40039i, -2330i)), 67974i, true, -1000f), Struct_2(Struct_1(vec2<u32>(6055u, 4294967295u), vec4<f32>(-178f, -2085f, -1485f, -1159f), vec3<i32>(35685i, 84172i, -1i)), 1i, true, 835f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.a.yw, (select(vec2<i32>(global2.c.x, 2147483647i), vec2<i32>(18107i, arg_1.c.x), !vec2<bool>(arg_0.c, arg_0.c)) & arg_1.c.xz) & global2.c.zy);
    var var_1 = !select(select(!(!vec3<bool>(false, arg_0.c, false)), select(!vec3<bool>(true, arg_0.c, arg_0.c), !vec3<bool>(arg_0.c, true, arg_0.c), true), select(vec3<bool>(true, true, false), !vec3<bool>(arg_0.c, false, false), false)), vec3<bool>(!arg_0.c, true, arg_0.c & false), !vec3<bool>(true, !arg_0.c, true));
    let var_2 = Struct_1(~vec2<u32>(0u, (global0.a.x >> (0u % 32u)) & _wgslsmith_add_u32(4294967295u, arg_1.a.x)), global2.b, reverseBits(abs(_wgslsmith_clamp_vec3_i32(arg_0.a.c, vec3<i32>(u_input.a.x, global2.c.x, -56853i) >> (vec3<u32>(global0.a.x, 57986u, arg_1.a.x) % vec3<u32>(32u)), global2.c))));
    global2 = Struct_1(vec2<u32>(49464u, select(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 1u), global2.a), arg_1.a.x, any(vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b.x)) * var_2.b.x), _wgslsmith_f_op_f32(trunc(-856f)), _wgslsmith_f_op_f32(abs(-1336f)), 1604f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(273f, arg_2, 1000f, arg_1.b.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(462f, global2.b.x, 1013f, 499f)))), _wgslsmith_sub_vec3_i32(max(vec3<i32>(arg_0.a.c.x, var_0, -2147483647i), var_2.c), vec3<i32>(arg_0.a.c.x, 0i, _wgslsmith_clamp_i32(-42089i, 0i, -8973i))) & select(vec3<i32>(arg_0.a.c.x, global2.c.x, abs(arg_0.b)), global0.c, !(4294967295u <= global0.a.x)));
    let var_3 = arg_0.c;
    return -2147483647i;
}

fn func_2() -> u32 {
    global2 = Struct_1(min(global0.a, vec2<u32>(52356u, _wgslsmith_mult_u32(4294967295u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1054f, 1126f, 1031f, 669f))))), vec3<i32>(global2.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global0.c.x, global1[_wgslsmith_index_u32(global2.a.x, 11u)]), 0i, -1i), global0.c | vec3<i32>(-1i, 2147483647i, 0i)), 1i));
    let var_0 = global0.a.x;
    global3 = array<Struct_2, 29>();
    let var_1 = func_3(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~global0.a.x), 2018u), 29u)], Struct_1(~(~global2.a), vec4<f32>(_wgslsmith_f_op_f32(min(global2.b.x, global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -456f), 1f, -923f), global2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.b.x))) * _wgslsmith_f_op_f32(-global2.b.x))) <= -_wgslsmith_dot_vec3_i32(~global2.c ^ -vec3<i32>(14344i, 0i, global0.c.x), ~(~vec3<i32>(0i, -2147483647i, 1i)));
    var var_2 = select(54622u, ~(~abs(global0.a.x)), true);
    return ~firstLeadingBit(~4294967295u);
}

fn func_1() -> Struct_2 {
    var var_0 = ~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(84236u, func_2(), countOneBits(13847u)), global2.a.x), 0u, global0.a.x, abs(min(~global2.a.x, global2.a.x)));
    var var_1 = global0.c.x;
    let var_2 = Struct_1(firstLeadingBit(global0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.b))), reverseBits(~firstLeadingBit(_wgslsmith_clamp_vec3_i32(global0.c, vec3<i32>(global2.c.x, u_input.a.x, 0i), vec3<i32>(0i, -1i, 0i)))));
    let var_3 = var_2;
    let var_4 = _wgslsmith_sub_vec4_u32(~vec4<u32>(firstTrailingBit(~27520u), var_2.a.x, ~154965u, min(global0.a.x, var_0.x)), select(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, 0u, 1u, 0u)), vec4<u32>(1u, 29955u, 14132u, global2.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(3903u, var_3.a.x, global2.a.x, var_2.a.x) << (vec4<u32>(18045u, var_0.x, var_3.a.x, var_3.a.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.a.x, var_3.a.x, 4294967295u, global0.a.x), vec4<u32>(var_2.a.x, global2.a.x, 26249u, global0.a.x))), _wgslsmith_add_vec4_u32(~vec4<u32>(28170u, var_2.a.x, var_3.a.x, var_0.x), vec4<u32>(1u, 77195u, var_2.a.x, 23722u))), ~_wgslsmith_div_vec4_u32(select(vec4<u32>(var_2.a.x, global0.a.x, 4294967295u, 71147u), vec4<u32>(var_0.x, global0.a.x, 1u, 0u), true), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.x, var_0.x, var_2.a.x), vec4<u32>(var_0.x, 0u, 4294967295u, global2.a.x))), true));
    return global3[_wgslsmith_index_u32(~(~97908u), 29u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = global0.c.x;
    let var_1 = !arg_1.c;
    var var_2 = ~vec2<i32>(max(-17510i, ~(-53525i)), -_wgslsmith_dot_vec4_i32(select(u_input.a, vec4<i32>(global0.c.x, 13921i, 18417i, -29417i), vec4<bool>(true, arg_1.c, var_1, true)), ~vec4<i32>(u_input.a.x, -19153i, 29759i, global2.c.x)));
    var var_3 = Struct_1(~vec2<u32>(~(arg_2.x << (global0.a.x % 32u)), 94225u), vec4<f32>(-1061f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1305f + _wgslsmith_f_op_f32(1999f * arg_1.d))), arg_1.a.b.x, 1054f), ~firstLeadingBit(abs(arg_1.a.c)));
    global0 = Struct_1((((global0.a | vec2<u32>(global2.a.x, 74288u)) >> (vec2<u32>(global2.a.x, 29800u) % vec2<u32>(32u))) & global2.a) << (vec2<u32>(_wgslsmith_add_u32(44091u, 82448u), 28341u) % vec2<u32>(32u)), global0.b, firstLeadingBit(-_wgslsmith_sub_vec3_i32(arg_0.ywy, vec3<i32>(-11537i, -2147483647i, var_2.x))) & global2.c);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(_wgslsmith_mod_vec2_i32(countOneBits(global0.c.yy), vec2<i32>(-21523i, u_input.a.x)) | vec2<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(global0.a.x, 11u)], global0.c.x), global0.c.x)));
    global0 = func_4(select(-vec4<i32>(u_input.a.x, global0.c.x, -7185i, 0i), vec4<i32>(_wgslsmith_div_i32(u_input.a.x, var_0.x), 2147483647i, global2.c.x >> (global2.a.x % 32u), firstTrailingBit(-2147483647i)), vec4<bool>(global2.b.x != -1731f, global2.a.x != global0.a.x, true, true)) << (_wgslsmith_mult_vec4_u32(firstLeadingBit(~vec4<u32>(52333u, 4294967295u, 0u, 36399u)), vec4<u32>(_wgslsmith_mult_u32(global2.a.x, global2.a.x), firstLeadingBit(11313u), 52707u, ~0u)) % vec4<u32>(32u)), func_1(), select(~min(vec2<u32>(4294967295u, 80830u), vec2<u32>(16838u, 0u)), global0.a, vec2<bool>(true, func_1().c)) << ((global2.a >> (max(~global2.a, ~vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global2 = func_4(vec4<i32>(global1[_wgslsmith_index_u32(global2.a.x, 11u)], var_0.x, -49154i << (_wgslsmith_add_u32(max(global0.a.x, 1u), 1u >> (0u % 32u)) % 32u), firstLeadingBit(-46970i) << ((~global2.a.x << (global2.a.x % 32u)) % 32u)), global3[_wgslsmith_index_u32(global2.a.x, 29u)], vec2<u32>(~(_wgslsmith_mod_u32(40642u, global2.a.x) & select(30183u, global0.a.x, false)), ~(~(4294967295u << (0u % 32u)))));
    let var_1 = global2.a;
    var var_2 = _wgslsmith_f_op_f32(-global2.b.x);
    var_2 = 594f;
    global2 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-32185i, -2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(7999u, var_1.x), 11u)], _wgslsmith_clamp_i32(abs(abs(global2.c.x)), -25441i, var_0.x << (_wgslsmith_clamp_u32(global0.a.x, 105542u, global2.a.x) % 32u))), ~vec3<u32>(~0u, ~(~var_1.x), var_1.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global2.b.xy))))), global0.b.x);
}

