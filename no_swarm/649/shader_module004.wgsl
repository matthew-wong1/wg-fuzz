struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_2 = Struct_2(false, Struct_1(vec2<u32>(1237u, 5731u), -1550f, vec3<u32>(4837u, 18488u, 4294967295u)), vec2<u32>(16458u, 31082u), Struct_1(vec2<u32>(4294967295u, 21136u), 498f, vec3<u32>(30518u, 35524u, 10607u)), vec4<i32>(0i, -56526i, 8121i, 29104i));

var<private> global2: bool = false;

var<private> global3: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(636f, -583f, 1322f, 394f), vec4<f32>(-397f, 320f, -1733f, -261f), vec4<f32>(383f, 108f, -968f, -672f), vec4<f32>(1307f, 747f, 1019f, 300f), vec4<f32>(-811f, -539f, 1021f, -615f), vec4<f32>(709f, 112f, -1000f, -383f), vec4<f32>(-251f, 1343f, -608f, 1322f), vec4<f32>(769f, 237f, -590f, 188f), vec4<f32>(1180f, -123f, 1564f, 1719f), vec4<f32>(1057f, 936f, -336f, 399f), vec4<f32>(1155f, -1000f, -423f, 1000f), vec4<f32>(1393f, -222f, -976f, 372f), vec4<f32>(-675f, -538f, 642f, 2084f), vec4<f32>(-101f, 1000f, 2349f, -512f), vec4<f32>(-1000f, 2465f, 1703f, 825f), vec4<f32>(573f, -950f, -374f, -655f), vec4<f32>(927f, 1526f, -113f, 383f), vec4<f32>(191f, -734f, 617f, 813f), vec4<f32>(1428f, 1393f, -125f, 1868f), vec4<f32>(404f, -415f, -1248f, -937f), vec4<f32>(838f, 629f, -1444f, -1380f), vec4<f32>(2358f, -491f, -1685f, -587f), vec4<f32>(1369f, -428f, -1098f, 110f), vec4<f32>(-927f, 1000f, 1226f, -846f), vec4<f32>(-1431f, 1291f, -100f, -1000f), vec4<f32>(-2059f, 968f, -752f, -320f), vec4<f32>(-1372f, -251f, -1048f, 458f), vec4<f32>(-1118f, -162f, -289f, 849f), vec4<f32>(-1322f, -467f, -1000f, 1000f), vec4<f32>(1000f, 358f, -463f, 665f), vec4<f32>(693f, 1333f, 555f, 321f));

var<private> global4: array<u32, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(~arg_0.e.zw, countOneBits(global1.e.yy)), global1.e.x, i32(-1i) * -31880i);
    var var_1 = select(vec3<bool>(!(!(arg_0.a == arg_0.a)), 2147483647i > ~(~u_input.a), all(!select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, global1.a), vec2<bool>(arg_0.a, arg_0.a)))), vec3<bool>(any(vec4<bool>(true, true, arg_0.a, false)), select(true, true, !all(vec3<bool>(arg_0.a, true, true))), arg_0.a), !vec3<bool>(!global1.a, true, global1.a));
    global0 = -32147i;
    global1 = arg_0;
    let var_2 = global1.b.c;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(select(60312u, arg_0.b.a.x, false), 31u)]) - global3[_wgslsmith_index_u32(0u, 31u)]));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec2<u32>) -> vec3<f32> {
    global4 = array<u32, 2>();
    var var_0 = -(global1.e.x << (global4[_wgslsmith_index_u32(52188u >> (u_input.b.x % 32u), 2u)] % 32u));
    global3 = array<vec4<f32>, 31>();
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.b.b - 1000f), _wgslsmith_f_op_f32(floor(1284f)), _wgslsmith_f_op_f32(arg_1.d.b + 1322f), _wgslsmith_f_op_f32(step(arg_0.c, global1.d.b)))), vec4<bool>(!global1.a, global1.a, !global1.a, true))), vec3<f32>(119f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(933f, -276f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.d.b, arg_0.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_0.b, -1000f)))))), !global1.a, !vec3<bool>(all(!vec2<bool>(true, global1.a)), true | global1.a, !global1.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(var_1.b));
    return var_2;
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(global1.c.x, u_input.b.x, 4294967295u, global1.b.a.x), ~vec4<u32>(u_input.b.x, 4294967295u, 27937u, 1u))), ~select(countOneBits(vec4<u32>(7112u, 18615u, u_input.b.x, 0u)), ~vec4<u32>(global4[_wgslsmith_index_u32(0u, 2u)], u_input.b.x, 9138u, 0u), vec4<bool>(true, false, global1.a, global1.a)));
    global0 = abs(u_input.a);
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global1.d.c.x, 4294967295u), firstTrailingBit(global1.b.c.x)), ~(~48409u)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(8569u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(48512u, 2u)], 2u)]), var_0.zw)) ^ 4294967295u, 2u)], _wgslsmith_add_u32(var_0.x ^ firstTrailingBit(global4[_wgslsmith_index_u32(33430u, 2u)]), 4294967295u), 1u), var_0);
    var var_2 = 4294967295u;
    let var_3 = vec3<i32>(global1.e.x, ~u_input.a, ~firstLeadingBit(-2147483647i));
    return global1.b;
}

fn func_1() -> Struct_4 {
    global2 = global1.a;
    var var_0 = Struct_2(global1.a, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(Struct_5(global1.e.ww, 1008f, global1.b.b), Struct_2(global1.a, Struct_1(global1.c, global1.b.b, vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(15148u, 2u)], global1.d.a.x)), global1.b.c.yz, global1.b, vec4<i32>(u_input.a, global1.e.x, 1075i, u_input.a)), u_input.b)) + vec3<f32>(1323f, -677f, global1.b.b)))), countOneBits(vec2<u32>(12100u, 1u)), global1.b, -global1.e);
    global3 = array<vec4<f32>, 31>();
    let var_1 = Struct_4(vec4<f32>(_wgslsmith_div_f32(global1.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1820f - -1134f))), 2077f, _wgslsmith_f_op_f32(global1.b.b * 740f), global1.b.b), vec3<f32>(_wgslsmith_f_op_f32(abs(global1.d.b)), global1.b.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(true, Struct_1(vec2<u32>(var_0.d.c.x, global1.b.c.x), -1318f, var_0.d.c), vec2<u32>(0u, 75617u), global1.d, global1.e))).x, _wgslsmith_f_op_f32(-global1.d.b)))), any(vec3<bool>(-var_0.e.x <= _wgslsmith_sub_i32(-12868i, global1.e.x), !global1.a, !all(vec4<bool>(var_0.a, global1.a, false, var_0.a)))), select(vec3<bool>(var_0.a, !var_0.a, var_0.a), !select(!vec3<bool>(true, var_0.a, true), !vec3<bool>(false, var_0.a, var_0.a), global1.a), vec3<bool>(true, _wgslsmith_f_op_f32(floor(var_0.d.b)) < _wgslsmith_f_op_f32(select(var_0.d.b, global1.d.b, global1.a)), all(select(vec2<bool>(true, false), vec2<bool>(true, var_0.a), false)))));
    global4 = array<u32, 2>();
    return Struct_4(global3[_wgslsmith_index_u32(reverseBits(~4294967295u), 31u)], vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)), _wgslsmith_f_op_vec3_f32(func_2(Struct_5(vec2<i32>(var_0.e.x, -44172i), global1.b.b, var_0.b.b), Struct_2(global1.a, Struct_1(var_0.c, var_1.a.x, vec3<u32>(global1.d.a.x, 25467u, 1u)), vec2<u32>(0u, 4294967295u), Struct_1(vec2<u32>(var_0.d.a.x, global4[_wgslsmith_index_u32(var_0.d.a.x, 2u)]), var_0.d.b, var_0.d.c), vec4<i32>(-1i, var_0.e.x, 32532i, var_0.e.x)), ~global1.c)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b.b)) * _wgslsmith_f_op_f32(-var_1.b.x)), -1050f), !(!(u_input.b.x < 32314u)) | (global1.a && ((false && global1.a) | true)), var_1.d);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32) -> i32 {
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(-(~(~vec2<i32>(global1.e.x, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.d.b)), 610f) + _wgslsmith_f_op_f32(-global1.d.b)), global1.d.b);
    global0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(func_5(func_1(), Struct_3(global1.d, Struct_1(u_input.b, -1971f, vec3<u32>(global4[_wgslsmith_index_u32(55031u, 2u)], 4294967295u, 15159u)), func_1().d, any(vec2<bool>(true, false)), global1.b), (1u ^ global1.d.a.x) << (_wgslsmith_clamp_u32(4294967295u, 0u, u_input.b.x) % 32u)), 20456i), var_0.a.x);
    var var_1 = _wgslsmith_sub_i32(-abs(-12442i) >> (global1.c.x % 32u), _wgslsmith_mod_i32(5514i >> (_wgslsmith_clamp_u32(27802u, _wgslsmith_sub_u32(global1.b.a.x, 19219u), 4294967295u) % 32u), _wgslsmith_clamp_i32(~27072i, reverseBits(firstTrailingBit(32121i)), ~(u_input.a | 2147483647i))));
    var_1 = 0i;
    var var_2 = vec2<f32>(-1021f, -872f);
    var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_2.x), vec2<f32>(1000f, -1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, global1.d.b)))) - _wgslsmith_div_vec2_f32(vec2<f32>(func_4(vec3<f32>(var_0.c, var_0.c, var_0.b)).b, var_0.b), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b, -1000f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.x, 536f), vec2<f32>(var_0.c, var_0.c)))))))));
    var var_3 = Struct_4(global3[_wgslsmith_index_u32(82439u, 31u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-181f, -724f)), func_1().b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(238f, global1.d.b, true))))), global1.a, vec3<bool>(!global1.a, !(func_5(Struct_4(global3[_wgslsmith_index_u32(u_input.b.x, 31u)], vec3<f32>(869f, global1.d.b, 732f), true, vec3<bool>(false, global1.a, false)), Struct_3(Struct_1(u_input.b, global1.d.b, global1.b.c), Struct_1(global1.b.c.yz, 795f, vec3<u32>(global1.b.c.x, u_input.b.x, 27493u)), vec3<bool>(global1.a, global1.a, global1.a), global1.a, global1.d), u_input.b.x) != _wgslsmith_dot_vec3_i32(vec3<i32>(42981i, 1i, -48850i), vec3<i32>(11404i, u_input.a, -34625i))), func_1().c || true));
    let var_4 = Struct_3(Struct_1(firstTrailingBit(abs(~vec2<u32>(u_input.b.x, 4294967295u))), _wgslsmith_f_op_f32(-global1.b.b), vec3<u32>(_wgslsmith_clamp_u32(~global1.c.x, 2500u, ~0u), _wgslsmith_sub_u32(1u, global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(35107u, 2u)], 2u)]), ~max(116317u, global1.b.a.x))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.b, _wgslsmith_f_op_vec3_f32(-var_3.a.zwx)))), !select(select(vec3<bool>(var_3.c, false, global1.a), var_3.d, true), select(vec3<bool>(var_3.d.x, var_3.d.x, true), !vec3<bool>(var_3.d.x, false, var_3.c), select(vec3<bool>(true, var_3.c, false), vec3<bool>(global1.a, global1.a, false), var_3.d)), ~global4[_wgslsmith_index_u32(u_input.b.x, 2u)] <= 0u), true, global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_add_i32(select(u_input.a, var_0.a.x, true), global1.e.x), -1i), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_4.b.a.x, var_4.e.c.x, 1291u), global1.d.c), 39519u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.c.x, 25660u, 4294967295u), ~var_4.a.c) << (0u % 32u)), select(_wgslsmith_mod_vec4_i32(global1.e, abs(vec4<i32>(global1.e.x, global1.e.x, -2147483647i, u_input.a))) >> (vec4<u32>(36443u, ~global4[_wgslsmith_index_u32(4294967295u, 2u)], 1u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, 1i, global1.e.x, u_input.a)), global1.e, vec4<i32>(var_0.a.x, _wgslsmith_mod_i32(u_input.a, u_input.a), -u_input.a, u_input.a)), ((global1.e.x >> (u_input.b.x % 32u)) != var_0.a.x) || any(vec3<bool>(var_3.c, false, false))), ~firstTrailingBit(~vec4<u32>(global4[_wgslsmith_index_u32(global1.b.a.x, 2u)], global4[_wgslsmith_index_u32(1u, 2u)], 6173u, u_input.b.x)) & vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 58052u), ~vec2<u32>(var_4.e.c.x, 4294967295u)), ~4294967295u, u_input.b.x, 0u), _wgslsmith_f_op_vec2_f32(select(var_3.b.zz, vec2<f32>(_wgslsmith_f_op_f32(-360f + _wgslsmith_f_op_f32(-var_0.b)), var_3.a.x), select(var_4.c.zy, vec2<bool>(true, false), func_1().d.zz))));
}

