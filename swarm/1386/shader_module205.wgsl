struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: Struct_3;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 20>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = global2.c;
    let var_1 = Struct_5(global2.c, Struct_2(global2.a, global2.a.x, global2.c), abs(u_input.b.yy), ~(~min(~vec4<u32>(8730u, 71392u, global1.a, 9435u), ~vec4<u32>(41494u, 4294967295u, 29598u, 64493u))), vec4<u32>(~(~global1.a), ~4294967295u, ~(~0u), 0u));
    global3 = array<Struct_2, 20>();
    var var_2 = firstTrailingBit(4294967295u);
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.b, global2.b, global2.a.x), var_1.b.a.wxw), var_1.b.a.xyx))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-598f, -779f, -838f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.yxw), vec3<f32>(global2.a.x, -686f, global2.a.x)))), _wgslsmith_f_op_vec3_f32(global2.a.yxz - vec3<f32>(global2.b, var_1.b.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1085f - global2.b), -148f, true)))), vec3<bool>(all(!var_0.c.yzz) & true, !global2.c.e.x, !(1000f != var_1.b.a.x) | false)));
    return vec4<i32>(countOneBits(_wgslsmith_add_i32(~var_0.b, _wgslsmith_div_i32(global2.c.d.x, global2.c.d.x))) ^ -1i, -_wgslsmith_div_i32(-9383i, -25228i), var_0.d.x, var_0.a.x);
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    global1 = Struct_3(~abs(~_wgslsmith_mod_u32(u_input.c.x, 62147u)), true);
    var var_0 = Struct_5(global2.c, Struct_2(vec4<f32>(-1190f, _wgslsmith_f_op_f32(global2.a.x + -260f), 1320f, arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), Struct_1(func_3(global2.c.a.x), reverseBits(arg_0.c.d.x), vec4<bool>(true, true, true, true), -(vec2<i32>(7565i, u_input.d) ^ global2.c.a.xx), vec2<bool>(global1.b, false))), u_input.b.zy, vec4<u32>(~_wgslsmith_mult_u32(18369u & arg_1, _wgslsmith_clamp_u32(0u, u_input.c.x, global1.a)), reverseBits(~42815u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global1.a, 1u) >> (reverseBits(0u) % 32u), 0u), ~(61501u >> (arg_1 % 32u)) | global1.a), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 76107u), vec4<u32>(41758u, 58864u, 13656u, 1u))), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 0u, global1.a), vec4<u32>(25402u, 0u, 22368u, arg_1)))), ~(countOneBits(vec4<u32>(0u, 0u, arg_1, global1.a)) ^ vec4<u32>(33111u, 4294967295u, 39035u, 4294967295u)), _wgslsmith_div_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(30596u, u_input.c.x, 58832u, 1u), vec4<u32>(0u, u_input.c.x, arg_1, 4294967295u)), vec4<u32>(u_input.c.x, u_input.c.x, arg_1, 0u), select(arg_0.c.c, vec4<bool>(false, global1.b, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], global2.c.e.x, global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(arg_1, 29u)]))), vec4<u32>(~arg_1, 0u, min(4513u, 1u), ~arg_1))));
    global1 = Struct_3(var_0.e.x, any(!select(global2.c.c, select(vec4<bool>(false, false, global1.b, global1.b), vec4<bool>(true, global2.c.c.x, global1.b, false), global0[_wgslsmith_index_u32(arg_1, 29u)]), global0[_wgslsmith_index_u32(4294967295u, 29u)])));
    let var_1 = var_0.b;
    var var_2 = Struct_5(Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(global2.c.a.x, -39066i, 0i, 2147483647i), vec4<i32>(_wgslsmith_mod_i32(1i, -18490i), u_input.d | var_1.c.d.x, _wgslsmith_dot_vec3_i32(global2.c.a.xwz, vec3<i32>(arg_0.c.d.x, arg_0.c.a.x, -1i)), arg_0.c.b)), arg_0.c.a.x | 75690i, var_1.c.c, -_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-1i, 29179i)), -vec2<i32>(arg_0.c.d.x, -50079i)), select(select(!vec2<bool>(global1.b, true), !var_1.c.c.yx, false), select(var_0.a.e, select(global2.c.c.zz, vec2<bool>(arg_0.c.c.x, var_0.a.c.x), global2.c.c.x), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 29u)], false)), any(var_0.a.c.xzy))), global3[_wgslsmith_index_u32(abs(~(~(~global1.a))), 20u)], _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -arg_0.c.d, countOneBits(vec2<i32>(-2147483647i, 32839i))), func_3(2147483647i).xz), ~_wgslsmith_div_vec4_u32(vec4<u32>(global1.a << (4294967295u % 32u), 1u, _wgslsmith_dot_vec2_u32(var_0.d.xx, var_0.e.zx), _wgslsmith_mult_u32(arg_1, var_0.e.x)), var_0.e), ~_wgslsmith_div_vec4_u32(var_0.e, _wgslsmith_div_vec4_u32(vec4<u32>(12927u, var_0.d.x, arg_1, arg_1), max(vec4<u32>(global1.a, 1u, global1.a, 1u), var_0.e))));
    return Struct_3(countOneBits(arg_1), all(vec3<bool>(true, _wgslsmith_f_op_f32(-422f + -176f) != _wgslsmith_f_op_f32(abs(arg_0.b)), true)));
}

fn func_1(arg_0: Struct_2) -> i32 {
    let var_0 = !global2.c.c.xww;
    var var_1 = select(global2.c.c, vec4<bool>(global1.b || true, true, true, !arg_0.c.c.x), all(select(select(arg_0.c.c, arg_0.c.c, false), !global2.c.c, arg_0.c.c)));
    let var_2 = func_2(Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, 1981f, global2.b, global2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.b, 1115f, global2.b) * arg_0.a)))), 130f, arg_0.c), select(u_input.a.x, 4294967295u, false));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-1168f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2218f) + _wgslsmith_f_op_f32(arg_0.b * 576f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f)))), arg_0.b, arg_0.b);
    var var_4 = Struct_5(Struct_1(global2.c.a, arg_0.c.a.x, global2.c.c, global2.c.d, vec2<bool>(true, all(!arg_0.c.c))), Struct_2(_wgslsmith_f_op_vec4_f32(-global2.a), global2.a.x, Struct_1(~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.d.x, global2.c.b, global2.c.a.x, u_input.d), vec4<i32>(u_input.b.x, arg_0.c.d.x, arg_0.c.b, global2.c.d.x)), abs(~(-52931i)), vec4<bool>(false, all(vec2<bool>(global1.b, true)), var_2.b, global1.b), ~(~vec2<i32>(u_input.b.x, -21110i)), global2.c.c.zz)), _wgslsmith_mult_vec2_i32(~global2.c.a.wy, global2.c.d), _wgslsmith_add_vec4_u32(firstTrailingBit(firstLeadingBit(select(vec4<u32>(52759u, 13879u, global1.a, u_input.a.x), vec4<u32>(0u, var_2.a, 4905u, 0u), vec4<bool>(var_2.b, true, false, true)))), vec4<u32>(global1.a, 0u, 18138u, ~(~4294967295u))), min(~vec4<u32>(62594u, _wgslsmith_div_u32(var_2.a, u_input.a.x), u_input.a.x << (1u % 32u), 110595u), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 0u, var_2.a, 4294967295u), vec4<u32>(64757u, 12986u, 1u, 0u) & vec4<u32>(41790u, 1u, u_input.a.x, global1.a))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    let var_0 = Struct_4(Struct_2(global2.a, global2.a.x, Struct_1(vec4<i32>(global2.c.a.x, i32(-1i) * -1i, global2.c.d.x, func_1(global3[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_mult_i32(10450i, _wgslsmith_add_i32(global2.c.d.x, global2.c.d.x)), vec4<bool>(false, false, global1.b, any(global2.c.c.wy)), global2.c.d, global2.c.c.yw)), func_2(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(global2.a.x + -1000f), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(global2.b * 204f), _wgslsmith_f_op_f32(step(global2.a.x, global2.a.x))), global2.a.x, Struct_1(vec4<i32>(2147483647i, u_input.b.x, 2147483647i, u_input.b.x), u_input.d, select(global2.c.c, vec4<bool>(true, false, true, global1.b), global2.c.c), -u_input.b.wx, vec2<bool>(true, global0[_wgslsmith_index_u32(30784u, 29u)]))), _wgslsmith_add_u32(1u, min(3013u, ~3341u))));
    let var_1 = reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.c.b, -22254i, _wgslsmith_mod_i32(global2.c.a.x, _wgslsmith_add_i32(u_input.b.x, -2147483647i)), -58002i), (vec4<i32>(-1i) * -vec4<i32>(u_input.d, u_input.d, var_0.a.c.a.x, 51475i)) | ~(~global2.c.a)));
    var var_2 = -var_0.a.c.d.x;
    let var_3 = 0u;
    var var_4 = Struct_5(Struct_1(countOneBits(-var_0.a.c.a | _wgslsmith_div_vec4_i32(var_0.a.c.a, var_0.a.c.a)), var_0.a.c.b, vec4<bool>(false, var_0.b.b, any(!vec4<bool>(true, var_0.a.c.c.x, true, global2.c.c.x)), false), abs(vec2<i32>(20358i << (1u % 32u), -2147483647i)), !vec2<bool>(!global1.b, global2.c.e.x)), global3[_wgslsmith_index_u32(var_3, 20u)], ~(vec2<i32>(-1i) * -global2.c.a.zz) & u_input.b.yy, ~_wgslsmith_sub_vec4_u32(vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, u_input.a.x, var_3, var_0.b.a), vec4<u32>(u_input.a.x, u_input.a.x, 29144u, 4294967295u)), _wgslsmith_mod_u32(u_input.a.x, 16181u), 1u), reverseBits(~vec4<u32>(global1.a, 4294967295u, u_input.c.x, 4294967295u))), ~select(max(abs(vec4<u32>(25786u, var_0.b.a, var_3, u_input.c.x)), ~vec4<u32>(36759u, 970u, 32921u, var_0.b.a)), (vec4<u32>(6899u, 0u, 18609u, 1u) >> (vec4<u32>(43276u, var_0.b.a, global1.a, 1u) % vec4<u32>(32u))) << (vec4<u32>(global1.a, 225u, u_input.a.x, 108059u) % vec4<u32>(32u)), var_0.a.c.c));
    var var_5 = -select(countOneBits(var_0.a.c.d), firstTrailingBit(firstLeadingBit(vec2<i32>(40117i, var_0.a.c.d.x))), !(!any(var_0.a.c.c.wxw)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.c.b, _wgslsmith_clamp_i32(min(firstTrailingBit(firstTrailingBit(-2147483647i)), -1i), var_0.a.c.a.x, 43701i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a.a - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global2.a))))), _wgslsmith_f_op_f32(trunc(var_4.b.a.x)));
}

