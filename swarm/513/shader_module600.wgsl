struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(false, true);

var<private> global1: array<i32, 25>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = array<bool, 2>();
    let var_0 = _wgslsmith_dot_vec4_i32(-firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 9123i, 4051i, global1[_wgslsmith_index_u32(1u, 25u)]), vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)], -38997i, global1[_wgslsmith_index_u32(u_input.c.x, 25u)]))), select(min(-vec4<i32>(19729i, global1[_wgslsmith_index_u32(23865u, 25u)], 0i, global1[_wgslsmith_index_u32(22349u, 25u)]), vec4<i32>(-2147483647i, 624i, 28963i, 1i)), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], 9588i, global1[_wgslsmith_index_u32(5152u, 25u)], 33010i) << (vec4<u32>(u_input.a.x, u_input.a.x, 1u, 6299u) % vec4<u32>(32u)), select(select(vec4<bool>(global2.x, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global2.x, false), vec4<bool>(global2.x, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(20123u, 2u)], global0[_wgslsmith_index_u32(28898u, 2u)], true, false)), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)], global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec4<bool>(global2.x, global0[_wgslsmith_index_u32(66343u, 2u)], false, true), false), vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(u_input.c.x, 2u)])))) ^ _wgslsmith_clamp_i32(_wgslsmith_add_i32((global1[_wgslsmith_index_u32(99430u, 25u)] ^ global1[_wgslsmith_index_u32(u_input.b.x, 25u)]) ^ 1i, abs(16662i)), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(select(~u_input.a.x, ~u_input.c.x, global0[_wgslsmith_index_u32(9056u, 2u)]), 25u)], -global1[_wgslsmith_index_u32(43982u, 25u)]), -2147483647i);
    global2 = select(vec2<bool>(!global2.x, true), select(!(!select(vec2<bool>(true, false), vec2<bool>(global2.x, false), vec2<bool>(false, true))), vec2<bool>(all(vec3<bool>(global2.x, global2.x, true)), global2.x), vec2<bool>(!global2.x, all(vec2<bool>(true, true)))), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(-1000f, 342f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(408f - -1184f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(3496f)))) - 246f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f)))));
    global1 = array<i32, 25>();
    return _wgslsmith_f_op_f32(1148f * _wgslsmith_f_op_f32(f32(-1f) * -849f));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-433f - 193f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), arg_0));
    let var_1 = Struct_2(any(!vec4<bool>(global2.x, global2.x, global0[_wgslsmith_index_u32(47864u, 2u)], false)) & false, Struct_1(reverseBits(~(~vec2<u32>(u_input.b.x, u_input.b.x))), any(select(vec4<bool>(false, global2.x, false, global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec4<bool>(global2.x, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], false, global0[_wgslsmith_index_u32(54523u, 2u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], false, true, true))), global1[_wgslsmith_index_u32(20565u, 25u)] | arg_2.x), (1i | _wgslsmith_dot_vec4_i32(abs(arg_2), firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(93727u, 25u)], 6637i, global1[_wgslsmith_index_u32(46135u, 25u)], arg_2.x)))) >> (23130u % 32u));
    global2 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(false, var_1.a), vec2<bool>(global0[_wgslsmith_index_u32(var_1.b.a.x, 2u)], var_1.a), vec2<bool>(global0[_wgslsmith_index_u32(109159u, 2u)], false)), !var_1.a), !vec2<bool>(!global2.x, var_1.b.b), !(true && global2.x));
    global0 = array<bool, 2>();
    global1 = array<i32, 25>();
    return Struct_1(select(select(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.b.a.x, 1u), u_input.b) << (vec2<u32>(var_1.b.a.x, u_input.c.x) % vec2<u32>(32u)), select(u_input.a, vec2<u32>(1u, var_1.b.a.x), global0[_wgslsmith_index_u32(var_1.b.a.x, 2u)]) ^ _wgslsmith_mod_vec2_u32(u_input.c.yz, vec2<u32>(u_input.c.x, var_1.b.a.x)), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(49152u, 2u)]))), ~(~vec2<u32>(71812u, u_input.a.x) >> (var_1.b.a % vec2<u32>(32u))), !select(vec2<bool>(var_1.b.b, var_1.a), select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(46062u, 2u)], true), vec2<bool>(global2.x, true)), true)), true, -38666i);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_3(arg_1.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.b.x)) + -210f), -526f, 175f, -224f));
    global1 = array<i32, 25>();
    let var_1 = Struct_1(vec2<u32>(arg_0.b.a.x, u_input.a.x), !global2.x, -6015i);
    let var_2 = -vec4<i32>(_wgslsmith_sub_i32(31703i, _wgslsmith_clamp_i32(var_1.c, global1[_wgslsmith_index_u32(~1u, 25u)], var_1.c)), _wgslsmith_dot_vec3_i32(min(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, global1[_wgslsmith_index_u32(arg_0.b.a.x, 25u)], var_1.c), vec3<i32>(29860i, arg_0.b.c, -15614i)), select(vec3<i32>(12470i, 0i, -37208i), vec3<i32>(1i, -23214i, 1i), vec3<bool>(false, global0[_wgslsmith_index_u32(13659u, 2u)], true))), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_0.c, 1i), vec3<i32>(-2292i, 2147483647i, arg_0.c)) & vec3<i32>(var_1.c, 2147483647i, 35062i)), _wgslsmith_mod_i32(abs(2147483647i), 1i & var_1.c), global1[_wgslsmith_index_u32(1u, 25u)]);
    let var_3 = global0[_wgslsmith_index_u32(~18418u << (var_1.a.x % 32u), 2u)];
    return func_2(890f, vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))))), var_2, Struct_3(arg_1.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b * arg_1.b) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(255f, -1089f, arg_1.a, -1745f), _wgslsmith_f_op_vec4_f32(min(var_0.b, var_0.b)))))));
}

fn func_1() -> bool {
    let var_0 = Struct_2(true, func_4(Struct_2(global2.x, func_2(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2138f, -829f)), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 25u)], 2147483647i, 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 25u)]) << (vec4<u32>(0u, 4294967295u, 0u, 0u) % vec4<u32>(32u)), Struct_3(1111f, vec4<f32>(-1270f, 323f, -2117f, -2005f))), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 25u)] & global1[_wgslsmith_index_u32(u_input.b.x, 25u)]), Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, -139f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-166f, -1221f, 829f, -170f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-485f, -2818f, 1000f, 492f), vec4<f32>(-1000f, 1413f, -287f, -285f), vec4<bool>(global2.x, true, true, global2.x))))), 4294967295u), 28544i);
    var var_1 = ~u_input.c.xy;
    var var_2 = global2.x;
    return !any(select(!select(vec4<bool>(global2.x, global2.x, false, true), vec4<bool>(true, true, var_0.b.b, true), global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global2.x, true, true), vec4<bool>(global2.x, true, false, false), false), !vec4<bool>(var_0.b.b, global0[_wgslsmith_index_u32(81753u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(51458u, 2u)])));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> f32 {
    let var_0 = -global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x << (~1u % 32u), u_input.a.x), 25u)];
    global2 = select(vec2<bool>(arg_0, global2.x), vec2<bool>(true, !global0[_wgslsmith_index_u32(u_input.b.x, 2u)]), func_1());
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(ceil(899f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = ~(-global1[_wgslsmith_index_u32(u_input.c.x, 25u)] | _wgslsmith_div_i32(-34346i, ~global1[_wgslsmith_index_u32(1u, 25u)] & -2147483647i));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(125f)) + _wgslsmith_f_op_f32(401f - 193f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(), Struct_3(120f, vec4<f32>(-291f, -584f, 665f, 1126f)), -618f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -754f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(173f, 1627f, -597f, -1011f), vec4<f32>(1326f, 322f, 1000f, -618f), vec4<bool>(true, global0[_wgslsmith_index_u32(1196u, 2u)], global0[_wgslsmith_index_u32(var_0, 2u)], false))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -642f), -928f, _wgslsmith_f_op_f32(ceil(1311f)), -1000f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3148f), _wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1587f, -359f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_2 = Struct_3(var_2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 1221f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)))));
    let var_3 = firstTrailingBit(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(~(-928i), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1697u, 4294967295u, var_3), vec3<u32>(89935u, var_3, 14023u)), 25u)]), _wgslsmith_sub_i32(21467i, global1[_wgslsmith_index_u32(8287u, 25u)] | -53326i), 5997i), ~_wgslsmith_add_vec4_i32((vec4<i32>(2147483647i, 44207i, global1[_wgslsmith_index_u32(var_0, 25u)], global1[_wgslsmith_index_u32(var_0, 25u)]) << (vec4<u32>(var_0, 54537u, var_3, 55430u) % vec4<u32>(32u))) ^ (vec4<i32>(global1[_wgslsmith_index_u32(51070u, 25u)], global1[_wgslsmith_index_u32(var_3, 25u)], 0i, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]) << (u_input.c % vec4<u32>(32u))), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(11026i, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], -1i), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_3, 25u)], -1i, global1[_wgslsmith_index_u32(var_0, 25u)])))), var_2.b.xxx, _wgslsmith_add_vec4_i32(firstLeadingBit(countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(var_3, 25u)], global1[_wgslsmith_index_u32(u_input.b.x, 25u)], -1i, 2147483647i))), -(vec4<i32>(global1[_wgslsmith_index_u32(1u, 25u)], 10460i, global1[_wgslsmith_index_u32(0u, 25u)], global1[_wgslsmith_index_u32(0u, 25u)]) ^ vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(55172u, 25u)], 2147483647i, -2147483647i))) << (vec4<u32>(u_input.a.x, ~(~var_0), 38290u, 1u) % vec4<u32>(32u)));
}

