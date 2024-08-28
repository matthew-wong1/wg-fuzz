struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(0i, 4839i, -55950i, 6232i, -6460i, 3852i, 0i, -28365i, 13869i, 0i, 2147483647i, 9915i, i32(-2147483648), -1i, i32(-2147483648), -12848i, 7307i, -15921i, 2147483647i, 2147483647i);

var<private> global1: i32;

var<private> global2: array<u32, 14>;

var<private> global3: array<u32, 16>;

var<private> global4: vec4<u32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec2<i32>) -> vec3<u32> {
    return _wgslsmith_clamp_vec3_u32(global4.zyz, vec3<u32>(~(~_wgslsmith_sub_u32(53634u, 1u)), ~_wgslsmith_dot_vec2_u32(max(global4.xy, vec2<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.x, 14u)], 16u)], 42231u)), ~vec2<u32>(16254u, global2[_wgslsmith_index_u32(6165u, 14u)])), 0u), global4.xxw);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(670f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1266f, -670f))));
    global4 = ~vec4<u32>(global2[_wgslsmith_index_u32(~(~global4.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(78135u, 16u)], 72110u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 16u)], 14u)], 4294967295u), select(vec4<u32>(global4.x, global4.x, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11749u, 16u)], 14u)], 14u)]), vec4<u32>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34976u, 16u)], 14u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.x, 14u)], 16u)], global2[_wgslsmith_index_u32(global4.x, 14u)], 4294967295u), vec4<bool>(false, false, false, true))) % 32u), 14u)], ~global3[_wgslsmith_index_u32(global4.x, 16u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, global3[_wgslsmith_index_u32(countOneBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26112u, 14u)], 14u)]), 16u)]), 16u)] << (global3[_wgslsmith_index_u32(func_2(-vec2<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 20u)], u_input.a.x)).x, 16u)] % 32u), 14u)], global4.x);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1102f), _wgslsmith_div_f32(-1034f, 827f)))), _wgslsmith_f_op_f32(trunc(644f))) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1236f, _wgslsmith_f_op_f32(select(250f, 152f, false))))));
    var var_1 = u_input.a.yy;
    var var_2 = countOneBits(reverseBits(vec4<u32>(global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(global2[_wgslsmith_index_u32(1u, 14u)]), ~global4.x, _wgslsmith_dot_vec4_u32(vec4<u32>(33533u, 25444u, global4.x, global4.x), vec4<u32>(0u, 1u, 4294967295u, 1u))), 16u)], ~9297u, global2[_wgslsmith_index_u32(938u, 14u)])));
    return global3[_wgslsmith_index_u32(global4.x, 16u)];
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: i32) -> Struct_3 {
    let var_0 = -vec4<i32>(26200i, arg_3, ~_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(0u, 20u)], 65884i, u_input.a.x, 32282i)), -vec4<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10281u, 16u)], 16u)], 20u)], -1i, -38600i, global0[_wgslsmith_index_u32(1u, 20u)])), arg_3);
    let var_1 = arg_2.zz >> (vec2<u32>(0u, arg_0.b) % vec2<u32>(32u));
    var var_2 = _wgslsmith_clamp_vec3_u32(func_2(u_input.a.zx), arg_2, global4.wyw ^ ~(~vec3<u32>(1u, global4.x, 1u))) & select(vec3<u32>(func_3(), 44640u, _wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.x, 14u)], 16u)]) >> ((global4.x ^ global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.x, 16u)], 14u)], 16u)]) % 32u)), arg_2, !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))));
    var var_3 = Struct_1(arg_0.a, _wgslsmith_div_u32(global4.x, ~_wgslsmith_mod_u32(1u, 14184u << (arg_0.b % 32u))), _wgslsmith_f_op_f32(516f * arg_0.c));
    global2 = array<u32, 14>();
    return Struct_3(var_3.a.wx, ~_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(102661u, arg_2.x, 0u, global4.x)), vec4<u32>(reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(arg_2, global4.wwx), ~var_1.x, ~4294967295u)), u_input.a, Struct_1(vec4<f32>(-2489f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3.a.x, var_3.a.x), _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-257f * var_3.a.x))), 1324f), ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(55481u, var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * 2594f)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_5) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_0.d.a.yz, _wgslsmith_f_op_vec2_f32(abs(arg_0.d.a.xz))), _wgslsmith_f_op_vec2_f32(-arg_2.a.xx), all(!vec2<bool>(arg_3.c, arg_3.c)))), arg_0.a, select(select(vec2<bool>(false, arg_3.c), !vec2<bool>(arg_3.c, arg_3.c), true), !select(vec2<bool>(false, true), vec2<bool>(arg_3.c, arg_3.c), vec2<bool>(arg_3.c, true)), !select(vec2<bool>(false, false), vec2<bool>(arg_3.c, false), arg_3.c)))), abs(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0.b, _wgslsmith_mod_vec4_u32(arg_0.b, arg_0.b)), arg_0.b)), u_input.a, arg_0.d);
    var_0 = arg_0;
    var var_1 = -661f;
    global4 = ~var_0.b;
    var var_2 = any(!vec4<bool>(true, true && (10568u > global2[_wgslsmith_index_u32(38275u, 14u)]), any(select(vec3<bool>(false, true, arg_3.c), vec3<bool>(false, false, true), vec3<bool>(true, arg_3.c, arg_3.c))), true));
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = vec2<bool>(all(vec3<bool>(arg_0.a.a.x < arg_0.c.d.c, true, true)), true);
    let var_1 = Struct_5(vec3<i32>(-1i) * -arg_1, vec3<f32>(_wgslsmith_f_op_f32(abs(-608f)), -957f, _wgslsmith_f_op_f32(-func_4(arg_0.a, func_4(Struct_3(arg_0.a.d.a.xx, vec4<u32>(arg_0.c.d.b, 1u, 18784u, 24416u), vec3<i32>(-16824i, u_input.a.x, global0[_wgslsmith_index_u32(0u, 20u)]), arg_0.d.d), Struct_1(arg_0.d.c.a, global3[_wgslsmith_index_u32(4294967295u, 16u)], arg_0.b), arg_0.a.d, Struct_5(vec3<i32>(u_input.a.x, -2147483647i, global0[_wgslsmith_index_u32(global4.x, 20u)]), arg_0.c.d.a.xyz, false, global0[_wgslsmith_index_u32(65940u, 20u)])).d, arg_0.d.b, Struct_5(arg_1, arg_0.d.d.a.wxy, var_0.x, 2147483647i)).d.a.x)), true, global0[_wgslsmith_index_u32(4294967295u, 20u)] | -_wgslsmith_clamp_i32(max(arg_1.x, -2147483647i), _wgslsmith_sub_i32(-2147483647i, arg_0.c.c.x), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(59191u, 20u)], 0i)));
    var var_2 = (var_1.a.zx << (~(~vec2<u32>(25663u, global4.x)) % vec2<u32>(32u))) ^ -var_1.a.yx;
    let var_3 = -206f;
    return func_1(arg_0.c.d, _wgslsmith_div_f32(1000f, -426f), ~vec3<u32>(global3[_wgslsmith_index_u32(~(~105317u), 16u)], reverseBits(1u), global4.x), _wgslsmith_mult_i32(var_1.d, _wgslsmith_div_i32(-84394i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(u_input.a.x, -28501i), arg_1.yy), u_input.a.yy))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(u_input.a.x << (~(global4.x << (min(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 16u)]) % 32u)) % 32u));
    global3 = array<u32, 16>();
    let var_0 = Struct_4(func_5(Struct_4(func_4(func_1(Struct_1(vec4<f32>(-326f, 389f, -997f, 834f), 12053u, 1819f), -1151f, global4.xxz, 1i), Struct_1(vec4<f32>(1826f, -1000f, 1455f, 265f), global4.x, 639f), func_1(Struct_1(vec4<f32>(-787f, -473f, 379f, -1549f), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 14u)], 742f), 486f, global4.ywz, global0[_wgslsmith_index_u32(global4.x, 20u)]).d, Struct_5(vec3<i32>(global0[_wgslsmith_index_u32(62129u, 20u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 16u)], 20u)], u_input.a.x), vec3<f32>(281f, 714f, -359f), false, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-207f)) + _wgslsmith_f_op_f32(ceil(1774f))), func_4(func_4(Struct_3(vec2<f32>(-340f, -319f), vec4<u32>(3025u, global3[_wgslsmith_index_u32(global4.x, 16u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 16u)], 16u)], 16u)], global4.x), u_input.a, Struct_1(vec4<f32>(-888f, 142f, -882f, 297f), global3[_wgslsmith_index_u32(global4.x, 16u)], 250f)), Struct_1(vec4<f32>(683f, -997f, 1000f, -267f), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 14u)], -1390f), Struct_1(vec4<f32>(457f, -738f, 449f, -791f), global3[_wgslsmith_index_u32(14940u, 16u)], 254f), Struct_5(u_input.a, vec3<f32>(637f, -1788f, -105f), false, -1i)), Struct_1(vec4<f32>(-404f, -965f, -1000f, 2444f), 0u, -1516f), Struct_1(vec4<f32>(-145f, 707f, -100f, 705f), 40847u, 2058f), Struct_5(u_input.a, vec3<f32>(142f, 731f, 1967f), true, -2147483647i)), Struct_2(Struct_1(vec4<f32>(-125f, 665f, 2148f, 926f), 0u, -122f), func_1(Struct_1(vec4<f32>(1130f, 1563f, -735f, -1718f), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7516u, 14u)], 16u)], 1956f), 634f, vec3<u32>(84984u, 4294967295u, global2[_wgslsmith_index_u32(1u, 14u)]), global0[_wgslsmith_index_u32(4294967295u, 20u)]).d, Struct_1(vec4<f32>(845f, -319f, 707f, -199f), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5656u, 16u)], 14u)], 16u)], -887f), func_4(Struct_3(vec2<f32>(1106f, -450f), vec4<u32>(global2[_wgslsmith_index_u32(global4.x, 14u)], 16258u, 4294967295u, 0u), u_input.a, Struct_1(vec4<f32>(-362f, 533f, -1000f, 1036f), global2[_wgslsmith_index_u32(13496u, 14u)], -462f)), Struct_1(vec4<f32>(-590f, 110f, -1672f, -1311f), global4.x, 1102f), Struct_1(vec4<f32>(-138f, -1000f, 1135f, -1000f), global3[_wgslsmith_index_u32(1u, 16u)], -236f), Struct_5(u_input.a, vec3<f32>(-664f, -1081f, 576f), false, -57532i)).d, vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44677u, 16u)], 20u)], -2147483647i, -61699i)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global4.x, global2[_wgslsmith_index_u32(51799u, 14u)]), global4.www))), -vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(global4.x, 20u)], u_input.a.x), min(global0[_wgslsmith_index_u32(17633u, 20u)], 2147483647i), ~2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_5(Struct_4(Struct_3(vec2<f32>(489f, 1000f), vec4<u32>(4294967295u, 49072u, 19900u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)]), vec3<i32>(1i, global0[_wgslsmith_index_u32(59194u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]), Struct_1(vec4<f32>(2276f, -1795f, -732f, -957f), 1834u, 1244f)), 457f, Struct_3(vec2<f32>(-856f, -1179f), vec4<u32>(36714u, 27011u, global2[_wgslsmith_index_u32(25667u, 14u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11828u, 16u)], 16u)], 14u)]), vec3<i32>(-4444i, global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(73776u, 14u)], 20u)]), Struct_1(vec4<f32>(-669f, -1012f, 1000f, -3000f), 4294967295u, 483f)), Struct_2(Struct_1(vec4<f32>(1567f, -1032f, 250f, 914f), global4.x, 245f), Struct_1(vec4<f32>(1282f, 252f, 1153f, -684f), 14594u, -885f), Struct_1(vec4<f32>(1572f, 141f, 381f, -641f), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 16u)], 14u)], 1000f), Struct_1(vec4<f32>(-264f, -756f, -1130f, 539f), global2[_wgslsmith_index_u32(1u, 14u)], -1549f), vec4<i32>(u_input.a.x, u_input.a.x, -44715i, -1i)), global4.x), u_input.a).a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(633f * -364f), -799f)) + _wgslsmith_f_op_f32(-func_5(Struct_4(Struct_3(vec2<f32>(-706f, 156f), vec4<u32>(0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1299u, 14u)], 14u)], 16u)], 1u, 9834u), u_input.a, Struct_1(vec4<f32>(607f, -683f, 677f, -1000f), 4294967295u, -344f)), -363f, Struct_3(vec2<f32>(-930f, 778f), vec4<u32>(1u, 0u, global4.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 16u)], 16u)], 14u)], 16u)]), u_input.a, Struct_1(vec4<f32>(1000f, -143f, 433f, -1168f), global4.x, -834f)), Struct_2(Struct_1(vec4<f32>(301f, 1151f, -544f, -968f), 1u, -1586f), Struct_1(vec4<f32>(-1539f, -146f, -551f, -188f), global4.x, -2279f), Struct_1(vec4<f32>(308f, 223f, -1000f, 1053f), global4.x, 758f), Struct_1(vec4<f32>(-822f, 529f, 1000f, 1029f), global3[_wgslsmith_index_u32(4294967295u, 16u)], 1000f), vec4<i32>(-1i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12744u, 14u)], 16u)], 20u)], u_input.a.x, u_input.a.x)), 7060u), func_4(Struct_3(vec2<f32>(321f, -1449f), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 16u)], 16u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 14u)], global2[_wgslsmith_index_u32(42597u, 14u)], 4294967295u), vec3<i32>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19725u, 16u)], 20u)], 1i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17225u, 16u)], 20u)]), Struct_1(vec4<f32>(-1000f, 596f, -1000f, -466f), global3[_wgslsmith_index_u32(4294967295u, 16u)], 737f)), Struct_1(vec4<f32>(-642f, -222f, 1710f, 230f), 4294967295u, 366f), Struct_1(vec4<f32>(-579f, -275f, 227f, 2396f), 0u, 299f), Struct_5(u_input.a, vec3<f32>(1031f, 1021f, -1549f), true, 2147483647i)).c).d.c)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1012f, -253f), vec2<f32>(-102f, -776f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-272f, 664f)))) + vec2<f32>(_wgslsmith_f_op_f32(step(-1529f, -495f)), _wgslsmith_f_op_f32(1340f * 449f))), firstTrailingBit(~abs(vec4<u32>(28354u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 14u)], 16u)], 14u)], 15802u, global2[_wgslsmith_index_u32(4294967295u, 14u)]))), u_input.a, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(513f, -375f, -1000f, -103f), func_5(Struct_4(Struct_3(vec2<f32>(-966f, -472f), vec4<u32>(global4.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 14u)], 790u), vec3<i32>(-5013i, -2147483647i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 20u)]), Struct_1(vec4<f32>(2403f, 671f, -777f, 1290f), global3[_wgslsmith_index_u32(4294967295u, 16u)], -782f)), -1000f, Struct_3(vec2<f32>(-738f, 1103f), vec4<u32>(8269u, global4.x, 4294967295u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.x, 14u)], 16u)]), u_input.a, Struct_1(vec4<f32>(-1521f, -986f, -496f, -1340f), global3[_wgslsmith_index_u32(23962u, 16u)], -973f)), Struct_2(Struct_1(vec4<f32>(979f, -1019f, -272f, 489f), 8238u, 861f), Struct_1(vec4<f32>(-355f, 626f, -1712f, 1165f), 1u, 365f), Struct_1(vec4<f32>(1315f, 988f, 1603f, 291f), 62390u, 540f), Struct_1(vec4<f32>(106f, -470f, 572f, -1543f), global4.x, 1245f), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(111203u, 20u)], u_input.a.x, global0[_wgslsmith_index_u32(1u, 20u)])), global4.x), u_input.a).d.a), 0u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2036f))))), Struct_2(func_5(Struct_4(func_5(Struct_4(Struct_3(vec2<f32>(409f, 1266f), vec4<u32>(global4.x, 4294967295u, global2[_wgslsmith_index_u32(36424u, 14u)], 4294967295u), vec3<i32>(-2147483647i, 622i, global0[_wgslsmith_index_u32(85965u, 20u)]), Struct_1(vec4<f32>(-552f, 354f, -1428f, -146f), global3[_wgslsmith_index_u32(global4.x, 16u)], -283f)), -542f, Struct_3(vec2<f32>(-882f, 214f), vec4<u32>(0u, global2[_wgslsmith_index_u32(global4.x, 14u)], 51070u, global2[_wgslsmith_index_u32(14384u, 14u)]), vec3<i32>(global0[_wgslsmith_index_u32(0u, 20u)], -17607i, u_input.a.x), Struct_1(vec4<f32>(-144f, -633f, 1012f, 142f), 21995u, -507f)), Struct_2(Struct_1(vec4<f32>(-170f, 724f, 272f, -180f), 4294967295u, 1208f), Struct_1(vec4<f32>(-1211f, -549f, -1114f, -1487f), global4.x, -1036f), Struct_1(vec4<f32>(-1589f, -287f, -741f, -1000f), 33699u, -167f), Struct_1(vec4<f32>(-403f, -1904f, 251f, -132f), 1u, 1570f), vec4<i32>(global0[_wgslsmith_index_u32(102868u, 20u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 20u)], -2147483647i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 16u)], 20u)])), global4.x), u_input.a), _wgslsmith_f_op_f32(round(900f)), Struct_3(vec2<f32>(1000f, -909f), vec4<u32>(global4.x, global4.x, global3[_wgslsmith_index_u32(6562u, 16u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 16u)]), vec3<i32>(0i, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5278u, 16u)], 20u)], u_input.a.x), Struct_1(vec4<f32>(1131f, 229f, 172f, -1053f), 1u, 601f)), Struct_2(Struct_1(vec4<f32>(261f, -602f, -211f, -171f), 1u, -411f), Struct_1(vec4<f32>(1000f, -190f, 1281f, -360f), 0u, 1490f), Struct_1(vec4<f32>(1000f, 343f, -771f, 1000f), global3[_wgslsmith_index_u32(4294967295u, 16u)], -1130f), Struct_1(vec4<f32>(1196f, 211f, 495f, 139f), 0u, 599f), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 0i, u_input.a.x, 94649i)), ~1u), func_4(Struct_3(vec2<f32>(-2123f, 331f), vec4<u32>(1u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(85445u, 14u)], 16u)], 1u, 1u), vec3<i32>(global0[_wgslsmith_index_u32(global4.x, 20u)], -2147483647i, global0[_wgslsmith_index_u32(global4.x, 20u)]), Struct_1(vec4<f32>(245f, -1126f, -635f, -736f), 1u, -830f)), func_5(Struct_4(Struct_3(vec2<f32>(-1455f, 482f), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], 18078u, 43904u, 38587u), u_input.a, Struct_1(vec4<f32>(1000f, -344f, 1041f, 1000f), 1u, 228f)), 1000f, Struct_3(vec2<f32>(929f, -252f), vec4<u32>(30823u, 1u, 3295u, 0u), vec3<i32>(u_input.a.x, 1i, 1i), Struct_1(vec4<f32>(1794f, -483f, -412f, 1541f), global4.x, 1408f)), Struct_2(Struct_1(vec4<f32>(-574f, -1000f, -1328f, 1549f), 52225u, 1697f), Struct_1(vec4<f32>(758f, 1000f, -1761f, -267f), 14894u, -542f), Struct_1(vec4<f32>(-1161f, -930f, 875f, 1000f), 4294967295u, 438f), Struct_1(vec4<f32>(-1000f, 130f, 785f, -795f), global2[_wgslsmith_index_u32(22341u, 14u)], -895f), vec4<i32>(-68451i, 1i, u_input.a.x, u_input.a.x)), 3329u), u_input.a).d, Struct_1(vec4<f32>(-691f, 1924f, 564f, -1208f), global4.x, -793f), Struct_5(u_input.a, vec3<f32>(-741f, -815f, -1000f), true, 37888i)).c).d, func_4(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1669f, 1108f) + vec2<f32>(1346f, 214f)), vec4<u32>(4294967295u, 51235u, 1u, 77869u), vec3<i32>(-1i, global0[_wgslsmith_index_u32(45444u, 20u)], u_input.a.x), Struct_1(vec4<f32>(-346f, 1459f, 982f, 529f), global2[_wgslsmith_index_u32(15634u, 14u)], 211f)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(207f, -377f, -1719f, 774f) - vec4<f32>(509f, -133f, 454f, 601f)), func_2(u_input.a.zx).x, _wgslsmith_f_op_f32(min(1405f, 937f))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(590f, 1618f, 1144f, -1105f) - vec4<f32>(-122f, -425f, 158f, -702f)), _wgslsmith_dot_vec2_u32(global4.zy, vec2<u32>(1u, global4.x)), -1308f), Struct_5(~vec3<i32>(-1i, u_input.a.x, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-545f, -1008f, 1412f) - vec3<f32>(669f, -2405f, -173f)), false, u_input.a.x)).d, Struct_1(func_1(Struct_1(vec4<f32>(159f, 710f, -679f, 810f), 61413u, -768f), _wgslsmith_f_op_f32(select(-481f, -1562f, false)), select(global4.zww, global4.zzz, vec3<bool>(false, true, true)), 2941i).d.a, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(176f)))), func_1(func_4(Struct_3(vec2<f32>(-302f, 114f), vec4<u32>(4294967295u, 1623u, global4.x, 12015u), vec3<i32>(global0[_wgslsmith_index_u32(2807u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a.x), Struct_1(vec4<f32>(-1431f, 1188f, 1124f, -1273f), global3[_wgslsmith_index_u32(2749u, 16u)], -102f)), func_5(Struct_4(Struct_3(vec2<f32>(1220f, -487f), vec4<u32>(global4.x, 0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77394u, 14u)], 16u)], 14u)], 16u)], global2[_wgslsmith_index_u32(80037u, 14u)]), u_input.a, Struct_1(vec4<f32>(-1347f, -1000f, 268f, 1448f), 35610u, 1000f)), -1510f, Struct_3(vec2<f32>(-1373f, 551f), vec4<u32>(1u, global4.x, 28080u, 76951u), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], -48873i, 2147483647i), Struct_1(vec4<f32>(1365f, -187f, 474f, 462f), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 16u)], -125f)), Struct_2(Struct_1(vec4<f32>(-943f, 949f, -165f, -751f), 1u, 1169f), Struct_1(vec4<f32>(1506f, -533f, -867f, 811f), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(155370u, 14u)], 16u)], -1000f), Struct_1(vec4<f32>(-2459f, 1072f, -693f, 1054f), global4.x, 1114f), Struct_1(vec4<f32>(494f, -241f, -491f, -1240f), global2[_wgslsmith_index_u32(100749u, 14u)], 1300f), vec4<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39730u, 14u)], 20u)], u_input.a.x, global0[_wgslsmith_index_u32(1u, 20u)], -44429i)), 13761u), vec3<i32>(u_input.a.x, 14566i, global0[_wgslsmith_index_u32(1u, 20u)])).d, Struct_1(vec4<f32>(187f, 962f, -508f, 1358f), 0u, -272f), Struct_5(u_input.a, vec3<f32>(1386f, -894f, -172f), false, u_input.a.x)).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(992f * 1000f)), vec3<u32>(1u, 1u, func_2(u_input.a.yz).x), -5667i).d, ~_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5119u, 16u)], 16u)], 14u)], 20u)], 1i, 1344i, 0i) << (vec4<u32>(0u, global3[_wgslsmith_index_u32(0u, 16u)], 27631u, global2[_wgslsmith_index_u32(1u, 14u)]) % vec4<u32>(32u)), -vec4<i32>(-3733i, 19419i, global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)]))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(0u, 16u)] >> (global4.x % 32u), ~countOneBits(1u)), 16u)]);
    global2 = array<u32, 14>();
    global2 = array<u32, 14>();
    global2 = array<u32, 14>();
    global4 = ~select(~vec4<u32>(func_4(var_0.c, var_0.c.d, var_0.a.d, Struct_5(var_0.a.c, var_0.d.b.a.zyz, true, u_input.a.x)).d.b, ~global2[_wgslsmith_index_u32(1u, 14u)], select(global3[_wgslsmith_index_u32(13384u, 16u)], global4.x, false), global2[_wgslsmith_index_u32(1u >> (global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 14u)] % 32u), 14u)]), ~vec4<u32>(1u, 66450u, func_5(Struct_4(var_0.c, 853f, Struct_3(vec2<f32>(462f, 808f), vec4<u32>(global4.x, global4.x, 0u, 11442u), vec3<i32>(1i, u_input.a.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.x, 14u)], 16u)], 14u)], 20u)]), Struct_1(var_0.d.a.a, global2[_wgslsmith_index_u32(var_0.c.b.x, 14u)], 2118f)), var_0.d, 104058u), u_input.a).d.b, global4.x >> (4294967295u % 32u)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true));
    var var_1 = _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(~var_0.a.b, ~var_0.a.b), reverseBits(select(vec4<u32>(1u, 29385u, 55435u, 0u), var_0.a.b, false))) | abs(var_0.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c.b);
}

