struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 79194u), vec4<u32>(12408u, 77480u, 1u, 0u), vec4<u32>(47693u, 4294967295u, 43177u, 0u), vec3<f32>(-3304f, -336f, -498f), vec3<u32>(1u, 1u, 13105u)), vec3<f32>(203f, -513f, -1434f));

var<private> global1: array<u32, 17>;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<u32>(49792u, 46561u), vec4<u32>(26501u, 4294967295u, 1767u, 71392u), vec4<u32>(9926u, 0u, 34508u, 1u), vec3<f32>(-1382f, 1297f, 1322f), vec3<u32>(0u, 41728u, 1u)), Struct_1(vec2<u32>(0u, 18426u), vec4<u32>(0u, 10842u, 5020u, 25171u), vec4<u32>(8262u, 4294967295u, 1u, 79215u), vec3<f32>(237f, 988f, 2153f), vec3<u32>(4294967295u, 37655u, 4294967295u)), Struct_1(vec2<u32>(58361u, 46764u), vec4<u32>(1u, 1u, 0u, 17090u), vec4<u32>(38641u, 2612u, 1u, 35589u), vec3<f32>(1543f, 646f, 582f), vec3<u32>(1u, 1u, 48231u)), Struct_1(vec2<u32>(129318u, 4294967295u), vec4<u32>(0u, 25235u, 15930u, 1u), vec4<u32>(35451u, 4294967295u, 25185u, 57063u), vec3<f32>(-1481f, -377f, -1844f), vec3<u32>(1u, 0u, 0u)), Struct_1(vec2<u32>(0u, 0u), vec4<u32>(4584u, 1u, 4294967295u, 1u), vec4<u32>(7365u, 4294967295u, 4294967295u, 1u), vec3<f32>(1000f, -388f, -1000f), vec3<u32>(4294967295u, 1u, 0u)), Struct_1(vec2<u32>(35009u, 1u), vec4<u32>(0u, 18589u, 1260u, 41608u), vec4<u32>(1u, 34118u, 799u, 0u), vec3<f32>(-1000f, 1921f, -175f), vec3<u32>(0u, 17217u, 13728u)), Struct_1(vec2<u32>(1u, 3857u), vec4<u32>(1u, 1180u, 88639u, 37756u), vec4<u32>(0u, 4294967295u, 0u, 4041u), vec3<f32>(-687f, 801f, -544f), vec3<u32>(4294967295u, 0u, 1u)));

var<private> global3: array<i32, 29> = array<i32, 29>(1i, i32(-2147483648), 20874i, i32(-2147483648), i32(-2147483648), 55537i, -17467i, 35458i, 1i, 1i, -6318i, 1i, 2147483647i, -22241i, -15541i, 1i, i32(-2147483648), -1i, 0i, -33235i, 0i, -1i, i32(-2147483648), 1i, -28684i, -4888i, -20593i, 0i, -1i);

var<private> global4: array<f32, 2>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> u32 {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0.a.a.x << (arg_0.x % 32u), ~1u) & u_input.b.xww, ~(~countOneBits(u_input.b.zzz)));
    global2 = array<Struct_1, 7>();
    var var_1 = -1i;
    return var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(arg_0.b.x, ~u_input.d), _wgslsmith_dot_vec2_u32(arg_1.a.c.wx, vec2<u32>(117138u, 52339u))), arg_1.a.e.xy, ~vec2<u32>(func_3(vec2<u32>(arg_0.a.x, 1u), arg_2.x, 37770i, global2[_wgslsmith_index_u32(1u, 7u)]), firstLeadingBit(22615u))), vec4<u32>(global0.a.a.x, _wgslsmith_clamp_u32(arg_1.a.e.x, ~arg_1.a.e.x, countOneBits(~u_input.d)), u_input.b.x, ~0u), ~(~vec4<u32>(global1[_wgslsmith_index_u32(21620u, 17u)], 37382u, 4294967295u, u_input.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 2u)] * -1673f), 122f))), ~(~max(select(vec3<u32>(u_input.b.x, global0.a.a.x, 1u), global0.a.b.zxz, true), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.b.x, global0.a.a.x, 0u), vec3<u32>(1u, global0.a.b.x, arg_1.a.c.x)))));
    global3 = array<i32, 29>();
    global3 = array<i32, 29>();
    let var_1 = arg_1.a;
    let var_2 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(global0.a.b.zz, ~vec2<u32>(var_0.e.x, 484u)), u_input.b.x), global0.a.b, vec4<u32>(~63010u, 0u << (1u % 32u), 5009u, arg_0.c.x), global0.b, global0.a.b.zxz), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.x + var_1.d.x))), arg_0.d.x), vec3<f32>(_wgslsmith_f_op_f32(ceil(-537f)), _wgslsmith_f_op_f32(abs(-603f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - 1161f)))), false)));
    return -642f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    global1 = array<u32, 17>();
    let var_0 = arg_0;
    global4 = array<f32, 2>();
    global1 = array<u32, 17>();
    global0 = Struct_2(global2[_wgslsmith_index_u32(abs(min(_wgslsmith_mod_u32(reverseBits(37432u), func_3(vec2<u32>(u_input.a, arg_0.a.x), u_input.c, 2147483647i, Struct_1(vec2<u32>(u_input.b.x, arg_2.x), vec4<u32>(u_input.d, 15083u, 4294967295u, u_input.b.x), vec4<u32>(global0.a.a.x, global1[_wgslsmith_index_u32(arg_2.x, 17u)], u_input.a, 0u), global0.a.d, arg_0.b.ywy))), ~1u)), 7u)], _wgslsmith_f_op_vec3_f32(-global0.a.d));
    return Struct_1(vec2<u32>(arg_0.a.x & (abs(var_0.c.x) & abs(global1[_wgslsmith_index_u32(77554u, 17u)])), firstTrailingBit(~1u >> (global0.a.a.x % 32u))), ~abs(select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, var_0.a.x, 4294967295u), vec4<u32>(55790u, global1[_wgslsmith_index_u32(0u, 17u)], 1u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.a.c.x, 4294967295u, 0u), u_input.b), vec4<bool>(false, false, false, true))), global0.a.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(-global0.b)))), u_input.b.xxy);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = select(vec2<bool>(arg_2, !any(vec3<bool>(true, arg_2, false))), select(!(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), arg_2)), vec2<bool>(!any(vec4<bool>(true, arg_2, arg_2, arg_2)), arg_2), true), vec2<bool>((~global3[_wgslsmith_index_u32(4294967295u, 29u)] << (22380u % 32u)) == -global3[_wgslsmith_index_u32(global0.a.c.x, 29u)], true));
    var var_1 = vec3<bool>(true || arg_2, true, true);
    var_1 = select(select(vec3<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, true)), !(!var_0.x)), vec3<bool>(true, true, true), select(vec3<bool>(true, var_1.x, var_0.x), !vec3<bool>(arg_2, arg_2, true), any(vec3<bool>(var_1.x, true, false)) && all(vec2<bool>(var_0.x, true)))), select(select(vec3<bool>(all(vec4<bool>(var_1.x, var_0.x, true, false)), false, true), vec3<bool>(arg_2 && var_0.x, var_1.x, true), !select(true, var_1.x, var_0.x)), vec3<bool>(true, var_1.x, true), any(var_1.zy)), !(!vec3<bool>(true, var_0.x, any(vec3<bool>(arg_2, var_0.x, var_0.x)))));
    global0 = arg_1;
    let var_2 = vec4<bool>(var_1.x, false, var_1.x, false);
    return any(var_2.zw);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: vec2<f32>) -> f32 {
    let var_0 = vec2<bool>(func_5(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4[_wgslsmith_index_u32(56675u, 2u)], -468f)))), Struct_2(func_4(Struct_1(vec2<u32>(1u, 0u), u_input.b, u_input.b, global0.a.d, vec3<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], 54442u)), _wgslsmith_f_op_f32(func_2(Struct_1(u_input.b.wy, vec4<u32>(global1[_wgslsmith_index_u32(24628u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], 3657u, 1u), vec4<u32>(62616u, 6800u, 56923u, global0.a.e.x), vec3<f32>(global0.b.x, 980f, global0.a.d.x), vec3<u32>(global0.a.e.x, u_input.a, u_input.b.x)), Struct_2(Struct_1(vec2<u32>(global0.a.a.x, 21948u), vec4<u32>(6616u, 37682u, 45941u, 50891u), global0.a.b, global0.a.d, u_input.b.zzz), global0.b), vec2<i32>(u_input.c, u_input.c))), vec2<u32>(global1[_wgslsmith_index_u32(0u, 17u)], global0.a.c.x) ^ vec2<u32>(u_input.d, u_input.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global4[_wgslsmith_index_u32(54506u, 2u)], global0.b.x))), arg_1), any(select(select(select(vec2<bool>(arg_1, false), vec2<bool>(true, false), vec2<bool>(arg_1, false)), select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), vec2<bool>(arg_1, true)), arg_1), !select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), true), !(!vec2<bool>(arg_1, true)))));
    let var_1 = ~(-arg_2.wx);
    global3 = array<i32, 29>();
    let var_2 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(0u, 4294967295u), u_input.d) >> (firstTrailingBit(~vec2<u32>(global1[_wgslsmith_index_u32(8218u, 17u)], u_input.d)) % vec2<u32>(32u)), ~(_wgslsmith_div_vec2_u32(u_input.b.wy, global0.a.a) ^ ~u_input.b.yw)), ~select(_wgslsmith_add_vec4_u32(select(global0.a.b, u_input.b, vec4<bool>(false, true, false, false)), ~vec4<u32>(5723u, 24580u, 51673u, 1u)), select(u_input.b, ~u_input.b, select(vec4<bool>(arg_1, true, var_0.x, false), vec4<bool>(arg_1, false, false, var_0.x), vec4<bool>(arg_1, arg_1, var_0.x, arg_1))), (-2147483647i | global3[_wgslsmith_index_u32(global0.a.c.x, 29u)]) < -u_input.c), u_input.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.b))), ~u_input.b.xyy);
    var var_3 = true;
    return -2165f;
}

fn func_6(arg_0: vec3<i32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    let var_0 = global0.a;
    let var_1 = 74581i;
    let var_2 = Struct_1(min(vec2<u32>(1u, u_input.d), select(u_input.b.zx, vec2<u32>(max(var_0.e.x, 1u), func_4(global2[_wgslsmith_index_u32(arg_2, 7u)], -1000f, vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(global0.a.e.x, 17u)])).c.x), true)), _wgslsmith_sub_vec4_u32(abs(var_0.c), max(~vec4<u32>(global1[_wgslsmith_index_u32(var_0.e.x, 17u)], 2101u, 63243u, 0u) << (var_0.b % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.e.x, u_input.a, arg_2, 1u), vec4<u32>(1u, 22500u, 64242u, arg_2)), _wgslsmith_mult_vec4_u32(var_0.c, vec4<u32>(var_0.a.x, global0.a.c.x, var_0.e.x, 0u))))), global0.a.b, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.d.x + -1000f))), var_0.d.x), arg_1, _wgslsmith_f_op_f32(abs(global0.b.x))), var_0.c.wyy);
    global4 = array<f32, 2>();
    global0 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(select(firstLeadingBit(u_input.b.zz), _wgslsmith_mod_vec2_u32(global0.a.a, vec2<u32>(var_2.e.x, 8313u)), vec2<bool>(true, true)), firstLeadingBit(select(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(4863u, 17u)]), vec2<u32>(87151u, u_input.a), vec2<bool>(false, false))), _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.b.x, var_0.b.x), vec2<u32>(global0.a.e.x, 31150u))), ~vec4<u32>(global1[_wgslsmith_index_u32(34232u, 17u)], 39019u, global1[_wgslsmith_index_u32(31205u, 17u)], global1[_wgslsmith_index_u32(var_2.c.x, 17u)]) << (~select(vec4<u32>(u_input.a, 4294967295u, global0.a.a.x, 61505u), vec4<u32>(arg_2, arg_2, 21507u, global1[_wgslsmith_index_u32(25627u, 17u)]), false) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.b, var_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.a.d)) * vec3<f32>(-810f, arg_1, 909f))), u_input.b.xzx), vec3<f32>(-180f, _wgslsmith_div_f32(-416f, -1000f), _wgslsmith_f_op_f32(func_1(var_0.d, select(true, false, false) | (global0.b.x == 1072f), ~(vec4<i32>(-32136i, 2147483647i, u_input.c, global3[_wgslsmith_index_u32(52003u, 29u)]) | vec4<i32>(var_1, 38625i, u_input.c, -2147483647i)), vec2<f32>(-494f, 1550f)))));
    return Struct_2(Struct_1(var_0.a, ~var_0.c, vec4<u32>(_wgslsmith_dot_vec4_u32(countOneBits(var_2.c), var_0.b | vec4<u32>(arg_2, 49215u, var_2.c.x, u_input.a)), countOneBits(4294967295u | u_input.a), ~u_input.d, 0u), var_2.d, var_2.c.wwx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(u_input.d, 2u)])), _wgslsmith_f_op_f32(min(-1608f, arg_1)), 1305f) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(734f, var_0.d.x, -347f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.d.x) + _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_div_f32(-1685f, -364f), -1248f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 2>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global0.a.e.x, 2u)] * global0.a.d.x) + global0.a.d.x) - -292f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(615f + global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 17u)], 47624u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)]), vec4<u32>(13251u, 20996u, 0u, u_input.d)), 2u)]), global4[_wgslsmith_index_u32(~66370u, 2u)])));
    global0 = func_6(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, countOneBits(u_input.c), _wgslsmith_mod_i32(1i, -10814i)), vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(88158u, 29u)], u_input.c, u_input.c), vec3<i32>(global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(global0.a.b.x, 29u)], u_input.c)), 5080i)), vec3<i32>(firstLeadingBit(firstTrailingBit(u_input.c)), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(global0.a.e.x, 29u)], 1231i) & ~global3[_wgslsmith_index_u32(4294967295u, 29u)], 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global0.a.d.x)), _wgslsmith_f_op_f32(trunc(-485f)), true)) * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(global0.a.d + vec3<f32>(global4[_wgslsmith_index_u32(4122u, 2u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a.c.x, 17u)], 2u)], global4[_wgslsmith_index_u32(22114u, 2u)])), all(vec3<bool>(true, true, false)), vec4<i32>(u_input.c, global3[_wgslsmith_index_u32(global0.a.e.x, 29u)], u_input.c, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], 29u)]) ^ vec4<i32>(u_input.c, u_input.c, u_input.c, global3[_wgslsmith_index_u32(0u, 29u)]), global0.a.d.yz)))), func_3(vec2<u32>(~103218u, global0.a.a.x), global3[_wgslsmith_index_u32(66309u, 29u)], u_input.c, func_4(func_4(Struct_1(global0.a.e.yx, u_input.b, u_input.b, vec3<f32>(global4[_wgslsmith_index_u32(1u, 2u)], global0.a.d.x, global0.b.x), global0.a.b.xzy), _wgslsmith_div_f32(673f, global0.b.x), countOneBits(global0.a.c.xz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2868f + -1182f)), ~vec2<u32>(0u, 49867u))));
    var var_1 = select(select(!vec2<bool>(any(vec3<bool>(false, true, true)), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), true), select(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))), select(vec2<bool>(any(vec3<bool>(true, false, true)), false), vec2<bool>(true, true), true)), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), any(vec2<bool>(true, true))), any(vec2<bool>(true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.d.x);
}

