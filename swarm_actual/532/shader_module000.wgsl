struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<bool, 31> = array<bool, 31>(false, false, true, true, false, false, false, false, true, false, true, false, false, true, false, true, true, true, true, true, true, false, false, false, true, false, true, true, false, true, false);

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec4<i32>(-1i, 9016i, i32(-2147483648), -7880i), 1000f), Struct_1(vec4<i32>(27324i, 2147483647i, 34098i, i32(-2147483648)), -438f), Struct_1(vec4<i32>(-47834i, 49293i, 64226i, 25806i), 253f), true));

var<private> global3: array<u32, 24> = array<u32, 24>(3831u, 40705u, 1208u, 1u, 40883u, 1u, 72350u, 4805u, 51661u, 4294967295u, 15219u, 0u, 4294967295u, 0u, 1u, 0u, 46729u, 54766u, 0u, 9599u, 87112u, 1u, 1u, 47341u);

var<private> global4: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 4294967295u, 24401u), vec3<u32>(0u, 264u, 56341u), vec3<u32>(0u, 33490u, 21971u), vec3<u32>(51077u, 0u, 1u), vec3<u32>(9996u, 101252u, 4294967295u), vec3<u32>(1u, 33547u, 0u), vec3<u32>(24472u, 1u, 0u), vec3<u32>(31133u, 4294967295u, 15617u), vec3<u32>(54594u, 1u, 0u), vec3<u32>(33742u, 1u, 0u), vec3<u32>(1u, 87026u, 0u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(6695u, 1817u, 4294967295u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_2 {
    return global2[_wgslsmith_index_u32(4294967295u, 1u)];
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> f32 {
    let var_0 = ~arg_3 & ~global3[_wgslsmith_index_u32(~62937u, 24u)];
    let var_1 = ~firstTrailingBit(~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-34419i, arg_2.a.b.a.x, 1i), arg_2.a.b.a.zwx), vec3<i32>(arg_1, arg_2.a.a.a.x, 969i)));
    var var_2 = func_1().d;
    global4 = array<vec3<u32>, 14>();
    global3 = array<u32, 24>();
    return func_1().c.b;
}

fn func_3(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(func_1().c, func_1().b, func_1().b, !arg_0.x), vec4<u32>(firstLeadingBit(firstTrailingBit(4294967295u)), ~_wgslsmith_sub_u32(u_input.a.x, global3[_wgslsmith_index_u32(1u, 24u)] ^ 10310u), ~firstLeadingBit(u_input.a.x), ~(~62184u)), Struct_1(select(-(~vec4<i32>(-18885i, 9776i, 16912i, 2147483647i)), vec4<i32>(1i, 1i, 1i, ~(-1i)), arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(235f - -2072f))), -1424f))), vec3<bool>(global1[_wgslsmith_index_u32(1u, 31u)], select(true, global0[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(u_input.a.x | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)]), 30u)], !any(arg_0.wz)), false), Struct_1(firstTrailingBit(vec4<i32>(-23602i, 3693i, -35868i, -2259i)) ^ -vec4<i32>(1i, 1i, -10326i, 24835i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(565f, _wgslsmith_div_f32(-1000f, 1526f))) * 1f)));
    var var_1 = var_0.e.a.x & ~(1i & var_0.c.a.x);
    let var_2 = Struct_2(Struct_1(firstTrailingBit(var_0.e.a), 1228f), func_1().a, func_1().b, 1399f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(448f, -1071f)), _wgslsmith_f_op_f32(1114f - 1174f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b))));
    var var_3 = var_2.b.b;
    var_1 = i32(-1i) * -(~(-2457i));
    return func_1().c;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> i32 {
    global3 = array<u32, 24>();
    return _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.e.a.x & 27922i, func_1().a.a.x, arg_2.e.a.x, ~(~select(1i, 58907i, true))), firstLeadingBit(arg_2.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec3<bool>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 61965u), u_input.b), countOneBits(global3[_wgslsmith_index_u32(4294967295u, 24u)]), u_input.b.x) >= 1u, false, global1[_wgslsmith_index_u32(0u << (firstLeadingBit(firstLeadingBit(20933u)) % 32u), 31u)]));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1123f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f))), _wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32((13829u >> (1u % 32u)) >> (abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 24u)], 24u)]) % 32u), 31u)], 1i, Struct_3(func_1(), vec4<u32>(35489u, u_input.b.x, 0u, global3[_wgslsmith_index_u32(4294967295u, 24u)]) | vec4<u32>(22270u, global3[_wgslsmith_index_u32(10597u, 24u)], u_input.a.x, 4294967295u), Struct_1(vec4<i32>(-29069i, -2147483647i, -36702i, 1i), -547f), !vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(72376u, 24u)], 24u)], 24u)], 30u)], false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 24u)], 24u)], 30u)]), func_1().a), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(6361u, u_input.b.x), u_input.b, u_input.b), ~vec2<u32>(global3[_wgslsmith_index_u32(55842u, 24u)], 4294967295u))))))));
    var var_2 = global4[_wgslsmith_index_u32(34704u << (~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x & ~u_input.b.x, 24u)], 24u)] % 32u), 14u)];
    let var_3 = vec3<i32>(max(func_4(global1[_wgslsmith_index_u32(~u_input.a.x, 31u)] | var_0, _wgslsmith_f_op_f32(f32(-1f) * -385f), Struct_3(Struct_2(Struct_1(vec4<i32>(-7912i, 2147483647i, 0i, 0i), 902f), Struct_1(vec4<i32>(1i, -34932i, 0i, -1i), 390f), Struct_1(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 0i), -722f), false), vec4<u32>(u_input.b.x, u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 24u)], u_input.b.x), func_3(vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(var_2.x, 31u)])), !vec3<bool>(var_0, true, false), Struct_1(vec4<i32>(0i, -2562i, -24007i, -40660i), var_1))), 0i), func_3(select(vec4<bool>(true, false, any(vec3<bool>(global1[_wgslsmith_index_u32(1u, 31u)], true, var_0)), false), vec4<bool>(true, !global1[_wgslsmith_index_u32(u_input.b.x, 31u)], false, any(vec2<bool>(global1[_wgslsmith_index_u32(32769u, 31u)], global1[_wgslsmith_index_u32(var_2.x, 31u)]))), global1[_wgslsmith_index_u32(~var_2.x, 31u)])).a.x, ~_wgslsmith_clamp_i32(func_3(vec4<bool>(false, var_0, false, false)).a.x, _wgslsmith_clamp_i32(1i, -2147483647i, ~(-1i)), -func_1().a.a.x));
    var_2 = vec3<u32>(reverseBits(global3[_wgslsmith_index_u32(min(0u, u_input.b.x) | ~u_input.a.x, 24u)]), select(_wgslsmith_mult_u32(u_input.a.x, ~var_2.x), select(countOneBits(1u), u_input.a.x | var_2.x, !global0[_wgslsmith_index_u32(var_2.x, 30u)]), !var_0), var_2.x) ^ vec3<u32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, select(_wgslsmith_div_u32(u_input.b.x, var_2.x), 15783u, !global0[_wgslsmith_index_u32(u_input.b.x, 30u)])), 24u)], 1u, ~0u);
    global0 = array<bool, 30>();
    global1 = array<bool, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_i32(~(-2147483647i), -1i)));
}

