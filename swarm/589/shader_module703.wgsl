struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32;

var<private> global2: array<bool, 22> = array<bool, 22>(true, false, true, false, false, false, false, true, false, false, true, false, true, true, false, true, true, false, false, false, false, true);

var<private> global3: array<u32, 14> = array<u32, 14>(0u, 4294967295u, 1u, 4294967295u, 37531u, 96552u, 9171u, 4294967295u, 1691u, 4294967295u, 51723u, 5021u, 16227u, 4740u);

var<private> global4: Struct_3 = Struct_3(Struct_1(false, 15324i, 558f), Struct_1(true, 2147483647i, -1000f), Struct_2(Struct_1(true, 10262i, -327f), vec2<i32>(-1i, -45747i)), -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: i32) -> u32 {
    global0 = 37682u;
    var var_0 = _wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(-global4.a.c));
    global1 = 1u;
    global0 = 0u;
    let var_1 = select(vec3<bool>(true, any(!vec2<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 14u)], 22u)], false)), _wgslsmith_f_op_f32(-215f * _wgslsmith_div_f32(-1429f, 221f)) <= _wgslsmith_f_op_f32(select(1000f, arg_2.c, any(arg_1.yzz)))), select(vec3<bool>(!all(vec2<bool>(arg_0.a.a, arg_2.a)), all(arg_1), !all(vec4<bool>(false, arg_2.a, global2[_wgslsmith_index_u32(0u, 22u)], false))), !vec3<bool>(true, all(vec2<bool>(arg_2.a, arg_2.a)), any(vec3<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40657u, 14u)], 14u)], 22u)], global2[_wgslsmith_index_u32(38388u, 22u)], global4.a.a))), !(!arg_1.xzz)), all(select(vec2<bool>(!arg_0.a.a, arg_2.a && arg_0.a.a), select(!arg_1.zw, !vec2<bool>(global4.a.a, false), true), !arg_1.x)));
    return _wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(firstTrailingBit(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(52928u, 14u)], 14u)])), ~_wgslsmith_mult_u32(1u, 53100u)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = arg_3.a.c;
    let var_1 = !vec2<bool>((func_3(Struct_2(Struct_1(global4.a.a, 13702i, 1089f), vec2<i32>(-21296i, 1i)), vec4<bool>(global4.c.a.a, true, false, false), arg_1, 25839i) | 4014u) > global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 14u)], global3[_wgslsmith_index_u32(34039u, 14u)], 40775u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], 116799u)), select(53556u, 133705u, arg_3.a.a)), 14u)], 14u)], false);
    global4 = Struct_3(arg_3.a, Struct_1(global3[_wgslsmith_index_u32(46146u, 14u)] >= 1u, 23642i, _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(ceil(-1000f)))), Struct_2(Struct_1(all(select(var_1, vec2<bool>(arg_3.a.a, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], 14u)], 22u)]), false)), -86378i, 143f), ~arg_2.c.b), arg_3.b.x);
    let var_2 = !select(vec3<bool>(arg_3.a.a, false, all(!vec3<bool>(arg_3.a.a, arg_3.a.a, arg_2.b.a))), vec3<bool>(all(select(vec4<bool>(var_1.x, global2[_wgslsmith_index_u32(45792u, 22u)], false, true), vec4<bool>(arg_3.a.a, true, false, arg_3.a.a), vec4<bool>(false, false, arg_2.b.a, arg_2.c.a.a))), false, !(!arg_3.a.a)), vec3<bool>(arg_1.a, arg_2.b.a, (0u > global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)]) & true));
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(~(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16728u, 14u)], 14u)], global3[_wgslsmith_index_u32(1u, 14u)], 75095u) ^ vec3<u32>(10968u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)]))), ~select(~vec3<u32>(64685u, 4294967295u, 1u), ~vec3<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(4294967295u, 14u)]), var_2)), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~select(4294967295u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54056u, 14u)], 14u)], 14u)], 14u)], !global4.c.a.a) << (~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(~41422u, 14u)], ~1u), 14u)] % 32u), 14u)], 14u)]), 14u)];
    return vec4<u32>(37148u, ~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 14u)], 14u)], global3[_wgslsmith_index_u32(0u, 14u)], func_3(global4.c, !vec4<bool>(true, arg_2.b.c < arg_3.a.c, false, any(vec4<bool>(true, global4.c.a.a, true, global4.a.a))), arg_3.a, u_input.a.x));
}

fn func_1() -> Struct_3 {
    let var_0 = select(vec4<u32>(global3[_wgslsmith_index_u32(1u | ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)] ^ ~295u, countOneBits(firstLeadingBit(0u)), 79132u) >> (~func_2(_wgslsmith_f_op_f32(-global4.b.c), global4.b, Struct_3(global4.b, global4.b, Struct_2(global4.b, vec2<i32>(global4.c.a.b, u_input.a.x)), u_input.b.x), global4.c) % vec4<u32>(32u)), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], global3[_wgslsmith_index_u32(0u, 14u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(62905u, 14u)], 14u)]), vec4<u32>(global3[_wgslsmith_index_u32(6017u, 14u)], 26204u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(87366u, 14u)], 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(20989u, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)]), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24536u, 14u)], 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)], 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10866u, 14u)], 14u)]), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)], 14u)]))) & (vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)]) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34286u, 14u)], 14u)], 14u)], 0u, 1u, 71083u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21083u, 14u)], 14u)], 4294967295u, 17341u, global3[_wgslsmith_index_u32(4294967295u, 14u)])))), all(vec2<bool>(global2[_wgslsmith_index_u32(23445u ^ (4294967295u >> (global3[_wgslsmith_index_u32(18422u, 14u)] % 32u)), 22u)], !global4.b.a)));
    var var_1 = max(0u, var_0.x);
    global4 = Struct_3(global4.a, Struct_1(!(!all(vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 22u)], false, false))), global4.c.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global4.c.a.c)))), global4.c.a.c)), global4.c, abs(global4.a.b));
    var var_2 = _wgslsmith_f_op_f32(global4.a.c + _wgslsmith_f_op_f32(global4.b.c * -713f));
    global0 = ~_wgslsmith_add_u32(abs(0u | global3[_wgslsmith_index_u32(80598u, 14u)]) ^ _wgslsmith_div_u32(~4294967295u, _wgslsmith_clamp_u32(58861u, var_0.x, 1u)), ~func_2(global4.b.c, Struct_1(true, 30740i, global4.c.a.c), Struct_3(Struct_1(global2[_wgslsmith_index_u32(var_0.x, 22u)], global4.a.b, 565f), global4.c.a, global4.c, -27974i), Struct_2(global4.c.a, global4.c.b)).x);
    return Struct_3(global4.b, Struct_1(!((global4.c.a.a != true) && true), -1i, global4.a.c), global4.c, global4.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (max(_wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(47291u, 14u)], 20548u, global3[_wgslsmith_index_u32(33057u, 14u)]) ^ vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(82649u, 14u)], 14u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 14u)]), reverseBits(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 4294967295u, 51864u))), vec3<u32>(0u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)] >> (global3[_wgslsmith_index_u32(1u, 14u)] % 32u))) >> (vec3<u32>(_wgslsmith_sub_u32(33868u, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(42847u, 14u)], global3[_wgslsmith_index_u32(1u, 14u)])), _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(64172u, 14u)], 23416u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)])), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(47353u, global3[_wgslsmith_index_u32(13972u, 14u)]), _wgslsmith_clamp_u32(43531u, global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11501u, 14u)], 14u)]), ~global3[_wgslsmith_index_u32(4294967295u, 14u)])) % vec3<u32>(32u))) & _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], global3[_wgslsmith_index_u32(0u, 14u)]), vec2<u32>(71889u, 4294967295u)), 1u, 44818u), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], global3[_wgslsmith_index_u32(47457u, 14u)], 1u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(65652u, 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 1u), vec3<u32>(40959u, global3[_wgslsmith_index_u32(30832u, 14u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 14u)]))));
    global4 = func_1();
    let var_1 = func_1();
    var var_2 = _wgslsmith_dot_vec4_i32(-u_input.a ^ vec4<i32>(var_1.c.a.b, -abs(global4.a.b), max(global4.d >> (global3[_wgslsmith_index_u32(1u, 14u)] % 32u), _wgslsmith_mult_i32(var_1.b.b, -2147483647i)), u_input.a.x), _wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(min(u_input.a, vec4<i32>(32903i, u_input.a.x, -22069i, u_input.a.x)), ~u_input.a), select(select(-vec4<i32>(u_input.a.x, u_input.b.x, 14444i, var_1.d), -u_input.a, func_1().b.a), ~vec4<i32>(56368i, -31830i, -31721i, -20661i), !(var_1.a.b <= 2147483647i))));
    let var_3 = Struct_2(global4.b, vec2<i32>(-1i) * -(~func_1().c.b));
    let var_4 = vec3<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-868f, global4.c.a.c)), -1000f)) < var_1.b.c, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global4.b.c, var_3.a.c, -338f, -787f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1172f, global4.b.c, var_3.a.c, 1318f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.a.c, global4.c.a.c, 317f, -1905f) * vec4<f32>(global4.b.c, var_3.a.c, -644f, var_3.a.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.a.c, -1180f, var_1.a.c, var_1.b.c))))))), _wgslsmith_div_vec2_i32(-vec2<i32>(-1i, u_input.b.x), vec2<i32>(-65443i, -global4.c.a.b)));
}

