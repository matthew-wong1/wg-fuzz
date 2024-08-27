struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<u32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(0i, -5536i);

var<private> global1: array<bool, 14> = array<bool, 14>(false, false, false, false, true, true, false, false, false, false, false, true, true, true);

var<private> global2: f32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    global0 = abs(u_input.c.yy);
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) - -161f))), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(min(_wgslsmith_div_vec2_i32(u_input.c.xy, vec2<i32>(arg_1.x, arg_1.x)), _wgslsmith_mod_vec2_i32(arg_0.b.xx, arg_1)), vec2<i32>(11973i, ~arg_0.b.x)), firstLeadingBit(vec2<i32>(-1i) * -arg_1)), vec2<i32>(abs(u_input.c.x), ~1i));
    var var_2 = var_1.a;
    let var_3 = min(~u_input.c.x << (~_wgslsmith_add_u32(min(4294967295u, 13284u), 15286u) % 32u), 1i);
    return -_wgslsmith_clamp_i32(-countOneBits(-1i), _wgslsmith_clamp_i32(abs(-global0.x), -2147483647i, arg_1.x), _wgslsmith_mod_i32((14104i << (arg_2 % 32u)) ^ -17726i, var_3));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> vec4<i32> {
    global0 = vec2<i32>(abs(-33302i), -12067i);
    var var_0 = Struct_5(Struct_2(-1164f, !global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 14u)], ~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 45492u, u_input.b.x, 46001u), vec4<u32>(u_input.b.x, 18619u, 29408u, 0u))), vec3<i32>(~func_3(Struct_5(Struct_2(-858f, global1[_wgslsmith_index_u32(594u, 14u)], vec4<u32>(0u, u_input.b.x, 6903u, 4294967295u)), vec3<i32>(2147483647i, 2147483647i, u_input.c.x), vec3<u32>(22268u, u_input.a.x, 6665u), global1[_wgslsmith_index_u32(u_input.d, 14u)], Struct_2(-1463f, global1[_wgslsmith_index_u32(11701u, 14u)], vec4<u32>(44237u, 43036u, 70757u, u_input.b.x))), -u_input.c.zz, u_input.b.x), _wgslsmith_div_i32(6184i, _wgslsmith_sub_i32(min(u_input.c.x, arg_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-64416i, 31476i), u_input.c.yx))), _wgslsmith_dot_vec3_i32(arg_1.xxy, ~vec3<i32>(u_input.c.x, global0.x, -2147483647i))), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, 68620u, u_input.d << (4294967295u % 32u)), ~vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 1056u), 47334u, max(u_input.b.x, 0u))), global1[_wgslsmith_index_u32(u_input.d, 14u)], Struct_2(1f, all(vec3<bool>(true, true, true)), reverseBits(vec4<u32>(40220u, u_input.b.x, u_input.a.x, u_input.b.x) | ~vec4<u32>(u_input.b.x, 0u, 33235u, 4294967295u))));
    var var_1 = var_0.e;
    var_1 = var_0.e;
    let var_2 = ~(-countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, arg_0, u_input.c.x, 0i), arg_1 & arg_1)));
    return -vec4<i32>(arg_0, 33246i, firstTrailingBit(_wgslsmith_dot_vec4_i32(var_2, var_2)), -var_2.x);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = ~vec2<u32>(u_input.b.x, 36422u) >> (vec2<u32>(~abs(37635u << (0u % 32u)), ~_wgslsmith_sub_u32(~14995u, _wgslsmith_add_u32(arg_0, 0u))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_add_vec4_i32(~(-_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, -18303i, u_input.c.x), func_2(0i, vec4<i32>(-1i, u_input.c.x, 0i, -8290i)))), select(select(_wgslsmith_add_vec4_i32(-vec4<i32>(global0.x, global0.x, -10241i, arg_2), vec4<i32>(u_input.c.x, arg_2, -1i, global0.x)), firstLeadingBit(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, arg_2)) ^ vec4<i32>(-2147483647i, arg_2, u_input.c.x, arg_2), !global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x, 4294967295u), 14u)]), vec4<i32>(1685i, (-1i & global0.x) & abs(arg_2), arg_2, u_input.c.x), !select(true, true, global1[_wgslsmith_index_u32(4294967295u, 14u)])));
    var_0 = countOneBits(select(vec2<u32>(max(4294967295u, arg_3 | u_input.a.x), firstLeadingBit(~8740u)), vec2<u32>(4294967295u, 0u), !select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 14u)], false), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 14u)], global1[_wgslsmith_index_u32(83055u, 14u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 14u)], false), false), false)));
    var_0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_0, u_input.a.x), arg_1 >> (_wgslsmith_mult_u32(var_0.x, 35753u) % 32u)), _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 4294967295u, arg_0), vec3<u32>(1u, 90634u, 27764u)), reverseBits(arg_0))));
    var var_2 = ~vec3<i32>(1i, i32(-1i) * -reverseBits(33635i), arg_2);
    return Struct_1(-114f, ~abs(~(-var_2.xz)), vec2<i32>(~arg_2 >> (~(~1u) % 32u), func_3(Struct_5(Struct_2(407f, global1[_wgslsmith_index_u32(arg_3, 14u)], vec4<u32>(2176u, 35750u, 33721u, 63699u)), _wgslsmith_sub_vec3_i32(vec3<i32>(-18080i, var_1.x, u_input.c.x), u_input.c), firstTrailingBit(vec3<u32>(10422u, arg_0, arg_3)), false | global1[_wgslsmith_index_u32(var_0.x, 14u)], Struct_2(-1878f, global1[_wgslsmith_index_u32(46913u, 14u)], vec4<u32>(13043u, arg_0, u_input.a.x, u_input.a.x))), var_2.yx, arg_3)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1778f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 599f, global1[_wgslsmith_index_u32(4294967295u, 14u)]))))), arg_2.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a))));
    var var_1 = Struct_3(func_1(abs(u_input.a.x), 41664u, -func_1(1u, 1u, 2147483647i, u_input.d ^ u_input.d).c.x, _wgslsmith_mult_u32(u_input.b.x, 1u)), !select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 14u)] | true, true, any(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.d, 14u)]))), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], true, global1[_wgslsmith_index_u32(58525u, 14u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 14u)], global1[_wgslsmith_index_u32(u_input.d, 14u)], global1[_wgslsmith_index_u32(14073u, 14u)]), global1[_wgslsmith_index_u32(u_input.b.x >> (1u % 32u), 14u)]), !select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]), vec3<bool>(global1[_wgslsmith_index_u32(10083u, 14u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 14u)], global1[_wgslsmith_index_u32(u_input.b.x, 14u)], false))));
    return vec2<i32>(~(-40966i), func_2(0i, -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, global0.x, 1i, global0.x) | vec4<i32>(-1i, arg_1, 2147483647i, u_input.c.x), max(vec4<i32>(-5703i, -42012i, 1i, -2147483647i), vec4<i32>(arg_1, arg_2.c.x, 5054i, u_input.c.x)))).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1757f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -683f), 1517f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1721f + 576f), _wgslsmith_div_f32(516f, -634f)))))));
    var_0 = _wgslsmith_f_op_f32(abs(-1000f));
    global1 = array<bool, 14>();
    global0 = func_4(0i, -_wgslsmith_mod_i32(global0.x | global0.x, u_input.c.x) << (28965u % 32u), func_1(~u_input.a.x, u_input.a.x, ~min(u_input.c.x, reverseBits(2147483647i)), u_input.a.x));
    var var_1 = Struct_3(func_1(_wgslsmith_clamp_u32(u_input.b.x, min(select(u_input.b.x, 0u, global1[_wgslsmith_index_u32(u_input.d, 14u)]), 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 17254u), vec4<u32>(4294967295u, 1u, 76012u, 63717u)) >> ((u_input.d & u_input.a.x) % 32u)), 23348u, u_input.c.x, u_input.a.x), select(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 14u)], true, true), !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 14u)], true, true)), abs(u_input.b.x) != u_input.b.x), select(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), !select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 14u)], true, false), vec3<bool>(false, true, false), true), true), !(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 14u)], false)))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1491f, _wgslsmith_f_op_f32(f32(-1f) * -327f))) - 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(97909u, 22352i, 6505u, select(select(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, u_input.c.x, var_1.a.c.x, 26008i)), ~vec4<i32>(1i, 1i, var_1.a.b.x, 27870i)), -global0.x, any(var_1.b.zy)), 17401i, all(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 14u)], false, true)))), _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 108458u, u_input.a.x, u_input.d), countOneBits(vec4<u32>(u_input.a.x, 68525u, 1u, u_input.d))), ~(~(vec4<u32>(u_input.d, 4294967295u, u_input.b.x, 31624u) >> (vec4<u32>(u_input.b.x, u_input.a.x, 0u, 9817u) % vec4<u32>(32u))))));
}

