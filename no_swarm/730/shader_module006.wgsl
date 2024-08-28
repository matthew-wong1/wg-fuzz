struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(24943i, 10152i, -25751i);

var<private> global1: u32 = 4294967295u;

var<private> global2: array<f32, 6>;

var<private> global3: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec3<bool>(true, true, false), 68005u, vec3<f32>(-233f, -542f, 1576f)), Struct_3(vec3<bool>(false, true, true), 54654u, vec3<f32>(820f, 183f, 2751f)), Struct_3(vec3<bool>(false, false, false), 91131u, vec3<f32>(-801f, 1276f, 227f)), Struct_3(vec3<bool>(true, true, false), 42518u, vec3<f32>(-274f, 991f, 217f)), Struct_3(vec3<bool>(true, true, true), 1u, vec3<f32>(184f, -611f, -388f)), Struct_3(vec3<bool>(true, false, false), 0u, vec3<f32>(506f, -647f, 1618f)), Struct_3(vec3<bool>(false, false, true), 1u, vec3<f32>(641f, -612f, -1000f)), Struct_3(vec3<bool>(false, false, true), 0u, vec3<f32>(733f, 1513f, -321f)), Struct_3(vec3<bool>(false, false, false), 4294967295u, vec3<f32>(-1033f, -681f, 2269f)), Struct_3(vec3<bool>(true, true, false), 1u, vec3<f32>(468f, -996f, 266f)), Struct_3(vec3<bool>(true, true, true), 0u, vec3<f32>(1434f, -1743f, -224f)), Struct_3(vec3<bool>(false, false, true), 41576u, vec3<f32>(1752f, -1130f, 565f)), Struct_3(vec3<bool>(true, true, true), 1u, vec3<f32>(724f, 132f, 1344f)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> u32 {
    global1 = 68601u;
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(arg_2.c.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2.c.x, 741f, -2124f, arg_2.c.x), vec4<f32>(arg_2.c.x, arg_2.c.x, 518f, -321f)))), vec4<f32>(-349f, arg_2.c.x, global2[_wgslsmith_index_u32(~arg_2.b, 6u)], _wgslsmith_f_op_f32(635f - arg_2.c.x)))), ~(~vec4<u32>(1u, 0u, 0u, arg_2.b) ^ vec4<u32>(0u, arg_2.b, 24809u, 1u))), 0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(arg_2.b, 6u)], 1665f, 1246f, -1682f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.c.x, -623f, global2[_wgslsmith_index_u32(arg_2.b, 6u)], global2[_wgslsmith_index_u32(arg_2.b, 6u)])))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, arg_0, -1298f)))))), !(!vec3<bool>(arg_1, false != arg_2.a.x, true)), firstLeadingBit(u_input.a) >> (0u % 32u));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1875f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_0.a.b, var_0.c))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1218f), -297f, -204f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 6u)])))), ~vec4<u32>(_wgslsmith_sub_u32(1u, arg_2.b), ~arg_2.b, 4294967295u, countOneBits(40058u))), ~arg_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, _wgslsmith_f_op_f32(floor(1117f)), 149f, _wgslsmith_f_op_f32(trunc(-468f))))), !select(vec3<bool>(!var_0.d.x, false && arg_2.a.x, all(vec2<bool>(false, arg_2.a.x))), arg_2.a, select(select(vec3<bool>(arg_2.a.x, true, false), vec3<bool>(true, var_0.d.x, false), false), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(var_0.d.x, arg_2.a.x, arg_1), arg_1), false)), ~(~52966i));
    let var_2 = select(var_1.d, vec3<bool>(false, (true && arg_2.a.x) | arg_2.a.x, !var_1.d.x), all(!vec4<bool>(arg_2.b <= var_0.a.c.x, true, !var_1.d.x, arg_1)));
    var var_3 = -1000f;
    return 29563u;
}

fn func_2(arg_0: vec3<i32>) -> vec2<f32> {
    let var_0 = ~func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(28584u, 6u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 6u)]))))), 1691f <= _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(max(4294967295u, 0u), 6u)]), Struct_3(vec3<bool>(false, true, any(vec3<bool>(false, true, false))), abs(~25400u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(60601u, 6u)], global2[_wgslsmith_index_u32(1644u, 6u)], 1000f))))), u_input.a);
    var var_1 = global3[_wgslsmith_index_u32(min(max(1u & ~_wgslsmith_sub_u32(var_0, var_0), _wgslsmith_dot_vec3_u32(abs(max(vec3<u32>(25310u, 0u, 79656u), vec3<u32>(13264u, 25648u, 32791u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0, var_0, var_0), ~vec3<u32>(4294967295u, var_0, var_0)))), ~reverseBits(~42817u)), 13u)];
    global0 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1343f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1246f))), 1943f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.c.x))))), _wgslsmith_f_op_f32(f32(-1f) * -332f)), vec4<u32>(4294967295u, max(1u, 45363u), 4294967295u | var_1.b, 1u));
    var var_3 = u_input.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a, 276f), vec2<f32>(948f, -1903f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1116f, -287f) - _wgslsmith_f_op_f32(var_2.b.x + global2[_wgslsmith_index_u32(var_2.c.x, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 6u)])))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<f32>) -> Struct_3 {
    global0 = ~min(~vec3<i32>(global0.x, _wgslsmith_mult_i32(global0.x, 1596i), 2147483647i), vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(24295i, 1i, u_input.a), ~vec3<i32>(global0.x, global0.x, 0i)), global0.x));
    global2 = array<f32, 6>();
    var var_0 = vec3<f32>(arg_2.x, arg_1, -1647f);
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-996f, global2[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(arg_0, 4294967295u) >> (~arg_0 % 32u)), 6u)], _wgslsmith_f_op_f32(trunc(2232f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 6u)], -484f, arg_2.x), vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 6u)], global2[_wgslsmith_index_u32(arg_0, 6u)], var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -967f, 2545f)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))))))));
    global2 = array<f32, 6>();
    return Struct_3(vec3<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(global0.x <= global0.x, true, false)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(586f, _wgslsmith_f_op_f32(min(343f, _wgslsmith_f_op_f32(-198f - 551f))), var_0.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 6u)], -982f, arg_1), vec3<f32>(arg_1, -149f, 435f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-468f, 1000f, -106f))))));
}

fn func_1() -> vec3<u32> {
    global0 = ~(~(_wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, u_input.a, u_input.a), -vec3<i32>(-2147483647i, -2147483647i, global0.x)) | (max(vec3<i32>(global0.x, -2147483647i, 17054i), vec3<i32>(u_input.a, global0.x, global0.x)) & -vec3<i32>(global0.x, global0.x, u_input.a))));
    global3 = array<Struct_3, 13>();
    let var_0 = global2[_wgslsmith_index_u32(1u, 6u)];
    let var_1 = func_4(countOneBits(~4294967295u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(2496f, 595f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(~_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, global0.x, -37090i), vec3<i32>(-2147483647i, 13798i, u_input.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-992f, global2[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(9534u, 6u)], global2[_wgslsmith_index_u32(4907u, 6u)])))))));
    global0 = vec3<i32>(global0.x, 35770i, ~(~_wgslsmith_sub_i32(firstLeadingBit(0i), global0.x & 0i)));
    return vec3<u32>(select(4294967295u << (max(~3410u, var_1.b) % 32u), firstTrailingBit(var_1.b ^ 0u), var_1.a.x), ~var_1.b, 0u);
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = arg_3.a;
    let var_1 = abs(4294967295u);
    var var_2 = _wgslsmith_sub_u32(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(17428u, 4294967295u, 1u, 7308u), var_0.c))), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 55985u, 4632u, 1u) >> (var_0.c % vec4<u32>(32u)), var_0.c ^ arg_3.a.c) << (firstTrailingBit(6817u) % 32u)));
    let var_3 = arg_3.a;
    var var_4 = arg_3;
    return select(!select(select(select(vec4<bool>(arg_0, var_4.d.x, arg_3.d.x, var_4.d.x), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(arg_0, true, false, var_4.d.x)), !vec4<bool>(true, arg_2, false, false), select(vec4<bool>(false, var_4.d.x, arg_3.d.x, arg_3.d.x), vec4<bool>(true, false, arg_3.d.x, false), vec4<bool>(true, var_4.d.x, false, var_4.d.x))), vec4<bool>(all(vec4<bool>(true, arg_2, true, false)), arg_3.d.x, false, true), vec4<bool>(true, !var_4.d.x, !arg_3.d.x, true)), vec4<bool>(any(select(select(vec4<bool>(false, arg_3.d.x, arg_2, arg_0), vec4<bool>(false, false, false, var_4.d.x), true), select(vec4<bool>(arg_3.d.x, arg_2, arg_0, arg_0), vec4<bool>(false, false, false, true), arg_2), vec4<bool>(var_4.d.x, false, false, true))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391f - arg_3.c.x) - -1807f) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -868f))), true), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_5(true, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(24719u, 103761u, 87220u), vec3<u32>(31405u, 0u, 7423u)), func_1()), !(false || (global2[_wgslsmith_index_u32(0u, 6u)] == global2[_wgslsmith_index_u32(4294967295u, 6u)])), Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(26575u, 6u)])), vec4<f32>(global2[_wgslsmith_index_u32(21442u, 6u)], global2[_wgslsmith_index_u32(9621u, 6u)], -305f, -163f), vec4<u32>(1u, 1u, 1u, 1u)), -12790i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1147f, global2[_wgslsmith_index_u32(1843u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], 1194f), vec4<f32>(639f, global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 6u)], -169f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], -968f, global2[_wgslsmith_index_u32(9968u, 6u)], global2[_wgslsmith_index_u32(0u, 6u)])), vec4<bool>(false, false, false, true))), vec3<bool>(any(vec2<bool>(false, false)), true, true), _wgslsmith_div_i32(global0.x, reverseBits(u_input.a)))), func_5(true, _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(1u, 0u, 23032u)), ~abs(vec3<u32>(4294967295u, 69331u, 0u))), ~_wgslsmith_clamp_u32(1u, 7828u, 27843u) < ~0u, Struct_2(Struct_1(global2[_wgslsmith_index_u32(74319u, 6u)], _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2929f, -1188f, global2[_wgslsmith_index_u32(76585u, 6u)], global2[_wgslsmith_index_u32(4408u, 6u)]))), ~vec4<u32>(4294967295u, 62879u, 102307u, 4294967295u)), countOneBits(26076i) << (1u % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(226f, global2[_wgslsmith_index_u32(50243u, 6u)], -500f, global2[_wgslsmith_index_u32(29685u, 6u)]), vec4<f32>(491f, -192f, global2[_wgslsmith_index_u32(0u, 6u)], -574f)) * vec4<f32>(global2[_wgslsmith_index_u32(0u, 6u)], global2[_wgslsmith_index_u32(1u, 6u)], -560f, global2[_wgslsmith_index_u32(1u, 6u)])), !func_5(false, 14110u, false, Struct_2(Struct_1(global2[_wgslsmith_index_u32(30462u, 6u)], vec4<f32>(global2[_wgslsmith_index_u32(38901u, 6u)], 285f, 1000f, -374f), vec4<u32>(53803u, 1u, 25415u, 1u)), -5166i, vec4<f32>(global2[_wgslsmith_index_u32(1u, 6u)], -564f, -229f, global2[_wgslsmith_index_u32(0u, 6u)]), vec3<bool>(true, false, true), -1i)).zxy, global0.x)), func_5(true, 4294967295u, true, Struct_2(Struct_1(_wgslsmith_f_op_f32(1410f * 111f), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 2373f, 1992f, -502f), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(102178u, 6u)], 620f, 1857f)), firstTrailingBit(vec4<u32>(0u, 53906u, 0u, 15169u))), abs(~u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-821f, -289f, global2[_wgslsmith_index_u32(1u, 6u)], 257f))), vec3<bool>(true, true, true), abs(global0.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1016f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(26843u, 6u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(min(vec3<i32>(-14933i, u_input.a, 21538i) & vec3<i32>(global0.x, 17520i, -31264i), vec3<i32>(27712i, -2147483647i, 1i))))));
    global1 = 41979u;
    var var_2 = Struct_2(Struct_1(1913f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2203f, global2[_wgslsmith_index_u32(41667u, 6u)], var_1.x, global2[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(0u, 4294967295u, 0u, 37748u)), abs(vec4<u32>(1u, 1u, 1u, 1u)))), 1i, vec4<f32>(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(select(~1u, max(18422u, 1u), select(var_0.x, false, var_0.x)), 6u)])), _wgslsmith_f_op_f32(f32(-1f) * -700f), 1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - global2[_wgslsmith_index_u32(32030u, 6u)]) + _wgslsmith_f_op_f32(361f - var_1.x))))), vec3<bool>(false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-462f)))) >= _wgslsmith_f_op_f32(-874f - _wgslsmith_f_op_f32(f32(-1f) * -2047f)), !(!var_0.x) | !var_0.x), ~(~global0.x));
    let var_3 = Struct_2(Struct_1(503f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -831f, var_1.x, 516f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], var_2.a.a, 873f, 1480f)))), var_2.a.c), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(36306i), _wgslsmith_dot_vec4_i32(vec4<i32>(21223i, var_2.b, 14985i, 56950i) >> (var_2.a.c % vec4<u32>(32u)), reverseBits(vec4<i32>(global0.x, var_2.b, 2466i, u_input.a)))), global0.zy), _wgslsmith_f_op_vec4_f32(abs(var_2.c)), select(func_5(all(!vec2<bool>(var_2.d.x, true)), ~_wgslsmith_dot_vec3_u32(var_2.a.c.wwz, var_2.a.c.wzw), true, Struct_2(var_2.a, var_2.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(var_2.a.c.x, 6u)], global2[_wgslsmith_index_u32(var_2.a.c.x, 6u)], global2[_wgslsmith_index_u32(var_2.a.c.x, 6u)], 530f), vec4<f32>(var_1.x, var_1.x, global2[_wgslsmith_index_u32(1u, 6u)], -652f))), !vec3<bool>(false, var_0.x, false), _wgslsmith_sub_i32(-2147483647i, var_2.b))).zzz, var_0.wwy, var_2.d.x), 1i);
    var_2 = Struct_2(var_2.a, -1i >> (min(var_2.a.c.x, select(firstTrailingBit(var_2.a.c.x), ~4294967295u, !var_0.x)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c - _wgslsmith_f_op_vec4_f32(-var_2.a.b))), !(!vec3<bool>(true, var_0.x, false)), _wgslsmith_add_i32(i32(-1i) * -var_3.e, -(~u_input.a) & 0i));
    global0 = firstLeadingBit(~(-select(vec3<i32>(u_input.a, 0i, 1i) | vec3<i32>(global0.x, 0i, 1i), vec3<i32>(-32852i, global0.x, 0i), vec3<bool>(var_0.x, var_3.d.x, true))));
    let var_4 = select(func_4(var_2.a.c.x, _wgslsmith_div_f32(-170f, _wgslsmith_f_op_f32(select(var_2.c.x, var_3.a.b.x, 66957u != var_3.a.c.x))), var_2.c.zy).a.xy, func_5(var_2.d.x, ~var_2.a.c.x, !var_3.d.x, var_3).yx, !(!all(select(var_0.zw, var_0.ww, var_3.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.c.x, firstTrailingBit(firstLeadingBit(vec2<i32>(global0.x, u_input.a))) ^ ~(-vec2<i32>(1i, var_2.b)));
}

