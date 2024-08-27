struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<i32>(5840i, 2147483647i, -2663i), 389f, false, 1383f), Struct_1(vec3<i32>(-1i, -15536i, -1i), 1000f, false, 958f), Struct_1(vec3<i32>(-13646i, -14642i, -1i), -801f, true, 1543f), Struct_1(vec3<i32>(26008i, 23549i, 2274i), -365f, true, -1000f), Struct_1(vec3<i32>(i32(-2147483648), -77563i, -285i), -1422f, false, 435f), Struct_1(vec3<i32>(-1i, 26114i, 20489i), 499f, true, 455f), Struct_1(vec3<i32>(-24473i, 1i, 0i), -2555f, false, 1000f), Struct_1(vec3<i32>(2147483647i, 0i, 0i), 1658f, true, 120f), Struct_1(vec3<i32>(51911i, -11964i, -39140i), 1780f, false, 1214f), Struct_1(vec3<i32>(0i, 0i, 0i), -327f, false, 536f), Struct_1(vec3<i32>(57166i, i32(-2147483648), 1i), -516f, false, 997f), Struct_1(vec3<i32>(-5075i, 8866i, 34945i), -573f, true, -515f), Struct_1(vec3<i32>(-1i, -16175i, 1440i), -1000f, false, 1079f), Struct_1(vec3<i32>(1i, -38993i, -65442i), -224f, true, -1000f), Struct_1(vec3<i32>(-36031i, -11406i, 8474i), 144f, false, -1418f), Struct_1(vec3<i32>(-45805i, -11829i, -21017i), 317f, true, 132f), Struct_1(vec3<i32>(-20517i, -1i, -37222i), -1903f, false, -1393f));

var<private> global1: array<bool, 25>;

var<private> global2: array<f32, 26> = array<f32, 26>(-1095f, 1623f, 264f, -268f, -486f, 188f, 174f, -865f, 1012f, -586f, -161f, -166f, -596f, 1451f, -816f, 791f, 1494f, -781f, -369f, 1266f, 446f, 1125f, -1184f, -742f, 1183f, -236f);

var<private> global3: array<u32, 19> = array<u32, 19>(0u, 4294967295u, 1u, 81138u, 71736u, 35463u, 4294967295u, 4294967295u, 4294967295u, 61240u, 48632u, 137851u, 25997u, 74325u, 12441u, 4294967295u, 0u, 0u, 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_add_i32(u_input.a, 22737i);
    var var_1 = global0[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(~abs(29854u), 19u)] << (global3[_wgslsmith_index_u32(63806u, 19u)] % 32u)) >> (global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(global3[_wgslsmith_index_u32(~4294967295u, 19u)]), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)], 0u, 4294967295u, 2098u), vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(106929u, 19u)], 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)], 14793u))), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], global3[_wgslsmith_index_u32(94470u, 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 12915u) >> (vec4<u32>(4294967295u, 4294967295u, 4294967295u, global3[_wgslsmith_index_u32(22352u, 19u)]) % vec4<u32>(32u)))), 19u)] % 32u), 17u)];
    let var_2 = -(~_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, -43362i), var_1.a.yx), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, 0i, u_input.a, u_input.a), vec4<i32>(12492i, -71981i, u_input.a, var_1.a.x)))));
    var var_3 = _wgslsmith_clamp_u32(countOneBits(~0u), _wgslsmith_div_u32(~(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13066u, 66308u, 21609u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)]), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25385u, 19u)], 19u)], 4294967295u, 1u)), 19u)]), _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(43484u, 19u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 44759u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(42017u, 19u)])), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54833u, 19u)], 19u)], 19u)], 19u)], global3[_wgslsmith_index_u32(31816u, 19u)]) & _wgslsmith_clamp_u32(16335u, 725u, 0u))), max(~global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(10065u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)])), 19u)], abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36053u, 19u)], 19u)], 19u)] & global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)])));
    let var_4 = Struct_1(-abs(~(-vec3<i32>(u_input.a, -1i, var_2))), _wgslsmith_f_op_f32(var_1.b - global2[_wgslsmith_index_u32(~abs(48105u) >> (global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(max(15191u, 29709u), 19u)], 0u), 19u)] % 32u), 26u)]), !all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 19u)], 19u)], 25u)])), select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 25u)], false), vec2<bool>(false, false), vec2<bool>(false, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + 328f));
    return true;
}

fn func_2() -> vec2<bool> {
    var var_0 = ~(~vec2<u32>(5210u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)]) << ((vec2<u32>(15708u, 36543u) << (vec2<u32>(global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(1u, 19u)]) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(34234u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10769u, 19u)], 19u)]), vec2<u32>(33918u, 10983u)), vec2<u32>(36522u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]) & vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(55973u, 19u)], 19u)], 19u)]), vec2<u32>(61915u, global3[_wgslsmith_index_u32(1u, 19u)])), vec2<u32>(global3[_wgslsmith_index_u32(2549u, 19u)] | global3[_wgslsmith_index_u32(1u, 19u)], ~3669u)), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 19u)], 36032u, 11555u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(66643u, 19u)], 19u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1973u, 19u)], 19u)], global3[_wgslsmith_index_u32(11105u, 19u)], 0u, global3[_wgslsmith_index_u32(1u, 19u)])), firstLeadingBit(global3[_wgslsmith_index_u32(0u, 19u)]))) % vec2<u32>(32u));
    global1 = array<bool, 25>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(max(4294967295u, 27340u), 26u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2205f) * -318f))), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 19u)], 26u)]);
    let var_2 = vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], 1u, 3693u), vec3<u32>(global3[_wgslsmith_index_u32(var_0.x, 19u)], global3[_wgslsmith_index_u32(61369u, 19u)], 1u)), ~vec3<u32>(3067u, var_0.x, 1u) << (select(vec3<u32>(var_0.x, global3[_wgslsmith_index_u32(var_0.x, 19u)], var_0.x), vec3<u32>(31837u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 19u)], 19u)]), vec3<bool>(global1[_wgslsmith_index_u32(46203u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], true)) % vec3<u32>(32u))), ~(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 19u)], 19u)], 19u)]) >> ((vec3<u32>(global3[_wgslsmith_index_u32(16455u, 19u)], global3[_wgslsmith_index_u32(47260u, 19u)], var_0.x) & vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 19u)], 19u)], 19u)], global3[_wgslsmith_index_u32(var_0.x, 19u)], 32454u)) % vec3<u32>(32u)))), 25u)], true);
    let var_3 = vec3<i32>(u_input.a, u_input.a, _wgslsmith_mod_i32(~firstLeadingBit(u_input.a), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, u_input.a, -81405i), vec4<i32>(1i, u_input.a, u_input.a, u_input.a) << (vec4<u32>(var_0.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35988u, 19u)], 19u)], 4294967295u, 1u) % vec4<u32>(32u))))));
    return select(select(var_2, vec2<bool>(func_3(), _wgslsmith_f_op_f32(-166f + global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 19u)], 26u)]) == _wgslsmith_f_op_f32(abs(240f))), vec2<bool>(_wgslsmith_div_f32(-559f, var_1.x) <= -1000f, global1[_wgslsmith_index_u32(reverseBits(var_0.x), 25u)] & all(vec3<bool>(true, true, false)))), vec2<bool>(any(!vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 25u)], false)) && func_3(), true), false);
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 19u)] & ~68049u, 19u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)] ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(75469u, 19u)], 19u)]), vec2<u32>(19340u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30042u, 19u)], 19u)]))) ^ ~(~(~firstTrailingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]))), 19u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, global3[_wgslsmith_index_u32(reverseBits(global3[_wgslsmith_index_u32(select(0u, global3[_wgslsmith_index_u32(4294967295u, 19u)], arg_0.x), 19u)]), 19u)]), _wgslsmith_mult_u32(4294967295u, 1u) << (global3[_wgslsmith_index_u32(42464u, 19u)] % 32u)), _wgslsmith_mult_u32(38114u, _wgslsmith_clamp_u32(~global3[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(96199u, 19u)], 19u)]), global3[_wgslsmith_index_u32(49317u, 19u)] & 120529u) >> (~global3[_wgslsmith_index_u32(4294967295u, 19u)] % 32u))), 17u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> vec3<bool> {
    let var_0 = abs(_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(89025u, 19u)], 43782u, 18680u), vec3<u32>(arg_0.x, global3[_wgslsmith_index_u32(arg_0.x, 19u)], 43203u)) >> (~(~vec3<u32>(12500u, 4294967295u, 0u)) % vec3<u32>(32u)), ~reverseBits(vec3<u32>(0u, 14363u, arg_0.x))));
    var var_1 = func_4(select(!vec2<bool>(!global1[_wgslsmith_index_u32(3469u, 25u)], !global1[_wgslsmith_index_u32(arg_0.x, 25u)]), vec2<bool>(true, true), select(func_2(), vec2<bool>(global1[_wgslsmith_index_u32(9930u, 25u)], any(vec3<bool>(false, false, arg_1))), select(!vec2<bool>(arg_1, false), func_2(), !arg_1))));
    global0 = array<Struct_1, 17>();
    global3 = array<u32, 19>();
    global3 = array<u32, 19>();
    return select(select(vec3<bool>(func_4(vec2<bool>(true, true)).c, func_2().x | false, var_1.c), select(vec3<bool>(func_2().x, !global1[_wgslsmith_index_u32(1u, 25u)], all(vec4<bool>(true, false, arg_1, true))), select(!vec3<bool>(global1[_wgslsmith_index_u32(24689u, 25u)], arg_1, var_1.c), vec3<bool>(true, true, arg_1), vec3<bool>(global1[_wgslsmith_index_u32(23345u, 25u)], true, false)), true), !select(!vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 25u)], var_1.c), vec3<bool>(false, true, true), select(vec3<bool>(true, global1[_wgslsmith_index_u32(45968u, 25u)], global1[_wgslsmith_index_u32(arg_0.x, 25u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 25u)], true, var_1.c), true))), vec3<bool>(global1[_wgslsmith_index_u32(abs(33506u), 25u)], false, all(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], false, var_1.c, true))), vec3<bool>(func_3(), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(53721u, 0u), 25u)] & true, true & var_1.c));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(arg_1.c, true, !arg_0.x);
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_f_op_f32(floor(1445f));
    return func_4(var_0.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(vec3<bool>(all(func_1(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25854u, 19u)], 19u)], 19u)], 19u)]), false)), all(vec2<bool>(true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(38172u, 19u)], 25u)])), false), vec3<bool>(any(vec3<bool>(false, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21896u, 19u)], 25u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(63275u, 19u)], 19u)], 25u)])) || func_2().x, _wgslsmith_add_i32(-1i, u_input.a) > ~u_input.a, any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50206u, 19u)], 19u)], 25u)]))), min(-u_input.a, u_input.a) >= ~countOneBits(u_input.a)), Struct_1(min(vec3<i32>(_wgslsmith_mult_i32(1i, -3785i), u_input.a, ~u_input.a), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(2147483647i, u_input.a, -1i)), vec3<i32>(u_input.a, 49559i, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~0u, 26u)]) + _wgslsmith_div_f32(-138f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], 19u)], 26u)]))), global1[_wgslsmith_index_u32(36669u, 25u)], -1728f));
    global0 = array<Struct_1, 17>();
    global3 = array<u32, 19>();
    global1 = array<bool, 25>();
    var var_1 = func_5(vec3<bool>(func_4(func_2()).c, true, true), Struct_1(select(var_0.a << (vec3<u32>(3419u, global3[_wgslsmith_index_u32(4294967295u, 19u)], global3[_wgslsmith_index_u32(23640u, 19u)]) % vec3<u32>(32u)), ~vec3<i32>(-2147483647i, -2147483647i, 2147483647i), vec3<bool>(false, global1[_wgslsmith_index_u32(6494u, 25u)], var_0.c)) ^ ~vec3<i32>(-1i, u_input.a, -2147483647i), -271f, !(global3[_wgslsmith_index_u32(4370u, 19u)] != global3[_wgslsmith_index_u32(113842u, 19u)]) && (countOneBits(u_input.a) > ~var_0.a.x), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(select(abs(14443u), 16578u, true), 19u)], 26u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u), ~_wgslsmith_add_u32(17080u, global3[_wgslsmith_index_u32(1u, 19u)]), 35824u, firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2973u, 19u)], 19u)], 19u)], 19u)], 19u)]) >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10083u, 19u)] & global3[_wgslsmith_index_u32(0u, 19u)], 19u)] % 32u)), ~select(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], 19u)], 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)], 19u)], global3[_wgslsmith_index_u32(1u, 19u)], 4294967295u), vec4<u32>(0u, 70672u, 4294967295u, 4294967295u), vec4<bool>(var_1.c, var_1.c, true, true))));
}

