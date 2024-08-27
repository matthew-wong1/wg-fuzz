struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -25222i;

var<private> global1: array<i32, 17> = array<i32, 17>(1i, 1i, -36036i, i32(-2147483648), 0i, i32(-2147483648), -1268i, 2147483647i, -1i, -41086i, -25562i, 0i, 53770i, 10529i, 1i, i32(-2147483648), 1i);

var<private> global2: array<f32, 5> = array<f32, 5>(-696f, -184f, 1194f, 489f, 470f);

var<private> global3: vec4<f32> = vec4<f32>(108f, -493f, 212f, -451f);

var<private> global4: array<f32, 30>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<u32>) -> i32 {
    let var_0 = arg_1;
    global0 = select(arg_1.a.x, (-27153i << (_wgslsmith_add_u32(arg_3.x, arg_3.x) % 32u)) >> (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(58376u, u_input.b.x, 1u, arg_3.x)), vec4<u32>(u_input.a, arg_3.x, 70228u, abs(u_input.a))) % 32u), ~arg_1.a.x < _wgslsmith_clamp_i32(-reverseBits(-17997i), -var_0.a.x, global1[_wgslsmith_index_u32(49346u, 17u)]));
    global2 = array<f32, 5>();
    var var_1 = Struct_1(~(~(-(~var_0.a))), _wgslsmith_f_op_f32(ceil(global3.x)), var_0.c);
    var var_2 = !all(vec2<bool>(false, u_input.b.x < _wgslsmith_div_u32(1u, 1950u)));
    return var_0.c;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: u32) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(27591i | global1[_wgslsmith_index_u32(54612u, 17u)], ~global1[_wgslsmith_index_u32(arg_2, 17u)]) ^ vec2<i32>(_wgslsmith_mod_i32(arg_0, arg_0), 5525i), vec2<i32>(global1[_wgslsmith_index_u32(23799u, 17u)] ^ _wgslsmith_div_i32(-2147483647i, 2147483647i), 1887i), vec2<i32>(1i, global1[_wgslsmith_index_u32(~4294967295u, 17u)]) & vec2<i32>(_wgslsmith_mod_i32(0i, 6488i), _wgslsmith_add_i32(arg_0, 0i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(sign(930f)))), _wgslsmith_dot_vec3_i32((vec3<i32>(1i, -26599i, 31801i) << (vec3<u32>(1u, arg_2, arg_2) % vec3<u32>(32u))) ^ (vec3<i32>(arg_0, 0i, global1[_wgslsmith_index_u32(u_input.a, 17u)]) >> (vec3<u32>(50752u, 0u, arg_2) % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(1u, 17u)], 2147483647i))) >> (_wgslsmith_mod_u32(0u << (firstLeadingBit(arg_2) % 32u), arg_2) % 32u));
    var var_1 = arg_2;
    var var_2 = select(vec2<i32>(-_wgslsmith_dot_vec2_i32(~var_0.a, vec2<i32>(global1[_wgslsmith_index_u32(1u, 17u)], var_0.c) >> (u_input.b % vec2<u32>(32u))), arg_0 & -(arg_0 ^ arg_0)), ~var_0.a | (-vec2<i32>(var_0.a.x, arg_0) | _wgslsmith_mult_vec2_i32(-vec2<i32>(73790i, 0i), var_0.a | vec2<i32>(var_0.c, global1[_wgslsmith_index_u32(u_input.a, 17u)]))), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var_1 = u_input.a;
    var var_3 = countOneBits(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(11804u, u_input.b.x, 4294967295u)) ^ countOneBits(select(vec3<u32>(u_input.a, 47277u, 11487u), vec3<u32>(u_input.a, 0u, 2765u), true)), ~abs(vec3<u32>(4919u, arg_2, 52180u))));
    return ~(~(vec3<i32>(-1i) * -(~vec3<i32>(var_2.x, var_2.x, global1[_wgslsmith_index_u32(arg_2, 17u)]))));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_dot_vec3_i32(func_4(-func_3(1597f, Struct_1(vec2<i32>(0i, -2147483647i), global3.x, global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec3<f32>(global4[_wgslsmith_index_u32(0u, 30u)], 1326f, 266f), vec3<u32>(u_input.a, 25948u, 36031u)), global3.x, u_input.a) & vec3<i32>(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, 67627u), 17u)], max(1i, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 17u)]), ~firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b.x, 17u)])), max(_wgslsmith_add_vec3_i32(vec3<i32>(~22900i, ~global1[_wgslsmith_index_u32(u_input.b.x, 17u)], i32(-1i) * -1i), -(~vec3<i32>(global1[_wgslsmith_index_u32(75430u, 17u)], global1[_wgslsmith_index_u32(64600u, 17u)], 0i))), firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(-1i, global1[_wgslsmith_index_u32(u_input.a, 17u)]), _wgslsmith_add_i32(4199i, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), 0i))));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a, 30u)])) * -1677f) * global2[_wgslsmith_index_u32(~u_input.b.x, 5u)]), _wgslsmith_f_op_f32(ceil(-2274f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(363f, global2[_wgslsmith_index_u32(40726u, 5u)], false)))))), _wgslsmith_f_op_f32(floor(global3.x)));
    let var_0 = -1489i;
    var var_1 = _wgslsmith_sub_u32(countOneBits(_wgslsmith_clamp_u32(~0u, firstLeadingBit(u_input.a), 9756u)), ~(~min(u_input.a, 48297u))) | 4294967295u;
    let var_2 = vec3<bool>(!(1u < (u_input.a ^ u_input.b.x)) && true, u_input.a > u_input.b.x, !(true || (2103f < _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.a, 5u)])))));
    return Struct_1(max(min(max(firstTrailingBit(vec2<i32>(-36280i, -2147483647i)), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], var_0) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))), vec2<i32>(var_0 >> (u_input.b.x % 32u), -1i)), vec2<i32>(~(-global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), 1i)), 230f, ~(-1i & var_0));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = select(!vec3<bool>(!all(vec2<bool>(false, true)), !all(vec3<bool>(false, true, true)), true), select(vec3<bool>(all(vec3<bool>(true, true, true)), false, !any(vec2<bool>(false, false))), vec3<bool>(select(false, all(vec4<bool>(false, true, false, false)), true), true, !(-650f >= global2[_wgslsmith_index_u32(4294967295u, 5u)])), vec3<bool>(all(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), true)), !all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))));
    let var_2 = -vec4<i32>(-(~arg_0), -18787i, -1i, -abs(-16981i));
    var var_3 = abs(1i);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global3.www))) - global3.wzw);
    return Struct_1(~var_2.yw, global2[_wgslsmith_index_u32(u_input.a, 5u)], 4421i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(9275u, 23936u >> (~_wgslsmith_mod_u32(~0u, u_input.a) % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.wx));
    global1 = array<i32, 17>();
    global2 = array<f32, 5>();
    global0 = 1i;
    let var_2 = func_1(~(~firstTrailingBit(1i)));
    let var_3 = _wgslsmith_mod_vec3_i32(-vec3<i32>(-var_2.c, 1i, var_2.c) | vec3<i32>(min(_wgslsmith_sub_i32(1i, var_2.a.x), func_3(global3.x, Struct_1(var_2.a, var_1.x, global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), vec3<f32>(-786f, 1000f, -558f), vec3<u32>(45769u, 4680u, 86265u))), -reverseBits(global1[_wgslsmith_index_u32(37678u, 17u)]), abs(_wgslsmith_div_i32(54605i, 1i))), (vec3<i32>(func_3(1431f, var_2, vec3<f32>(var_1.x, 1133f, global2[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec3<u32>(1u, u_input.a, 28650u)), -2147483647i, select(0i, -29201i, true)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 5460u), vec3<u32>(u_input.a, 0u, u_input.b.x) >> (vec3<u32>(4294967295u, 64975u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_i32(-vec3<i32>(var_2.a.x, global1[_wgslsmith_index_u32(51729u, 17u)], -2147483647i) << (vec3<u32>(1u, u_input.a, 13926u) % vec3<u32>(32u)), vec3<i32>(~(-2507i), global1[_wgslsmith_index_u32(~102797u, 17u)], 85053i)));
    global2 = array<f32, 5>();
    let var_4 = select(select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(false, true)), true | (u_input.b.x == 28615u)), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true))), all(vec3<bool>(true, true, true))), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), all(vec2<bool>(true, true))), select(true, true, true) && (true && any(vec4<bool>(false, false, false, true)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec2_i32(func_4(var_3.x, 1319f, u_input.b.x).yx, _wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], 16650i), vec2<i32>(var_2.a.x, -1773i) & vec2<i32>(1i, global1[_wgslsmith_index_u32(7307u, 17u)])))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(4294967295u, 24843u, u_input.b.x)), vec3<u32>(4294967295u, 1u, 47794u), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a)), vec3<u32>(u_input.b.x, 69939u, ~u_input.b.x)), ~_wgslsmith_div_u32(1u, ~0u), ~u_input.a, ~_wgslsmith_add_u32(u_input.a, 34826u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1892f)) + global2[_wgslsmith_index_u32(~u_input.a >> (u_input.b.x % 32u), 5u)]), _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(~39162u, 30u)], -830f, var_4.x)), var_2.b, -1000f), vec4<u32>(firstTrailingBit(u_input.a), ~u_input.b.x | ~(u_input.a | 4294967295u), ~u_input.a, _wgslsmith_clamp_u32(u_input.b.x, abs(_wgslsmith_mult_u32(0u, 4294967295u)), u_input.a)));
}

