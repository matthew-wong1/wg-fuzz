struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(0u, 4294967295u, 26132u, 12388u, 1u);

var<private> global1: array<Struct_3, 24>;

var<private> global2: array<bool, 25>;

var<private> global3: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(23355i, 0i, -18261i, 21254i), vec4<i32>(791i, i32(-2147483648), -24059i, 2147483647i), vec4<i32>(30885i, -36071i, 1i, i32(-2147483648)), vec4<i32>(0i, 7174i, 57538i, 17536i), vec4<i32>(-2242i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(-1i, 49093i, 1i, -951i), vec4<i32>(1i, -23443i, -39510i, 1i), vec4<i32>(46665i, -13704i, -14527i, i32(-2147483648)), vec4<i32>(-55804i, 1i, i32(-2147483648), -1i), vec4<i32>(-1i, i32(-2147483648), 53012i, -10191i), vec4<i32>(21384i, 46653i, 33505i, i32(-2147483648)), vec4<i32>(2147483647i, 29500i, 2147483647i, 1i), vec4<i32>(8269i, 0i, -12739i, -52681i), vec4<i32>(-13131i, 0i, -27197i, -81946i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec4<u32> {
    global1 = array<Struct_3, 24>();
    global0 = array<u32, 5>();
    global3 = array<vec4<i32>, 14>();
    let var_0 = _wgslsmith_div_f32(-762f, _wgslsmith_f_op_f32(trunc(-1731f)));
    var var_1 = Struct_1(!vec4<bool>(global2[_wgslsmith_index_u32(2028u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 42333u), u_input.b) % 32u), 25u)], global2[_wgslsmith_index_u32(~abs(4294967295u), 25u)], any(vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5390u, 5u)], 25u)], true)), all(vec4<bool>(true, true, global2[_wgslsmith_index_u32(2173u, 25u)], global2[_wgslsmith_index_u32(29441u, 25u)]))), vec3<u32>(54581u, abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(60228u, 5u)], 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32824u, 5u)], 5u)])), vec3<u32>(0u, 4294967295u, 5857u) & vec3<u32>(u_input.a, 15539u, u_input.a))), global0[_wgslsmith_index_u32(u_input.a << (u_input.b.x % 32u), 5u)]), firstLeadingBit(0i));
    return ~vec4<u32>(51939u, _wgslsmith_mult_u32(40375u ^ select(9248u, u_input.b.x, var_1.a.x), u_input.b.x), var_1.b.x, ~59004u);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = arg_0;
    var var_1 = Struct_2(var_0.d.b.a, 1f > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1091f)))), select(vec2<bool>(false, all(vec3<bool>(global2[_wgslsmith_index_u32(1u, 25u)], var_0.b.c.x, arg_0.b.c.x))), !select(var_0.d.b.c, !vec2<bool>(true, var_0.b.b), select(false, true, arg_0.d.b.a.a.x)), select(vec2<bool>(any(vec2<bool>(false, true)), arg_0.b.c.x), select(select(var_0.d.b.c, arg_0.d.b.c, vec2<bool>(global2[_wgslsmith_index_u32(0u, 25u)], arg_0.b.a.a.x)), arg_0.b.c, true), var_0.b.a.a.x)), 0u);
    var var_2 = vec2<u32>(~(~max(var_1.d, _wgslsmith_add_u32(102165u, 45901u))), firstLeadingBit(_wgslsmith_mult_u32(4294967295u, arg_0.d.b.a.b.x)));
    let var_3 = all(!var_0.d.b.a.a.wxx);
    var var_4 = Struct_4(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(countOneBits(-28482i), ~2147483647i, var_0.a), ~arg_0.c, select(~arg_0.b.a.c, firstTrailingBit(1i), true)), ~_wgslsmith_div_vec3_i32(-vec3<i32>(var_0.c, var_1.a.c, var_0.d.b.a.c), _wgslsmith_div_vec3_i32(vec3<i32>(6630i, var_0.d.b.a.c, var_1.a.c), vec3<i32>(var_0.a, 18234i, 2147483647i)))), var_0.d.b, -4414i, Struct_3(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_0.a, 0i, 7915i, -49762i)), global3[_wgslsmith_index_u32(~34642u, 14u)]), 0i), Struct_2(var_1.a, true, vec2<bool>(var_3 && var_1.c.x, var_1.a.c > 2147483647i), 82056u)));
    return _wgslsmith_sub_vec3_u32(~max(var_1.a.b, vec3<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 5u)]), 1u, func_3().x)), select(~arg_0.b.a.b, firstLeadingBit(vec3<u32>(abs(0u), ~var_2.x, ~var_1.d)), true));
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(~1u, 25u)], false, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_add_u32(15591u, 0u)), 25u)], true), _wgslsmith_mod_vec3_u32(func_4(Struct_4(-1i, Struct_2(Struct_1(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 25u)], false, true), vec3<u32>(49244u, 66445u, global0[_wgslsmith_index_u32(1u, 5u)]), 1i), false, vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39132u, 5u)], 25u)], true), u_input.b.x), 0i, Struct_3(10205i, Struct_2(Struct_1(vec4<bool>(true, false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 25u)], true), vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(32689u, 5u)], u_input.a), 16346i), global2[_wgslsmith_index_u32(u_input.b.x, 25u)], vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 25u)], global2[_wgslsmith_index_u32(17854u, 25u)]), 1u))), func_3()), vec3<u32>(u_input.a, u_input.a, 0u) | _wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], u_input.b.x, u_input.a), vec3<u32>(u_input.b.x, 0u, 1u))), 1i), !(!global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 3905u, u_input.b.x), vec3<u32>(u_input.a, 16431u, global0[_wgslsmith_index_u32(14089u, 5u)])), vec3<u32>(u_input.b.x, u_input.b.x, 9749u)), 25u)]), vec2<bool>(true, true), 20170u);
    global3 = array<vec4<i32>, 14>();
    let var_1 = !global2[_wgslsmith_index_u32(4294967295u, 25u)];
    let var_2 = vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(46579u, _wgslsmith_mod_u32(var_0.d, 4000u), 21790u), 25u)], true, true, var_0.b);
    var var_3 = vec3<i32>(~(-2147483647i), _wgslsmith_mod_i32(~var_0.a.c, -2147483647i), 23904i);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -249f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1405f))));
}

fn func_1() -> u32 {
    global3 = array<vec4<i32>, 14>();
    global0 = array<u32, 5>();
    let var_0 = _wgslsmith_f_op_f32(-231f + _wgslsmith_f_op_f32(func_2()));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-169f + var_0) + _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(floor(602f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -242f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1316f - var_0)))))));
    return max(global0[_wgslsmith_index_u32(27251u | _wgslsmith_div_u32(func_4(Struct_4(1195i, Struct_2(Struct_1(vec4<bool>(global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(u_input.a, 25u)], false, false), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 49614u), 70680i), global2[_wgslsmith_index_u32(73569u, 25u)], vec2<bool>(true, global2[_wgslsmith_index_u32(19122u, 25u)]), global0[_wgslsmith_index_u32(1u, 5u)]), 1i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 24u)]), max(vec4<u32>(u_input.b.x, 1u, global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 5u)]), vec4<u32>(global0[_wgslsmith_index_u32(0u, 5u)], 29925u, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 5u)]))).x, ~(global0[_wgslsmith_index_u32(u_input.a, 5u)] | u_input.b.x)), 5u)], ~u_input.b.x);
}

fn func_5(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_4(-52729i, Struct_2(Struct_1(!vec4<bool>(global2[_wgslsmith_index_u32(76209u, 25u)], true, false, false), vec3<u32>(abs(u_input.b.x), _wgslsmith_add_u32(u_input.b.x, 18253u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 5u)], u_input.b.x)), _wgslsmith_clamp_i32(arg_0.x, 1i, i32(-1i) * -29473i)), global2[_wgslsmith_index_u32(4294967295u, 25u)], vec2<bool>(all(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 25u)], global2[_wgslsmith_index_u32(69537u, 25u)], false), vec3<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 25u)], global2[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(73983u, 25u)]), true)), global2[_wgslsmith_index_u32(func_4(Struct_4(arg_0.x, Struct_2(Struct_1(vec4<bool>(true, global2[_wgslsmith_index_u32(46685u, 25u)], true, true), vec3<u32>(43112u, 4294967295u, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), arg_0.x), false, vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 25u)], false), 0u), arg_0.x, global1[_wgslsmith_index_u32(42763u, 24u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 0u, 50799u, 25115u)).x, 25u)]), u_input.b.x), arg_0.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b.x, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 5u)], 1u), 4294967295u), vec3<u32>(global0[_wgslsmith_index_u32(28107u, 5u)], 17033u, 0u) | vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], 28567u)), firstTrailingBit(~u_input.b.x)), 24u)]);
    var var_1 = ~arg_0.xxx;
    let var_2 = var_0.b.a;
    var_1 = arg_0.xyw;
    let var_3 = var_2;
    return Struct_3(~_wgslsmith_mod_i32(var_0.a, -8239i), var_0.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(global3[_wgslsmith_index_u32(~func_1(), 14u)]);
    var var_1 = true;
    let var_2 = 8604u;
    var var_3 = func_5(~(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, 0i, 0i, var_0.a), vec4<i32>(-53223i, var_0.b.a.c, var_0.b.a.c, -1i))) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 41068u, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec4<u32>(1u, 48398u, 7491u, 4294967295u)) % vec4<u32>(32u))));
    var var_4 = _wgslsmith_sub_u32(4294967295u, ~u_input.b.x);
    let var_5 = (vec3<u32>(~u_input.a, reverseBits(var_0.b.d | var_2), _wgslsmith_mod_u32(var_3.b.d, 1u)) ^ _wgslsmith_add_vec3_u32(~(vec3<u32>(var_0.b.a.b.x, 0u, 0u) & vec3<u32>(var_2, u_input.b.x, var_0.b.d)), var_0.b.a.b)) << (abs(min(~(~var_0.b.a.b), vec3<u32>(~var_0.b.d, 0u, firstTrailingBit(27429u)))) % vec3<u32>(32u));
    var var_6 = ~vec3<i32>(-46392i, _wgslsmith_add_i32(~select(var_0.b.a.c, 0i, var_0.b.c.x), _wgslsmith_clamp_i32(2147483647i, var_3.a, _wgslsmith_div_i32(5757i, var_3.a))), var_0.b.a.c);
    global3 = array<vec4<i32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1214f)) + -1938f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-245f)), _wgslsmith_f_op_f32(f32(-1f) * -190f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f))), 11221u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, -925f, -296f) * vec3<f32>(-1000f, -320f, -1021f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1325f, -247f, 1400f), vec3<f32>(1132f, 914f, 1045f))))));
}

