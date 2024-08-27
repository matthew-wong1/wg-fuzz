struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-542f, -816f, 1437f), vec3<f32>(2123f, 1282f, 863f), vec3<f32>(1371f, -2298f, 876f), vec3<f32>(-2469f, 1243f, -2527f), vec3<f32>(301f, 674f, 636f), vec3<f32>(-1914f, -1105f, -2172f), vec3<f32>(1209f, -103f, 749f), vec3<f32>(-156f, 569f, 673f), vec3<f32>(1508f, -1575f, 1124f), vec3<f32>(-447f, 749f, 918f), vec3<f32>(607f, -1792f, -469f), vec3<f32>(-1595f, 275f, 543f), vec3<f32>(-1000f, 678f, -1021f), vec3<f32>(-1000f, -338f, -1000f), vec3<f32>(-257f, -162f, -277f), vec3<f32>(-1271f, -676f, -1000f), vec3<f32>(775f, 910f, 302f), vec3<f32>(1608f, 308f, -308f), vec3<f32>(187f, 834f, -942f), vec3<f32>(-1256f, 922f, -918f), vec3<f32>(-1005f, -2017f, -754f), vec3<f32>(-362f, -272f, -633f), vec3<f32>(772f, 389f, 347f), vec3<f32>(-984f, -1553f, -1109f));

var<private> global1: array<bool, 31>;

var<private> global2: array<Struct_2, 6>;

var<private> global3: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec4<f32> {
    global2 = array<Struct_2, 6>();
    let var_0 = Struct_1(select(-_wgslsmith_add_vec4_i32(abs(arg_0.e.a), arg_0.e.a), arg_0.e.a, arg_1), firstLeadingBit(vec2<u32>(arg_0.b, abs(countOneBits(u_input.c.x)))), arg_0.c, !arg_1.xx, vec4<i32>(-1i, 13570i, 3808i, _wgslsmith_clamp_i32(-u_input.b.x << (30952u % 32u), abs(~arg_0.e.e.x), _wgslsmith_add_i32(u_input.b.x, 17850i) ^ u_input.b.x)));
    var var_1 = ~(_wgslsmith_sub_u32(abs(select(1u, 4294967295u, arg_0.e.d.x)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.d.x, var_0.b.x, 10282u)), abs(vec3<u32>(4294967295u, u_input.a, arg_0.d.x)))) ^ 44297u);
    global0 = array<vec3<f32>, 24>();
    global2 = array<Struct_2, 6>();
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_0.a))))))));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))))));
    global1 = array<bool, 31>();
    var var_1 = -select(~u_input.b ^ (vec2<i32>(-1i) * -vec2<i32>(9226i, arg_1.c)), arg_1.e.a.yz | (vec2<i32>(arg_1.c, arg_1.c) | u_input.b), arg_1.e.d.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(490f, arg_1.a.x, arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_vec4_f32(func_3(arg_1, select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec4<bool>(false, true, true, true), arg_1.e.d.x))), !(arg_1.e.d.x || arg_0))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(arg_1.a.x, -823f), _wgslsmith_f_op_f32(-arg_1.a.x), -1669f, _wgslsmith_f_op_f32(ceil(-1413f))))))), ~(~0u), abs(var_1.x), arg_1.d, arg_1.e);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -321f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1652f + -1331f) + _wgslsmith_f_op_f32(floor(var_2.a.x)))) - -1016f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(ceil(arg_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1329f))))), 565f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.x, -966f)))))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    let var_0 = countOneBits(select(~(~max(vec4<u32>(u_input.a, 85387u, 1u, u_input.a), vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, u_input.c.x))), ~vec4<u32>(~98189u, _wgslsmith_mult_u32(u_input.a, u_input.a), ~26987u, 107993u), !arg_0));
    var var_1 = u_input.b.x;
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 1u), 6u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec4<f32>(-268f, 153f, -548f, -181f), var_0.x, u_input.b.x, vec4<u32>(var_0.x, var_0.x, 1u, 27840u), Struct_1(vec4<i32>(13740i, u_input.b.x, 2147483647i, 13894i), vec2<u32>(u_input.c.x, u_input.c.x), u_input.b.x, vec2<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 31u)], global1[_wgslsmith_index_u32(var_0.x, 31u)], false, true))).x * _wgslsmith_f_op_f32(f32(-1f) * -322f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -532f) * -1462f)), false || (var_0.x >= _wgslsmith_div_u32(u_input.a, ~72028u)));
    return Struct_1((vec4<i32>(u_input.b.x ^ u_input.b.x, 0i, -9258i, -64979i) << ((_wgslsmith_add_vec4_u32(var_0, vec4<u32>(69800u, u_input.a, var_0.x, 71836u)) & var_0) % vec4<u32>(32u))) & vec4<i32>(select(-1721i, ~u_input.b.x, all(vec4<bool>(var_2.x, global1[_wgslsmith_index_u32(var_0.x, 31u)], global1[_wgslsmith_index_u32(61882u, 31u)], arg_0))), reverseBits(_wgslsmith_div_i32(-21589i, 66363i)), abs(_wgslsmith_add_i32(u_input.b.x, -103587i)), 2147483647i), select(vec2<u32>(reverseBits(reverseBits(var_0.x)), ~1u), vec2<u32>(u_input.c.x, u_input.c.x), !var_2), -3788i, var_2, -firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 0i, -33508i, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, 2276i, 19530i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1[_wgslsmith_index_u32(~u_input.c.x, 31u)]);
    var var_1 = !(!var_0.d);
    global0 = array<vec3<f32>, 24>();
    global0 = array<vec3<f32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-623f, 844f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - 956f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1087f, _wgslsmith_f_op_f32(abs(-1000f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(272f, 195f)), _wgslsmith_div_f32(-322f, -273f)))), vec3<i32>(var_0.e.x, var_0.e.x | _wgslsmith_clamp_i32(var_0.a.x, abs(var_0.e.x), -1i), _wgslsmith_sub_i32(1i, var_0.a.x)), vec2<u32>(~30688u, var_0.b.x) >> (~(~u_input.c.xz) % vec2<u32>(32u)));
}

