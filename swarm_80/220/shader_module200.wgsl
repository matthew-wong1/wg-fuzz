struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: array<u32, 7>;

var<private> global1: array<Struct_5, 20>;

var<private> global2: array<f32, 28> = array<f32, 28>(801f, -146f, 1743f, -160f, -1461f, -568f, 314f, -1582f, 610f, -110f, 611f, -183f, -553f, -889f, 1000f, -1069f, 568f, 699f, 220f, -2236f, -320f, -1000f, 461f, -1000f, -867f, 967f, 1356f, -914f);

var<private> global3: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1090f, -1912f, -1567f), vec3<f32>(-931f, 1000f, 196f), vec3<f32>(1300f, 1515f, -1744f), vec3<f32>(-250f, 691f, 521f), vec3<f32>(-1839f, 197f, -1143f), vec3<f32>(-1277f, -1592f, -527f), vec3<f32>(1147f, 1115f, -820f), vec3<f32>(-1038f, -2223f, 1477f));

var<private> global4: vec3<i32> = vec3<i32>(11200i, 2147483647i, 1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = reverseBits(vec3<u32>(_wgslsmith_mult_u32(44494u, ~global0[_wgslsmith_index_u32(~0u, 7u)]), 30321u, _wgslsmith_sub_u32(4294967295u, u_input.a)));
    var var_1 = u_input.b.x;
    global4 = vec3<i32>(-1i, _wgslsmith_mult_i32(global4.x, -(1i | arg_0)), 51487i);
    let var_2 = global1[_wgslsmith_index_u32(u_input.a, 20u)];
    var var_3 = vec2<u32>(var_0.x, ~4194u);
    return select(true, false & (_wgslsmith_f_op_f32(max(-827f, _wgslsmith_div_f32(1000f, -1621f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 28u)] + 543f) - 1f)), true);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: f32, arg_3: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.x, 28u)] + 1256f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_1.x, 28u)] + -1888f)), 556f, 1000f, -617f) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_2) * _wgslsmith_f_op_f32(round(869f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1204f, global2[_wgslsmith_index_u32(u_input.a, 28u)]) + 361f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(2829u, 7u)], 28u)]))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(406f, 2237f, -1373f, -133f) * vec4<f32>(-415f, arg_2, -948f, global2[_wgslsmith_index_u32(u_input.a, 28u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_3, 28u)]), _wgslsmith_f_op_f32(f32(-1f) * -866f), _wgslsmith_f_op_f32(-1000f * arg_2)) + vec4<f32>(-266f, _wgslsmith_f_op_f32(-2186f * 347f), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(84587u, 1u), 28u)], _wgslsmith_f_op_f32(f32(-1f) * -489f))))));
    var var_1 = select(select(!select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, false), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true))), vec2<bool>(true, all(select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), vec2<bool>(false, false)))), !vec2<bool>(false & arg_0, any(vec2<bool>(true, false)))), vec2<bool>(true, any(!(!vec2<bool>(true, arg_0)))), !arg_0);
    return !vec2<bool>(false, arg_0);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_0.yz;
    var var_1 = Struct_2(abs(vec4<i32>(u_input.b.x, ~(-65393i), _wgslsmith_dot_vec4_i32(u_input.b, select(u_input.b, arg_2.a, true)), -1523i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_2.b), vec4<f32>(arg_2.b.x, global2[_wgslsmith_index_u32(1u, 28u)], -843f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 28u)])))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 28u)] - -547f), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(36493u, u_input.a), 28u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, -1045f, -1187f, arg_2.d) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 28u)], arg_2.b.x, -1000f, 1099f) + vec4<f32>(-934f, -217f, global2[_wgslsmith_index_u32(0u, 28u)], 1474f))), (global2[_wgslsmith_index_u32(0u, 28u)] >= global2[_wgslsmith_index_u32(80957u, 28u)]) && !arg_2.c.x)))), arg_0, _wgslsmith_f_op_f32(round(-107f)), arg_2.e);
    var var_2 = countOneBits(58510u);
    let var_3 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(19745u, 4294967295u, u_input.a, 0u), ~vec4<u32>(42238u, 0u, 36445u, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 7u)], 1u, 1u, u_input.a), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 7u)], global0[_wgslsmith_index_u32(1u, 7u)]))) << (_wgslsmith_clamp_u32(0u, ~(~u_input.a), global0[_wgslsmith_index_u32(8516u, 7u)]) % 32u), 7u)]);
    let var_4 = !arg_0.zx;
    return Struct_1(true, select(2147483647i, u_input.b.x, true), var_1.a);
}

fn func_1(arg_0: vec3<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(arg_0.x, 7u)] | ~arg_0.x, 7u)], 8u)]) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(select(18371u, ~1u, false), 8u)]))));
    let var_1 = func_4(select(vec3<bool>(func_2(1i) | (global4.x <= u_input.b.x), false, all(func_3(true, arg_0.yy, var_0.x, 1u))), !vec3<bool>(all(vec2<bool>(true, false)), false, true), !vec3<bool>(true, select(false, false, true), true)), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), Struct_2(vec4<i32>(u_input.b.x ^ 28585i, -_wgslsmith_sub_i32(-18537i, u_input.b.x), 31062i, -2147483647i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-990f, var_0.x, 2266f, 724f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, -378f, var_0.x, 168f))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)] >= 1107u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 28u)], var_0.x, -574f, var_0.x), vec4<f32>(1164f, -1482f, -755f, -204f), vec4<bool>(true, true, true, true)))), vec3<bool>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 28u)]) < 413f, max(u_input.b.x, 2147483647i) > ~u_input.b.x, u_input.a == (global0[_wgslsmith_index_u32(arg_0.x, 7u)] >> (u_input.a % 32u))), 243f, -1i >> (arg_0.x % 32u)));
    global1 = array<Struct_5, 20>();
    var var_2 = !vec4<bool>(true, any(select(vec4<bool>(var_1.a, var_1.a, var_1.a, true), vec4<bool>(false, false, true, var_1.a), var_1.a)), _wgslsmith_f_op_f32(368f - global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 4294967295u), 28u)]) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 7u)], 28u)] + -2023f) * -401f), var_1.a);
    var var_3 = var_2.x;
    return Struct_4(Struct_2(u_input.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], -1000f, 1262f, var_0.x), vec4<f32>(global2[_wgslsmith_index_u32(11594u, 28u)], global2[_wgslsmith_index_u32(12636u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)], -1796f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(959f, var_0.x, 1007f, var_0.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(1u, 28u)], 1000f, 1446f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 28u)]), vec4<f32>(161f, var_0.x, 1000f, 1579f), vec4<bool>(true, true, false, true))))), vec3<bool>(var_2.x, !(!var_1.a), true), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~firstLeadingBit(38094u), 7u)], 28u)]), firstLeadingBit(abs(var_1.b) & 1i)), Struct_2(vec4<i32>(var_1.b, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-13322i, 0i)), _wgslsmith_sub_vec2_i32(var_1.c.xw, u_input.b.zy)), u_input.b.x, 0i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-269f, global2[_wgslsmith_index_u32(67538u, 28u)], 257f, global2[_wgslsmith_index_u32(68141u, 28u)]))))), var_2.xxx, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(213f, -340f, true)))), -4067i), func_4(select(vec3<bool>(false, var_1.a, all(var_2.xxw)), var_2.zxw, var_1.a), var_2.xyz, Struct_2(vec4<i32>(_wgslsmith_mult_i32(0i, global4.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.x, u_input.b.x, 0i), vec3<i32>(u_input.b.x, 1i, 2147483647i)), global4.x, var_1.b | -1i), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(811f, var_0.x, global2[_wgslsmith_index_u32(31804u, 28u)], var_0.x))))), var_2.xxw, _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(var_0.x, -1096f)), 1i ^ global4.x)), vec3<bool>(func_3(all(!vec4<bool>(false, var_2.x, false, var_2.x)), arg_0.xy, _wgslsmith_f_op_f32(-var_0.x), ~4294967295u >> (firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)]) % 32u)).x, func_3(false, select(arg_0.xy, countOneBits(vec2<u32>(4294967295u, u_input.a)), select(vec2<bool>(true, var_1.a), vec2<bool>(var_2.x, true), var_2.zy)), var_0.x, u_input.a).x, true));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(arg_1.x >> (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), arg_1)) % 32u), 20u)];
    var_0 = Struct_5(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(countOneBits(4294967295u)), 7u)], 7u)] | (14355u << ((~arg_1.x ^ _wgslsmith_clamp_u32(var_0.a, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(13334u, 7u)])) % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a.b - func_1(~vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)])).a.b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0.b.b - vec4<f32>(global2[_wgslsmith_index_u32(arg_1.x, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(3720u, 28u)], -525f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 7u)], 28u)], -898f, arg_0.a.b.x, -220f))))) * vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1115u, u_input.a), 28u)] - global2[_wgslsmith_index_u32(~u_input.a, 28u)]))), -1471f, 549f));
    var_1 = arg_0.b.b;
    let var_2 = !vec4<bool>(abs(arg_0.b.e) > ~(-9487i), !(!arg_0.b.c.x) || true, -11463i == -(global4.x & -66660i), !arg_0.d.x);
    return Struct_2(vec4<i32>(-1i) * -u_input.b, arg_0.a.b, !(!(!select(arg_0.d, vec3<bool>(var_2.x, true, true), arg_0.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.d + arg_0.a.d) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.b.x)), var_1.x)) * _wgslsmith_f_op_f32(trunc(-746f))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.a, 46092u, 3421u, u_input.a)), min(vec4<u32>(17199u, 4294967295u, 18913u, 30683u), vec4<u32>(global0[_wgslsmith_index_u32(466u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(53752u, 7u)]))), ~vec4<u32>(u_input.a, 30790u, global0[_wgslsmith_index_u32(1u, 7u)], 47484u)) | ~(~countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(82340u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)]))), -1000f, func_5(func_1(abs(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 155886u, 4294967295u))), reverseBits(~vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(50833u, 7u)]))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -694f)) + _wgslsmith_f_op_f32(round(func_1(vec3<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 8001u, u_input.a)).b.b.x))))));
    global3 = array<vec3<f32>, 8>();
    global3 = array<vec3<f32>, 8>();
    global1 = array<Struct_5, 20>();
    let var_1 = Struct_3(vec4<u32>(44935u, 4294967295u, u_input.a, 1u), _wgslsmith_f_op_f32(step(-315f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(211f * var_0.b))))), func_1(var_0.a.wyx).a, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~abs(1u) << (reverseBits(max(var_0.a.x, u_input.a)) % 32u), 28u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_u32(~var_0.a ^ ~var_0.a, var_1.a));
}

