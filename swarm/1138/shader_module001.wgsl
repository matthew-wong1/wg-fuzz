struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<f32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(142f, 1124f, 922f, -333f, -253f, -1000f, 748f, 339f, 687f, -1674f, 494f, 1721f, 1000f, 1607f, 550f, 776f, -1000f, -1013f, -1652f, -869f, 999f, -118f, -681f, 1000f, 1879f, -1713f, -1000f, -1000f, -1000f);

var<private> global1: array<u32, 25> = array<u32, 25>(73316u, 26042u, 0u, 1u, 4294967295u, 81101u, 0u, 4294967295u, 0u, 29173u, 53213u, 0u, 23718u, 101706u, 4294967295u, 0u, 0u, 0u, 66711u, 1u, 4294967295u, 34094u, 4294967295u, 1u, 37957u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1() -> f32 {
    let var_0 = u_input.a.x;
    global1 = array<u32, 25>();
    global1 = array<u32, 25>();
    var var_1 = ~u_input.b.x;
    global1 = array<u32, 25>();
    return 891f;
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = vec4<u32>(4294967295u, 4294967295u, u_input.b.x, max(1u, 11298u));
    global1 = array<u32, 25>();
    global1 = array<u32, 25>();
    global1 = array<u32, 25>();
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1())));
    return ~11516u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(Struct_1(reverseBits(1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(6906u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)]))), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], u_input.b.x, global1[_wgslsmith_index_u32(91699u, 25u)], 84521u)), vec4<u32>(~1u, 55816u, 1u, func_3(vec3<bool>(false, true, false), 1672u, u_input.b.x, 1681f))), false), Struct_3(~global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(1u, 25u)]), 25u)], Struct_1(~abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)]), vec3<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)], 29u)])), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(19693u, 29u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 29u)])), ~firstLeadingBit(vec4<u32>(12108u, 4294967295u, global1[_wgslsmith_index_u32(0u, 25u)], 1u)), !(u_input.a.x <= u_input.a.x)), select(~(vec3<u32>(24636u, 5907u, 0u) & vec3<u32>(global1[_wgslsmith_index_u32(22207u, 25u)], 1u, u_input.b.x)), firstTrailingBit(abs(vec3<u32>(4294967295u, 63339u, 0u))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(65688u, 29u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 29u)]) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(1u, 29u)], 913f), vec2<f32>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54906u, 25u)], 25u)], 29u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(63132u, 29u)])))), 0u == _wgslsmith_mult_u32(u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 25u)]))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 29u)], 2039f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 25u)], 29u)])) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2535f, -1385f), vec2<f32>(global0[_wgslsmith_index_u32(12071u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)])))), true)))), reverseBits(_wgslsmith_mult_u32(4294967295u, ~(~global1[_wgslsmith_index_u32(1u, 25u)]))), Struct_3(~countOneBits(_wgslsmith_add_u32(0u, 0u)), Struct_1(u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 29u)] + global0[_wgslsmith_index_u32(1u, 29u)]), global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(~0u, 29u)]), firstLeadingBit(vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)])) ^ countOneBits(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)], 0u, 330u)), select(-60585i <= u_input.c, true, true)), abs(abs(vec3<u32>(4294967295u, u_input.b.x, 1u)) & vec3<u32>(u_input.b.x, 1u, 3912u))));
    global0 = array<f32, 29>();
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.b.b - vec3<f32>(-137f, -917f, global0[_wgslsmith_index_u32(12013u, 29u)])))), _wgslsmith_f_op_vec3_f32(step(var_1.b.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 29u)], var_1.b.b.x, -2652f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.b.b.x, global0[_wgslsmith_index_u32(var_0.d, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]), vec3<f32>(var_0.c.x, var_0.e.b.b.x, 629f), vec3<bool>(var_0.b.b.d, false, var_0.b.b.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.x, var_0.e.b.b.x, 1865f) - var_0.a.b) + var_1.b.b)))))));
    var var_3 = any(select(!vec4<bool>(!var_1.b.d, false, var_1.b.d & true, all(vec2<bool>(false, var_1.b.d))), select(!(!vec4<bool>(false, var_0.e.b.d, var_0.a.d, true)), select(!vec4<bool>(var_0.e.b.d, var_0.a.d, true, true), !vec4<bool>(var_1.b.d, var_1.b.d, var_1.b.d, var_1.b.d), false), !any(vec2<bool>(true, var_1.b.d))), true));
    return Struct_1(0u, var_1.b.b, var_0.b.b.c, true);
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = true;
    var var_1 = arg_1.b.b.c.zy;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 29u)]))) - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b & vec2<u32>(4294967295u, u_input.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, global1[_wgslsmith_index_u32(arg_1.e.c.x, 25u)]), arg_1.e.b.c.yw) << (select(vec2<u32>(arg_1.a.a, arg_0), u_input.b, vec2<bool>(arg_1.b.b.d, arg_1.b.b.d)) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(u_input.b.x, var_1.x)) & (u_input.b ^ vec2<u32>(var_1.x, 16574u))), ~firstTrailingBit(max(u_input.b, vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(arg_0, 25u)])))), 29u)]);
    var var_3 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0, 34132u, var_1.x) & arg_1.a.c.wzw, ~min(vec3<u32>(49975u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 25u)], 25u)], 34701u), arg_1.a.c.wyz)), arg_1.b.c);
    let var_4 = _wgslsmith_f_op_vec2_f32(-arg_1.e.b.b.xy);
    return Struct_1(86288u, _wgslsmith_f_op_vec3_f32(arg_1.b.b.b * arg_1.e.b.b), min(countOneBits(vec4<u32>(select(0u, var_1.x, false), countOneBits(arg_0), ~1u, 21498u)), arg_1.e.b.c), select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1605f + 1000f)) == var_4.x, arg_1.e.b.d, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), u_input.a.xz), 0i) > u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 25>();
    var var_0 = Struct_1(~(~42506u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(44056u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)], 29u)]) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 29u)], 985f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 25u)], 29u)]))) * vec3<f32>(-725f, global0[_wgslsmith_index_u32(~33832u, 29u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 29u)] * global0[_wgslsmith_index_u32(u_input.b.x, 29u)]))), vec3<f32>(global0[_wgslsmith_index_u32(30119u, 29u)], _wgslsmith_f_op_f32(max(-796f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(80165u, 29u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-299f, -692f)) + _wgslsmith_f_op_f32(func_1()))), vec3<bool>(false, true, true))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 51156u) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)], global1[_wgslsmith_index_u32(0u, 25u)], u_input.b.x, 1u) % vec4<u32>(32u)), vec4<u32>(global1[_wgslsmith_index_u32(1u, 25u)], u_input.b.x, 19620u, 4294967295u)) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 12038u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], u_input.b.x, u_input.b.x, 1u))), !(global1[_wgslsmith_index_u32(reverseBits(u_input.b.x), 25u)] > _wgslsmith_add_u32(global1[_wgslsmith_index_u32(23762u, 25u)], 1u)) & true);
    let var_1 = (any(select(!vec4<bool>(var_0.d, var_0.d, false, var_0.d), select(vec4<bool>(var_0.d, true, true, true), vec4<bool>(false, false, var_0.d, false), vec4<bool>(var_0.d, var_0.d, false, false)), var_0.d)) & (true || var_0.d)) | !(false != var_0.d);
    global0 = array<f32, 29>();
    var var_2 = abs(u_input.c);
    let var_3 = _wgslsmith_add_vec3_i32(~(~u_input.a.wzx), vec3<i32>(1i, 1i, firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_i32(-1i, -1i, u_input.a.x)))));
    var_0 = func_4(~_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(var_0.a, 25u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, var_0.a), 25u)])), Struct_4(func_2(), Struct_3(select(4294967295u, 4294967295u, var_0.d) | ~38627u, Struct_1(~16199u, vec3<f32>(-1000f, -825f, global0[_wgslsmith_index_u32(var_0.c.x, 29u)]), ~vec4<u32>(8037u, 0u, 0u, global1[_wgslsmith_index_u32(17412u, 25u)]), !var_0.d), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.x, 4294967295u, 0u), ~vec3<u32>(var_0.c.x, global1[_wgslsmith_index_u32(32442u, 25u)], var_0.c.x))), var_0.b.xz, u_input.b.x, Struct_3(var_0.a, func_2(), reverseBits(vec3<u32>(1043u, 64327u, 66921u)))));
    var_0 = func_4(global1[_wgslsmith_index_u32(u_input.b.x, 25u)] | 17116u, Struct_4(func_2(), Struct_3(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], Struct_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(abs(var_0.b)), firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(1u, 25u)], var_0.a, 4294967295u, global1[_wgslsmith_index_u32(u_input.b.x, 25u)])), var_1), select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 44744u, u_input.b.x), var_0.c.yxz), ~vec3<u32>(u_input.b.x, 12284u, u_input.b.x), vec3<bool>(true, true, var_0.d))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(var_0.b.xx, _wgslsmith_f_op_vec2_f32(var_0.b.xx * var_0.b.zz)))), _wgslsmith_add_u32(var_0.c.x >> (~1u % 32u), 6339u), Struct_3(func_2().c.x, Struct_1(4294967295u, _wgslsmith_div_vec3_f32(vec3<f32>(1480f, global0[_wgslsmith_index_u32(0u, 29u)], -1067f), var_0.b), var_0.c, false), var_0.c.xwx)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, var_3.yz, 76225u);
}

