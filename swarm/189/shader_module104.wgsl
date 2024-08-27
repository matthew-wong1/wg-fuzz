struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(-29024i, 16352i, 2147483647i, -1i, 56076i);

var<private> global1: array<f32, 23> = array<f32, 23>(-868f, -186f, 336f, 1176f, 1191f, 1828f, 126f, -383f, -1535f, -339f, -178f, 504f, -218f, 201f, -245f, 134f, -318f, 732f, 420f, 1796f, -1743f, 904f, -924f);

var<private> global2: array<bool, 26> = array<bool, 26>(false, true, true, false, true, false, true, false, true, false, false, true, true, true, true, false, true, true, false, true, false, true, true, false, true, true);

var<private> global3: array<f32, 15>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec3<f32>, arg_3: i32) -> bool {
    global0 = array<i32, 5>();
    return all(vec3<bool>(!(!arg_1), !(global0[_wgslsmith_index_u32(0u, 5u)] != u_input.c.x), true)) & !global2[_wgslsmith_index_u32(26652u << (~arg_0 % 32u), 26u)];
}

fn func_2() -> bool {
    var var_0 = Struct_3(select(!vec3<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)])), global2[_wgslsmith_index_u32(abs(u_input.b), 26u)], -2147483647i == global0[_wgslsmith_index_u32(29260u, 5u)]), !select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b, 26u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 26u)], true, global2[_wgslsmith_index_u32(90292u, 26u)]), vec3<bool>(true, false, false), global2[_wgslsmith_index_u32(u_input.b, 26u)]), true), select(vec3<bool>(true, func_3(u_input.a, false, vec3<f32>(-1578f, -254f, 223f), global0[_wgslsmith_index_u32(9121u, 5u)]), global2[_wgslsmith_index_u32(u_input.b, 26u)]), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 0u), 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)] & true, true), any(vec3<bool>(global2[_wgslsmith_index_u32(58924u, 26u)], global2[_wgslsmith_index_u32(54763u, 26u)], true)))), global2[_wgslsmith_index_u32((_wgslsmith_mult_u32(~u_input.b, _wgslsmith_sub_u32(u_input.a, u_input.a)) << (u_input.b % 32u)) << (0u % 32u), 26u)], vec2<u32>(firstTrailingBit(u_input.a), _wgslsmith_mult_u32(u_input.a, u_input.a) << (_wgslsmith_sub_u32(1u, 1u) % 32u)));
    global2 = array<bool, 26>();
    global2 = array<bool, 26>();
    let var_1 = Struct_5(vec3<bool>(any(var_0.a) && false, var_0.b, var_0.a.x), Struct_4(~(~vec3<u32>(var_0.c.x, var_0.c.x, 0u) ^ ~vec3<u32>(var_0.c.x, 0u, 2876u)), 26331u, Struct_1(~14439u, _wgslsmith_mult_i32(u_input.c.x, firstLeadingBit(1i)), abs(4294967295u), var_0.a.x, countOneBits(vec2<i32>(-70526i, 1i)))));
    let var_2 = var_1.a.x && (true || global2[_wgslsmith_index_u32(1u, 26u)]);
    return true;
}

fn func_1() -> bool {
    global1 = array<f32, 23>();
    global0 = array<i32, 5>();
    global1 = array<f32, 23>();
    global0 = array<i32, 5>();
    let var_0 = _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(62180u, 15u)] * _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(~u_input.a, select(u_input.a, u_input.a, global2[_wgslsmith_index_u32(u_input.b, 26u)])), 15u)], global3[_wgslsmith_index_u32(u_input.a, 15u)])));
    return all(!(!vec2<bool>(global2[_wgslsmith_index_u32(0u, 26u)], true))) != all(!vec2<bool>(any(vec3<bool>(global2[_wgslsmith_index_u32(91529u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)], false)), func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = -(~(-_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 5u)], -51977i, u_input.c.x, global0[_wgslsmith_index_u32(17593u, 5u)]), vec4<i32>(-13817i, global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)], u_input.c.x))) << (vec4<u32>(u_input.b, select(_wgslsmith_sub_u32(u_input.b, u_input.a), u_input.b, false), select(~4294967295u, min(4294967295u, 0u), false), ~(~1u)) % vec4<u32>(32u)));
    let var_2 = select(select(vec4<i32>(firstTrailingBit(abs(-2147483647i)), u_input.c.x, ~(~(-1i)), ~_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-2147483647i, 0i, var_1.x))), -select(vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.b, 5u)], 13541i, 12664i) & vec4<i32>(var_1.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, -48989i, global0[_wgslsmith_index_u32(4294967295u, 5u)], var_1.x) ^ vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(0u, 5u)], u_input.c.x, 41371i), global2[_wgslsmith_index_u32(u_input.b, 26u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(131360u, 83567u, 13710u, 0u), vec4<u32>(28199u, u_input.a, u_input.a, u_input.a)), 26u)], any(!vec2<bool>(true, global2[_wgslsmith_index_u32(2578u, 26u)])), !(-33725i < u_input.c.x))), _wgslsmith_div_vec4_i32(max(min(vec4<i32>(-12977i, u_input.c.x, 22359i, var_1.x), vec4<i32>(2147483647i, 1i, var_1.x, -12021i)) ^ -vec4<i32>(u_input.c.x, 36127i, u_input.c.x, -2147483647i), -(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 5u)], 0i, var_1.x, var_1.x) | vec4<i32>(-30415i, var_1.x, 1i, 28566i))), ~_wgslsmith_div_vec4_i32(vec4<i32>(31183i, 2147483647i, -90822i, u_input.c.x), vec4<i32>(1i, -54373i, var_1.x, var_1.x) & vec4<i32>(11661i, -408i, u_input.c.x, 0i))), true);
    global3 = array<f32, 15>();
    var_0 = any(select(!select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 26u)]), vec2<bool>(true, true), var_1.x < -55889i), !select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(10026u, 26u)]))), _wgslsmith_f_op_f32(-392f + global3[_wgslsmith_index_u32(92801u >> (u_input.b % 32u), 15u)]) <= 1173f));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 23u)], -355f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 23u)], -367f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), -800f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(73227u, 15u)])))))));
    let var_4 = ~(~75668u);
    global0 = array<i32, 5>();
    global1 = array<f32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.a & (0u >> (var_4 % 32u)), 60567u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(11170u, u_input.b, var_4, 0u), vec4<u32>(var_4, 13216u, var_4, var_4), vec4<u32>(0u, var_4, u_input.b, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(18820u, u_input.b, u_input.a, u_input.a), vec4<u32>(31181u, 58658u, var_4, 1u))), _wgslsmith_clamp_u32(~1u, 4294967295u, ~1u)), 583f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(4294967295u, 15u)])))), _wgslsmith_f_op_f32(f32(-1f) * -735f)) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-215f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_4, 23u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, -182f) * vec2<f32>(-801f, var_3.x)) + _wgslsmith_f_op_vec2_f32(max(var_3.zz, var_3.zy))))), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(var_2 ^ var_2, var_2), ~vec4<i32>(0i, 3800i, u_input.c.x, var_2.x)), _wgslsmith_clamp_i32(-min(u_input.c.x, 16241i), select(-4116i, -5990i << (1u % 32u), global2[_wgslsmith_index_u32(var_4, 26u)]), u_input.c.x << (~u_input.a % 32u))));
}

