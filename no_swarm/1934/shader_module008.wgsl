struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(28190u, false, 0u), Struct_1(70847u, false, 15710u), vec4<f32>(241f, 1076f, 2632f, 1000f), vec2<f32>(479f, 426f), true), Struct_2(Struct_1(0u, true, 0u), Struct_1(4294967295u, false, 4294967295u), vec4<f32>(-998f, 1010f, 634f, 612f), vec2<f32>(610f, 2566f), false), Struct_2(Struct_1(59912u, false, 0u), Struct_1(1u, true, 4294967295u), vec4<f32>(798f, 1033f, -1369f, 469f), vec2<f32>(466f, 515f), false), Struct_2(Struct_1(1u, false, 13453u), Struct_1(19507u, true, 11154u), vec4<f32>(-612f, 227f, -819f, 991f), vec2<f32>(-1531f, -663f), false), Struct_2(Struct_1(29955u, true, 4294967295u), Struct_1(4294967295u, false, 52042u), vec4<f32>(-429f, 389f, -1121f, -184f), vec2<f32>(752f, 828f), false), Struct_2(Struct_1(4294967295u, false, 10329u), Struct_1(33851u, false, 5353u), vec4<f32>(-878f, -1000f, -1535f, -1000f), vec2<f32>(816f, -519f), false), Struct_2(Struct_1(66775u, true, 17345u), Struct_1(1u, false, 57152u), vec4<f32>(-799f, -2221f, 1000f, 606f), vec2<f32>(1757f, -914f), false), Struct_2(Struct_1(4294967295u, true, 0u), Struct_1(0u, true, 18036u), vec4<f32>(-1556f, -1289f, 314f, 1000f), vec2<f32>(-178f, 1040f), false), Struct_2(Struct_1(0u, true, 4294967295u), Struct_1(4294967295u, false, 1u), vec4<f32>(-1220f, 673f, -1335f, -1426f), vec2<f32>(-273f, 411f), false), Struct_2(Struct_1(4294967295u, true, 0u), Struct_1(3252u, false, 18277u), vec4<f32>(574f, -1424f, 566f, 646f), vec2<f32>(-925f, 903f), false), Struct_2(Struct_1(4294967295u, true, 114890u), Struct_1(1u, true, 23166u), vec4<f32>(-1000f, -1390f, 1066f, 945f), vec2<f32>(-400f, 2136f), true), Struct_2(Struct_1(0u, false, 23557u), Struct_1(103585u, false, 101640u), vec4<f32>(245f, -1566f, 977f, 504f), vec2<f32>(-547f, -698f), false), Struct_2(Struct_1(1u, true, 0u), Struct_1(80227u, false, 47443u), vec4<f32>(-2639f, -1421f, -936f, 1635f), vec2<f32>(1000f, -509f), false), Struct_2(Struct_1(26772u, true, 4294967295u), Struct_1(56473u, false, 4294967295u), vec4<f32>(1000f, 1116f, -1000f, -1074f), vec2<f32>(920f, 1000f), false), Struct_2(Struct_1(1u, false, 86306u), Struct_1(0u, false, 114629u), vec4<f32>(-1448f, 667f, -585f, 146f), vec2<f32>(233f, -149f), false), Struct_2(Struct_1(3153u, true, 61464u), Struct_1(4294967295u, false, 5260u), vec4<f32>(1018f, -987f, 823f, 508f), vec2<f32>(802f, -370f), true), Struct_2(Struct_1(1u, false, 9335u), Struct_1(4294967295u, true, 58450u), vec4<f32>(-1366f, -387f, -1469f, 773f), vec2<f32>(184f, -1497f), false), Struct_2(Struct_1(27727u, true, 37296u), Struct_1(47193u, true, 138086u), vec4<f32>(-244f, 695f, 325f, 1114f), vec2<f32>(390f, -3041f), true), Struct_2(Struct_1(0u, false, 107u), Struct_1(0u, true, 15310u), vec4<f32>(-1869f, -531f, 1057f, 684f), vec2<f32>(1091f, -283f), false), Struct_2(Struct_1(62854u, true, 0u), Struct_1(4294967295u, false, 0u), vec4<f32>(306f, 1000f, -660f, 287f), vec2<f32>(710f, -255f), true), Struct_2(Struct_1(4294967295u, true, 50603u), Struct_1(31929u, false, 4294967295u), vec4<f32>(1356f, -541f, 738f, -404f), vec2<f32>(1000f, -947f), false), Struct_2(Struct_1(1u, true, 45560u), Struct_1(4294967295u, true, 0u), vec4<f32>(1844f, -1658f, 236f, 336f), vec2<f32>(-1027f, 279f), false), Struct_2(Struct_1(42352u, false, 54829u), Struct_1(0u, true, 1u), vec4<f32>(-1412f, 485f, 1242f, 112f), vec2<f32>(-593f, -435f), false), Struct_2(Struct_1(55256u, true, 19153u), Struct_1(1u, false, 57605u), vec4<f32>(-1041f, 695f, -1000f, -288f), vec2<f32>(-1314f, -292f), true), Struct_2(Struct_1(4294967295u, false, 1u), Struct_1(7070u, false, 1u), vec4<f32>(-717f, 849f, 1000f, -268f), vec2<f32>(-644f, -942f), false));

var<private> global2: Struct_2 = Struct_2(Struct_1(26339u, false, 4294967295u), Struct_1(25699u, true, 1u), vec4<f32>(380f, 343f, -537f, -1749f), vec2<f32>(-948f, -735f), false);

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

var<private> global4: array<bool, 31> = array<bool, 31>(true, true, true, true, true, false, false, true, false, true, true, false, false, true, false, false, false, true, false, true, true, true, false, false, false, true, true, true, false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = array<vec4<bool>, 18>();
    global4 = array<bool, 31>();
    let var_0 = u_input.c.x;
    global2 = Struct_2(arg_0, global2.a, global2.c, vec2<f32>(_wgslsmith_f_op_f32(ceil(611f)), _wgslsmith_div_f32(global2.c.x, -205f)), global2.b.b);
    global1 = array<Struct_2, 25>();
    return vec3<bool>(((~7046u > ~arg_0.c) & false) || true, false, true);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> u32 {
    let var_0 = vec4<bool>(!any(select(func_3(Struct_1(u_input.a, true, global2.b.c)), !vec3<bool>(arg_0.a.b, true, arg_0.b.b), vec3<bool>(arg_0.a.b, global4[_wgslsmith_index_u32(15730u, 31u)], global2.b.b))), false, global2.d.x <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1639f)))))), all(vec4<bool>(!any(vec4<bool>(false, true, global4[_wgslsmith_index_u32(global2.a.a, 31u)], arg_2)), true, !func_3(global2.a).x, !any(vec4<bool>(true, global2.e, arg_0.e, global2.b.b)))));
    global2 = Struct_2(arg_0.a, Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.a.c) | vec2<u32>(4294967295u, global2.a.a), ~vec2<u32>(0u, 30822u)), -u_input.c.x >= (i32(-1i) * -2147483647i), 19913u), _wgslsmith_f_op_vec4_f32(arg_0.c + global2.c), global2.d, var_0.x);
    let var_1 = global1[_wgslsmith_index_u32(~(~(~1u)), 25u)];
    let var_2 = Struct_1(0u, global3.x, 4294967295u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-var_1.c);
    return _wgslsmith_sub_u32(~global2.a.a, var_2.a);
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_div_vec3_i32(abs(reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))) & min(-vec3<i32>(-39307i, -398i, 1742i), ~vec3<i32>(-65367i, -35158i, -1i)), -vec3<i32>(u_input.c.x, ~(-31707i), -18515i)) >> ((vec3<u32>(~func_2(Struct_2(Struct_1(u_input.b, global4[_wgslsmith_index_u32(global2.b.c, 31u)], 66292u), global2.b, vec4<f32>(global2.c.x, 768f, -1854f, 1268f), vec2<f32>(global2.d.x, global2.d.x), global2.a.b), u_input.c.x, global2.e), ~u_input.b, (26139u >> (u_input.a % 32u)) ^ (u_input.a << (u_input.b % 32u))) & vec3<u32>(~1u, min(1u, ~36166u), ~global2.a.c)) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-global2.d);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global2.c.x);
    let var_1 = vec2<i32>(-23542i, func_1(true));
    let var_2 = 8972i;
    let var_3 = global1[_wgslsmith_index_u32(20650u, 25u)];
    var var_4 = vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~global2.a.c, 4294967295u), min(firstLeadingBit(1u), global2.b.c), select(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, global2.a.c, 32112u, global2.a.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.c, u_input.a, 30671u, 49824u), vec4<u32>(97583u, 0u, 52287u, 89803u))), ~u_input.b, var_3.b.b)), ~39491u ^ select(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, global2.b.a), ~global2.a.c), reverseBits(global2.b.c) & global2.a.a, !select(false, global3.x, true)), var_3.a.c, 0u);
    var var_5 = vec4<i32>(-16979i, -func_1(all(!global0[_wgslsmith_index_u32(global2.b.a, 18u)])), -74267i, ~(~var_2));
    let var_6 = select(-(~(-firstTrailingBit(vec4<i32>(var_2, var_5.x, -4628i, u_input.c.x)))), vec4<i32>(-1i) * -(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, -6732i, var_5.x), vec4<i32>(u_input.c.x, -1i, var_2, -1i))), !any(select(vec4<bool>(global2.b.b, false, global2.b.b, global3.x), !global0[_wgslsmith_index_u32(var_4.x, 18u)], !vec4<bool>(global3.x, false, global4[_wgslsmith_index_u32(1u, 31u)], global4[_wgslsmith_index_u32(4294967295u, 31u)]))));
    var var_7 = !(!select(vec2<bool>(global2.b.b, global3.x), vec2<bool>(any(global3.zz), var_5.x >= -11488i), var_3.a.b));
    let var_8 = var_3.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_u32(min(vec4<u32>(var_4.x, var_3.b.c, u_input.a, 4294967295u) | vec4<u32>(var_4.x, 67270u, global2.b.c, var_4.x), select(vec4<u32>(u_input.b, 4294967295u, u_input.b, 4294967295u), vec4<u32>(0u, global2.b.c, 15174u, u_input.b), vec4<bool>(false, true, true, var_3.e))), ~(vec4<u32>(var_4.x, var_3.b.a, var_4.x, u_input.b) | vec4<u32>(4294967295u, var_3.a.c, var_4.x, 48706u))), u_input.c.x);
}

