struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(vec2<f32>(459f, -528f), vec4<i32>(-13064i, -31689i, 1i, 1i), false, vec4<i32>(0i, -33445i, -1i, 1i), 12506u), vec2<u32>(0u, 26341u), vec2<bool>(true, false)), Struct_3(Struct_1(vec2<f32>(786f, 905f), vec4<i32>(1i, 1i, 24366i, 1i), false, vec4<i32>(1i, i32(-2147483648), -27751i, 0i), 0u), vec2<u32>(39437u, 19960u), vec2<bool>(true, true)), Struct_3(Struct_1(vec2<f32>(-827f, 1320f), vec4<i32>(0i, -13720i, 9478i, 2147483647i), false, vec4<i32>(0i, 6541i, -61222i, -11130i), 1u), vec2<u32>(4294967295u, 97918u), vec2<bool>(true, true)), Struct_3(Struct_1(vec2<f32>(-1531f, 1794f), vec4<i32>(i32(-2147483648), 0i, 2147483647i, -2856i), true, vec4<i32>(2147483647i, -1i, 0i, 0i), 0u), vec2<u32>(48538u, 1u), vec2<bool>(true, true)), Struct_3(Struct_1(vec2<f32>(-592f, -2414f), vec4<i32>(-45777i, 5367i, -25222i, 68574i), false, vec4<i32>(0i, 1i, -1i, 0i), 0u), vec2<u32>(4294967295u, 939u), vec2<bool>(false, false)), Struct_3(Struct_1(vec2<f32>(199f, 441f), vec4<i32>(2147483647i, 17438i, 40101i, -1i), false, vec4<i32>(72205i, -16907i, 1i, -9194i), 4294967295u), vec2<u32>(0u, 4294967295u), vec2<bool>(true, false)), Struct_3(Struct_1(vec2<f32>(-1265f, -1947f), vec4<i32>(-22293i, 29854i, 1i, 25434i), false, vec4<i32>(38144i, 1i, -18925i, -51261i), 1u), vec2<u32>(1u, 4294967295u), vec2<bool>(false, true)), Struct_3(Struct_1(vec2<f32>(757f, -1100f), vec4<i32>(i32(-2147483648), -1i, 1i, 59268i), true, vec4<i32>(2120i, 1i, 0i, -9782i), 4294967295u), vec2<u32>(1u, 53201u), vec2<bool>(false, false)));

var<private> global2: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(331f, 1808f, 987f, -1564f), vec4<f32>(-412f, 847f, 463f, -1000f), vec4<f32>(371f, -1236f, -1201f, 1489f), vec4<f32>(876f, -430f, -2130f, 198f), vec4<f32>(1000f, 907f, 1000f, 415f), vec4<f32>(1322f, 563f, -144f, 1000f), vec4<f32>(-102f, 1000f, -1955f, -1806f), vec4<f32>(1097f, 750f, -271f, -1057f));

var<private> global3: array<vec4<bool>, 31>;

var<private> global4: Struct_3;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = -_wgslsmith_dot_vec4_i32(abs(-countOneBits(vec4<i32>(-1i, 2147483647i, -23310i, global0.a.b.x))), firstTrailingBit(vec4<i32>(u_input.a.x, -1i, max(global4.a.b.x, 23773i), ~(-33263i))));
    var var_1 = select(select(select(global3[_wgslsmith_index_u32(66197u >> ((38035u >> (global0.b.x % 32u)) % 32u), 31u)], vec4<bool>(true, true, global0.a.c, true), global4.a.c), vec4<bool>(!(global0.a.c | global0.a.c), true, all(vec4<bool>(false, global4.c.x, global0.a.c, global4.a.c)), !global0.c.x), false), select(select(!select(global3[_wgslsmith_index_u32(global4.b.x, 31u)], vec4<bool>(true, global4.c.x, global4.a.c, false), vec4<bool>(false, global0.c.x, false, global0.c.x)), !select(vec4<bool>(global0.a.c, global0.a.c, global0.a.c, global0.a.c), vec4<bool>(global4.a.c, global4.c.x, false, global0.a.c), global3[_wgslsmith_index_u32(global4.a.e, 31u)]), all(vec2<bool>(false, global4.a.c))), global3[_wgslsmith_index_u32(~min(_wgslsmith_clamp_u32(global4.a.e, 64638u, 1u), 1u), 31u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(global4.a.e, 0u, 0u, global0.b.x), vec4<u32>(4294967295u, global4.a.e, 0u, 111765u)), min(vec4<u32>(122657u, global4.a.e, 32057u, 1u), vec4<u32>(4294967295u, 48924u, global4.a.e, 4294967295u)) & (vec4<u32>(global0.a.e, global4.b.x, global0.a.e, 4294967295u) ^ vec4<u32>(global4.a.e, 4061u, 51079u, global4.a.e))), 31u)]), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(29253u, global0.a.e), 31u)]);
    var var_2 = vec4<i32>(min(0i, abs(min(u_input.b.x, global4.a.d.x))), u_input.b.x, abs(global0.a.b.x << (4294967295u % 32u)), _wgslsmith_div_i32(~_wgslsmith_mod_i32(-global0.a.d.x, -1i), _wgslsmith_add_i32(u_input.a.x, -(i32(-1i) * -2147483647i))));
    var var_3 = vec4<u32>(4294967295u, ~(~global4.a.e), ~1u, ~global0.a.e);
    var var_4 = !vec2<bool>(_wgslsmith_sub_i32(1i, 2147483647i) > abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 15384i), vec3<i32>(3154i, u_input.b.x, 1i))), global4.a.c);
    return max(~global0.a.e, ~8658u);
}

fn func_2(arg_0: Struct_2) -> u32 {
    global4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~27701u, func_3(), _wgslsmith_add_u32(select(1u, global4.a.e, true), 1u), firstTrailingBit(global4.a.e)), ~min(~(vec4<u32>(global0.b.x, 4294967295u, 74878u, global4.a.e) & vec4<u32>(4294967295u, 37562u, arg_0.b, 104753u)), reverseBits(vec4<u32>(1u, 58521u, global4.b.x, arg_0.b)))), 8u)];
    global1 = array<Struct_3, 8>();
    global3 = array<vec4<bool>, 31>();
    global0 = Struct_3(Struct_1(global0.a.a, vec4<i32>(2147483647i, reverseBits(arg_0.e.d.x), arg_0.e.b.x, global0.a.d.x), false, vec4<i32>(-2147483647i, reverseBits(arg_0.e.b.x), arg_0.a.d.x, u_input.b.x), 4294967295u), ~(~(~(~global0.b))), !global0.c);
    global0 = Struct_3(arg_0.a, min(~vec2<u32>(global4.b.x, countOneBits(4294967295u)), ~vec2<u32>(~1u, 1u)), select(vec2<bool>(!(!global0.c.x), -u_input.b.x == -2147483647i), arg_0.d.zx, vec2<bool>(arg_0.a.c, true)));
    return ~global0.b.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, func_2(Struct_2(global4.a, 3975u, vec2<bool>(global0.a.c, arg_0.c.x), vec3<bool>(global4.a.c, false, global0.c.x), Struct_1(global4.a.a, vec4<i32>(-70735i, global4.a.d.x, global0.a.b.x, global4.a.d.x), global0.a.c, global4.a.b, 0u)))) << (arg_1 % vec2<u32>(32u)), ~(~_wgslsmith_add_vec2_u32(global0.b, global0.b))) | vec2<u32>(27901u, 46977u << (1u % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(global4.b.x, 8u)]);
    var var_2 = ~_wgslsmith_sub_vec3_u32(~abs(vec3<u32>(global4.b.x, global0.b.x, 65621u)) ^ ~(vec3<u32>(global0.b.x, 77518u, 3180u) | vec3<u32>(0u, 0u, 57034u)), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, arg_1.x, arg_1.x), ~abs(vec3<u32>(arg_0.b.x, 0u, global0.b.x))));
    global4 = Struct_3(arg_0.a, _wgslsmith_clamp_vec2_u32(select(abs(var_0), vec2<u32>(1u, var_0.x ^ global4.a.e), select(global0.c, arg_0.c, !arg_0.c)), ~vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 16183u), vec3<u32>(0u, 4294967295u, 100441u))), max(~(var_0 & arg_1), _wgslsmith_mod_vec2_u32(select(vec2<u32>(48849u, 1u), arg_0.b, vec2<bool>(false, true)), vec2<u32>(var_2.x, arg_1.x) & vec2<u32>(global0.b.x, global4.a.e)))), vec2<bool>(!all(select(vec3<bool>(global4.c.x, arg_0.a.c, true), vec3<bool>(false, false, arg_0.a.c), arg_0.a.c)), any(vec3<bool>(false, false, arg_0.a.c))));
    var var_3 = firstTrailingBit(global0.a.b);
    return vec3<bool>(true, global4.a.c, (false != global4.c.x) | arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1[_wgslsmith_index_u32(global0.a.e, 8u)];
    var var_0 = global0.b;
    global1 = array<Struct_3, 8>();
    global3 = array<vec4<bool>, 31>();
    var var_1 = select(!(!(!select(vec3<bool>(global4.a.c, false, false), vec3<bool>(global0.c.x, true, true), vec3<bool>(true, false, global0.c.x)))), !(!(!func_1(global1[_wgslsmith_index_u32(var_0.x, 8u)], vec2<u32>(global0.a.e, global0.a.e), vec3<f32>(global4.a.a.x, -540f, global0.a.a.x)))), select(!select(!vec3<bool>(true, global0.a.c, global0.c.x), select(vec3<bool>(global4.c.x, true, true), vec3<bool>(true, global4.a.c, true), vec3<bool>(global0.a.c, global4.a.c, true)), true), !(!select(vec3<bool>(false, false, global0.c.x), vec3<bool>(global4.c.x, true, false), true)), true));
    var_1 = vec3<bool>(((func_1(Struct_3(Struct_1(vec2<f32>(global4.a.a.x, global4.a.a.x), vec4<i32>(2147483647i, -47097i, global4.a.d.x, u_input.a.x), global0.a.c, vec4<i32>(global4.a.b.x, global0.a.b.x, global0.a.d.x, -22825i), global4.b.x), global4.b, var_1.zx), global0.b, vec3<f32>(global0.a.a.x, global0.a.a.x, 1795f)).x && true) == (_wgslsmith_f_op_f32(trunc(-114f)) <= -222f)) | global4.a.c, true, false);
    var var_2 = Struct_3(global0.a, _wgslsmith_sub_vec2_u32(~(~vec2<u32>(var_0.x, 0u)), ~global0.b >> (global4.b % vec2<u32>(32u))) >> (global0.b % vec2<u32>(32u)), var_1.yx);
    let var_3 = _wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(global0.a.e, 8u)], _wgslsmith_div_vec4_f32(vec4<f32>(-880f, _wgslsmith_f_op_f32(-global4.a.a.x), global0.a.a.x, global0.a.a.x), _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(var_2.a.e, 8u)] + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(global0.a.e, 8u)] + global2[_wgslsmith_index_u32(1u, 8u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(_wgslsmith_div_u32(0u, 54601u)), ~func_3()), abs(global4.a.b.xz));
}

