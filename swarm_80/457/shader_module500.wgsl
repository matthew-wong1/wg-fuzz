struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, false, false, false, true, false, false, false, false, true, true, false, false, false, false, true, true, false, false, true, true, true, false, true, false, true, true, false, true, false, true);

var<private> global1: bool;

var<private> global2: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(27352i, -28011i), vec2<i32>(20636i, -1i), vec2<i32>(31759i, 32222i), vec2<i32>(i32(-2147483648), 8386i), vec2<i32>(2147483647i, 27278i), vec2<i32>(2147483647i, 19003i), vec2<i32>(2147483647i, -37493i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(38127i, 222i), vec2<i32>(-15378i, -1i));

var<private> global3: array<vec2<u32>, 25>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global2 = array<vec2<i32>, 10>();
    let var_0 = Struct_2(reverseBits(global3[_wgslsmith_index_u32(u_input.a, 25u)] ^ global3[_wgslsmith_index_u32(1u, 25u)]), ~(8122u >> ((_wgslsmith_sub_u32(u_input.a, 4294967295u) | _wgslsmith_add_u32(1u, 5757u)) % 32u)), _wgslsmith_add_i32(max(_wgslsmith_dot_vec4_i32(vec4<i32>(38942i, 8490i, 26556i, 923i), vec4<i32>(-2147483647i, -34634i, -44165i, 2147483647i)), _wgslsmith_add_i32(0i, 2147483647i)), 23868i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(abs(13915i), firstTrailingBit(-2147483647i), abs(-5675i), ~(-1i)), vec4<i32>(-25031i << (u_input.a % 32u), _wgslsmith_clamp_i32(2147483647i, 2147483647i, -25777i), 0i, 0i)), _wgslsmith_clamp_i32(~(-7476i), countOneBits(countOneBits(10577i)), 1i));
    var var_1 = -var_0.d << (((_wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.b, var_0.a.x), _wgslsmith_div_u32(var_0.b, 0u)) << ((u_input.a | firstLeadingBit(36934u)) % 32u)) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 1u, var_0.b), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.x, u_input.a, 38616u), vec3<u32>(37689u, u_input.a, var_0.b)))) % 32u);
    let var_2 = var_0;
    global3 = array<vec2<u32>, 25>();
    return select(true, global0[_wgslsmith_index_u32(var_0.a.x, 31u)], true);
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    var var_0 = ~countOneBits(_wgslsmith_add_i32(79370i, 2147483647i << (max(u_input.a, u_input.a) % 32u)));
    let var_1 = vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(abs(u_input.a), 10u)] ^ ~global2[_wgslsmith_index_u32(u_input.a, 10u)])), countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -55731i, 11929i), vec3<i32>(5245i, 4649i, -18297i)), ~vec3<i32>(-34671i, 1i, -17095i)), reverseBits(~vec3<i32>(-57991i, 63358i, 7307i)))), -41073i, _wgslsmith_dot_vec4_i32(vec4<i32>(max(-28712i, -1i), -70345i >> (u_input.a % 32u), 36449i, firstLeadingBit(-10075i)) | firstTrailingBit(~vec4<i32>(-14504i, 0i, 15063i, -1i)), vec4<i32>(-46250i, 2147483647i, 1i, -24805i >> (1u % 32u))));
    var var_2 = var_1.x;
    let var_3 = var_1.x;
    var_2 = var_1.x;
    return i32(-1i) * -23066i;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32) -> i32 {
    global2 = array<vec2<i32>, 10>();
    var var_0 = Struct_2(vec2<u32>(1u, ~0u << (arg_0 % 32u)), arg_0 >> (_wgslsmith_div_u32(15971u, _wgslsmith_sub_u32(arg_0, ~arg_0)) % 32u), -62422i, _wgslsmith_div_i32(func_4(vec3<bool>(true, any(vec3<bool>(arg_1, false, true)), func_3())), abs(15472i)));
    let var_1 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(~firstLeadingBit(20827u), abs(4294967295u), 0u)), firstLeadingBit(~reverseBits(vec3<u32>(4294967295u, 0u, arg_0))));
    return ~0i;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: vec3<bool>) -> u32 {
    let var_0 = Struct_1(min(4294967295u, _wgslsmith_add_u32(~4294967295u, arg_0.a.x << (66479u % 32u)) ^ ~(~arg_0.a.x)), arg_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1703f, -636f, 801f, 181f), vec4<f32>(-390f, -1052f, 833f, 841f), vec4<bool>(true, global0[_wgslsmith_index_u32(50296u, 31u)], arg_3.x, true))) - vec4<f32>(-1338f, 1202f, -116f, -1250f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, 264f, -2164f, -395f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1263f, 1332f, 1010f, -2107f) + vec4<f32>(155f, 1220f, 537f, 946f)), true)))), vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 31u)], true || arg_3.x, func_2(_wgslsmith_clamp_u32(arg_0.a.x, 31207u, 1u), true, -874f) < -1i));
    var var_1 = select(select(select(var_0.d.yxz, !select(arg_3, vec3<bool>(false, arg_3.x, true), true), !(1i != arg_0.d)), vec3<bool>(_wgslsmith_f_op_f32(518f - var_0.c.x) > _wgslsmith_div_f32(228f, 702f), global0[_wgslsmith_index_u32(arg_0.b, 31u)], global0[_wgslsmith_index_u32(var_0.a, 31u)]), vec3<bool>(false, true, arg_3.x)), select(vec3<bool>(global0[_wgslsmith_index_u32(~min(47151u, var_0.a), 31u)], !var_0.d.x, _wgslsmith_f_op_f32(select(-1145f, var_0.c.x, arg_3.x)) > _wgslsmith_f_op_f32(select(-2326f, var_0.c.x, global0[_wgslsmith_index_u32(arg_0.b, 31u)]))), select(select(select(vec3<bool>(true, true, true), var_0.d.xyx, global0[_wgslsmith_index_u32(arg_0.b, 31u)]), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], false), arg_3), select(vec3<bool>(false, false, false), !var_0.d.wxz, all(arg_3.yy)), !vec3<bool>(arg_3.x, false, global0[_wgslsmith_index_u32(u_input.a, 31u)])), all(select(var_0.d.wzz, vec3<bool>(var_0.d.x, false, var_0.d.x), false)) && (any(var_0.d) || false)), select(!select(!var_0.d.wwz, vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], var_0.d.x, arg_3.x), var_0.d.zxy), vec3<bool>(false, _wgslsmith_mod_i32(var_0.b, -3838i) < arg_2, _wgslsmith_div_f32(var_0.c.x, var_0.c.x) == var_0.c.x), select(vec3<bool>(arg_3.x | arg_3.x, true, all(var_0.d.xww)), var_0.d.xzy, vec3<bool>(false, true, 0i <= arg_1))));
    var var_2 = -1461f;
    var var_3 = ~min(~(~firstLeadingBit(vec4<u32>(4294967295u, 250u, 0u, var_0.a))), ~vec4<u32>(32284u >> (var_0.a % 32u), u_input.a, arg_0.a.x, ~0u));
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1661f + var_0.c.x)));
    return u_input.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = func_5(Struct_2(select(select(~vec2<u32>(u_input.a, 80266u), select(vec2<u32>(29388u, u_input.a), vec2<u32>(arg_0.x, u_input.a), false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], false)), global3[_wgslsmith_index_u32(arg_0.x, 25u)] ^ arg_0, !arg_1.zz), u_input.a, 1i, ~0i), i32(-1i) * -22337i, func_2(firstLeadingBit(10533u), true, 1f), vec3<bool>(all(select(!vec4<bool>(false, arg_1.x, true, arg_1.x), !vec4<bool>(false, false, arg_1.x, global0[_wgslsmith_index_u32(1u, 31u)]), !arg_1.x)), global0[_wgslsmith_index_u32(u_input.a, 31u)], true));
    var var_1 = _wgslsmith_div_i32(-_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), _wgslsmith_mod_vec2_i32(global2[_wgslsmith_index_u32(9781u, 10u)], global2[_wgslsmith_index_u32(arg_0.x, 10u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(-29679i, 34262i, 8673i), vec3<i32>(1i, -2147483647i, 21728i)) >> (arg_0.x % 32u)), 0i);
    global2 = array<vec2<i32>, 10>();
    global0 = array<bool, 31>();
    var var_2 = false;
    return select(!select(vec4<bool>(!global0[_wgslsmith_index_u32(56096u, 31u)], true, false, global0[_wgslsmith_index_u32(58926u, 31u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], true, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, false), vec4<bool>(false, arg_1.x, false, arg_1.x)), select(global0[_wgslsmith_index_u32(arg_0.x, 31u)], arg_1.x, false) || global0[_wgslsmith_index_u32(6713u | arg_0.x, 31u)]), vec4<bool>(arg_1.x, all(arg_1), true, arg_1.x), global0[_wgslsmith_index_u32(0u, 31u)]);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1.c.x;
    var var_1 = arg_1;
    let var_2 = -12853i;
    let var_3 = ~(~(vec2<u32>(19555u, 18262u) >> (_wgslsmith_sub_vec2_u32(global3[_wgslsmith_index_u32(arg_1.a, 25u)], vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)))) | global3[_wgslsmith_index_u32(38920u, 25u)];
    var_0 = arg_1.c.x;
    return -8883i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(-37583i);
    var var_1 = u_input.a <= abs(_wgslsmith_clamp_u32(~u_input.a, ~(~36303u), 1u));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -113f);
    var var_3 = -func_6(Struct_1(~(~u_input.a), ~0i, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(547f, -437f, 763f, 581f), vec4<f32>(1098f, -685f, -1000f, -1997f)))), select(func_1(global3[_wgslsmith_index_u32(21783u, 25u)], vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(18122u, 31u)])), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 31u)], true, global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)], true))), Struct_1(u_input.a, abs(0i) | var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1528f, 1734f, 1441f, 673f) - vec4<f32>(-124f, -193f, -659f, 1858f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-363f, -1126f, -1995f, 858f)))), !(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(u_input.a, 31u)], false))));
    global2 = array<vec2<i32>, 10>();
    let var_4 = _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(func_4(vec3<bool>(false, true, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -60149i, var_0), vec3<i32>(1i, var_0, -89035i))), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0, var_0) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(u_input.a, 10u)])), _wgslsmith_clamp_vec2_i32(global2[_wgslsmith_index_u32(abs(54592u), 10u)], -global2[_wgslsmith_index_u32(4294967295u, 10u)], abs(vec2<i32>(var_0, var_0))) ^ -vec2<i32>(var_0, var_0)), vec2<i32>(-1i, countOneBits(_wgslsmith_mult_i32(199i, max(20933i, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(380f, 460f, 1000f))))))), 4294967295u >> ((0u >> ((abs(53448u) & u_input.a) % 32u)) % 32u), select(vec4<i32>(2203i, var_0, ~(~var_0), _wgslsmith_sub_i32(var_4.x, func_4(vec3<bool>(false, true, true)))), _wgslsmith_add_vec4_i32(vec4<i32>(~2639i, ~(-2147483647i), var_4.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 16096i, var_0), vec3<i32>(var_0, 91665i, var_0))), vec4<i32>(max(var_0, 10824i), var_0, _wgslsmith_mod_i32(1i, var_4.x), -11508i)), func_3()), u_input.a);
}

