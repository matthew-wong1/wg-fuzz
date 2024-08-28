struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(i32(-2147483648), 70801i, -25011i, 42147i, 125327i, -1216i, 0i, 47278i, 59347i, 42573i, 0i, -1i, 1i, 14031i);

var<private> global1: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, -46707i), vec2<i32>(2147483647i, -15457i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-70639i, -16389i), vec2<i32>(i32(-2147483648), -36791i), vec2<i32>(1i, 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-43289i, 1i), vec2<i32>(i32(-2147483648), -20056i), vec2<i32>(i32(-2147483648), -8756i), vec2<i32>(i32(-2147483648), 26781i), vec2<i32>(2147483647i, 2431i), vec2<i32>(1i, 0i), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), 1894i), vec2<i32>(0i, 29133i), vec2<i32>(-6509i, 22731i), vec2<i32>(5187i, 20593i), vec2<i32>(i32(-2147483648), -14759i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, 1i), vec2<i32>(0i, 1i), vec2<i32>(1i, 37107i), vec2<i32>(0i, 42085i), vec2<i32>(-1186i, -41940i), vec2<i32>(-29081i, 2147483647i));

var<private> global2: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(707f, -154f, 1112f), vec3<f32>(238f, 744f, -349f), vec3<f32>(1000f, 2103f, -803f), vec3<f32>(-660f, -1496f, -980f), vec3<f32>(1180f, 363f, 1255f), vec3<f32>(-186f, -1617f, 515f), vec3<f32>(239f, 485f, -140f), vec3<f32>(786f, -719f, 1449f), vec3<f32>(-386f, 140f, -114f), vec3<f32>(-775f, -1000f, 1000f), vec3<f32>(-836f, -972f, -1498f), vec3<f32>(-293f, -732f, -430f), vec3<f32>(-167f, 197f, 468f), vec3<f32>(259f, -2745f, 464f), vec3<f32>(312f, 962f, 856f), vec3<f32>(456f, 1296f, -855f), vec3<f32>(322f, 1862f, 220f), vec3<f32>(290f, -2509f, -1000f), vec3<f32>(1000f, -621f, 1978f), vec3<f32>(180f, 1034f, 1051f), vec3<f32>(-294f, -172f, 1327f), vec3<f32>(-263f, 1044f, 1409f), vec3<f32>(396f, -712f, 741f), vec3<f32>(930f, -1023f, 2710f), vec3<f32>(717f, -1329f, -189f), vec3<f32>(-701f, -1656f, -337f), vec3<f32>(463f, 1866f, -1044f), vec3<f32>(-602f, 1486f, 111f), vec3<f32>(489f, -113f, -588f), vec3<f32>(332f, -1000f, 987f), vec3<f32>(-223f, 922f, -1515f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> f32 {
    var var_0 = Struct_1(~vec2<u32>(~u_input.d.x, firstTrailingBit(u_input.c.x)) | u_input.d.xw);
    let var_1 = ~reverseBits(abs(vec4<u32>(u_input.d.x, 0u, 40053u, arg_1))) | vec4<u32>(~22173u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(28035u, 4294967295u), vec2<u32>(arg_1, u_input.d.x)), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.a, vec2<u32>(2149u, 1u)), u_input.c | vec2<u32>(4294967295u, arg_1), var_0.a)), reverseBits(_wgslsmith_div_u32(var_0.a.x, _wgslsmith_add_u32(arg_1, 32702u))), ~(~abs(arg_1)));
    global2 = array<vec3<f32>, 31>();
    let var_2 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~firstTrailingBit(u_input.d.x), _wgslsmith_mult_u32(firstTrailingBit(var_1.x), 80809u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, 4431u) << (~vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(0u, var_0.a.x)))));
    var_0 = var_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -102f) * arg_0.x);
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2331i, 1i) & vec2<i32>(u_input.b, u_input.a), -global1[_wgslsmith_index_u32(u_input.c.x, 27u)]) | global0[_wgslsmith_index_u32(~4294967295u, 14u)], 14027i, arg_0.x >> (u_input.d.x % 32u));
    var var_1 = Struct_1(reverseBits(firstLeadingBit(~select(u_input.d.zz, u_input.d.yw, true))));
    var var_2 = Struct_1(min(~_wgslsmith_div_vec2_u32(firstTrailingBit(u_input.d.xz), ~u_input.c), max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.x, u_input.d.x), u_input.c, u_input.c), var_1.a)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(714f + _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, 28553u, 2952u), 31u)] + _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(73594u, 31u)])), 25290u))), _wgslsmith_f_op_f32(f32(-1f) * -1389f));
    let var_4 = Struct_1(min(_wgslsmith_mod_vec2_u32(u_input.d.yx, var_1.a), ~(~var_1.a ^ (var_1.a | vec2<u32>(46430u, 0u)))));
    return 1u;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-462f + -1112f)), _wgslsmith_f_op_f32(-278f + _wgslsmith_f_op_f32(2281f * 642f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f) - _wgslsmith_f_op_f32(-147f + -338f)), 102f, 679f)));
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    let var_1 = 2147483647i;
    global0 = array<i32, 14>();
    return ~_wgslsmith_add_u32(17581u | firstTrailingBit(~u_input.d.x), func_2(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 14u)], 31670i, u_input.a, u_input.b) << ((u_input.d & vec4<u32>(u_input.c.x, 0u, 4548u, u_input.d.x)) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_mod_vec2_i32(global1[_wgslsmith_index_u32(~abs(func_2(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], -2147483647i, 0i)))), 27u)], vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.a, 1i), ~global0[_wgslsmith_index_u32(0u, 14u)], 2147483647i, global0[_wgslsmith_index_u32(11975u | arg_0.x, 14u)]), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b, 1i, u_input.b, -15700i), vec4<i32>(u_input.b, 31231i, global0[_wgslsmith_index_u32(5093u, 14u)], -2147483647i) & vec4<i32>(u_input.b, 0i, -2147483647i, 1i)))));
    var var_1 = Struct_1(u_input.c);
    global2 = array<vec3<f32>, 31>();
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)), -1108f)), _wgslsmith_f_op_f32(922f - _wgslsmith_f_op_f32(-895f * _wgslsmith_div_f32(arg_1.x, arg_1.x)))))));
    let var_3 = Struct_1(abs(select(var_1.a, arg_0.yx, select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), false)))));
    return true;
}

fn func_5(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_1(~u_input.c);
    var var_1 = Struct_1(vec2<u32>(6950u, ~(u_input.c.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.a.x), u_input.d.ww) % 32u))));
    let var_2 = Struct_1(~reverseBits(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, 56714u), var_1.a))));
    var var_3 = ~var_1.a.x ^ firstTrailingBit(0u);
    let var_4 = var_2;
    return select(vec4<bool>(select(arg_0, all(!vec4<bool>(true, true, arg_0, true)), false), -_wgslsmith_sub_i32(u_input.b, 21797i) <= ~global0[_wgslsmith_index_u32(countOneBits(4294967295u), 14u)], any(select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0), -16665i != u_input.b)), arg_0), !(!vec4<bool>(false, true, select(true, false, arg_0), true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 14>();
    var var_0 = func_5(!func_4(vec4<u32>(26063u, u_input.c.x, func_1(), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(0u, 1u, u_input.d.x))), vec3<f32>(-330f, 2234f, _wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.d.x, 31u)], u_input.c.x)))));
    global1 = array<vec2<i32>, 27>();
    var_0 = select(!select(select(vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, true), var_0.x), !select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, true, false), vec4<bool>(var_0.x, true, var_0.x, true)), var_0.x), select(func_5(false), vec4<bool>(all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), var_0.x, true, true), !func_5(true)), true);
    global2 = array<vec3<f32>, 31>();
    global2 = array<vec3<f32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(39309u, 14u)], global0[_wgslsmith_index_u32(u_input.c.x, 14u)], global0[_wgslsmith_index_u32(27218u, 14u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 14u)], -14740i, -2147483647i)))), select(select(_wgslsmith_add_vec4_u32(~vec4<u32>(81152u, 12383u, u_input.d.x, 4294967295u), vec4<u32>(u_input.d.x, 1u, u_input.c.x, u_input.d.x) ^ vec4<u32>(u_input.c.x, u_input.d.x, u_input.c.x, u_input.c.x)), ~vec4<u32>(59199u, 106706u, 45852u, 7636u) << (u_input.d % vec4<u32>(32u)), false), vec4<u32>(select(~4294967295u, u_input.c.x, var_0.x), min(_wgslsmith_mod_u32(u_input.c.x, u_input.d.x), 1u), u_input.c.x ^ u_input.c.x, 1u), var_0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-reverseBits(global0[_wgslsmith_index_u32(39815u, 14u)]), ~_wgslsmith_sub_i32(4303i, u_input.b)), global1[_wgslsmith_index_u32(reverseBits(~(~u_input.d.x)), 27u)]));
}

