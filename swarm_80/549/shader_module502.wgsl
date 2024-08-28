struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
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

var<private> global0: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(8159u, 0u, 1u, 4294967295u));

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(0i, Struct_1(false, vec4<f32>(-837f, 368f, 1071f, 2705f), vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, -36527i)), Struct_1(true, vec4<f32>(557f, 459f, -1000f, 145f), vec4<i32>(i32(-2147483648), 76793i, 55492i, -21075i)), vec4<u32>(1u, 46675u, 1u, 17045u)), Struct_2(2147483647i, Struct_1(false, vec4<f32>(-688f, -621f, 2130f, 294f), vec4<i32>(2829i, -1i, i32(-2147483648), 39236i)), Struct_1(false, vec4<f32>(1625f, -1000f, -420f, 402f), vec4<i32>(8239i, 0i, 0i, 22010i)), vec4<u32>(4294967295u, 35980u, 19262u, 4294967295u)), Struct_2(-1i, Struct_1(true, vec4<f32>(-1296f, -445f, -580f, 284f), vec4<i32>(45731i, 12235i, -3255i, 19387i)), Struct_1(false, vec4<f32>(568f, 2159f, -806f, 1569f), vec4<i32>(0i, 2147483647i, 0i, 41108i)), vec4<u32>(0u, 4294967295u, 21632u, 22498u)), Struct_2(-1i, Struct_1(false, vec4<f32>(1000f, 497f, 745f, 733f), vec4<i32>(2147483647i, 0i, -14305i, 0i)), Struct_1(true, vec4<f32>(-1105f, 1447f, -281f, 1000f), vec4<i32>(-6110i, 1i, i32(-2147483648), 0i)), vec4<u32>(0u, 0u, 16479u, 44064u)), Struct_2(-1i, Struct_1(true, vec4<f32>(-939f, -477f, 368f, 1086f), vec4<i32>(-23579i, i32(-2147483648), 29487i, 0i)), Struct_1(false, vec4<f32>(-516f, -953f, 771f, -1461f), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -1i)), vec4<u32>(24330u, 0u, 50367u, 0u)), Struct_2(-24047i, Struct_1(true, vec4<f32>(-497f, -856f, -1329f, 808f), vec4<i32>(i32(-2147483648), 35636i, -1i, 23763i)), Struct_1(false, vec4<f32>(-919f, -1674f, -1030f, 1065f), vec4<i32>(73609i, 62820i, 53782i, 0i)), vec4<u32>(1u, 0u, 60607u, 0u)));

var<private> global3: array<bool, 9>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    let var_0 = Struct_2(0i, Struct_1(!(!global3[_wgslsmith_index_u32(79955u, 9u)]), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1099f))), -1187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(512f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * 670f), _wgslsmith_f_op_f32(660f - 762f), all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 9u)], false, global3[_wgslsmith_index_u32(4294967295u, 9u)], false))))), _wgslsmith_sub_vec4_i32(u_input.b, ~u_input.b & u_input.b)), Struct_1(true, vec4<f32>(_wgslsmith_f_op_f32(1340f + -346f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-153f * 1000f) - -643f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -204f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-899f * -1286f)))), vec4<i32>(global1.x, _wgslsmith_sub_i32(abs(-2147483647i), max(-9172i, 1i)), u_input.b.x << (6101u % 32u), -u_input.d.x | global1.x)), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(1u, 71827u, 1u, 0u)), countOneBits(vec4<u32>(0u, 1u, 58049u, 1u))), 1u, ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 16015u), vec2<u32>(0u, 1u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.c.b, vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), var_0.b.b.x, _wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(var_0.c.b.x - var_0.b.b.x))))) - _wgslsmith_f_op_vec4_f32(var_0.c.b + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1986f + var_0.b.b.x), var_0.b.b.x, false)), _wgslsmith_f_op_f32(-1556f + _wgslsmith_f_op_f32(-var_0.b.b.x)), -164f, _wgslsmith_f_op_f32(select(var_0.b.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.b.x)), true)))));
    let var_2 = Struct_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(floor(var_0.b.b)), vec4<i32>(0i, -1i, max(u_input.a, -global1.x), var_0.a));
    global1 = -vec3<i32>(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global1.x, -24792i, 5087i), vec4<i32>(1i, global1.x, u_input.c, var_0.b.c.x)), vec4<i32>(-1i, -1i, u_input.d.x, 9199i)), var_0.c.c.x), 1i);
    var_1 = var_0.c.b;
    return _wgslsmith_f_op_vec4_f32(-var_0.b.b);
}

fn func_2() -> Struct_3 {
    global3 = array<bool, 9>();
    var var_0 = Struct_4(Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(1u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 4294967295u, 40997u)), vec3<u32>(1823u, 4294967295u, 0u))), 9u)], _wgslsmith_f_op_vec4_f32(func_3(true)), -countOneBits(select(u_input.b, vec4<i32>(u_input.b.x, u_input.d.x, -18579i, global1.x), false))), Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(~4294967295u, 4294967295u, ~4294967295u)), 6u)], Struct_1(false, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 785f, -361f, 861f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2869f, -475f, 1185f, 1470f) - vec4<f32>(242f, -2147f, 204f, -215f)))), -(vec4<i32>(global1.x, global1.x, global1.x, -58445i) >> (vec4<u32>(36542u, 35671u, 4294967295u, 4294967295u) % vec4<u32>(32u)))), select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(9729u, 9u)], global3[_wgslsmith_index_u32(73589u, 9u)], true), vec3<bool>(global3[_wgslsmith_index_u32(53196u, 9u)], global3[_wgslsmith_index_u32(19363u, 9u)], false), true), vec3<bool>(global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(20137u, 9u)], false), true), vec3<bool>(any(vec3<bool>(true, true, true)), global3[_wgslsmith_index_u32(49532u, 9u)] || true, true), all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(15271u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(58388u, 9u)]))), vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-2147483647i, u_input.a)), -global1.xx)), 20158u);
    var var_1 = !vec3<bool>(var_0.a.b.x < -645f, true, (4294967295u << (_wgslsmith_dot_vec2_u32(var_0.b.a.d.zw, vec2<u32>(var_0.b.a.d.x, 4294967295u)) % 32u)) != (~var_0.b.a.d.x | 28766u));
    global2 = array<Struct_2, 6>();
    global0 = array<vec4<u32>, 2>();
    return var_0.b;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> vec4<bool> {
    var var_0 = select(arg_0.c.xz, !select(vec2<bool>(all(vec2<bool>(arg_0.b.a, true)), func_2().a.b.a), select(arg_0.c.xy, arg_0.c.yz, select(arg_0.c.zz, arg_0.c.zy, global3[_wgslsmith_index_u32(14418u, 9u)])), true), select(select(!(!vec2<bool>(arg_1, true)), vec2<bool>(true, all(vec2<bool>(false, false))), all(arg_0.c)), arg_0.c.xy, vec2<bool>(arg_1, all(vec2<bool>(true, global3[_wgslsmith_index_u32(arg_0.d.x, 9u)])))));
    let var_1 = firstLeadingBit(firstTrailingBit(u_input.b)) >> (vec4<u32>(_wgslsmith_div_u32(countOneBits(arg_0.a.d.x & arg_0.a.d.x), 105357u), func_2().d.x, arg_0.a.d.x, 4294967295u) % vec4<u32>(32u));
    global0 = array<vec4<u32>, 2>();
    global2 = array<Struct_2, 6>();
    let var_2 = func_2().a;
    return vec4<bool>(var_2.c.a, -2147483647i != ~(~global1.x), var_2.c.a, var_0.x);
}

fn func_1() -> vec2<u32> {
    let var_0 = i32(-1i) * -_wgslsmith_div_i32(-44361i, ~u_input.a);
    global1 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(abs(_wgslsmith_div_vec3_i32(~u_input.b.zyy, vec3<i32>(var_0, u_input.c, var_0))), u_input.d), u_input.b.xww & u_input.b.www);
    var var_1 = select(vec4<bool>(true, (_wgslsmith_add_i32(-33645i, global1.x) << (0u % 32u)) > -2147483647i, select(!(global1.x <= -43884i), true, any(!vec4<bool>(global3[_wgslsmith_index_u32(16002u, 9u)], false, global3[_wgslsmith_index_u32(3281u, 9u)], global3[_wgslsmith_index_u32(19881u, 9u)]))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(66771u, 0u, 4294967295u, 50580u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(45726u, 8323u), vec2<u32>(1u, 24899u)), 4753u, ~4294967295u, countOneBits(14549u))), 9u)]), select(vec4<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(68071u, 9u)], true, true)), !global3[_wgslsmith_index_u32(4294967295u, 9u)], true, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(15366u, abs(0u)), 9u)]), !(!vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 9u)], true, false)), !select(select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(45271u, 9u)]), vec4<bool>(global3[_wgslsmith_index_u32(62428u, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)], true, global3[_wgslsmith_index_u32(49189u, 9u)]), global3[_wgslsmith_index_u32(68227u, 9u)]), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(3638u, 9u)]), vec4<bool>(global3[_wgslsmith_index_u32(1u, 9u)], true, global3[_wgslsmith_index_u32(4294967295u, 9u)], false)), true)), select(!func_4(func_2(), func_2().b.a), vec4<bool>(true, func_4(Struct_3(Struct_2(-30794i, Struct_1(global3[_wgslsmith_index_u32(25515u, 9u)], vec4<f32>(781f, -416f, -1006f, -466f), u_input.b), Struct_1(global3[_wgslsmith_index_u32(41600u, 9u)], vec4<f32>(188f, -781f, 992f, -288f), u_input.b), vec4<u32>(40814u, 4294967295u, 0u, 4294967295u)), Struct_1(global3[_wgslsmith_index_u32(1u, 9u)], vec4<f32>(-272f, 1361f, 286f, -1000f), vec4<i32>(var_0, var_0, -5056i, u_input.d.x)), vec3<bool>(global3[_wgslsmith_index_u32(50559u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], false), vec2<u32>(14308u, 2770u), u_input.b.yw), global3[_wgslsmith_index_u32(0u, 9u)] || global3[_wgslsmith_index_u32(0u, 9u)]).x, true, all(select(vec3<bool>(true, global3[_wgslsmith_index_u32(101045u, 9u)], true), vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 9u)], global3[_wgslsmith_index_u32(25145u, 9u)]), global3[_wgslsmith_index_u32(4294967295u, 9u)]))), vec4<bool>(global3[_wgslsmith_index_u32(4353u, 9u)], (global3[_wgslsmith_index_u32(67039u, 9u)] & false) == true, true, select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4011u, 4294967295u, 4294967295u), vec3<u32>(44623u, 1u, 0u)), 9u)], false, all(vec2<bool>(global3[_wgslsmith_index_u32(67183u, 9u)], global3[_wgslsmith_index_u32(0u, 9u)]))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(807f)))), _wgslsmith_f_op_f32(f32(-1f) * -955f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(180f)))) - _wgslsmith_f_op_vec4_f32(func_3(false)).zzz);
    var var_3 = u_input.b.xyw;
    return vec2<u32>(min(max(~1u, _wgslsmith_add_u32(func_2().a.d.x, 1u)), abs(firstLeadingBit(~4255u))), _wgslsmith_mult_u32(~(~31050u), 0u >> (_wgslsmith_div_u32(1u, 4294967295u) % 32u)));
}

fn func_5(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(arg_0.c.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1318f * -224f), -2022f))));
    var var_1 = vec3<u32>(~(4294967295u >> (arg_0.d.x % 32u)), arg_0.d.x, ~120991u);
    var_1 = abs(func_2().a.d.zzx | reverseBits(~abs(vec3<u32>(var_1.x, 3140u, 0u))));
    var var_2 = Struct_2(~(-firstLeadingBit(global1.x & arg_0.b.c.x)), arg_0.c, arg_0.b, vec4<u32>(4294967295u, 5490u, ~_wgslsmith_add_u32(arg_0.d.x, 65012u), abs(_wgslsmith_mod_u32(~1u, 38367u))));
    var var_3 = Struct_4(arg_0.c, Struct_3(func_2().a, Struct_1(global3[_wgslsmith_index_u32(firstTrailingBit(reverseBits(var_1.x)), 9u)], vec4<f32>(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1138f), 2426f, _wgslsmith_f_op_f32(step(var_0, var_0))), vec4<i32>(_wgslsmith_clamp_i32(arg_0.a, 26763i, 0i), arg_0.b.c.x, -82998i, firstLeadingBit(u_input.c))), !func_2().c, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.d.x >> (6021u % 32u), ~1u), firstLeadingBit(vec2<u32>(1u, 0u)), ~(vec2<u32>(var_2.d.x, arg_0.d.x) >> (var_2.d.ww % vec2<u32>(32u)))), u_input.b.yw), var_1.x);
    return vec3<i32>(global1.x, -2147483647i, var_3.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, firstLeadingBit(1i), 48352i), func_5(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_1(), vec2<u32>(~68317u, ~1u)), 6u)]));
    let var_1 = Struct_4(Struct_1(global3[_wgslsmith_index_u32(firstLeadingBit(~12208u), 9u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), ~vec4<i32>(-2147483647i, -u_input.c, global1.x, global1.x)), func_2(), 1u);
    var var_2 = u_input.b;
    var var_3 = Struct_2(var_1.b.e.x, Struct_1(!(var_1.b.b.b.x > func_2().a.c.b.x), vec4<f32>(2149f, -583f, _wgslsmith_div_f32(var_1.a.b.x, var_1.a.b.x), _wgslsmith_f_op_f32(-1228f * _wgslsmith_f_op_f32(-var_1.a.b.x))), vec4<i32>(~_wgslsmith_mult_i32(global1.x, -1i), global1.x, 18106i, func_2().a.b.c.x)), var_1.b.a.b, global0[_wgslsmith_index_u32(0u, 2u)]);
    let var_4 = func_2().a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_2.x, ~global1.x));
}

