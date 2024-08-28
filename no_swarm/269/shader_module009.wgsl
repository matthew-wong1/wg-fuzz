struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 8>;

var<private> global2: array<vec4<f32>, 31>;

var<private> global3: array<f32, 25> = array<f32, 25>(-430f, -513f, -1525f, -1634f, 1070f, -266f, 552f, 163f, -541f, 165f, 557f, -541f, 1018f, 1351f, -1722f, 329f, 203f, -760f, 960f, -1000f, -1660f, 445f, -180f, -981f, 793f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>) -> vec2<u32> {
    global2 = array<vec4<f32>, 31>();
    let var_0 = !global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a, ~(~(~u_input.a))), 8u)];
    global0 = vec2<bool>(true, true);
    var var_1 = Struct_2(-1i ^ (u_input.c.x >> (min(~1u, 12476u) % 32u)));
    var var_2 = !arg_0.x;
    return firstLeadingBit(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(98918u, 4294967295u) | vec2<u32>(1u, u_input.b), ~vec2<u32>(1835u, u_input.b), ~vec2<u32>(24879u, 37227u)) | select(_wgslsmith_add_vec2_u32(vec2<u32>(14131u, u_input.a), vec2<u32>(0u, 0u)), ~vec2<u32>(4294967295u, 1u), arg_0), countOneBits(~(~vec2<u32>(u_input.a, u_input.b)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = min(u_input.c.x, arg_1.a) == -22788i;
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~_wgslsmith_clamp_u32(4294967295u, arg_2.x, u_input.b))), arg_2.x), 25u)];
    global1 = array<bool, 8>();
    let var_2 = func_3(!vec2<bool>(!all(vec3<bool>(false, true, false)), true));
    var var_3 = select(min(firstLeadingBit(_wgslsmith_div_u32(min(4294967295u, 0u), 22032u)), arg_2.x), ~_wgslsmith_mult_u32(var_2.x, ~(~arg_2.x)), true);
    return -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(firstTrailingBit(arg_0.x), u_input.c.x >> (79094u % 32u), -6426i, _wgslsmith_sub_i32(-12309i, -2147483647i))), vec4<i32>(~firstLeadingBit(arg_0.x), arg_1.a, _wgslsmith_add_i32(~0i, _wgslsmith_mult_i32(arg_0.x, 23712i)), 1i));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    global0 = vec2<bool>(false, false | global1[_wgslsmith_index_u32(~countOneBits(_wgslsmith_div_u32(arg_2.b, u_input.a)), 8u)]);
    let var_0 = ~vec4<u32>(44353u, arg_2.b >> (arg_2.b % 32u), ~13844u, _wgslsmith_sub_u32(~(~34685u), ~u_input.a));
    global0 = !(!vec2<bool>(!all(vec2<bool>(true, global0.x)), -arg_1.x < ~(-1i)));
    global0 = vec2<bool>(~(~_wgslsmith_div_i32(4432i, arg_2.a.x)) <= (i32(-1i) * -29400i), global0.x);
    let var_1 = Struct_2(-(~arg_1.x));
    return Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, ~var_1.a << (4294967295u % 32u), abs(arg_1.x), ~max(-2828i, -1490i)), ~countOneBits(arg_0 << (var_0 % vec4<u32>(32u))), ~arg_2.a), _wgslsmith_clamp_u32(select(~1u, reverseBits(~3314u), true), _wgslsmith_add_u32(var_0.x, _wgslsmith_mod_u32(abs(arg_2.b), 4294967295u)), 0u));
}

fn func_1() -> vec4<f32> {
    global3 = array<f32, 25>();
    let var_0 = func_4(-_wgslsmith_mod_vec4_i32(vec4<i32>(abs(1i), _wgslsmith_mult_i32(35650i, -3748i), firstTrailingBit(u_input.c.x), func_2(vec2<i32>(-1i, 1i), Struct_2(0i), vec4<u32>(u_input.a, u_input.a, u_input.b, 92326u), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 8u)], true))), vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, -48396i, 21680i), u_input.c.x, 1i, u_input.c.x)), abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -12436i, -30108i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -1i, -3938i), vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.c.x))) | (vec4<i32>(21412i << (u_input.b % 32u), min(-5904i, u_input.c.x), _wgslsmith_mult_i32(-24520i, -1i), -u_input.c.x) | vec4<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), -24225i >> (u_input.b % 32u), -44497i >> (u_input.b % 32u))), Struct_1(vec4<i32>(i32(-1i) * -1i, -_wgslsmith_add_i32(1i, 21798i), -77346i, 2147483647i), ~u_input.a ^ max(u_input.a << (10513u % 32u), 4294967295u)));
    var var_1 = max(vec4<i32>(_wgslsmith_div_i32(3273i, ~firstLeadingBit(u_input.c.x)), u_input.c.x, u_input.c.x, -(~countOneBits(2147483647i))), vec4<i32>(_wgslsmith_mod_i32(firstTrailingBit(u_input.c.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, u_input.a, var_0.b), vec3<u32>(u_input.b, var_0.b, 90400u)) % 32u), 18098i), _wgslsmith_dot_vec2_i32(vec2<i32>(37490i, -1i), vec2<i32>(0i, 1i) & vec2<i32>(u_input.c.x, var_0.a.x)) ^ -38474i, u_input.c.x, 2147483647i));
    global3 = array<f32, 25>();
    let var_2 = abs(vec3<u32>(func_3(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 8u)])), all(vec3<bool>(true, false, false)))).x, min(0u, func_3(select(vec2<bool>(global1[_wgslsmith_index_u32(17165u, 8u)], global0.x), vec2<bool>(false, true), global0.x)).x), _wgslsmith_sub_u32(~(~u_input.a), min(u_input.b, 0u) | firstLeadingBit(u_input.a))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(847f - -1000f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~27507u, 25u)] - _wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(u_input.a, 25u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2287f + 1267f) + _wgslsmith_f_op_f32(floor(1716f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 25u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1286f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(22473u, 25u)], global3[_wgslsmith_index_u32(var_0.b, 25u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 25u)] + 299f), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 25u)])))), select(!select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(global0.x, false, true, global0.x), false), vec4<bool>(true, false | global1[_wgslsmith_index_u32(u_input.a, 8u)], true, u_input.c.x >= -76711i), (false || global0.x) & true))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec4<u32>) -> vec4<bool> {
    global2 = array<vec4<f32>, 31>();
    let var_0 = Struct_2(abs(max(arg_0.a, ~(~2147483647i))));
    var var_1 = 1243u;
    global2 = array<vec4<f32>, 31>();
    var var_2 = arg_1;
    return select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, true, false, false), vec4<bool>(true, false, false, global0.x), !global0.x), ~arg_3.x <= _wgslsmith_div_u32(u_input.a, 1u)), vec4<bool>(global1[_wgslsmith_index_u32(0u, 8u)], true, true, !all(!vec2<bool>(global0.x, global1[_wgslsmith_index_u32(17632u, 8u)]))), !global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(u_input.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(13561u, 25u)], 1852f, global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(u_input.a, 25u)]) + vec4<f32>(196f, global3[_wgslsmith_index_u32(4294967295u, 25u)], 911f, global3[_wgslsmith_index_u32(u_input.a, 25u)]))))) - global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, countOneBits(min(4294967295u, 6990u))), 31u)]), Struct_2(-42719i), vec4<u32>(77827u, u_input.b, ~0u, ~(~u_input.b)));
    let var_1 = !vec4<bool>(true, true, !any(vec4<bool>(false, global0.x, global0.x, true)), false);
    var var_2 = global3[_wgslsmith_index_u32(4294967295u, 25u)];
    let var_3 = u_input.c.x;
    global2 = array<vec4<f32>, 31>();
    global3 = array<f32, 25>();
    var var_4 = u_input.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(~(select(countOneBits(12724u), countOneBits(23207u), global0.x) & ~0u), ~_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(u_input.a, u_input.a, 1u)), vec3<u32>(u_input.a, 3092u, 108254u)) >> ((~max(vec3<u32>(u_input.a, u_input.b, u_input.a), vec3<u32>(32804u, 4294967295u, 14971u)) | (abs(vec3<u32>(1u, u_input.b, u_input.a)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 269u, u_input.a), vec3<u32>(0u, 4294967295u, u_input.b)) % vec3<u32>(32u)))) % vec3<u32>(32u)), ~(~(~1u)), vec3<f32>(593f, -1669f, -1184f), u_input.c);
}

