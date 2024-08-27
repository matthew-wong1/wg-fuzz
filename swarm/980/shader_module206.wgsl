struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(-2233f, -1279f, 1634f, 664f, 152f, 1805f, -430f, 707f, 177f, -523f, -1715f, 706f, -679f);

var<private> global1: Struct_4 = Struct_4(vec2<f32>(414f, 533f), vec3<u32>(64422u, 37228u, 1u), vec3<i32>(0i, -472i, i32(-2147483648)));

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> vec2<f32> {
    global1 = arg_0;
    global0 = array<f32, 13>();
    global1 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a - arg_0.a) * vec2<f32>(global0[_wgslsmith_index_u32(36003u, 13u)], 850f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.d.xy - vec2<f32>(arg_1.c.b, -3237f)) * global1.a)))), _wgslsmith_mod_vec3_u32(~global1.b, arg_0.b), global1.c);
    var var_0 = arg_1;
    var var_1 = vec2<bool>(any(select(!select(arg_1.c.c, var_0.c.c, vec3<bool>(true, false, global2.x)), !select(vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, arg_1.e.x, arg_1.b.c.x), vec3<bool>(global2.x, arg_1.e.x, false)), arg_1.a.c.x)), !var_0.c.c.x);
    return _wgslsmith_f_op_vec2_f32(max(arg_1.d.xz, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(var_0.d.yy)), vec2<f32>(-931f, _wgslsmith_f_op_f32(196f * -1000f))))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_4 {
    global1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(min(1180f, 759f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(84155u, 48989u)), 13u)])), arg_1.xww >> (_wgslsmith_add_vec3_u32(select(vec3<u32>(arg_1.x, 79275u, 73934u), vec3<u32>(global1.b.x, 9811u, global1.b.x), !arg_0.yzw), vec3<u32>(67725u, _wgslsmith_clamp_u32(global1.b.x, 36579u, arg_1.x), 1u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, u_input.d.x, arg_2.x, global1.c.x), vec4<i32>(arg_2.x, 4224i, -1i, arg_2.x), global2.x), firstLeadingBit(vec4<i32>(global1.c.x, 2147483647i, 2147483647i, global1.c.x))), -1326i), 27248i, _wgslsmith_div_i32(select(-1i, arg_2.x, arg_0.x), ~(-6288i))));
    var var_0 = 48407u;
    return Struct_4(_wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(global1.a, vec3<u32>(12897u, 38570u, u_input.c), global1.c), Struct_2(Struct_1(global2.x, 185f, vec3<bool>(global2.x, arg_0.x, true), vec4<u32>(u_input.c, 31512u, 12053u, arg_1.x)), Struct_1(false, 1417f, vec3<bool>(false, true, arg_0.x), arg_1), Struct_1(false, 1249f, arg_0.wxz, arg_1), vec4<f32>(global0[_wgslsmith_index_u32(9584u, 13u)], -1012f, global1.a.x, global1.a.x), arg_0.xw)))))), global1.b, vec3<i32>(arg_2.x, abs(select(_wgslsmith_add_i32(global1.c.x, u_input.b), ~(-2147483647i), global1.a.x == global1.a.x)), reverseBits(-1i)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>) -> vec4<i32> {
    global1 = arg_0;
    global1 = func_2(!vec4<bool>(true, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 13u)], -101f, true)) > func_2(vec4<bool>(true, global2.x, false, true), vec4<u32>(0u, 39612u, 63484u, arg_0.b.x), vec2<i32>(u_input.d.x, global1.c.x)).a.x, false, !global2.x), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global1.b.x, arg_0.b.x, 71588u), reverseBits(arg_1), vec4<u32>(46061u, 1547u, arg_0.b.x, 38295u)) ^ ~vec4<u32>(~16253u, ~u_input.c, 31904u, max(arg_0.b.x, global1.b.x)), vec2<i32>(-9799i, 30569i));
    var var_0 = u_input.a.x;
    let var_1 = Struct_3(arg_0.c.yy, global1.c.x, Struct_2(Struct_1(!(global0[_wgslsmith_index_u32(arg_0.b.x, 13u)] >= 266f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.b.x, 13u)] + 1000f)), !vec3<bool>(global2.x, true, true), vec4<u32>(4335u | global1.b.x, countOneBits(arg_1.x), 1u, firstLeadingBit(global1.b.x))), Struct_1(u_input.d.x <= -17763i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(230f, global0[_wgslsmith_index_u32(arg_0.b.x, 13u)]) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4261u, 13u)] - -1340f)), vec3<bool>(global2.x, global2.x, true), vec4<u32>(_wgslsmith_mod_u32(arg_0.b.x, u_input.c), reverseBits(arg_1.x), 1u, _wgslsmith_add_u32(arg_0.b.x, arg_0.b.x))), Struct_1(true, -1732f, select(select(vec3<bool>(global2.x, false, false), vec3<bool>(true, false, global2.x), vec3<bool>(false, global2.x, true)), select(vec3<bool>(true, true, true), vec3<bool>(global2.x, global2.x, false), false), !vec3<bool>(false, true, global2.x)), vec4<u32>(~8080u, _wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(arg_0.b.x, arg_0.b.x, 4294967295u)), abs(arg_1.x), u_input.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a.x, -103f, global0[_wgslsmith_index_u32(2174u, 13u)], 1333f), vec4<f32>(1666f, 430f, arg_0.a.x, 663f))) - vec4<f32>(arg_0.a.x, -959f, 171f, arg_0.a.x))), select(!global2.zz, vec2<bool>(all(vec3<bool>(global2.x, global2.x, global2.x)), all(global2.yz)), !select(global2.zz, vec2<bool>(true, false), vec2<bool>(true, true)))), Struct_2(Struct_1(true, _wgslsmith_f_op_f32(select(872f, 613f, global2.x)), select(vec3<bool>(true, true, true), !vec3<bool>(false, false, global2.x), select(vec3<bool>(global2.x, true, false), vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, false, global2.x))), abs(vec4<u32>(10u, 4294967295u, u_input.c, arg_0.b.x))), Struct_1(true, global1.a.x, vec3<bool>(!global2.x, all(global2.xz), global2.x), ~(~arg_1)), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -748f)), select(vec3<bool>(global2.x, true, global2.x), !vec3<bool>(true, global2.x, true), select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, global2.x, false), true)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.x, 2725u, 0u, u_input.c), vec4<u32>(arg_0.b.x, 1u, u_input.c, 95212u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1574f, arg_0.a.x, global1.a.x, arg_0.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.c, 13u)], -489f, -1185f) * vec4<f32>(1132f, global0[_wgslsmith_index_u32(0u, 13u)], 1451f, -757f)))), global2.xy));
    var var_2 = vec2<i32>(~(-2147483647i), 1i);
    return ~vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, var_1.b), vec2<i32>(1i, arg_0.c.x)), _wgslsmith_sub_i32(8052i, 0i)), global1.c.x, reverseBits(firstLeadingBit(30468i)), 1i) << (vec4<u32>(var_1.c.a.d.x, global1.b.x, u_input.c ^ _wgslsmith_mult_u32(global1.b.x, 4294967295u), arg_0.b.x | (_wgslsmith_add_u32(var_1.c.c.d.x, arg_1.x) & 70816u)) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = func_4(func_2(!(!vec4<bool>(global2.x, global2.x, global2.x, global2.x)), ~(~vec4<u32>(global1.b.x, 11629u, 21859u, 29290u)), vec2<i32>(2147483647i, -u_input.d.x)), ~vec4<u32>(_wgslsmith_sub_u32(arg_0.b.x, 50677u) & arg_0.b.x, _wgslsmith_dot_vec2_u32(arg_0.b.yy, global1.b.yz), reverseBits(~0u), _wgslsmith_dot_vec2_u32(~vec2<u32>(global1.b.x, arg_0.b.x), vec2<u32>(u_input.c, 1u) & global1.b.xx)));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(global1.b.x, 13u)])), global1.a.x, !var_1)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - global0[_wgslsmith_index_u32(u_input.c, 13u)]))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 435f, global1.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1.b.x, 13u)], global0[_wgslsmith_index_u32(23133u, 13u)], global0[_wgslsmith_index_u32(arg_0.b.x, 13u)]) + _wgslsmith_f_op_vec3_f32(vec3<f32>(154f, global0[_wgslsmith_index_u32(4294967295u, 13u)], 483f) * vec3<f32>(arg_0.a.x, -160f, 417f))), !var_1))));
    let var_4 = arg_0;
    return vec4<bool>(arg_0.a.x <= var_4.a.x, false & global2.x, global2.x, all(vec4<bool>(true, !global2.x, var_1, global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(all(func_1(Struct_4(global1.a, ~vec3<u32>(u_input.c, global1.b.x, global1.b.x), vec3<i32>(12164i, u_input.d.x, -1i)))), _wgslsmith_f_op_f32(ceil(global1.a.x)), func_1(Struct_4(vec2<f32>(_wgslsmith_div_f32(-1146f, 132f), -2076f), vec3<u32>(~global1.b.x, 39643u, ~0u), ~vec3<i32>(u_input.a.x, -52609i, 1069i))).wzy, vec4<u32>(abs(abs(0u)), 44753u >> (1u % 32u), 0u, u_input.c | ~(~u_input.c)));
    global2 = !(!vec3<bool>(false, global2.x, any(var_0.c)));
    var var_1 = -u_input.b;
    var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(func_2(select(vec4<bool>(false, true, false, true), !vec4<bool>(false, var_0.c.x, false, true), global1.b.x != 54225u), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, global1.b.x, 4294967295u, 0u), var_0.d), ~4294967295u, ~32088u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, 25376u, var_0.d.x), vec4<u32>(global1.b.x, 1u, 8473u, var_0.d.x))), -_wgslsmith_mult_vec2_i32(global1.c.yx, global1.c.zy)).c, ~(vec3<i32>(-1i) * -vec3<i32>(1i, u_input.a.x, u_input.b))), _wgslsmith_mod_vec3_i32(vec3<i32>(func_4(Struct_4(global1.a, vec3<u32>(857u, global1.b.x, 1u), global1.c), vec4<u32>(2947u, 1u, u_input.c, 39228u)).x >> (var_0.d.x % 32u), ~(~u_input.d.x), -reverseBits(global1.c.x)), -global1.c));
    let var_2 = vec4<i32>(-2147483647i, -2147483647i, _wgslsmith_mult_i32(-func_4(Struct_4(global1.a, vec3<u32>(u_input.c, 4294967295u, 28484u), global1.c), firstTrailingBit(var_0.d)).x, global1.c.x), global1.c.x);
    var_1 = u_input.a.x;
    let var_3 = any(var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c);
}

