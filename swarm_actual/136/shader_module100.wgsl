struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, false, false, true, true);

var<private> global1: Struct_1 = Struct_1(vec4<u32>(0u, 0u, 11251u, 4294967295u));

var<private> global2: array<u32, 22> = array<u32, 22>(6974u, 1u, 4294967295u, 4294967295u, 1u, 95870u, 0u, 1u, 28916u, 19116u, 0u, 5440u, 12127u, 36970u, 4294967295u, 1u, 0u, 11656u, 4294967295u, 38056u, 79242u, 4840u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 5u)];
    let var_1 = Struct_2(vec3<u32>(global2[_wgslsmith_index_u32(~1u, 22u)], u_input.c, ~(~global2[_wgslsmith_index_u32(u_input.c ^ 25507u, 22u)])));
    var var_2 = !select(select(vec3<bool>(true, all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)], 5u)])), !global0[_wgslsmith_index_u32(0u, 5u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(100947u, 5u)], false), vec3<bool>(false, true, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10835u, 22u)], 5u)]), !global0[_wgslsmith_index_u32(var_1.a.x, 5u)]), select(true, any(vec2<bool>(false, true)), true)), select(vec3<bool>(true, global0[_wgslsmith_index_u32(global1.a.x, 5u)] & false, any(vec2<bool>(false, false))), vec3<bool>(true, any(vec2<bool>(false, global0[_wgslsmith_index_u32(global1.a.x, 5u)])), false), (4294967295u == var_1.a.x) || true), vec3<bool>(false, true || any(vec3<bool>(true, global0[_wgslsmith_index_u32(62430u, 5u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3734u, 22u)], 5u)])), global0[_wgslsmith_index_u32(0u, 5u)]));
    let var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(~u_input.b.x, u_input.d), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-22813i, 27068i), vec2<i32>(-26120i, 14740i))), ~(i32(-1i) * -2147483647i), -60901i) >> (vec4<u32>(~37093u, ~20831u, reverseBits(global1.a.x), global1.a.x) % vec4<u32>(32u)), select(abs(vec4<i32>(1i, -2147483647i, ~(-10154i), 49336i)), vec4<i32>(min(u_input.b.x, -1i) ^ ~0i, _wgslsmith_sub_i32(2147483647i, u_input.b.x) ^ (u_input.b.x ^ u_input.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 0i, -2147483647i, -34685i), vec4<i32>(2147483647i, -52372i, u_input.b.x, -24129i)), vec4<i32>(u_input.b.x, 28393i, -12799i, u_input.d)), 68790i ^ ~u_input.b.x), select(!select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 5u)], true), vec4<bool>(global0[_wgslsmith_index_u32(global1.a.x, 5u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 22u)], 5u)], true, var_2.x), global0[_wgslsmith_index_u32(var_1.a.x, 5u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 5u)] | true, false, global1.a.x < u_input.a), var_2.x)));
    global2 = array<u32, 22>();
    return !(!(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)] && global0[_wgslsmith_index_u32(1u, 5u)], all(vec3<bool>(true, false, true)), any(var_2.zx), var_2.x)));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = !select(vec4<bool>(all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 5u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 5u)]))), global0[_wgslsmith_index_u32(global1.a.x, 5u)], true, (i32(-1i) * -1i) > ~arg_0.x), !vec4<bool>(true, global1.a.x < 34346u, global0[_wgslsmith_index_u32(global1.a.x, 5u)] && false, !global0[_wgslsmith_index_u32(38222u, 5u)]), !(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(54021u, 5u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 22u)], 5u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34246u, 22u)], 22u)], 5u)]), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(global1.a.x, 5u)]), true)));
    var_0 = !(!vec4<bool>(var_0.x, all(!var_0.xx), true, global0[_wgslsmith_index_u32(countOneBits(u_input.a), 5u)]));
    var_0 = select(select(select(select(!vec4<bool>(false, var_0.x, var_0.x, global0[_wgslsmith_index_u32(2486u, 5u)]), func_3(), !global0[_wgslsmith_index_u32(4294967295u, 5u)]), select(select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], var_0.x, var_0.x, var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(9751u, 5u)], true, var_0.x, false)), select(vec4<bool>(var_0.x, var_0.x, true, global0[_wgslsmith_index_u32(global1.a.x, 5u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4755u, 5u)], var_0.x), vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.x, 22u)], 5u)], true, var_0.x)), global0[_wgslsmith_index_u32(24611u, 5u)] | global0[_wgslsmith_index_u32(1u, 5u)]), true), !func_3(), vec4<bool>(!(global0[_wgslsmith_index_u32(u_input.a, 5u)] | global0[_wgslsmith_index_u32(global1.a.x, 5u)]), true, !any(var_0.wzx), false)), vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(26873u, 5u)], true, true)), any(select(!vec3<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.x, 22u)], 22u)], 5u)], true, true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(global1.a.x, 5u)]), u_input.c < 1u)), var_0.x, true), (~arg_0.x & _wgslsmith_clamp_i32(-1i, -u_input.d, -12030i)) == _wgslsmith_dot_vec2_i32(-(~u_input.b.zx), abs(select(vec2<i32>(-2147483647i, -1i), u_input.b.zz, vec2<bool>(var_0.x, true)))));
    var_0 = select(select(!vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(~4294967295u, 5u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.a.x, 2759u), 5u)], true), !vec4<bool>(25504u >= u_input.c, !var_0.x, global0[_wgslsmith_index_u32(u_input.a, 5u)], all(var_0.wzx)), (global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.a.x, global2[_wgslsmith_index_u32(u_input.a, 22u)]), 5u)] && var_0.x) && var_0.x), func_3(), true);
    global0 = array<bool, 5>();
    return _wgslsmith_sub_u32(u_input.a, u_input.a);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<u32>, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(536f, -605f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_div_f32(-1042f, _wgslsmith_f_op_f32(max(-1000f, -1000f))))) - vec2<f32>(563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))));
    var var_1 = Struct_1(vec4<u32>(arg_2.x, _wgslsmith_div_u32(0u, ~global2[_wgslsmith_index_u32(7516u, 22u)] >> (arg_1 % 32u)), ~_wgslsmith_clamp_u32(1u, u_input.c, arg_1), ~func_2(vec2<i32>(1i, u_input.d))));
    var var_2 = _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global1.a.x, 22u)], arg_3.x);
    var var_3 = arg_3.x;
    var var_4 = Struct_3(~_wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(max(1u, u_input.a), firstTrailingBit(0u))));
    return Struct_3(14380u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.yx;
    var var_1 = Struct_3(global1.a.x);
    var_1 = func_1(1u < ~(~var_1.a), select(select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 25367u, 4294967295u), vec3<u32>(16864u, 0u, 73434u)) & max(0u, 27063u), 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)], true), _wgslsmith_clamp_u32(~4294967295u, max(~71090u, 1u), var_1.a), true), ~vec3<u32>(~global1.a.x, 23746u << (min(22033u, global1.a.x) % 32u), global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(u_input.c, 22u)]), 22u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(global1.a.x, 22u)]), 18460u), vec2<u32>(_wgslsmith_mult_u32(global1.a.x, _wgslsmith_mult_u32(var_1.a, 68947u)), ~0u)));
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var var_2 = 2147483647i;
    var_1 = func_1(!global0[_wgslsmith_index_u32(var_1.a, 5u)], 33884u, vec3<u32>(1u, ~u_input.a, countOneBits(1u)), vec2<u32>(~81148u, var_1.a << (_wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, 22219u, 0u), global1.a.xxz), _wgslsmith_add_vec3_u32(global1.a.yzw, global1.a.xxy)) % 32u)));
    global1 = Struct_1(vec4<u32>(1u, global1.a.x, min(~(72017u << (0u % 32u)), u_input.a), 1u));
    var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.x, 22u)], 22u)], 4294967295u, ~(~(~var_1.a)), _wgslsmith_clamp_u32(global1.a.x, ~select(36235u, var_1.a, false), abs(global1.a.x) << (firstLeadingBit(u_input.a) % 32u))), u_input.b.x, ~u_input.b.zy);
}

