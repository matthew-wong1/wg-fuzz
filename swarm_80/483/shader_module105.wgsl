struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(38325u, 75548u));

var<private> global1: array<vec2<u32>, 17>;

var<private> global2: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(1u, 1u, 57011u), vec3<u32>(1u, 37333u, 46272u), vec3<u32>(59985u, 4294967295u, 4294967295u), vec3<u32>(24713u, 0u, 4294967295u), vec3<u32>(23017u, 3712u, 20447u), vec3<u32>(40037u, 4294967295u, 247u), vec3<u32>(15672u, 14479u, 4294967295u), vec3<u32>(0u, 68709u, 4294967295u), vec3<u32>(23222u, 1u, 1u), vec3<u32>(31837u, 20087u, 4294967295u), vec3<u32>(40873u, 8377u, 60485u), vec3<u32>(45069u, 5723u, 41116u), vec3<u32>(0u, 0u, 1u), vec3<u32>(0u, 13135u, 56844u), vec3<u32>(50029u, 0u, 1u), vec3<u32>(4294967295u, 67700u, 1u), vec3<u32>(18810u, 1u, 11418u), vec3<u32>(17868u, 1u, 0u));

var<private> global3: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -52721i), vec2<i32>(-18796i, 2147483647i), vec2<i32>(49755i, 7965i), vec2<i32>(-20247i, 0i), vec2<i32>(-24571i, -15471i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(4286i, -38490i), vec2<i32>(34474i, 22790i), vec2<i32>(-19204i, 1i), vec2<i32>(8010i, 50068i), vec2<i32>(0i, -12379i), vec2<i32>(6172i, i32(-2147483648)), vec2<i32>(-50107i, i32(-2147483648)), vec2<i32>(1i, 52808i), vec2<i32>(-28907i, -9095i), vec2<i32>(-1138i, 1i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))))), arg_1));
    let var_1 = arg_0;
    let var_2 = false;
    let var_3 = 9534i;
    var var_4 = 41040u;
    return _wgslsmith_div_f32(354f, -981f);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.wz) - vec2<f32>(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2022f)), _wgslsmith_f_op_f32(func_3(Struct_2(global0.a), arg_1.b.x)))), arg_1.b.x));
    var var_1 = -7334i;
    global0 = Struct_2(global0.a);
    var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, arg_1.b.x)));
    var var_2 = ~0u;
    return firstTrailingBit(~4294967295u);
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> u32 {
    global2 = array<vec3<u32>, 18>();
    global0 = Struct_2(~vec2<u32>(arg_2.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_2, arg_2), _wgslsmith_div_vec3_u32(arg_1, vec3<u32>(0u, 4294967295u, 18121u)))));
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -select(min(vec4<i32>(arg_3.c.x, arg_3.d, u_input.a, u_input.a), vec4<i32>(-2147483647i, -4734i, u_input.a, 39433i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.e, 0i, 2147483647i, arg_3.d), vec4<i32>(5578i, 14362i, u_input.a, u_input.a)), false), vec4<i32>(u_input.a, -1i, -1i, arg_3.e), abs(firstTrailingBit(~vec4<i32>(arg_3.e, arg_3.c.x, u_input.a, arg_3.d)) << (vec4<u32>(arg_2.x | global0.a.x, _wgslsmith_mult_u32(global0.a.x, 1u), countOneBits(arg_1.x), ~arg_2.x) % vec4<u32>(32u))));
    var var_1 = ~vec3<u32>(arg_1.x >> (4294967295u % 32u), 4294967295u, 4294967295u);
    global3 = array<vec2<i32>, 17>();
    return abs(~var_1.x) & reverseBits(var_1.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    global3 = array<vec2<i32>, 17>();
    var var_1 = arg_2.b.x;
    var var_2 = Struct_1(select(select(select(vec3<bool>(var_0.a.x, false, false), vec3<bool>(true, true, false), var_0.a.x), vec3<bool>(true, arg_2.a.x, all(arg_2.a.zy)), any(select(arg_1, var_0.a, true))), arg_1, var_0.a.x), var_0.b, -vec2<i32>(-17501i, ~_wgslsmith_add_i32(var_0.d, 2147483647i)), _wgslsmith_add_i32(~(~(-2147483647i)), -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.e, u_input.a, u_input.a), vec3<i32>(1i, -2147483647i, u_input.a)), vec3<i32>(-22826i, -26098i, 60933i))), ~3429i);
    var var_3 = 1i;
    return arg_2;
}

fn func_1() -> vec4<bool> {
    let var_0 = true;
    var var_1 = func_5(global2[_wgslsmith_index_u32(func_4(!all(select(vec4<bool>(var_0, var_0, false, true), vec4<bool>(var_0, var_0, false, var_0), true)), firstLeadingBit(abs(~vec3<u32>(35040u, global0.a.x, global0.a.x))), vec3<u32>(func_2(Struct_1(vec3<bool>(var_0, var_0, false), vec4<f32>(-455f, -472f, -1394f, -335f), vec2<i32>(-2147483647i, -1i), 45603i, -5884i), Struct_1(vec3<bool>(var_0, false, var_0), vec4<f32>(362f, -389f, -900f, -1104f), vec2<i32>(u_input.a, u_input.a), -2147483647i, -2147483647i)) ^ abs(global0.a.x), global0.a.x, ~global0.a.x), Struct_1(!select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, var_0, var_0), var_0), vec4<f32>(-1616f, -363f, _wgslsmith_f_op_f32(min(299f, 1465f)), _wgslsmith_f_op_f32(ceil(-845f))), firstLeadingBit(select(global3[_wgslsmith_index_u32(1u, 17u)], vec2<i32>(52618i, -1i), false)), 63457i, u_input.a)), 18u)], !(!vec3<bool>(any(vec4<bool>(var_0, false, var_0, true)), false, var_0)), Struct_1(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, var_0, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0)), !vec3<bool>(true, false, var_0), false), !vec3<bool>(var_0, false, var_0)), vec4<f32>(528f, _wgslsmith_f_op_f32(f32(-1f) * -677f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(155f))), _wgslsmith_f_op_f32(-1f)), (select(vec2<i32>(u_input.a, u_input.a), global3[_wgslsmith_index_u32(global0.a.x, 17u)], true) << ((vec2<u32>(global0.a.x, 4294967295u) ^ global0.a) % vec2<u32>(32u))) ^ vec2<i32>(~u_input.a, -1i), -(-u_input.a | u_input.a), ~max(50317i >> (global0.a.x % 32u), u_input.a)));
    var_1 = func_5(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, global0.a.x, global0.a.x), vec3<u32>(_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(49350u, 17u)], global0.a), firstLeadingBit(45529u), ~80532u)), ~(~(~global2[_wgslsmith_index_u32(global0.a.x, 18u)]))), select(!vec3<bool>(select(true, true, false), var_0, false), !(!var_1.a), true), func_5(~global2[_wgslsmith_index_u32(23771u, 18u)] & firstTrailingBit(vec3<u32>(23750u, 0u, 4294967295u)), vec3<bool>(global0.a.x != global0.a.x, true, false), func_5(vec3<u32>(0u, ~global0.a.x, global0.a.x), var_1.a, func_5(~vec3<u32>(global0.a.x, global0.a.x, global0.a.x), vec3<bool>(true, false, true), Struct_1(vec3<bool>(var_0, var_0, var_0), vec4<f32>(var_1.b.x, 549f, -255f, var_1.b.x), var_1.c, var_1.e, var_1.e)))));
    global2 = array<vec3<u32>, 18>();
    var var_2 = func_5(firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(~73418u, 18u)], vec3<u32>(global0.a.x, global0.a.x, 0u)), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(global0.a.x, global0.a.x, 1u)), global2[_wgslsmith_index_u32(30196u, 18u)] | global2[_wgslsmith_index_u32(1u, 18u)]))), vec3<bool>(false, var_0, _wgslsmith_f_op_f32(abs(-433f)) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(380f)), -1101f))), func_5(global2[_wgslsmith_index_u32(max(func_4(true, vec3<u32>(1u, 0u, global0.a.x) << (vec3<u32>(41670u, 1u, global0.a.x) % vec3<u32>(32u)), vec3<u32>(1u, 1u, global0.a.x), func_5(vec3<u32>(0u, global0.a.x, global0.a.x), vec3<bool>(true, true, var_1.a.x), Struct_1(var_1.a, vec4<f32>(1751f, 455f, 941f, 325f), global3[_wgslsmith_index_u32(4294967295u, 17u)], var_1.c.x, 0i))), ~reverseBits(2497u)), 18u)], var_1.a, func_5(_wgslsmith_add_vec3_u32(~global2[_wgslsmith_index_u32(global0.a.x, 18u)], global2[_wgslsmith_index_u32(0u, 18u)]), !(!var_1.a), func_5(global2[_wgslsmith_index_u32(4294967295u, 18u)], select(vec3<bool>(false, false, var_0), vec3<bool>(true, var_0, var_1.a.x), vec3<bool>(true, false, var_0)), func_5(global2[_wgslsmith_index_u32(global0.a.x, 18u)], var_1.a, Struct_1(var_1.a, vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, -613f), var_1.c, var_1.d, u_input.a))))));
    return !select(vec4<bool>(!var_1.a.x && !var_1.a.x, var_2.a.x, false, true), !vec4<bool>(false, 67531i == var_1.c.x, var_0, var_0), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global0.a);
    global2 = array<vec3<u32>, 18>();
    let var_1 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), _wgslsmith_f_op_f32(trunc(-143f)) <= _wgslsmith_f_op_f32(605f - -1634f)), !vec4<bool>(all(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)), false, true)), select(select(vec4<bool>(true, true, true, true), func_1(), vec4<bool>(all(vec2<bool>(false, true)), select(false, true, false), true, any(vec2<bool>(true, true)))), vec4<bool>(true, true, func_5(vec3<u32>(47855u, 1u, var_0.x) ^ vec3<u32>(13368u, 1u, global0.a.x), func_5(global2[_wgslsmith_index_u32(global0.a.x, 18u)], vec3<bool>(false, true, false), Struct_1(vec3<bool>(false, true, false), vec4<f32>(-370f, 1443f, 1127f, 577f), vec2<i32>(u_input.a, u_input.a), u_input.a, -1i)).a, func_5(global2[_wgslsmith_index_u32(1u, 18u)], vec3<bool>(false, false, true), Struct_1(vec3<bool>(false, false, false), vec4<f32>(-1587f, 1704f, -523f, -984f), vec2<i32>(u_input.a, -33468i), u_input.a, 0i))).a.x, all(func_1())), !vec4<bool>(true, true, 36214i < u_input.a, select(false, true, false))), select(select(!func_1(), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), vec4<bool>(select(true, false, false), true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))), func_5(_wgslsmith_mod_vec3_u32(vec3<u32>(27003u, global0.a.x, 1u), vec3<u32>(global0.a.x, 0u, 4294967295u)), vec3<bool>(true, false, true), Struct_1(vec3<bool>(true, true, true), vec4<f32>(359f, -374f, 114f, -637f), vec2<i32>(u_input.a, -1i), 20102i, 1i)).a.x), vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1900f, -2804f))) - vec2<f32>(-805f, _wgslsmith_f_op_f32(-406f * 513f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-522f)), 1000f)));
    global3 = array<vec2<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(771f, var_2.x)) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(570f * -975f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x))))), global0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1262f, -298f, -1193f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-681f, 1381f, var_2.x, -2323f))))));
}

